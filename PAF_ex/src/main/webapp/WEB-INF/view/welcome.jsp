<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>SmartWay | Home</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    

</head>
<body style="background-image:url(/static/images/Ba.jpg) ">
	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/welcome" class="navbar-brand">ABCD</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="">Login</a></li>
					<li><a href="">Signup</a></li>
					<li><a href="/show-customers">Customers</a></li>
					<li><a href="/addcustomers">Add Customers</a></li>
				</ul>
			</div>
		</div>
	</div> 

<c:choose>
<c:when test="${mode=='MODE_HOME' }">
<div class="container" id="homediv" >
		<div class="jumbotron text-center">
			<h1>!Welcome to ABCD!</h1>
			<h2>Smarter Shopping, feeling awesome..!</h2>
		</div>
	</div>
</c:when>

<c:when test="${mode=='MODE_ADDCUSTOMER' }">
	<div class="container text-center">
				<h3>Add New Customer</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-customer">
					<input type="hidden" name="id" value="${user.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">id</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="id"
								value="${user.id }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">User Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="userName "
								value="${user.userName }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">password </label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${user.password}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">phone</label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="phone"
								value="${user.phone }" />
						</div>
					</div>
					
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Add Customer" />
					</div>
				</form>
			</div>
			</c:when>
			
			<c:when test="${mode=='ALL_CUSTOMER' }">
			
			<div class="container text-center" id="tasksDiv">
				<h3>All Customers</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>User Name</th>
								<th>password </th>
								<th>phone</th>
								<th>Delete</th>
								<th>Edit</th>
								
							</tr>
						</thead>
						<tbody>
							<c:forEach var="user" items="${user }">
								<tr>
									<td>${user.id}</td>
									<td>${user.userName}</td>
									<td>${user.password}</td>
									<td>${user.phone}</td>
									<td><a href="/delete-customer?id=${user.id }"><span
											class="glyphicon glyphicon-trash"></span></a></td>
									<td><a href="/edit-customer?id=${user.id }"><span
											class="glyphicon glyphicon-pencil"></span></a></td>
									
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			
			</c:when>
			
			<c:when test="${mode=='MODE_UPDATE' }">
			<div class="container text-center">
				<h3>Update Customer</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-customer">
					<input type="hidden" name="id" value="${user.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">User Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="userName"
								value="${user.userName }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3"></label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${user.password}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">phone</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="phone"
								value="${user.phone }" />
						</div>
					</div>
			
					
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Update" />
					</div>
				</form>
			</div>
		</c:when>
			
			</c:choose>
	


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>