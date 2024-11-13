<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <style type="text/css">
        form {
            display: inline-block;
            text-align: left;
            border: 1px solid black;
            padding: 20px;
        }
        label, input {
            display: block;
            margin: 5px 0;
        }
        input[type="submit"] {
            margin: 10px 0 0 0;
            padding: 5px 10px;
            background-color: blue;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
   <center><h1> My Login Page</h1></center>
    <center>
    <form>
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>

        <input type="submit" value="Login">
    </form>
</center>
    <script type="text/javascript">
        const form = document.querySelector('form');
        form.addEventListener('submit', function(event) {
            event.preventDefault(); 
           
            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;
            if (username === 'myusername' && password === 'mypassword') {
                alert('Login successful!');
            } else {
                alert('Username or password incorrect. Please try again.');
            }
        });
    </script>
</body>
</html>
