if (process.env.NODE_ENV != "production") {
  require("dotenv").config();
}

const express = require("express");
const app = express();
const mongoose = require("mongoose");
const passport = require("passport");
const LocalStrategy = require("passport-local");
const methodOverride = require("method-override");
const path = require("path");
const productsRouter = require("./routes/products");
const usersRouter = require("./routes/users");
const User = require("./models/user");

const session = require("express-session");
const sessionOptions = {
  secret: process.env.SECRET,
  saveUninitialized: true,
  resave: false,
  cookie: {
    expire: Date.now() + 7 * 24 * 60 * 60 * 1000,
    maxAge: 7 * 24 * 60 * 60 * 1000,
  },
};
app.use(session(sessionOptions));

app.use(passport.initialize());
app.use(passport.session());
passport.use(new LocalStrategy(User.authenticate()));

passport.serializeUser(User.serializeUser());
passport.deserializeUser(User.deserializeUser());

app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "views"));
app.use(methodOverride("_method"));
app.use(express.urlencoded({ extended: true }));

// setting up the database
const MONGO_URL = "mongodb://127.0.0.1:27017/olx";

main()
  .then(() => {
    console.log("connected to DB");
  })
  .catch((err) => {
    console.log(err);
  });

async function main() {
  await mongoose.connect(MONGO_URL);
}

app.use((req, res, next) => {
  res.locals.currUser = req.user;
  next();
});

app.get("/", (req, res) => {
  res.send("root");
});

app.use("/products", productsRouter);
app.use("/", usersRouter);

app.listen(8080, () => {
  console.log("app is listening on port 8080");
});
