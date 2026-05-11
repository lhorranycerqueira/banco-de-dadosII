<?php

$host = 'localhost';
$dbname = 'projeto_site';
$usuario = 'root';
$senha = '';

try {
    $conexao = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $usuario, $senha);
<<<<<<< HEAD
    $conexao->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); // ✅ setAttribute
} catch(PDOException $e) { // ✅ PDOException
=======
    $conexao->setAtributte(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOExeception $e) {
>>>>>>> d47989bd7fe5623aceb9a52c663e10db25d71691
    die("Erro de Conexão: " . $e->getMessage()); 
}

$sql = "SELECT id, nome, email, mensagem FROM contatos";
$stmt = $conexao->prepare($sql);
$stmt->execute();
$mensagens = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Painel de Mensagens</title>
    <style>
        body { font-family: Arial, sans-serif; padding: 20px; }
<<<<<<< HEAD
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
=======
        table { width: 100%; border-collapse: collapase; margin-top: 20px; }
>>>>>>> d47989bd7fe5623aceb9a52c663e10db25d71691
        th, td { border: 1px solid #ccc; padding: 10px; text-align: left; }
        th { background-color: #333; color: white; }
        tr:nth-child(even) { background-color: #f9f9f9; }
    </style>
</head>
<body>
    <h2>Mensagens Interceptadas (Banco de Dados)</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Nome/Sobrevivente</th>
            <th>E-mail de Contato</th>
            <th>Conteúdo da Mensagem</th>
        </tr>
        <?php foreach ($mensagens as $linha): ?>
            <tr>
                <td> <?php echo $linha['id']; ?></td>
                <td> <?php echo $linha['nome'] ?></td>
                <td> <?php echo $linha['email']; ?></td>
                <td> <?php echo $linha['mensagem']; ?></td>
            </tr>
            <?php endforeach; ?>
    </table>
    <br>
    <a href="index.html">Voltar para o Formulário</a>
<<<<<<< HEAD
=======
    <!-- o erro q ta dando Fatal error: Uncaught Error: Call to undefined method PDO::setAtributte() in C:\xampp\htdocs\projeto_site\listar.php:10 Stack trace: #0 {main} thrown in C:\xampp\htdocs\projeto_site\listar.php on line 10 -->
>>>>>>> d47989bd7fe5623aceb9a52c663e10db25d71691
</body>
</html>