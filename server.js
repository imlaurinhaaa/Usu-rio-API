const express = require("express");
const cors = require("cors");
const userRoutes = require("./src/routes/userRoutes");
const postRoutes = require("./src/routes/postRoutes");
const reportRoutes = require("./src/routes/reportRoutes");
const setupSwagger = require('./src/config/swagger');

const app = express();
const PORT = process.env.PORT || 4000;

app.use(cors());
app.use(express.json());

app.use("/api", userRoutes);
app.use("/api", postRoutes);
app.use("/api", reportRoutes);
setupSwagger(app);

app.listen(PORT, () => {
    console.log(`Servidor rodando 👩‍💻 http://localhost:${PORT}`);
});