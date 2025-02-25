const express = require("express");
const router = express.Router();
const postController = require("../controllers/postController");

router.get("/posts", postController.getAllPosts);
router.post("/posts", postController.addPostByUserID);
router.get("/posts/:id", postController.getPostById);
router.delete("/posts/:id", postController.deletePost);
router.put("/posts/:id", postController.updatePost);

module.exports = router;