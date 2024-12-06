# Projeto JSP - Crud de pessoas
Este projeto é uma aplicação web construída com Java, JSP, Tomcat e MySQL, com o objetivo de demonstrar conceitos de desenvolvimento web.
## Tecnologias Utilizadas

- Java 17
- JSP (Java Server Pages)
- MySQL (Versão 8.4.3)
- Apache Tomcat (11.0.1)
- JDBC (Java Database Connectivity)
## Funcionalidades

- Conexão com banco de dados MySQL.
- Exibição e manipulação de dados via JSP.
- Integração simples e direta sem frameworks adicionais.
## Configuração do Ambiente
### Pré-requisitos

- Java Development Kit (JDK): Certifique-se de que o JDK 17 ou superior esteja instalado.
- Apache Tomcat: Instale a versão 11.0.1
- MySQL: Certifique-se de que o servidor MySQL esteja instalado e em execução.
- Git (opcional): Para clonar o repositório.
### Instalação
#### Passo 1: Clonar o repositório
```bash
git clone https://github.com/alyssongab/javaweb-jsp.git
cd javaweb-jsp/crud-pessoas

```
#### Passo 2: Configurar o banco de dados
1. Criar um banco de dados chamado javaweb_jsp no MySQL.
```bash
    CREATE DATABASE javaweb_jsp;

```
2. Importar o arquivo sql.
```bash
    mysql -u root -p javaweb_jsp < javaweb.sql

```
#### Passo 3: Configurar as credenciais no código
1. Abrir o arquivo `ConexaoUtil.java` localizado em:
```bash
src/main/java/aranoua/javaweb/aranouajavawebjspaula/util/ConexaoUtil.java
```
2. Localizar o seguinte trecho:
```java
public ConexaoUtil() {
    this.url = "jdbc:mysql://localhost:3306/javaweb_jsp";
    this.usuario = "";
    this.senha = "";
}
```
3. Substituir os valores de `usuario` e `senha` pelos seus dados:
```java
public ConexaoUtil() {
    this.url = "jdbc:mysql://localhost:3306/javaweb_jsp";
    this.usuario = "seu_usuario";
    this.senha = "sua_senha";
}
```
#### Passo 4: Deploy no Tomcat