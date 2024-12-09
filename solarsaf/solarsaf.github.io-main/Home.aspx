<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="tesis_yeraldyn.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>SolarSafe</title>
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
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        /* Header */
        .header {
            background-color: #1a1a1a;
            padding: 10px 0;
            border-bottom: 2px solid #444;
            position: sticky;
            top: 0;
        }

        .logo {
            font-size: 22px; /* Aumento del tamaño del texto */
            font-weight: bold;
            color: #f5f5f5;
            text-transform: uppercase;
            letter-spacing: 2px; /* Espaciado entre letras para un efecto de logo */
            font-family: 'Georgia', serif; /* Fuente más formal */
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
            letter-spacing: 0.5px; /* Espaciado entre letras */
        }

        .nav ul li a:hover {
            background-color: #444;
        }

        /* Estilo para el botón "Ayuda" diferente */
        .nav ul li a.ayuda {
            background-color: #d9534f; /* Rojo para "Ayuda" */
            border: 1px solid #d9534f; /* Borde rojo */
        }

        .nav ul li a.ayuda:hover {
            background-color: #c9302c; /* Rojo más oscuro */
        }

        /* Features Section */
        .features {
            display: flex;
            flex-direction: column;
            gap: 20px;
            align-items: center;
            margin-bottom: 40px;
        }

        .feature {
            display: flex;
            align-items: flex-start;
            gap: 20px;
            max-width: 800px;
            width: 100%;
            padding: 20px;
            background-color: #333;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .feature img {
            max-width: 150px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .feature:nth-child(even) {
            flex-direction: row-reverse;
        }

        .feature div {
            flex-grow: 1;
        }

        .feature h3 {
            margin-bottom: 10px;
            font-size: 22px; /* Aumento del tamaño del título */
            font-weight: bold;
            color: #f5f5f5;
        }

        .feature p {
            color: #ccc;
        }

        /* Imagen principal centrada y más ancha */
        .main-image {
            display: block;
            margin: 0 auto;
            width: 100%;
            max-width: 800px;
            border: 2px solid #444;
            border-radius: 10px;
        }

        /* Footer */
        .footer {
            background-color: #1a1a1a;
            text-align: center;
            padding: 20px 0;
            color: #777;
        }
    </style>
</head>
<body>
    <header class="header">
        <div class="container">
            <h1 class="logo">Bienvenido a SolarSafe</h1>
            <nav class="nav">
                <ul>
                    <li><a href="Login.aspx">Iniciar sesión</a></li>
                    <li><a href="Register.aspx">Registrate</a></li>
                    <li><a href="Ayuda.aspx" class="ayuda">Ayuda</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- Imagen principal más grande y centrada -->
    <div class="container">
        <img src="https://peradejordi.com/wp-content/uploads/2024/07/portada_estres-termic--1024x512.png" alt="Imagen principal" class="main-image">
    </div>

    <section class="features container">
        <div class="feature">
            <img src="https://i.ebayimg.com/thumbs/images/g/7SsAAOSw5JVnRZp6/s-l1200.webp" alt="Pulsera Sobrio">
            <div>
                <h3>Diseño</h3>
                <p>Con un diseño elegante y moderno, nuestras pulseras se adaptan perfectamente a cualquier estilo y ocasión, ofreciendo una solución práctica y sofisticada para tu día a día.</p>
            </div>
        </div>
        <div class="feature">
            <img src="https://i.ebayimg.com/images/g/fzQAAOSwJJVnRZp7/s-l960.webp" alt="Pulsera Funcionalidad">
            <div>
                <h3>Funcionalidad</h3>
                <p>Equipadas con tecnología avanzada para monitorizar tu actividad diaria, nivel de estrés y más. Mantente siempre informado y conectado con tu bienestar.</p>
            </div>
        </div>
        <div class="feature">
            <img src="https://i.ebayimg.com/images/g/nlIAAOSwmrRnRZp9/s-l960.webp" alt="Pulsera Compatibilidad">
            <div>
                <h3>Compatibilidad</h3>
                <p>Nuestras pulseras son compatibles con todos los dispositivos modernos, desde smartphones hasta ordenadores, para que puedas mantenerte conectado donde sea que estés.</p>
            </div>
        </div>
    </section>

    <footer class="footer">
        <div class="container">
            <h1>Datos de contacto</h1>
            <p>Correo: SolarSafe.ltda@gmail.com</p>
            <p>Numero Telefonico: 8 888 8888 88</p>
            <p>Direccion: Los carrera 899</p>
        </div>
    </footer>
</body>
</html>
