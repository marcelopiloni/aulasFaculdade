// Obtém referências para os elementos do DOM
const nomeInput = document.getElementById('nome');
const nota1Input = document.getElementById('nota1');
const nota2Input = document.getElementById('nota2');
const nota3Input = document.getElementById('nota3');
const calcularButton = document.getElementById('calcular');
const resultadoDiv = document.getElementById('respsoma');
const resultadoMDiv = document.getElementById('respmedia');
const limparButton = document.getElementById('limpar');
const calcularmediaButton = document.getElementById('calcularamedia');

// Função para somar as notas
function somarnotas() {
  // Obtém os valores de notas inseridas pelo usuário
  const nome = nomeInput.value.trim();
  const nota1 = parseFloat(nota1Input.value);
  const nota2 = parseFloat(nota2Input.value);
  const nota3 = parseFloat(nota3Input.value);
  
  // Valida se os campos estão preenchidos e se os valores são válidos
  if (isNaN(nota1) || isNaN(nota2) || isNaN(nota3) || nota1 <= 0 || nota2 <= 0 || nota3 <= 0 ) {
    alert('Preencha as notas corretamente!');
    return;
  }

  if (!nome) {
    alert('Preencha o seu nome!');
    return;
  }

  // Calcula a soma das notas
  const soma = nota1 + nota2 + nota3;
  

  // Exibe o resultado na página
  resultadoDiv.innerHTML = soma;
  resultadoDiv.style.display = 'block';
}

// Função para calcular a média

function calcularmedia(){
  somarnotas()
  const nome = nomeInput.value.trim();
  const nota1 = parseFloat(nota1Input.value);
  const nota2 = parseFloat(nota2Input.value);
  const nota3 = parseFloat(nota3Input.value);

  // Valida se os campos estão preenchidos e se os valores são válidos

 

  if (!nome) {
    alert('Preencha o seu nome!');
    return;
  }

  if (isNaN(nota1) || isNaN(nota2) || isNaN(nota3) || nota1 <= 0 || nota2 <= 0 || nota3 <= 0 ) {
    alert('Preencha as notas corretamente!');
    return;
  }

  

  const media = (nota1 + nota2 + nota3)/ 3;

  let cor;
  if (media < 70) {
    cor = 'red'; // Define a cor como vermelha se a média for abaixo de 70
  } else {
    cor = 'green'; // Define a cor como verde se a média for 70 ou acima
  }

  const classificacao = media < 50 ? 'Reprovado':
                        media < 70 ? 'Recuperação':
                         'Aprovado';



      resultadoMDiv.innerHTML = `Média: <span style="color: ${cor};">${media.toFixed(2)} - ${classificacao}</span>`;
      resultadoMDiv.style.display = 'block';

}


// Função para limpar os campos do formulário
function limparCampos() {
  nomeInput.value = '';
  nota1Input.value = '';
  nota2Input.value = '';
  nota3Input.value = '';
  resultadoDiv.style.display = 'none';
  resultadoMDiv.style.display = 'none';
}




// Adiciona um event listener ao botão "Calcular"
calcularButton.addEventListener('click', somarnotas);
limparButton.addEventListener('click', limparCampos);
calcularmediaButton.addEventListener('click', calcularmedia)


// Adiciona um listener de evento para as teclas Enter e Esc
document.addEventListener('keydown', function(event) {
    if (event.key === 'Enter') {
      // Chama a função calcularIMC() quando a tecla Enter é pressionada
      somarnotas();
    } 
  });