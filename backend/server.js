import express from "express";
import cors from "cors";
import dotend from "dotenv";

dotenv.config();
const app = express();
app.use(cors());
app.use(express.json());


app.get("/", (req, res) => {
    res.json({ message: "API Biblioteca Ralph & Teddy Funcionamento"})
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Servidor rodando em https://localhost:${PORT}`)
});