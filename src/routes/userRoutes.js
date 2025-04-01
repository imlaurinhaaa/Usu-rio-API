const express = require("express");
const router = express.Router();
const userController = require("../controllers/userController");

router.get("/users", userController.getAllUsers);
router.post("/users", userController.createUser);
router.delete("/users/:id", userController.deleteUser);
router.get("/users/:id", userController.getUser);
router.put("/users/:id", userController.updateUser);

module.exports = router;