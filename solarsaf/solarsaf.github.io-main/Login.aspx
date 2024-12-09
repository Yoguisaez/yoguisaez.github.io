<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="tesis_yeraldyn.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Iniciar sesión - SolarSafe</title>
    <link rel="stylesheet" href="styles.css" />
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #f5f5f5;
            background-color: #2c2c2c;
            line-height: 1.6;
        }

        .container {
            width: 90%;
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
        }

        .header {
            background-color: #1a1a1a;
            padding: 10px 0;
            border-bottom: 2px solid #444;
            position: sticky;
            top: 0;
        }

        .logo {
            font-size: 22px;
            font-weight: bold;
            color: #f5f5f5;
            text-transform: uppercase;
            letter-spacing: 2px;
            font-family: 'Georgia', serif;
        }

        .nav ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: flex-end;
        }

        .nav ul li {
            margin-left: 20px;
        }

        .nav ul li a {
            text-decoration: none;
            color: #f5f5f5;
            padding: 10px 15px;
            border-radius: 4px;
            transition: background-color 0.3s ease;
            font-weight: bold;
            letter-spacing: 0.5px;
        }

        .nav ul li a:hover {
            background-color: #444;
        }

        .form-container {
            background-color: #333;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }

        .form-container h2 {
            margin-bottom: 20px;
            font-size: 24px;
            font-weight: bold;
            color: #f5f5f5;
        }

        .form-container .form-group {
            margin-bottom: 20px;
        }

        .form-container label {
            display: block;
            color: #ccc;
            margin-bottom: 5px;
        }

        .form-container input[type="text"],
        .form-container input[type="password"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #444;
            border-radius: 4px;
            background-color: #555;
            color: #f5f5f5;
        }

        .form-container input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #d9534f;
            border: 1px solid #d9534f;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            font-weight: bold;
            letter-spacing: 0.5px;
            color: #f5f5f5;
        }

        .form-container input[type="submit"]:hover {
            background-color: #c9302c;
        }

        .footer {
            background-color: #1a1a1a;
            text-align: center;
            padding: 10px 0;
            color: #777;
        }
    </style>
</head>
<body>
    <header class="header">
        <div class="container">
            <h1 class="logo">SolarSafe</h1>
            <nav class="nav">
                <ul>
                    <li><a href="Home.aspx">Inicio</a></li>
                    <li><a href="Register.aspx">Registrate</a></li>
                    <li><a href="Ayuda.aspx" class="ayuda">Ayuda</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <div class="container">
        <div class="form-container">
            <h2>Iniciar sesión</h2>
            <form id="loginForm" runat="server" method="post" onsubmit="return false;">
                <div class="form-group">
                    <label for="username">Nombre de usuario:</label>
                    <input type="text" id="username" runat="server" required />
                </div>
                <div class="form-group">
                    <label for="password">Contraseña:</label>
                    <input type="password" id="password" runat="server" required />
                </div>
                <input type="submit" value="Iniciar sesión" class="btn" onclick="submitLogin()" />
            </form>
        </div>
    </div>

    <footer class="footer">
        <div class="container">
            <h3>Datos de contacto</h3>
            <p>Correo: SolarSafe.ltda@gmail.com</p>
            <p>Numero Telefonico: 8 888 8888 88</p>
            <p>Direccion: Los carrera 899</p>
        </div>
    </footer>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript">
        function submitLogin() {
            var username = $('#username').val();
            var password = $('#password').val();

            // Aquí iría la lógica para verificar las credenciales
            // Esta es una simulación con un mensaje de éxito
            alert('Usuario registrado correctamente');
            
            // Limpia los campos
            $('#username').val('');
            $('#password').val('');
            
            // Redirige al usuario a la página de inicio
            window.location.href = 'Home.aspx';
        }
    </script>
</body>
</html>
