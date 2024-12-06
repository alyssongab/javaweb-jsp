<%@ page import="aranoua.javaweb.aranouajavawebjspaula.dao.PessoaDao" %>
<%@ page import="aranoua.javaweb.aranouajavawebjspaula.model.Pessoa" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.SQLException" %>
<%--
  Created by IntelliJ IDEA.
  User: alysson.gab
  Date: 04/12/24
  Time: 09:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista de Pessoas</title>
</head>
<body>
  <h1>Lista de Pessoas</h1>

  <table border="1">
      <th>Id</th><th>Nome</th><th>Email</th>
    <%
      PessoaDao pessoaDao = new PessoaDao();
        List<Pessoa> pessoas = null;
        try {
            pessoas = pessoaDao.listar();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        for(Pessoa pessoa:pessoas) {
    %>
      <tr>
          <td><a href="pessoa-consultar.jsp?id=<%= pessoa.getId()%>"><%= pessoa.getId()%></a></td>
          <td><%= pessoa.getNome()%></td>
          <td><%= pessoa.getEmail()%></td>
      </tr>
      <%
          }
      %>
  </table>

  <a href="pessoa-cadastrar.jsp">Cadastrar</a>

</body>
</html>
