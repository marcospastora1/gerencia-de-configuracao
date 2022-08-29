<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edição de Produto</title>
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
        <h1>Edição de Produto</h1>
        <table>
            <form method="POST" action="/edicaoProduto">
                <div>
                    <input type="hidden" id="idProduto" name="idProduto" value="${produto.idProduto}">
                </div>
                <tr>
                    <td><label>Código</label></td>
                    <td><input id="descricao" name="codigo"  type="text" value="${produto.codigo}"/></td>
                </tr>
                <tr>
                    <td><label>Descrição</label></td>
                    <td><input id="descricao" name="descricao"  type="text" value="${produto.descricao}"/></td>
                </tr>

                <tr>
                    <td><label>Unidade Medida</label></td>
                    <td><input id="unidadeVenda" name="unidadeVenda"  type="text" value="${produto.unidadeVenda}"/></td>
                </tr>

                <tr>
                    <td><label>Preço</label></td>
                    <td><input id="preco" name="preco"  type="text" value="${produto.preco}"/></td>
                </tr>

                <tr>
                    <td><label>Quantidade</label></td>
                    <td><input id="quantidade" name="quantidade"  type="text" value="${produto.quantidade}"/></td>
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
                    position: fixed;
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
