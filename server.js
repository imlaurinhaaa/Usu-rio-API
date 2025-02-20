const express = require("express");
const cors = require("cors");
const userRoutes = require("./src/routes/userRoutes");

const app = express();
const PORT = process.env.PORT || 4000;

app.use(cors());
app.use(express.json());

app.use("/api", userRoutes);

app.listen(PORT, () => {
    console.log(`Servidor rodando 👩‍💻 http://localhost:${PORT}`);
});