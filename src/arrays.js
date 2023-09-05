// const nomes = ["joaquim", "joana", "jairo"];
// for (let i = 0; i < nomes.length; i++) {
//   console.log(nomes[i]);
// }

function somaElementosArray(array) {
  let soma = 0;
  for (let i = 0; i < array.length; i++) {
    soma = soma + array[i];
  }
  return soma;
}
const numeros = [1, 3, 4, 5, 6];
const result = somaElementosArray(numeros);
console.log(result);

function maiorElemento(array) {
  return Math.max(...array);
}

const carro = "celta";
if (carro === "celta") {
  console.log("voce acertou");
} else {
  console.log("errou");
}

const ehPrimo = (num) => {
  for (let i = 2; i < num; i++) {
    if (num % i === 0) {
      return false;
    }
    return num > 1;
  }
};
console.log(ehPrimo(5));

const somar = (a) => {
  console.log(a);
};
function somar2(a) {
  console.log(a);
}

somar(2);
