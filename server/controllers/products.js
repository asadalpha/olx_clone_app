const Product = require("../models/product.js");

module.exports.index = async (req, res) => {
  try {
    let result = await Product.find({});
    res.render("products/index.ejs", { products: result });
  } catch (err) {
    console.log(err);
  }
};

module.exports.renderNew = (req, res) => {
  res.render("products/new.ejs");
};

module.exports.postNew = async (req, res) => {
  let result = new Product(req.body.product);

  await result
    .save()
    .then(() => {
      console.log("product added to DB");
    })
    .catch((err) => {
      throw err;
    });
  res.redirect("/products");
};

module.exports.showProduct = async (req, res) => {
  let { id } = req.params;
  let result = await Product.findById(id);
  res.render("products/show.ejs", { product: result });
};

module.exports.deleteProduct = async (req, res) => {
  let { id } = req.params;
  let result = await Product.findByIdAndDelete(id);
  res.redirect("/products");
};

module.exports.renderEditProductDetails = async (req, res) => {
  let { id } = req.params;
  let result = await Product.findById(id);
  res.render("products/edit.ejs", { product: result });
};

module.exports.editProductDetails = async (req, res) => {
  let { id } = req.params;
  let result = await Product.findByIdAndUpdate(id, req.body.product);
  console.log(result);
  res.redirect("/products");
};
