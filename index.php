<?php include ( "inc/connect.inc.php" ); ?>
<?php 
ob_start();
session_start();
if (!isset($_SESSION['user_login'])) {
	$user = "";
}
else {
	$user = $_SESSION['user_login'];
	$result = mysqli_query($con, "SELECT * FROM users WHERE id='$user'");
	$get_user_email = mysqli_fetch_assoc($result);
	$uname_db = $get_user_email != null ? $get_user_email['first_name'] : null;
}
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Welcome to online grocery</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<script src="/js/homeslideshow.js"></script>
	</head>
	<body style="min-width: 980px;">
		<div class="homepageheader" style="position: relative;">
			<div class="signinButton loginButton">
				<div class="uiloginbutton signinButton loginButton" style="margin-right: 40px;">
					<?php 
						if ($user!="") {
							echo '<a style="text-decoration: none; color: #fff;" href="logout.php">LOG OUT</a>';
						}
						else {
							echo '<a style="color: #fff; text-decoration: none;" href="signin.php">SIGN UP</a>';
						}
					 ?>
					
				</div>
				<div class="uiloginbutton signinButton loginButton" ;style=" ">
					<?php 
						if ($user!="") {
							echo '<a style="text-decoration: none; color: #fff;" href="profile.php?uid='.$user.'">Hi '.$uname_db.'</a>';
						}
						else {
							echo '<a style="text-decoration: none; color: #fff;" href="login.php">LOG IN</a>';
						}
					 ?>
				</div>
			</div>
			<div style="float: left; margin: 5px 0px 0px 23px;">
				<a href="index.php">
					<img style=" height: 75px; width: 130px;" src="image/cart.png">
				</a>
			</div>
			<div class="">
				<div id="srcheader">
					<form id="newsearch" method="get" action="search.php">
					        <input type="text" class="srctextinput" name="keywords" size="21" maxlength="120"  placeholder="Search Here..."><input type="submit" value="search" class="srcbutton" >
					</form>
				<div class="srcclear"></div>
				</div>
			</div>
		</div>
		<div class="home-welcome">
			<div class="home-welcome-text" style="height: 100vh;">
			<h1 style="margin: 0px; background-color:#415553f2; color:white;">Welcome To  Online Grocery</h1>
			        <img src="https://media.istockphoto.com/id/1015858536/photo/supermarket-interior-with-shelves-full-of-various-products-and-empty-trolley-basket.jpg?s=612x612&w=0&k=20&c=VEx5qEVNEmIX_LGx-jA3yhqGajVJcKDD_tu_9QcUsZY="style="height:100vh" width="100%">
					</a>
			</div>
		</div>
		<div class="home-prodlist">
			<div>
				<h3 style="text-align: center; font-weight:bold;color:black; margin-top:150px">Products Category</h3>
			</div>
			<div style="padding: 20px 20px; width: 120%; margin: 0 auto;">
				<ul style="float: none;">
				<li style="float: left; padding: 25px; font-weight:bold;">
						<div class="home-prodlist-img"><a href="OurProducts/NoodlesCanned.php">
						<img src="https://mallko.store/cdn/shop/collections/1615903015_6.jpg?v=1615903017" class="home-prodlist-imgi">
							</a>
							<div style="text-align: center; padding: 0 0 6px 0;"> <span style="font-size: 15px;">Instant Noodles</span></div>
						</div>
					</li>
				</ul>
				<ul style="float: none;">
					<li style="float: left; padding: 25px; font-weight:bold;">
						<div class="home-prodlist-img"><a href="OurProducts/Snacks.php">
							<img src="https://www.candyretailer.com/blog/wp-content/uploads/2022/12/Chip-Brand-Snack-Box.jpg" class="home-prodlist-imgi">
							</a>
							<div style="text-align: center; padding: 0 0 6px 0;"> <span style="font-size: 15px;">Snacks</span></div>
						</div>
					</li>
				</ul>
				<ul style="float:none;">
					<li style="float: left; padding: 25px; font-weight:bold;">
						<div class="home-prodlist-img"><a href="OurProducts/Sweets.php">
							<img src="https://rukminim2.flixcart.com/image/850/1000/kk8mcnk0/fmcg-combo/5/7/l/11-pieces-premium-chocolate-gift-tray-surpriseforu-original-imafzmhzeehympyq.jpeg?q=90" class="home-prodlist-imgi"></a>
						</div>
						<div style="text-align: center; padding: 0 0 6px 0;"> <span style="font-size: 15px;">Chocolates</span></div>
					</li>
				</ul>
				<ul style="float: none;">
					<li style="float: left; padding: 25px; font-weight:bold;">
						<div class="home-prodlist-img"><a href="OurProducts/Hygene.php">
							<img src="https://indian-retailer.s3.ap-south-1.amazonaws.com/s3fs-public/article3103.jpg" class="home-prodlist-imgi"></a>
						</div>
						<div style="text-align: center; padding: 0 0 6px 0;"> <span style="font-size: 15px;">Hygiene</span></div>
					</li>
				</ul>
				<ul style="float: none;">
					<li style="float: left; padding: 25px; font-weight:bold;">
						<div class="home-prodlist-img"><a href="OurProducts/Shampoo.php">
							<img src="https://img-new.cgtrader.com/items/877588/d9a0203460/large/shampoo-collection-3d-model-low-poly-max-obj-fbx-ma-mb.jpg" class="home-prodlist-imgi"></a>
						</div>
						<div style="text-align: center; padding: 0 0 6px 0;"> <span style="font-size: 15px;">Shampoo and conditioners</span></div>
					</li>
				</ul>
				<ul style="float: none;">
					<li style="float: left; padding: 25px; font-weight:bold;">
						<div class="home-prodlist-img"><a href="OurProducts/Soap&Detergent.php">
							<img src="https://media.licdn.com/dms/image/C5112AQHmIZzPDSvaRA/article-cover_image-shrink_600_2000/0/1520174083346?e=2147483647&v=beta&t=IABtuTKUxh3fgaKwUR8eIlCh19UAdmTVHbShOEGorFs" class="home-prodlist-imgi"></a>
						</div>
						<div style="text-align: center; padding: 0 0 6px 0;"> <span style="font-size: 15px;"> Soap </span></div>
					</li>
				</ul>
				<ul style="float: none;">
					<li style="float: left; padding: 25px; font-weight:bold;">
						<div class="home-prodlist-img"><a href="OurProducts/Drinks.php">
							<img src="https://shopmnr.com/wp-content/uploads/2021/07/coke-sprite-fanta-225ltr-1.webp" class="home-prodlist-imgi"></a>
						</div>
						<div style="text-align: center; padding: 0 0 6px 0;"> <span style="font-size: 15px;">Soft Drinks and Juice</span></div>
					</li>
				</ul>
				<ul style="float: none;">
					<li style="float: left; padding: 25px; font-weight:bold;">
						<div class="home-prodlist-img"><a href="OurProducts/Seasonings.php">
							<img src="https://frugivore-storage.s3.amazonaws.com/media/package/img_one/2019-08-28/1889.jpg" class="home-prodlist-imgi"></a>
						</div>
						<div style="text-align: center; padding: 0 0 6px 0;"> <span style="font-size: 15px;">Seasonings</span></div>
					</li>
				</ul>
			</div>			
		</div>
	</body>
</html>