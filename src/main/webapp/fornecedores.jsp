<%-- Document : produtos Created on : 28/08/2022, 21:17:36 Author : marco --%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@page contentType="text/html" pageEncoding="UTF-8" %>
            <!DOCTYPE html>
            <html>

            <head>
                <link href="Style/style.css" rel="stylesheet" type="text/css">
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Fornecedores</title>
            </head>

            <body>
                <h1 class="title-produtos">Lista de Fornecedores</h1>
                <div>
                    <nav>
                        <a href="/cadastroFornecedor">+ Cadastrar novo fornecedor</a>

                        <div>
                            <a href="/home">Voltar</a>
                        </div>
                    </nav>
                </div>
                <table class="produtos">
                    <thead>
                        <tr>
                            <th class="th-produtos">Código</th>
                            <th class="th-produtos">Nome</th>
                            <th class="th-produtos">CNPJ</th>
                            <th class="th-produtos">Opções</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${fornecedores}" var="fornecedor">
                            <tr>
                                <td class="td-produtos">${fornecedor.codigo}</td>
                                <td class="td-produtos">${fornecedor.nome}</td>
                                <td class="td-produtos">${fornecedor.cnpj}</td>
                                <td class="td-produtos">
                                    <a href="/edicaoFornecedor?idFornecedor=${fornecedor.idFornecedor}"
                                        style="float:left;">
                                        Editar
                                    </a>

                                    <a href="/excluirFornecedor?idFornecedor=${fornecedor.idFornecedor}"
                                        onclick="excluir()">
                                        Excluir
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>

                    </tbody>
                </table>
                <script>
                    function excluir() {
                        alert('Você está excluindo esse fornecedor!');
                    }
                </script>
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