<%@ page import="model.Customer" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    Customer customer = (Customer) session.getAttribute("customer");
    System.out.println(customer.getUserName());
%>

<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <script src="../js/script.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/navbar.css">
    <link rel="stylesheet" href="../css/customerHome.css">
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
			<a href="../index.jsp">Logout</a>
		</div>
	</div>
</div>
<div class="container">
    <div class="main-body">

        <div class="row gutters-sm">
            <div class="col-md-4 mb-3">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex flex-column align-items-center text-center">
                            <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="User" class="rounded-circle" width="150">
                            <div class="mt-3">
                                <h4><%=customer.getFirstName()%> <%=customer.getLastName()%></h4>
                                <p class="text-secondary mb-1"><%=customer.getUserName()%></p>
                                <p class="text-muted font-size-sm">ID <%=customer.getId()%></p>
<%--                                <button class="btn btn-primary">Follow</button>--%>
                                <button onclick="customerDelete()" class="btn btn-outline-danger">Delete Account</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card mt-3">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                            <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-globe mr-2 icon-inline"><circle cx="12" cy="12" r="10"></circle><line x1="2" y1="12" x2="22" y2="12"></line><path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"></path></svg>Website</h6>
                            <span class="text-secondary">https://sample.com</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                            <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-github mr-2 icon-inline"><path d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 1S18.73.65 16 2.48a13.38 13.38 0 0 0-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 0 0 5 4.77a5.44 5.44 0 0 0-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 0 0 9 18.13V22"></path></svg>Github</h6>
                            <span class="text-secondary">sample_github</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                            <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-twitter mr-2 icon-inline text-info"><path d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z"></path></svg>Twitter</h6>
                            <span class="text-secondary">sample_twitter</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                            <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-instagram mr-2 icon-inline text-danger"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line></svg>Instagram</h6>
                            <span class="text-secondary">sample_insta</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                            <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-facebook mr-2 icon-inline text-primary"><path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path></svg>Facebook</h6>
                            <span class="text-secondary">sample_facebook</span>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-8">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-3">
                                <h6 class="mb-0">Full Name</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <%=customer.getFirstName()%> <%=customer.getLastName()%>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <h6 class="mb-0">Email</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <%=customer.getEmail()%>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <h6 class="mb-0">Phone</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <%=customer.getPhone()%>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <h6 class="mb-0">Username</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <%=customer.getUserName()%>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-12">
                                <a class="btn btn-info " href="customerUpdate.jsp">Edit</a>
                            </div>
                        </div>
                    </div>
                </div>

                


            </div>
        </div>

    </div>
</div>

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

</body>
</html>