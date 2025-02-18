const express = require("express");
const router = express.Router();
const userController = require("../controllers/userController");

router.get("/user", userController.getAllUsers);
router.post("/user", userController.addUser);
router.delete("/user/:id", userController.deleteUser);
router.get("/user/:id", userController.getUserById);
router.put("/user/:id", userController.updateUser);

module.exports = router;