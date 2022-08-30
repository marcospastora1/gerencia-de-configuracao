<%-- 
    Document   : listusuario
    Created on : 28 de ago de 2022, 17:23:53
    Author     : USUARIO
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Funcionário</title>
        <style>
            table, a{
                font-size:12pt;
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
                
                padding: 0 10px;
            }
            
            a:first-of-type {
                padding-left: 0;
            }
            
            a:last-of-type {
                padding-right: 0;
            }
            a:hover {
                color: #05B2D9;
                text-decoration: underline;
            }
            table{
                border-collapse: collapse;
                width:80%;
                margin-left: 10%;
            }
            td{
                border:1px solid black;
                text-align: center;
            }
            th {
                border:1px solid black;
                text-align: center;
                background-color: #D5D5D5;
            }

            nav {
                margin-left: 10%;
                margin-right: 10%;
                margin-bottom: 20px;
                
                display: flex;
                justify-content: space-between;
            }
        </style>
    </head>
    <body>
        <h1>Lista de Funcionário</h1>
        <nav>
            <div>
                <a href="/cadfuncionario.jsp" >+ Cadastrar novo Funcionário</a>
            </div>
            
            <div>
                <a href="/entrar" >Entrar</a>
                <a href="/inscrever" >Cadastre-se</a>
                <a href="/faleConosco" >Trabalhe conosco</a>
            </div>

            
        </nav>
        <table>


    </head>

        <table class="Funcionario">

            <thead>
                <tr>
                    <th>Nome</th>
                    <th>RG</th>
                    <th>Data de nascimento</th>
                    <th>Cidade</th>
                    <th>CEP</th>                   
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${funcionario}" var="funcionario">
                    <tr>
                        <td>${funcionario.nome}</td>
                        <td>${funcionario.rg}</td>
                        <td>${funcionario.nascimento}</td>
                        <td>${funcionario.cidade}</td>
                        <td>${funcionario.cep}</td>
                        <%--<td>
                            <a  href="/edicaofuncionario?idfuncionario=${funcionario.idFuncionario}" style="float:left;">
                                Editar
                            </a>

                            <a href="/excluirfuncionario?idfuncioanrio=${funcionario.idFuncionario}">
                                Excluir
                            </a>
                        </td>--%>
                    </tr>
                </c:forEach>

            </tbody>
        </table>
    </body>
</html>
