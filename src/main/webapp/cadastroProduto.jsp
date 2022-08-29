<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Produto</title>

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
        <h1>Cadastro de Produto</h1>
        <table>
            <form method="POST" action="/cadastroProduto">
                <tr>
                    <td><label>Código</label></td>
                    <td><input id="descricao" name="codigo"  type="text" required/></td>
                </tr>
                <tr>
                    <td><label>Descrição</label></td>
                    <td><input id="descricao" name="descricao"  type="text" required/></td>
                </tr>

                <tr>
                    <td><label>Unidade Medida</label></td>
                    <td><input id="unidadeVenda" name="unidadeVenda"  type="text" required/></td>
                </tr>

                <tr>
                    <td><label>Preço</label></td>
                    <td><input id="preco" name="preco"  type="text" required/></td>
                </tr>

                <tr>
                    <td><label>Quantidade</label></td>
                    <td><input id="quantidade" name="quantidade"  type="text" required/></td>
                </tr>

                <tr>
                    <td colspan="2" id="button">
                        <button type="submit" value="Salvar">
                            Salvar
                        </button>
                    </td>
                </tr>
            </form>
            <div>
                <a href="/produtos">Voltar</a>
            </div>
        </table>
    </body>
</html>