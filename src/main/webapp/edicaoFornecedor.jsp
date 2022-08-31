<%-- 
    Document   : edicaoFornecedor
    Created on : 28 de ago de 2022, 21:12:46
    Author     : marco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Style/style.css" rel="stylesheet" type="text/css">
        <title>Edição de Fornecedor</title>
    </head>
    <body>
        <h1 class="titulo-edicao">Edição de Fornecedor</h1>
        <table>
            <form method="POST" action="/edicaoFornecedor">
                <div>
                    <input type="hidden" id="idFornecedor" name="idFornecedor" value="${fornecedor.idFornecedor}">
                </div>

                <tr>
                    <td class="td-edicao"><label>Código</label></td>
                    <td><input id="descricao" name="codigo"  type="text" value="${fornecedor.codigo}"/></td>
                </tr>
                <tr>
                    <td class="td-edicao"><label>Nome</label></td>
                    <td class="td-edicao"><input id="nome" name="nome"  type="text" value="${fornecedor.nome}"/></td>
                </tr>

                <tr>
                    <td class="td-edicao"><label>CNPJ</label></td>
                    <td class="td-edicao"><input id="cnpj" name="cnpj"  type="text" value="${fornecedor.cnpj}"/></td>
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

