<%-- 
    Document   : cadusuario
    Created on : 28 de ago de 2022, 16:33:17
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Funcionário</title>

        <style>
            table {
                font-size:12pt;
                font-family: verdana;
            }
            h1 {
                color: black;
                font-family: verdana;
            }
            button {
                width: 200px;
            }
            #button {
                text-align: center;
            }
            td {
                width: 200px;
                height: 30px;
            }
        </style>
    </head>
    <body>
        <h1>Cadastro de Funcionário</h1>
        <table>
            <form method="POST" action="/cadfuncionario.jsp">
                <tr>
                    <td><label>Nome</label></td>
                    <td><input id="descricao" name="nome"  type="text"/></td>
                </tr>
                <tr>
                    <td><label>RG</label></td>
                    <td><input id="descricao" name="rg"  type="text"/></td>
                </tr>

                <tr>
                    <td><label>Data de nascimento</label></td>
                    <td><input id="descricao" name="nascimento"  type="date"/></td>
                </tr>

                <tr>
                    <td><label>Cidade</label></td>
                    <td><input id="descricao" name="cidade"  type="text"/></td>
                </tr>

                <tr>
                    <td><label>CEP</label></td>
                    <td><input id="descricao" name="cep"  type="text"/></td>
                </tr>

                <tr>
                <hr>
                <td column colspan="1" id="button">

                    <a href="/listfuncionario.jsp">Salvar</a>

                </td>
                <td column colspan="1" id="button">

                    <a href="/">Voltar</a>

                    </hr>                  
                    </tr>
            </form>
        </table>
    </body>
</html>