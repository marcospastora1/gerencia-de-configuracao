<%-- 
    Document   : produtos
    Created on : 19/05/2022, 08:05:11
    Author     : lauropina
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="style/style.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Produtos</title>
    </head>
    <body>
        <h1 class="title-produtos">Lista de Produtos</h1>
        <div>
            <br/>
            <a href="/cadastroProduto", id="novo" >+ Cadastrar novo produto</a>
            <br/>
            <br/>
        </div>
        <table class="produtos">
            <thead>
                <tr>
                    <th class="th-produtos">Código</th>
                    <th class="th-produtos">Descrição</th>
                    <th class="th-produtos">Unidade Medida</th>
                    <th class="th-produtos">Preço Unitário</th>
                    <th class="th-produtos">Quantidade</th>
                    <th class="th-produtos">Valor Total</th>
                    <th class="th-produtos">Opções</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${produtos}" var="produto">
                    <tr>
                        <td class="td-produtos">${produto.codigo}</td>
                        <td class="td-produtos">${produto.descricao}</td>
                        <td class="td-produtos">${produto.unidadeVenda}</td>
                        <td class="td-produtos">R$ ${produto.preco}</td>
                        <td class="td-produtos">${produto.quantidade}</td>
                        <td class="td-produtos"> R$ ${produto.preco* produto.quantidade}</td>
                        <td class="td-produtos">
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
