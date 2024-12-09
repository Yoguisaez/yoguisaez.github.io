
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="tesis_yeraldyn.Register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Registrarse - SolarSafe</title>
    <link rel="stylesheet" href="styles.css" />
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
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
            padding: 15px 0;
            border-bottom: 2px solid #444;
            position: sticky;
            top: 0;
        }

        .logo {
            font-size: 24px;
            font-weight: bold;
            color: #f5f5f5;
            text-transform: uppercase;
            letter-spacing: 1px;
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
            box-shadow: 0 6px 8px rgba(0, 0, 0, 0.2);
            margin-top: 20px;
        }

        .form-container h2 {
            margin-bottom: 20px;
            font-size: 26px;
            font-weight: bold;
            color: #f5f5f5;
            text-align: center;
        }

        .form-container .form-group {
            margin-bottom: 15px;
        }

        .form-container label {
            display: block;
            font-size: 18px;
            color: #ccc;
        }

        .form-container input[type="text"],
        .form-container input[type="password"],
        .form-container input[type="email"] {
            width: calc(100% - 22px);
            padding: 12px;
            margin-top: 5px;
            border: 1px solid #444;
            border-radius: 4px;
            background-color: #555;
            color: #f5f5f5;
        }

        .form-container input[type="submit"] {
            width: 100%;
            padding: 14px 20px;
            background-color: #d9534f;
            border: 1px solid #d9534f;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
            font-weight: bold;
            letter-spacing: 0.5px;
            color: #f5f5f5;
            text-align: center;
            font-size: 18px;
        }

        .form-container input[type="submit"]:hover {
            background-color: #c9302c;
            transform: scale(1.05);
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
                    <li><a href="Login.aspx">Iniciar sesión</a></li>
                    <li><a href="Ayuda.aspx" class="ayuda">Ayuda</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <div class="container">
        <div class="form-container">
            <h2>Registrarse</h2>
            <form id="registerForm" runat="server">
                <div class="form-group">
                    <label for="username">Nombre de usuario:</label>
                    <asp:TextBox ID="username" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="password">Contraseña:</label>
                    <asp:TextBox ID="password" runat="server" CssClass="form-control" TextMode="Password" required="required"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="email">Correo electrónico:</label>
                    <asp:TextBox ID="email" runat="server" CssClass="form-control" TextMode="Email" required="required"></asp:TextBox>
                </div>
                <asp:Button ID="btnRegister" runat="server" CssClass="btn" Text="Registrarse" OnClick="RegisterUser" />
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

    <script>
        // Función para manejar el envío del formulario sin recargar la página
        document.getElementById("registerForm").onsubmit = function (event) {
            event.preventDefault(); // Evitar el comportamiento predeterminado de envío del formulario

            // Simulación de lógica de registro
            // Aquí puedes agregar la lógica de tu backend para procesar el registro
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;
            var email = document.getElementById("email").value;

            // Aquí se envían los datos al backend y se verifica si el usuario fue registrado correctamente
            alert("Usuario registrado correctamente");

            // Limpiar campos
            document.getElementById("username").value = "";
            document.getElementById("password").value = "";
            document.getElementById("email").value = "";

            // Redirigir al usuario a la página de inicio
            window.location.href = "Home.aspx";
        };
    </script>
</body>
</html>
