<%-- 
    Document   : cadastroFornecedor
    Created on : 28 de ago de 2022, 21:12:19
    Author     : marco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="Style/style.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Fornecedor</title>
    </head>
    <body>
        <h1 class="titulo-cadastro">Cadastro de Fornecedor</h1>
        <table class ="cadastro">
            <form method="POST" action="/cadastroFornecedor">
                <tr>
                    <td><label>Código</label></td>
                    <td><input id="codigo" name="codigo"  type="text" required/></td>
                </tr>

                <tr>
                    <td class="td-cadastro"><label>Nome</label></td>
                    <td class="td-cadastro"><input id="nome" name="nome"  type="text" required/></td>
                </tr>

                <tr>
                    <td class="td-cadastro"><label>CNPJ</label></td>
                    <td class="td-cadastro"><input id="cnpj" name="cnpj"  type="text" requried /></td>
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
        <footer style ="height: 100px;
                    bottom: 0;
                    position: relative;
                    background-color: #D5D5D5;
                    text-align: center;
                    width: 100%;
                    display: flex;
                    justify-content: center;
                    align-items: center;">
        <span>
            &copy; Unisales, 2022 - Todos os direitos reservados
        </span>

    </footer>
    </body>
</html>
