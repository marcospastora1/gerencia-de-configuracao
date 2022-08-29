<%-- 
    Document   : usuarios
    Created on : 28 de ago de 2022, 23:55:05
    Author     : marco
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="Style/style.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuarios</title>
    </head>
    <body>
        <h1 class="title-produtos">Lista de Usuários</h1>
        <div>
            <nav>
                <a href="/inscrever" >+ Cadastrar novo usuário</a>

                <div>
                    <a href="/home">Voltar</a>
                </div>
            </nav>
        </div>
        <table class="produtos">
            <thead>
                <tr>
                    <th class="th-produtos">Nome</th>
                    <th class="th-produtos">Sobrenome</th>
                    <th class="th-produtos">Email</th>
                    <th class="th-produtos">Telefone</th>
                    <th class="th-produtos">Data de Nascimento</th>
                    <th class="th-produtos">Opções</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${usuarios}" var="usuario">
                    <tr>
                        <td class="td-produtos">${usuario.nome}</td>
                        <td class="td-produtos">${usuario.sobrenome}</td>
                        <td class="td-produtos">${usuario.email}</td>
                        <td class="td-produtos">${usuario.telefone}</td>
                        <td class="td-produtos">${usuario.nascimento}</td>
                        <td class="td-produtos">
                            <a  href="/edicaoUsuario?idUsuario=${usuario.idUsuario}" style="float:left;">
                                Editar
                            </a>

                            <a href="/excluirUsuario?idUsuario=${usuario.idUsuario}" onclick="excluir()">
                                Excluir
                            </a>
                        </td>
                    </tr>
                </c:forEach>

            </tbody>
        </table>
        <script>
            function excluir() {
                alert('Você está excluindo esse usuário!');
            }
        </script>
    </body>
</html>
