const express = require("express");
const app = express();
const mongoose = require("mongoose");
// const passport = require("passport");
// const LocalStrategy = require("passport-local");
const methodOverride = require("method-override");
const path = require("path");
const productsRouter = require("./routes/products");

app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "views"));
app.use(methodOverride("_method"));
app.use(express.urlencoded({ extended: true }));

const User = require("./models/user");

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

app.get("/", (req, res) => {
  res.send("root");
});

app.use("/products", productsRouter);

app.listen(8080, () => {
  console.log("app is listening on port 8080");
});
