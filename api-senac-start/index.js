import express from "express";
import bodyParser from "body-parser";
import router from "./routes.js";
const app = express();
const port = 8080;

app.listen(port, () => {
  console.log(`servidor rodando na porta ${port}`);
});

app.use(bodyParser.json());
app.use("/", router);
