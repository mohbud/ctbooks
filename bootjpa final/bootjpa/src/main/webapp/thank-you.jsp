<!DOCTYPE html>
<html>
<head>
<title>Thank You</title>
<div class="header">
      <h1>Connecticut Books for Sale</h1>
	  <div class="topnav">
	  <script src="list.js"></script>
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      <button onclick = "window.location.href = 'homepage.html';">Home</button>
      <form action="getBook"><input type="submit" name="id" value="Your Cart"></form>
      <button type="Add to cart">Your Account</button>
	  </div>
	  <link href="style.css" rel="stylesheet">
   </div>
</head>
<body>
<div>
<h3>Thank you for your purchase!</h3>
<h3>A confirmation email has been sent</h3>
<h4>Books ordered:</h4>
<p>${bookNames[0]}<br />${bookNames[1]}<br />${bookNames[2]}<br />${bookNames[3]}<br />${bookNames[4]}<br />${bookNames[5]}<br />${bookNames[6]}<br />${bookNames[7]}<br />${bookNames[8]}<br />${bookNames[9]}</p></div>
<h4>Price: ${totalString}</h4>
<h4>Other books you may like:</h4>
<p><a href="connecticut-icons-class-symbols-of-the-nutmeg-state.html">Connecticut Icons: Classic Symbols of the Nutmeg State</a></p>
<p><a href="connecticut-off-the-beaten-path-discover-your-fun-off-the-beaten-path-series.html">Connecticut Off the Beaten Path®: Discover Your Fun (Off the Beaten Path Series)</a></p>
<p><a href="witch-of-blackbird-pond.html">The Witch of Blackbird Pond</a></p>
<button onclick = "window.location.href = 'homepage.html';">Return Home</button>
</body>
</html>