const express = require("express");
const router = express.Router({ mergeParams: true });
const Product = require("../models/product");
const productsController = require("../controllers/products");

router
  .route("/")
  .get(productsController.index)
  .post(productsController.postNew);

router.route("/new").get(productsController.renderNew);

router
  .route("/:id")
  .get(productsController.showProduct)
  .delete(productsController.deleteProduct)
  .patch(productsController.editProductDetails);

router.route("/:id/edit").get(productsController.renderEditProductDetails);

module.exports = router;
