<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Produtos</title>
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
<<<<<<< HEAD
=======

>>>>>>> d85f70f6384cec8071bf5191ab708d465627ea58
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
        <h1>Lista de Produtos</h1>
        <nav>
            <div>
                <a href="/cadastroProduto" >+ Cadastrar novo produto</a>
            </div>
            
            <div>
                <a href="/entrar" >Entrar</a>
                <a href="/inscrever" >Cadastre-se</a>
                <a href="/faleConosco" >Fale conosco</a>
            </div>

<<<<<<< HEAD
            
        </nav>
        <table>
=======
<<<<<<< HEAD
            
        </nav>
        <table>
=======
=======
    </head>
    <body>
        <h1 class="title-produtos">Lista de Produtos</h1>
        <div>
            <br/>
            <a href="/cadastroProduto", id="novo" >+ Cadastrar novo produto</a>
            <br/>
            <br/>
>>>>>>> master
        </div>
        <table class="produtos">
>>>>>>> master
>>>>>>> d85f70f6384cec8071bf5191ab708d465627ea58
            <thead>
                <tr>
                    <th>Código</th>
                    <th id="desc">Descrição</th>
                    <th>Unidade Medida</th>
                    <th>Preço Unitário</th>
                    <th>Quantidade</th>
                    <th>Valor Total</th>
                    <th>Opções</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${produtos}" var="produto">
                    <tr>
                        <td>${produto.codigo}</td>
                        <td>${produto.descricao}</td>
                        <td>${produto.unidadeVenda}</td>
                        <td>R$ ${produto.preco}</td>
                        <td>${produto.quantidade}</td>
                        <td> R$ ${produto.preco* produto.quantidade}</td>
                        <td>
                            <a  href="/edicaoProduto?idProduto=${produto.idProduto}" style="float:left;">
                                Editar
                            </a>

                            <a href="/excluirProduto?idProduto=${produto.idProduto}">
                                Excluir
                            </a>
                        </td>
                    </tr>
                </c:forEach>

            </tbody>
        </table>
    </body>
</html>