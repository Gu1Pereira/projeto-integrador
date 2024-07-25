<?php include "cabecalho.php"?>
    <br>
    <h1>MÃOS QUE FALAM</h1>
    <p>bem vindo [usuario], converta suas palavras para linguagem de sinais   </p>
    

    <form action="buscar_imagem.php" method="post">
        <label for="palavra">Digite uma palavra:</label><br>
        <input type="text" id="palavra" name="palavra"><br><br>
        <input type="submit" value="Procurar">
    </form>

    <?php
    if (isset($_GET['nome'])) {
        // Conectar ao banco de dados
        $conn = new mysqli("localhost", "root", "", "bd_lb");

        // Verificar a conexão
        if ($conn->connect_error) {
            die("Falha na conexão: " . $conn->connect_error);
        }

        // Obter e sanitizar o nome da imagem
        $nome_imagem = $conn->real_escape_string($_GET['nome']);

        // Consultar a imagem pelo nome
        $sql = "SELECT imagem FROM tb_img WHERE nome = '$nome_imagem'";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();
            echo '<img src="data:image/jpeg;base64,' . base64_encode($row['imagem']) . '" alt="Imagem">';
        } else {
            echo '<p>Imagem não encontrada.</p>';
        }

        // Fechar a conexão
        $conn->close();
    } else {
        echo '<p>Nenhuma imagem foi especificada.</p>';
    }
    ?>
    <form method="post" action="atualizar.php?id=<?=$id;?>" enctype="multipart/form-data">
        
    <input type="text" name="nome" placeholder="Nome" class="form-control" 
    value="<?= $nome; ?>">
   
   <?php include "rodape.php"?>