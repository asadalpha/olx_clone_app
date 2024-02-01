const mongoose = require("mongoose");
const initData = require("./data.js");

const Product = require("../models/product.js");

// database setup
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

// initialising db
const initDB = async () => {
  await Product.deleteMany({}); // deleting previous data

  // // this code snippet can be used to add more field entries in future:-
  //   initData.data = initData.data.map((obj) => ({
  //     ...obj,
  //   }));

  await Product.insertMany(initData.data);
  console.log("data was initialised");
};

initDB();
