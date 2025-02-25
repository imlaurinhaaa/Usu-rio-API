const { v4: uuid4 } = require("uuid");
const User = require("./User");

class Post {
    constructor(image, legend, addPerson, music, localization) {
        this.id = uuid4();
        this.userID = User.id;
        this.image = image;
        this.legend = legend;
        this.addPerson = addPerson;
        this.music = music;
        this.localization = localization;
        this.createdAt = new Date();
    }
}

module.exports = Post