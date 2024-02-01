const express = require("express");
const router = express.Router({ mergeParams: true });
const Product = require("../models/product");
const productsController = require("../controllers/products");

router.route("/").get(productsController.index);

module.exports = router;
