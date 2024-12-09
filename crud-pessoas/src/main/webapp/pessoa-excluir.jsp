<%@ page import="aranoua.javaweb.aranouajavawebjspaula.model.Pessoa" %>
<%@ page import="aranoua.javaweb.aranouajavawebjspaula.dao.PessoaDao" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Exclusão de pessoa</title>
</head>
<body>
  <h1>Exclusão de pessoa</h1>

  <%
    String idParam = request.getParameter("id");
    String excluir = request.getParameter("excluir");
    Pessoa pessoa = null;
    String mensagem = "";

    try{
      long id = Long.parseLong(idParam);
      PessoaDao pessoaDAO = new PessoaDao();
      pessoa = pessoaDAO.consultar(id);

      if("true".equals(excluir)){
        pessoaDAO.excluir(id);
        mensagem = "Pessoa excluída com sucesso";
      }
    }
    catch(Exception e){
      mensagem = "Erro ao excluir: " + e.getMessage();
    }

%>

  <strong><%=mensagem%></strong>

  <% if(pessoa != null && !"true".equals(excluir)) { %>
  <p>Id: <%=pessoa.getId()%></p>
  <p>Nome: <%=pessoa.getNome()%></p>
  <p>Email: <%=pessoa.getEmail()%></p>
  <p>Confirmar exclusão?</p>

  <form action="pessoa-excluir.jsp" method="get">
    <input type="hidden" name="id" value="<%=pessoa.getId()%>">
    <button type="submit" name="excluir" value="true">Sim</button>
  </form>

<% } %>
  <a href="pessoa-listar.jsp">Voltar</a>
</body>
</html>