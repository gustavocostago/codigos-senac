import Router from "express";
import client from "./connect-database.js";
const router = Router();

router.get("/clientes", async (req, res) => {
  const resultado = await client.query("SELECT * FROM cliente");
  res.send(resultado.rows);
});

router.post("/inserir-cliente", async (req, res) => {
  const resultado = await client.query(
    `INSERT INTO cliente (nome) VALUES ('${req.body.nome}')`
  );
  if (resultado.rows) {
    res.status(201).send({ mensagem: "Cliente cadastro com sucesso!" });
  } else {
    res.status(500).send({ mensagem: "Não foi possivel realizar o cadastro" });
  }
});

router.delete("/cliente", async (req, res) => {
  const resultado = await client.query(
    `DELETE FROM cliente WHERE id = '${req.query.id}'`
  );
  if (resultado.rows) {
    res.status(201).send({ mensagem: "Cliente deletado com sucesso!" });
  } else {
    res.status(500).send({ mensagem: "Não foi possivel deletar o cliente" });
  }
});
export default router;
