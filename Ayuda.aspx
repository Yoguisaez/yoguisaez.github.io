<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ayuda.aspx.cs" Inherits="tesis_yeraldyn.Ayuda" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Soporte - SolarSafe</title>
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
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }

        .header {
            background-color: #1a1a1a;
            padding: 15px 0;
            border-bottom: 3px solid #444;
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .logo {
            font-size: 26px;
            font-weight: bold;
            color: #f5f5f5;
            text-transform: uppercase;
            letter-spacing: 2px;
            font-family: 'Georgia', serif;
            text-align: center;
        }

        .nav ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            gap: 15px;
        }

        .nav ul li a {
            text-decoration: none;
            color: #f5f5f5;
            padding: 10px 20px;
            border-radius: 4px;
            transition: background-color 0.3s ease, transform 0.2s ease;
            font-weight: bold;
            letter-spacing: 0.5px;
        }

        .nav ul li a:hover {
            background-color: #444;
            transform: scale(1.05);
        }

        .main-content {
            background-color: #3a3a3a;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 6px 10px rgba(0, 0, 0, 0.2);
            margin-top: 20px;
        }

        .main-content h2 {
            margin-bottom: 20px;
            font-size: 28px;
            font-weight: bold;
            color: #f5f5f5;
        }

        .main-content p {
            color: #ccc;
            margin-bottom: 15px;
            line-height: 1.8;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            color: #ccc;
            font-weight: bold;
            margin-bottom: 8px;
        }

        .form-group textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #555;
            border-radius: 6px;
            background-color: #444;
            color: #f5f5f5;
            resize: vertical;
        }

        .btn {
            width: 100%;
            padding: 12px;
            background-color: #d9534f;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            font-weight: bold;
            color: #f5f5f5;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .btn:hover {
            background-color: #c9302c;
            transform: translateY(-2px);
        }

        .footer {
            background-color: #1a1a1a;
            text-align: center;
            padding: 20px 0;
            color: #777;
            margin-top: 20px;
            font-size: 14px;
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
                </ul>
            </nav>
        </div>
    </header>

    <main class="container">
        <div class="main-content">
            <h2>Soporte</h2>
            <p>Para asistencia adicional, por favor contacta a nuestro equipo de soporte a través del siguiente formulario:</p>
           <form id="supportForm" onsubmit="sendComment(); return false;">
    <div class="form-group">
        <label for="issue">Descripción del problema:</label>
        <textarea id="issue" required></textarea>
    </div>
    <button type="button" class="btn" onclick="sendComment()">Enviar</button>
</form>

<script>
    function sendComment() {
        // Obtén el valor del comentario.
        const issueText = document.getElementById("issue").value;

        // Validar si el campo está vacío.
        if (issueText.trim() === "") {
            alert("Por favor, escribe un comentario antes de enviar.");
            return;
        }

        // Mostrar el mensaje de confirmación.
        alert("El comentario fue enviado correctamente.");

        // Limpiar el campo de texto.
        document.getElementById("issue").value = "";
    }
</script>

        </div>
    </main>

    <footer class="footer">
            <h3>Datos de contacto</h3>
            <p>Correo: SolarSafe.ltda@gmail.com</p>
            <p>Numero Telefonico: 8 888 8888 88</p>
            <p>Direccion: Los carrera 899</p>
    </footer>
</body>
</html>
