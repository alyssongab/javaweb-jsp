<%@ page import="aranoua.javaweb.aranouajavawebjspaula.dao.PessoaDao" %>
<%@ page import="aranoua.javaweb.aranouajavawebjspaula.model.Pessoa" %><%--
  Created by IntelliJ IDEA.
  User: rogerio.carmine
  Date: 04/12/24
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Consulta Detalhes da Pessoa</title>
</head>
<body>
    <h1>Consulta Detalhes da Pessoa</h1>

    <%
      String id = request.getParameter("id");

      PessoaDao pessoaDao = new PessoaDao();
      Pessoa pessoa = pessoaDao.consultar(Long.parseLong(id));
    %>
    <p>Id:<%= pessoa.getId()%></p>
    <p>Nome:<%= pessoa.getNome()%></p>
    <p>Email:<%= pessoa.getEmail()%></p>

    <a href="pessoa-listar.jsp">Voltar</a>
    <a href="pessoa-alterar.jsp?id=<%= pessoa.getId()%>">Alterar</a>
    <a href="pessoa-excluir.jsp?id=<%= pessoa.getId()%>">Excluir</a>




</body>
</html>
