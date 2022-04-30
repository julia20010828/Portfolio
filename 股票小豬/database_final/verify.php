<!DOCTYPE html>
<html>
<head>
	<title>VERIFY</title>
	<link rel="stylesheet" type="text/css" href="Yv_登入/style.css">
</head>
<body>
     <form action="verify_check.php" method="post">
     	<h2>VERIFY</h2>
     	<?php if (isset($_GET['error'])) { ?>
     		<p class="error"><?php echo $_GET['error']; ?></p>
     	<?php } ?>
     	<label>Verifying Code</label>
     	<input type="text" name="verify" placeholder="Verifying Code"><br>

     	<button type="submit">deliver</button>
          <a href="Yv_登入/index.php" class="ca">I want to login</a>
     </form>
</form>
</body>
</html>