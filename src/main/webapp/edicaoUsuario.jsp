<%-- 
    Document   : edicaoUsuario
    Created on : 28 de ago de 2022, 23:55:29
    Author     : marco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cadastre-se</title>
        <style>

            html {
                font-family: verdana;
            }
            h1 {
                color: black;
                text-align: center;
                font-family: verdana;
                margin-bottom: 30px;
            }

            a{
                display:inline-block;
                text-decoration: none;
                color: blue;
                font-size:12pt;
                font-family: verdana;

                margin-left: 10%;
                margin-bottom: 20px;
            }

            a:hover {
                color: #05B2D9;
                text-decoration: underline;
            }

            form {
                margin: 0 auto;
                width: 40%;

                display: flex;
                flex-direction: column;
                align-items: center;
                text-align: center;

                border: 1px solid #a4aab3;
                border-radius: 20px;

                padding: 10px;
            }

            label {
                width: 65%;
                text-align: left;
            }

            input {
                margin: 10px 0;
                width: 65%;
            }

            input:last-of-type {
                margin-top: 5px
            }

            button {
                margin-top: 20px;
                width: 65%
            }

            div {
                width: 100%;

                display: flex;
                flex-direction: column;
                align-items: center
            }

            textarea {
                width: 65%
            }
        </style>
    </head>

    <body>

        <a href="/usuarios">Voltar</a>
        <h1>Edição de usuário</h1>

        <form method="POST" action="/edicaoUsuario">
            <div>
                <input type="hidden" id="idUsuario" name="idUsuario" value="${usuario.idUsuario}">
            </div>

            <div>
                <label for='nome'>Nome</label>
                <input type="text" name="nome" placeholder="Nome" id='nome' value="${usuario.nome}" required>
            </div>

            <div>
                <label for='sobrenome'>Sobrenome</label>
                <input type="text" name="sobrenome" placeholder="Sobrenome" id='sobrenome' value="${usuario.sobrenome}" required>
            </div>

            <div>
                <label for="e-mail">Email</label>
                <input type="email" name="email" placeholder="seuemail@email.com" id="email" value="${usuario.email}" required>
            </div>

            <div>
                <label for="e-mail">Senha</label>
                <input type="password" name="senha" placeholder="Senha" id="senha" value="${usuario.senha}" required>
            </div>

            <div>
                <label for="e-mail">Telefone</label>
                <input type="text" name="telefone" placeholder="(XX) XXXXX-XXXX" id="telefone" value="${usuario.telefone}" required>
            </div>

            <div>
                <label>Data de Nascimento</label>
                <input type="date" name="nascimento" placeholder="Data de Nascimento" id='nascimento' value="${usuario.nascimento}" required>
            </div>  

            <div>
                <button type="submit" value="Salvar">Salvar</button>
            </div>

        </form>

    </body>
</html>
