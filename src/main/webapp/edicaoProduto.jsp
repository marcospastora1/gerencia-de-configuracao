<%-- 
    Document   : edicaoProduto
    Created on : 19/05/2022, 08:05:36
    Author     : lauropina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style/style.css" rel="stylesheet" type="text/css">
        <title>Edição de Produto</title>
    </head>
    <body>
        <h1 class="titulo-edicao">Edição de Produto</h1>
        <table>
            <form method="POST" action="/edicaoProduto">
                <div>
                    <input type="hidden" id="idProduto" name="idProduto" value="${produto.idProduto}">
                </div>
                <tr>
                    <td class="td-edicao"><label>Código</label></td>
                    <td><input id="descricao" name="codigo"  type="text" value="${produto.codigo}"/></td>
                </tr>
                <tr>
                    <td class="td-edicao"><label>Descrição</label></td>
                    <td class="td-edicao"><input id="descricao" name="descricao"  type="text" value="${produto.descricao}"/></td>
                </tr>

                <tr>
                    <td class="td-edicao"><label>Unidade Medida</label></td>
                    <td class="td-edicao"><input id="unidadeVenda" name="unidadeVenda"  type="text" value="${produto.unidadeVenda}"/></td>
                </tr>

                <tr>
                    <td class="td-edicao"><label>Preço</label></td>
                    <td class="td-edicao"><input id="preco" name="preco"  type="text" value="${produto.preco}"/></td>
                </tr>

                <tr>
                    <td class="td-edicao"><label>Quantidade</label></td>
                    <td class="td-edicao"><input id="quantidade" name="quantidade"  type="text" value="${produto.quantidade}"/></td>
                </tr>

                <tr>
                    <td colspan="2" id="button">
                        <button type="submit" value="Salvar">
                            Salvar
                        </button>
                    </td>
                </tr>
            </form>
        </table>
    </body>
</html>

