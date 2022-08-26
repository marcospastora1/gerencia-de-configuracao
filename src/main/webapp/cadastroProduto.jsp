<%-- 
    Document   : cadastroProduto
    Created on : 19/05/2022, 08:05:25
    Author     : lauropina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="style/style.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Produto</title>
    </head>
    <body>
        <h1 class="titulo-cadastro">Cadastro de Produto</h1>
        <table class ="cadastro">
            <form method="POST" action="/cadastroProduto">
                <tr>
                    <td><label>Código</label></td>
                    <td><input id="descricao" name="codigo"  type="text"/></td>
                </tr>
                <tr>
                    <td class="td-cadastro"><label>Descrição</label></td>
                    <td class="td-cadastro"><input id="descricao" name="descricao"  type="text"/></td>
                </tr>

                <tr>
                    <td class="td-cadastro"><label>Unidade Medida</label></td>
                    <td class="td-cadastro"><input id="unidadeVenda" name="unidadeVenda"  type="text"/></td>
                </tr>

                <tr>
                    <td class="td-cadastro"><label>Preço</label></td>
                    <td class="td-cadastro"><input id="preco" name="preco"  type="text"/></td>
                </tr>

                <tr>
                    <td class="td-cadastro"><label>Quantidade</label></td>
                    <td class="td-cadastro"><input id="quantidade" name="quantidade"  type="text"/></td>
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
