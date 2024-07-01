<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%--%>
<%--    if(session.getAttribute("name") != null) {--%>
<%--        response.sendRedirect("customerHome.jsp");--%>
<%--    }--%>
<%--%>--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="../css/login.css">
    
    <style>
		/*Navigation*/
	*{
    	padding: 0px;
    	margin: 0px;
    	box-sizing: border-box;
    	list-style: none;
    	font-family: 'Poppins', sans-serif;
	}

	.navbar{
    	width: 100%;
    	height: 100px;
    	background-color: #008080;
    	display: flex;
    	justify-content: space-around;
    	align-items: center;
    	color: #ffffff;
	}

	.menu ul{
    	display: flex;
    	align-items: center;
	}

	.menu ul li a{
    	text-decoration: none;
    	color: #ffffff;
    	padding: 5px 12px;
    	letter-spacing: 2px;
    	font-size: 18px;
	}

	.menu ul li a:hover{
    	border-bottom: 4px solid #ffffff;
    	transition: 0.4s;
	}

	.login a{
    	text-decoration: none;
    	color: #ffffff;
    	font-size: 18px;
    	font-weight: bold;
    	border-radius: 12px;
    	padding: 12px 30px;
    	border: 2px solid #ffffff;
	}

	.login a:hover{
   		background-color: #52cfba;
   		transition: 0.2s; 
	}

	/*footer*/
	.footer{
    	padding: 0;
    	margin: 0;
    	box-sizing: border-box;
    	font-family: 'Poppins', sans-serif;
	}

	.container{
    	background-color: #008080;
	}

	.row{
    	display: flex;
    	justify-content: space-between;
    	padding: 40px 100px;
	}

	.footer-col ul{
    	list-style: none;
	}

	.footer-col h4{
    	color: white;
    	margin-top: 25px;
    	font-size: 22px;
    	position: relative;
    	font-family: 'Ubuntu', sans-serif;
	}

	.footer-col h3::before{
    	content: '';
    	width: 70px;
    	height: 2px;
    	position: absolute;
    	background-color: #008080;
    	bottom: -10px;
	}

	.footer-col ul li{
    	padding: 10px 0;
	}

	.footer-col ul li a{
    	color: white;
    	text-decoration: none;
    	font-size: 16px;
    	opacity: 0.7;
    	transition: 0.5s;
	}

	.footer-col ul li a:hover{
    	opacity: 1;
	}

	.footer-col input{
    	border: none;
    	width: 250px;
    	height: 45px;
    	display: block;
    	padding-left: 20px;
    	margin: 14px 0;
	}

	.footer-col .inputSubmit{
    	padding: 0px 20px;
    	background-color: #008080;
    	border: none;
    	color: white;
	}

	.col p{
    	color: white;
	}

	.row hr{
    	opacity: 0.7;
	}

	.row .socialIcons i{
    	display: inline-block;
    	color: white;
    	font-size: 20px;
    	margin: 0 15px;
    	transition: 0.5s;
	}

	.row .socialIcons i:hover{
    	color: #008080; 
	}

	/*style fot content*/
	*{
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: "Poppins", sans-serif;
	}
	
	body{
		background: #dfe9f5;
	}
	
	.wrapper{
		width: 330px;
		padding: 2rem 1rem;
		margin: 50px auto;
		background-color: #fff;
		border-radius: 10px;
		text-align: center;
		box-shadow: 0 20px 35px rgba(0, 0, 0, 0.1);
	}
	
	h2{
		font-size: 2rem;
		color: #07001f;
		margin-bottom: 1.2rem;
	}
	
	form input{
		width: 92%;
		outline: none;
		border: 1px solid #fff;
		padding: 12px 20px;
		margin-bottom: 10px;
		border-radius: 20px;
		background: #e4e4e4;
	}
	
	button{
		font-size: 1rem;
		margin-top: 1.8rem;
		padding: 10px 0;
		border-radius: 20px;
		outline: none;
		border: none;
		width: 90%;
		color: #fff;
		cursor: pointer;
		background: #008080;
	}
	
	button:hover{
		background: #52cfba;
	}
	
	input:focus{
		border: 1px solid rgb(192, 192, 192);
	}
	
	.terms{
		margin-top: 0.2rem;
		align-items: center;
	}
	
	.terms input{
		height: 1em;
		width: 1em;
		vertical-align: middle;
		cursor: pointer;
	}
	
	.terms label{
		font-size: 0.7rem; 
	}
	
	.terms a{
		color: rgb(17, 107, 143);
		text-decoration: none;
	}
	
	.member{
		font-size: 0.8rem;
		margin-top: 1.4rem;
		color: #636363;
	}
	
	.member a{
		color: rgb(17, 107, 143);
		text-decoration: none;
	}
	.recover{
		text-align: right;
		font-size: 0.7rem;
		margin: 0.3rem 1.4rem 0 0;
	}
	
	.recover a{
		text-decoration: none;
		color: #464647;
	}
	</style>
</head>
<body>

<div class="container">
    <h1>Welcome Back</h1>
    <form id="login-form" method="post" action="../login">
        <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" placeholder="Enter Username" required>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" placeholder="Enter Password" required>
        </div>
        <button type="submit">Login</button>
        <a href="customerRegister.jsp">Create Account</a>
    </form>
</div>
</body>
</html>
