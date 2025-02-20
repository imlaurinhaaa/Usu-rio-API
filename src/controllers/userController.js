const User = require("../models/User")
const UserList = require("../models/UserList")

const lista = new UserList();

lista.addUser(new User("Flavia", "flavia@gmail.com", 17));
lista.addUser(new User("Giovana", "giovana@gmail.com", 16));

const router = {

    getAllUsers: (req, res) => {
        try {
            const users = lista.getAllUsers();
            res.status(200).json(users);
        } catch (error) {
            res.status(400).json({ message: "Users Not Found" });
        }
    },

    addUser: (req, res) => {
        try {
            const { name, email, age } = req.body;
            const newUser = new User(name, email, age);
            lista.addUser(newUser);
            res.status(200).json(newUser);
        } catch (error) {
            res.status(400).json({ message: "User not created" });
        }
    },

    getUserById: (req, res) => {
        try {
            const id  = req.params.id;
            res.status(200).json(lista.getUserById(id));
        } catch (error) {
            res.status(400).json({ message: "User not found" });
        }
    },

    updateUser: (req, res) => {
        try {
            res.status(200).json(lista.updateUser(req.params.id, req.body));
        } catch (error) {
            res.status(400).json({ message: "User not updated" });
        }
    },

    deleteUser: (req, res) => {
        try {
            const { id } = req.params;
            lista.deleteUser(id);
            res.json({ message: "User deleted" });
        } catch (error) {
            res.status(400).json({ message: "User not deleted" });
        }
    }

}

module.exports = router;