<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Cart</title>
    <div class="header">
      <h1>Connecticut Books for Sale</h1>
	  <div class="topnav">
	  <script src="list.js"></script>
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      <button onclick = "window.location.href = 'homepage.html';">Home</button>
      <!--  <button onclick = "window.location.href = 'cart.html';">Your Cart</button> -->
      <form action="getBook"><input type="submit" name="id" value="Your Cart"></form>
      <button type="Add to cart">Your Account</button>
	  </div>
	  <link href="style.css" rel="stylesheet">
   </div>
  </head>
<body>
<div style="text-align:center">
<h3>Your cart:</h3>

	<b>${bookNames[0]}</b><br>
	<i>Price: $${bookPrices[0]}</i><br>
	<form action="/deleteBook/1"><input type="submit" name="id" value="Remove Book 1"></form><br>
	<b>${bookNames[1]}</b><br>
	<i>Price: $${bookPrices[1]}</i><br>
	<form action="/deleteBook/2"><input type="submit" name="id" value="Remove Book 2"></form><br>
	<b>${bookNames[2]}</b><br>
	<i>Price: $${bookPrices[2]}</i><br>
	<form action="/deleteBook/3"><input type="submit" name="id" value="Remove Book 3"></form><br>
	<b>${bookNames[3]}</b><br>
	<i>Price: $${bookPrices[3]}</i><br>
	<form action="/deleteBook/4"><input type="submit" name="id" value="Remove Book 4"></form><br>
	<b>${bookNames[4]}</b><br>
	<i>Price: $${bookPrices[4]}</i><br>
	<form action="/deleteBook/5"><input type="submit" name="id" value="Remove Book 5"></form><br>
	<b>${bookNames[5]}</b><br>
	<i>Price: $${bookPrices[5]}</i><br>
	<form action="/deleteBook/6"><input type="submit" name="id" value="Remove Book 6"></form><br>
	<b>${bookNames[6]}</b><br>
	<i>Price: $${bookPrices[6]}</i><br>
	<form action="/deleteBook/7"><input type="submit" name="id" value="Remove Book 7"></form><br>
	<b>${bookNames[7]}</b><br>
	<i>Price: $${bookPrices[7]}</i><br>
	<form action="/deleteBook/8"><input type="submit" name="id" value="Remove Book 8"></form><br>
	<b>${bookNames[8]}</b><br>
	<i>Price: $${bookPrices[8]}</i><br>
	<form action="/deleteBook/9"><input type="submit" name="id" value="Remove Book 9"></form><br>
	<b>${bookNames[9]}</b><br>
	<i>Price: $${bookPrices[9]}</i><br>
	<form action="/deleteBook/10"><input type="submit" name="id" value="Remove Book 10"></form><br>
	
	
	<h3>Total: $${totalString }</h3>
	
	
	
	
	
	
	
<br />
<form action="/checkout"><input type="submit" name="id" value="Checkout"></form><br><br><br />

</body>
</html>
