      <?php include "cabecalho.php"?>
      <br>
      <br>
    <div class="conteudo">
        <h2 class="titulo">OLÁ, SEJA BEM VINDO!</h2>
    
        <p class="paragrafo">Nesta parte do site você fara a parte de mudar suas palavras escritas em imagens em linguagens de sinais!</p>
        <form method="POST" action="">
            <label for="palavra">Digite uma palavra:</label>
            <input type="text" id="palavra" name="palavra" required>
            <button type="submit">Exibir</button>
        </form>

        <div class="container">
        <?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // pega a palavra digitada pelo usuário
    $palavra = $_POST['palavra'];

    $pasta_alfabeto = "alfabeto/";
//  ----

for ($i = 0; $i < strlen($palavra); $i++) { 
        $letra = $palavra[$i];

//  ---
        if (ctype_alpha($letra)) {

            $caminho_imagem = $pasta_alfabeto . $letra . ".png";
            
            // Verifica se o arquivo de imagem existe
            if (file_exists($caminho_imagem)) {
                
                echo "<img src='$caminho_imagem' alt='$letra'>";
            } else {
                
                echo "<p>Imagem não encontrada para a letra:  $letra</p>";
            }
        } else {
            // Caso o caractere não seja uma letra do alfabeto, exibe uma mensagem de caractere inválido
            echo "<p>Caractere inválido :  $letra</p>";
        }
    }
}
?>

    </div>
<?php include "rodape.php"?>
    
