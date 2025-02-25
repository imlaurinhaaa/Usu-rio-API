const Post = require("../models/Post")
const PostList = require("../models/PostList");

const postagens = new PostList();

const router = {

    addPostByUserID: (req, res) => {
        try {
            const { image, legend, addPerson, music, localization } = req.body;
            const newPost = new Post(image, legend, addPerson, music, localization);
            postagens.addPostByUserID(newPost, req.params.id);
            res.status(200).json(newPost);
            if (!image) {
                res.status(400).json({ message: "Image is required" });
            }
        } catch (error) {
            res.status(400).json({ message: "Post not created" });
        }
    },

    getAllPosts: (req, res) => {    
        try {
            const posts = postagens.getAllPosts();
            res.status(200).json(posts);
        } catch (error) {
            res.status(400).json({ message: "Posts Not Found" });
        }
    }


}

module.exports = router;