const Product = require("../models/product.js");

module.exports.index = async (req, res) => {
  try {
    let result = await Product.find({});
    res.send(result);
    console.log(result);
  } catch (err) {
    console.log(err);
  }
};
