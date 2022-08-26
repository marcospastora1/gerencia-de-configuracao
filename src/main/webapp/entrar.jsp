<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Entrar</title>
        
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
        <h1>Entrar</h1>

        <form>

            <div>
                <label for="e-mail">Email</label>
                <input type="email" name="email" placeholder="seuemail@email.com" id="email" required>
            </div>
            
            <div>
                <label for="e-mail">Senha</label>
                <input type="password" name="senha" placeholder="Senha" id="senha" required>
            </div>
            
            <div>
              <button type="submit" onclick="Entrar()">Entrar</button>
            </div>

        </form>
            
        <script>
            function Entrar() {
                let inputEmail = document.getElementById('email');
                let inputSenha = document.getElementById('senha');
                if(inputEmail.value === '' || inputSenha.value === '') {
                    alert('Campos vazios ou dados inválidos. Tente Novamente.');
                } else {
                    alert('Entrou!');  
                }
            }
        </script>
    </body>
</html>