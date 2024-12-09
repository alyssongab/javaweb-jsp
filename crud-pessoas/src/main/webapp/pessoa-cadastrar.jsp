<%@ page import="aranoua.javaweb.aranouajavawebjspaula.model.Pessoa" %>
<%@ page import="aranoua.javaweb.aranouajavawebjspaula.dao.PessoaDao" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cadastrar Pessoa</title>
</head>
<body>

    <%
        String mensagem = "";
        String salvar = request.getParameter("salvar");

        if(salvar != null){

            try{

            String nome = request.getParameter("nome");
            String email = request.getParameter("email");

            Pessoa pessoa = new Pessoa();

            pessoa.setNome(nome);
            pessoa.setEmail(email);

            PessoaDao pessoaDao = new PessoaDao();
            pessoaDao.inserir(pessoa);

            mensagem = "Dados salvos com sucesso!";
            }catch(Exception e){
                mensagem = "Erro ao salvar!";
            }

        }
    %>

    <h1>Cadastrar Pessoa</h1>

    <p><strong><%= mensagem %></strong></p>

    <form action="pessoa-cadastrar.jsp" method="POST">

      <label for="pessoa_nome">Nome:</label>
      <input id="pessoa_nome" type="text" name="nome" required>
      <br><br>

      <label for="pessoa_email">E-mail:</label>
      <input id="pessoa_email" type="text" name="email" required>
      <br><br>

      <input type="reset" name="limpar" value="Limpar">
      <input type="submit" name="salvar" value="Salvar">

    </form>

    <a href="pessoa-listar.jsp">Voltar</a>

</body>
</html>
