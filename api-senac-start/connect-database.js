import pkg from "pg";
const { Client } = pkg;
const client = new Client({
  connectionString: "postgres://docker:docker@localhost/bd-senac",
  ssl: false,
});
await client.connect();
export default client;
