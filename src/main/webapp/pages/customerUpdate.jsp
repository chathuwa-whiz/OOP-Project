<%@ page import="model.Customer" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Customer customer = (Customer) session.getAttribute("customer");
%>

<!DOCTYPE html>
<html lang="en">
<head>

    <title>UPDATE</title>
    <link rel="stylesheet" href="../css/customerUpdate.css">
    <link rel="stylesheet" href="../css/navbar.css">
	
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
<!--navigation bar -->
	
	<div class="navbar">
			<div class="logo">
				<h1>Paradise Property</h1>
			</div>
			<div class="menu">
				<ul>
					<li><a href="#">Home</a></li>
					<li><a href="#">Lands</a></li>
					<li><a href="#">Apartments</a></li>
					<li><a href="#">About Us</a></li>
					<li><a href="#">Contact Us</a></li>
				</ul>
			</div>
			<div class="login">
				<a href="customerLogin.jsp">Login</a>
			</div>
		</div>
	</div>

<%--body--%>
    <form action="../update" method="post" id="updateCustomer">
        <label for="firstName">First Name:</label>
        <input type="text" name="firstName" id="firstName" value="<%=customer.getFirstName()%>" required> <br>

        <label for="lastName">Last Name:</label>
        <input type="text" name="lastName" id="lastName" value="<%=customer.getLastName()%>" required> <br>

        <label for="lastName">User Name:</label>
        <input type="text" name="userName" id="userName" value="<%=customer.getUserName()%>" readonly> <br>

        <label for="phone">Phone Number:</label>
        <input type="tel" name="phone" id="phone" value="<%=customer.getPhone()%>"> <br>

        <label for="email">Email:</label>
        <input type="email" name="email" id="email" value="<%=customer.getEmail()%>" required> <br>

        <label for="password">Password:</label>
        <input type="password" name="password" id="password" required> <br>

        <label for="confirmPassword">Confirm Password:</label>
        <input type="password" name="confirmPassword" id="confirmPassword" required> <br>

        <button type="submit">Update</button>
    </form><br>
    <p id="message"></p>
    
    <!--Footer-->
	<footer class="footer">
        <div class="container">
            <div class="row">
                <!--1st column-->
                <div class="footer-col">
                    <h4>Pages</h4>
                    <ul>
                        <li><a href="contact.html">Contact Us</a></li>
                        <li><a href="about.html">About Us</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Terms & Conditions</a></li>
                    </ul>
                </div>
                <!--2nd column-->
                <div class="footer-col">
                    <ul>
                        <br>
                        <br>
                        <li><a href="#">Promotions</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">News</a></li>
                        <li><a href="#">FAQs</a></li>
                    </ul>
                </div>
                <!--3rd column-->
                <div class="footer-col">
                    <h4>Office</h4>
                    <ul>
                        <li><a href="">312, Kandy rd</a></li>
                        <li><a href="">Malabe</a></li>
                        <li><a href="">+97 123134235</a></li>
                        <li><a href="">support@sunsetsafari.com</a></li>
                    </ul>
                </div>
                <!--4th column-->
                
            </div>
            <hr>
            <div class="row">
                <div class="col">
                    <p>&#169; 2024 Paradise Property. All Rights Reserved.</p>
                </div>
                <div class="socialIcons">
                    <a href=""><i class="fa-brands fa-facebook"></i></a>
                    <a href=""><i class="fa-brands fa-instagram"></i></a>
                    <a href=""><i class="fa-brands fa-twitter"></i></a>
                    <a href=""><i class="fa-brands fa-youtube"></i></a>
                </div>
            </div>
        </div>
    </footer>

    <script>
        document.getElementById("updateCustomer").addEventListener("submit", function(event) {
            event.preventDefault();

            const email = document.getElementById("email").value;
            const phone = document.getElementById("phone").value;
            const password = document.getElementById("password").value;
            const confirmPassword = document.getElementById("confirmPassword").value;

            if (password !== confirmPassword) {
                document.getElementById("message").innerHTML = "Passwords do not match!";
                return;
            }

            document.getElementById('updateCustomer').submit();
        });
    </script>

</body>
</html>