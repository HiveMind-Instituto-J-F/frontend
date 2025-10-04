<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="hivemind.hivemindweb.models.Plant" %>
<%@ include file="read.jsp" %>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="../css/header.css"> <!-- CSS para o header -->
    <title>TimeLean - Administração</title>
</head>
<body>
    <main>
        <section name="crud_plant" class="crud">
            <h2>Adicionar planta</h2>
            <form action="create-plant" method="post">
                <label for="cnpj">CNPJ:</label><br>
                <input type="text" id="cnpj" name="cnpj" required><br><br>

                <label for="cnae">CNAE:</label><br>
                <input type="text" id="cnae" name="cnae"><br><br>

                <label for="operational_status">Operational Status:</label><br>
                <select id="operational_status" name="operational_status">
                    <option value="active">Active</option>
                    <option value="inactive">Inactive</option>
                </select><br><br>

                <label for="responsible_cpf">Responsible CPF:</label><br>
                <input type="text" id="responsible_cpf" name="responsible_cpf"><br><br>

                <label for="address_number">Address Number:</label><br>
                <input type="text" id="address_number" name="address_number"><br><br>

                <label for="address_cep">Address CEP:</label><br>
                <input type="text" id="address_cep" name="address_cep"><br><br>

                <input type="submit" value="Create Plant">
            </form>
            
        </section>
    </main>
    <footer>