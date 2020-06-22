<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<div class="header">
    <title>Checkout</title>
	<div><h1>Connecticut Books for Sale</h1><br /><button onclick = "window.location.href = 'homepage.html';">Home</button><form action="getBook"><input type="submit" name="id" value="Your Cart"></form><button type="Add to cart">Your Account</button></div>
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500" rel="stylesheet">
    <!-- CSS -->
    <link href="style.css" rel="stylesheet">
    <meta name="robots" content="noindex,follow" />
	</div>

  </head>
<div class="row">
  <div class="col-75">
    <div class="container">
      <form action="/action_page.php">

        <div class="row">
          <div class="col-50">
            <h3>Billing Address</h3>
            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" id="fname" name="firstname" placeholder="John M. Doe">
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email" placeholder="john@example.com">
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" name="address" placeholder="542 W. 15th Street">
            <label for="city"><i class="fa fa-institution"></i> City</label>
            <input type="text" id="city" name="city" placeholder="New York">

            <div class="row">
              <div class="col-50">
                <label for="state">State</label>
                <input type="text" id="state" name="state" placeholder="NY">
              </div>
              <div class="col-50">
                <label for="zip">Zip</label>
                <input type="text" id="zip" name="zip" placeholder="10001">
              </div>
            </div>
          </div>

          <div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="John More Doe">
            <label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="September">

            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear" placeholder="2018">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="352">
              </div>
            </div>
          </div>
		<div class="col-50">
      <h4>Cart
        <span class="price" style="color:black">
          <i class="fa fa-shopping-cart"></i>
          <b></b>
        </span>
      </h4>
      <p><a href="#">${bookNames[0]}</a> <span class="price">${bookPrices[0]}</span></p>
      <p><a href="#">${bookNames[1]}</a> <span class="price">${bookPrices[1]}</span></p>
      <p><a href="#">${bookNames[2]}</a> <span class="price">${bookPrices[2]}</span></p>
      <p><a href="#">${bookNames[3]}</a> <span class="price">${bookPrices[3]}</span></p>
      <p><a href="#">${bookNames[4]}</a> <span class="price">${bookPrices[4]}</span></p>
      <p><a href="#">${bookNames[5]}</a> <span class="price">${bookPrices[5]}</span></p>
      <p><a href="#">${bookNames[6]}</a> <span class="price">${bookPrices[6]}</span></p>
      <p><a href="#">${bookNames[7]}</a> <span class="price">${bookPrices[7]}</span></p>
      <p><a href="#">${bookNames[8]}</a> <span class="price">${bookPrices[8]}</span></p>
      <p><a href="#">${bookNames[9]}</a> <span class="price">${bookPrices[9]}</span></p>
      <hr>
      <p>Total <span class="price" style="color:black"><b>${totalString}</b></span></p>
    </div>
        </div>
        <label>
          <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
        </label>
      </form>

    </div>
<div style="text-align: center; border: 0px solid">
<form action="/thank-you"><input type="submit" value="Checkout"></form>
<br><br><br><br><br>
</div>
  </div>
    
  </div>
</div>
</html>