<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="hivemind.hivemindweb.models.Plant" %>

<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Plantas Industriais</title>
    <link rel="stylesheet" href="../../css/header.css">
</head>
<body>
<header>
    <h1>Plantas Industriais da Empresa</h1>
</header>

<main>
    <section>

        <form action="${pageContext.request.contextPath}/company-cnpj" method="get">
            <h3>Buscar por CNPJ da Empresa</h3>
            <label for="company-cnpj">Digite o CNPJ:</label>
            <input type="text" id="company-cnpj" name="company-cnpj" placeholder="Ex: 12.345.678/0001-90" required>
            <input type="submit" value="Buscar">
        </form>
    </section>

    <section>
        <%
            List<Plant> plantList = (List<Plant>) request.getAttribute("plantList");
            if (plantList != null && !plantList.isEmpty()) {
        %>
        <form action="${pageContext.request.contextPath}/create-plant" method="get">
                        <input type="hidden" name="company-cnpj" value="<%= request.getAttribute("cnpj_company") %>">
                        <input type="submit" value="create-plant">
        </form>
        <table border="1">/
            <thead>
            <tr>
                <th>CNPJ</th>
                <th>CNAE</th>
                <th>CPF do Responsável</th>
                <th>Status Operacional</th>
                <th>CEP</th>
                <th>Número</th>
                <th>Ações</th>
            </tr>
            </thead>
            <tbody>
            <% for (Plant plant : plantList) { %>
            <tr>
                <td><%= plant.getCNPJ() %></td>
                <td><%= plant.getCNAE() %></td>
                <td><%= plant.getResponsibleCpf() %></td>
                <td><%= plant.getOperationalStatus() ? "Ativa" : "Inativa" %></td>
                <td><%= plant.getAdressCep() %></td>
                <td><%= plant.getAdressNumber() %></td>
                <td>
                    <form action="${pageContext.request.contextPath}/update-plant" method="get">
                        <input type="hidden" name="cnpj" value="<%= plant.getCNPJ() %>">
                        <input type="submit" value="Modificar">
                    </form>
                    <form action="${pageContext.request.contextPath}/delete-plant" method="get">
                        <input type="hidden" name="cnpj" value="<%= plant.getCNPJ() %>">
                        <input type="submit" value="Deletar">
                    </form>
                </td>
            </tr>
            <% } %>
            </tbody>
        </table>
        <%
        } else {
        %>
        <p>Nenhuma planta industrial encontrada para este CNPJ.</p>
        <%
            }
        %>
    </section>
</main>
</body>
</html>