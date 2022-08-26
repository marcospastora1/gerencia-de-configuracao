<!doctype html>
<html>
    <head>
        <title>Formulário de contato</title>
        <style>
         
            html {
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
                font-size:12pt;
                font-family: verdana;
                
                margin-left: 10%;
                margin-bottom: 20px;
            }

            a:hover {
                color: #05B2D9;
                text-decoration: underline;
            }
            
            form {
                margin: 0 auto;
                width: 40%;
                
                display: flex;
                flex-direction: column;
                align-items: center;
                text-align: center;
                
                border: 1px solid #a4aab3;
                border-radius: 20px;
                
                padding: 10px;
            }
            
            label {
                width: 65%;
                text-align: left;
            }
            
            input {
                margin: 10px 0;
                width: 65%;
            }
            
            input:last-of-type {
                margin-top: 5px
            }
            
            button {
                margin-top: 20px;
                width: 65%
            }
            
            div {
                width: 100%;
                    
                display: flex;
                flex-direction: column;
                align-items: center
            }
            
            textarea {
                width: 65%
            }
            
           

        </style>
    </head>
    <body>
        <a href="/">Voltar</a>
        <h1>Fale conosco</h1>
        <form name="formContato" action="faleConosco.jsp" method="post">
            <div class="input-field">
                <label>Nome</label>
                <input type="text" name="nome" id='nome' placeholder="Digite o nome" required/>
            </div>
            
            <div class="input-field">
                <label>Email</label>
                <input type="email" name="email" id='email' placeholder="Digite o seu email" required/>       
            </div>
            
            <div class="input-field">
                <label>Mensagem</label>
                <textarea placeholder="Digite a sua mensagem" id='mensagem' required></textarea>       
            </div>

            <button type="submit" onclick="envioForm()">Enviar</button>
        </form>
    <script>
        
        function envioForm() {
        
            let inputNome = document.getElementById('nome');
            let inputEmail = document.getElementById('email');
            let inputMensagem = document.getElementById('mensagem');

            if(inputEmail.value === '' || inputNome.value === '' || inputMensagem.value === '') {
                alert('Campos vazios ou dados inválidos. Tente Novamente.');
            } else {
                alert('Mensagem com sucesso! Obrigado!');  
            }
            
        }
        
    </script>
    </body>
    
</html>


