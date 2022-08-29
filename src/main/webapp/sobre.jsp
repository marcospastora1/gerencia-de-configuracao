<%-- 
    Document   : sobre
    Created on : 26 de ago. de 2022, 22:46:36
    Author     : POSITIVO
--%>

    <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Portfólio</title>
            <!--CSS-->
            <link rel="stylesheet" href="Style/css/reset.css">
            <link rel="stylesheet" href="Style/css/header.css">
            <link rel="stylesheet" href="Style/css/footer.css">
            <link rel="stylesheet" href="Style/css/main.css">
            <link rel="stylesheet" href="Style/css/responsive.css">
            <!--FONTS-->
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200&display=swap" rel="stylesheet">
            <!--ICONS-->
            <script src="https://kit.fontawesome.com/442725e20f.js" crossorigin="anonymous" defer></script>
        </head>

        <body>
            <header>
                <h1>Equipe.DEV</h1>


                <nav>
                    <a href="" target="">
                        <i class="fa-brands fa-linkedin"></i>
                    </a>

                    <a href="" target="">
                        <i class="fa-brands fa-instagram"></i>
                    </a>
                    <a href="https://github.com/marcospastora1/gerencia-de-configuracao" target="_blank">
                        <i class="fa-brands fa-github"></i>
                    </a>
                    <a href="" target="">
                        <i class="fa-brands fa-facebook"></i>
                    </a>
                </nav>
            </header>

            <main>

                <section class="main-content">
                    <article class="text">
                        <aside class="techs">
                            <h2 style="margin-bottom: 5%">👨🏻‍💻 Tecnologias</h2>

                            <div class="cards-container">
                                <div class="card">
                                    <img src="Imagens do Projeto/img/techs/html5-logo.png" alt="Logo do HTML5">
                                </div>

                                <div class="card">
                                    <img src="Imagens do Projeto/img/techs/logo-css.png" alt="Logo do CSS">
                                </div>

                                <div class="card">
                                    <img src="Imagens do Projeto/img/techs/javascript.png" alt="Logo do Javascript">
                                </div>

                                <div class="card">
                                    <img src="Imagens do Projeto/img/techs/React-icon.png" alt="Logo do React">
                                </div>

                            </div>
                        </aside>
                        <h2 style="margin-bottom: 5%;margin-top: 5%;">🧑🏻‍🎓Sobre a equipe</h2>
                        <div class="equipe">
                            <div id="ravel" style="border:10px;">
                                <h3>Ravel Carvalho</h3>
                                <p>
                                    Olá, meu nome é Ravel, tenho 24 anos. Estudante de Análise e desenvolvimento de sistemas na Unisales.
                                </p>
                            </div>
                            <div id="jose">
                                <h3>José Renato</h3>
                                <p>
                                    Olá, meu nome é José , tenho 21 anos. Estudante de Análise e desenvolvimento de sistemas na Unisales.
                                </p>
                            </div>
                            <div id="glayton">
                                <h3>Glayton Veryssimo</h3>
                                <p>
                                    Olá, meu nome é Glayton, tenho 27 anos. Estudante de Análise e desenvolvimento de sistemas na Unisales.
                                </p>
                            </div>
                            <div id="wasny">
                                <h3>Wasny Henrique</h3>
                                <p>
                                    Olá, meu nome é Wasny, tenho 24 anos. Estudante de Sistemas de Informação na Unisales.
                                </p>
                            </div>
                            <div id="marcos">
                                <h3>Marcos Pastora</h3>
                                <p>
                                    Olá, meu nome é Marcos, tenho 25 anos. Estudante de Análise e desenvolvimento de sistemas na Unisales.
                                </p>
                            </div>
                            <div id="jefferson">
                                <h3>Jefferson Costa</h3>
                                <p>
                                    Olá, meu nome é Jefferson, tenho 21 anos. Estudante de Análise e desenvolvimento de sistemas na Unisales.
                                </p>
                            </div>
                        </div>
                    </article>



                </section>

                <figure>
                    <img src="Imagens do Projeto/img/techs/RAVELLINK.jpg" alt="Imagem de Ravel Cravo">
                    <figcaption>Ravel Cravo Carvalho</figcaption>
                    <img src="Imagens do Projeto/img/techs/jose.jpg" alt="Imagem de Jose Renato">
                    <figcaption>José Renato</figcaption>
                    <img src="Imagens do Projeto/img/techs/glayton" alt="Imagem de Glayton">
                    <figcaption>Galyton Verissimo</figcaption>
                    <img src="Imagens do Projeto/img/techs/wasny.jpg" alt="Imagem de Wasny">
                    <figcaption>Wasny Moreira</figcaption>
                    <img src="Imagens do Projeto/img/techs/marcos.jpg" alt="Imagem de Marcos">
                    <figcaption>Marcos Pastora</figcaption>
                    <img src="Imagens do Projeto/img/techs/jefao.jpg" alt="Imagem de Jefferson">
                    <figcaption>Jefferson Costa</figcaption>

                </figure>


            </main>

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