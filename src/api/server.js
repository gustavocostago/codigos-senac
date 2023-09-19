const http = require("http");
const requestListener = function (req, res) {
  res.writeHead(200);
  res.end("100");
};
const server = http.createServer(requestListener);
server.listen(3000, "localhost", () => {
  console.log("O servidor está rodando em http://localhost:3000");
});
