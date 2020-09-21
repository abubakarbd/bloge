		<?php include 'config/config.php'; ?>
		<?php include 'lib/Database.php'; ?>
		<?php include 'helpers/Format.php'; ?>
		
		<?php
			$db = new Database();
			$fm = new Format();
		?>
		
<!DOCTYPE html>
<html>
	<head>

	<?php include 'script/meta.php'; ?>
	<?php include 'script/css.php'; ?>
	<?php include 'script/js.php'; ?>	
	</head>
	
	<body>
		<div class="hedarsection templet clear">
			<div class="logo clear"> 
			<?php 
			     $query = "SELECT * FROM title_slogan WHERE id='1'";
			     $blog_title = $db->select($query);
			     if ($blog_title) {
			        while ($result = $blog_title->fetch_assoc()) {
			?> 
				<img src="admin/<?php echo $result['logo'];?>" alt="logo"/>
				<h2> <?php echo $result['title'];?></h2>
				<p> <?php echo $result['slogan'];?></p>
			<?php } } ?>
			</div>
			<div class="headerright">
				<div class="padding">
				<div class="socile">

<?php 
     $query = "SELECT * FROM tbl_socal WHERE id='1'";
     $blog_title = $db->select($query);
     if ($blog_title) {
        while ($result = $blog_title->fetch_assoc()) {
?> 
	<a target="_blank" href="<?php echo $result['fb'];?>"><i class="fa fa-facebook"></i></a>
	<a target="_blank" href="<?php echo $result['tw'];?>"><i class="fa fa-twitter"></i></a>
	<a target="_blank" href="<?php echo $result['ln'];?>"><i class="fa fa-linkedin"></i></a>
	<a target="_blank" href="<?php echo $result['gg'];?>"><i class="fa fa-youtube"></i></a>
<?php } }?>
				</div>
</div>
				<div class="undrmnu_srch floatright">
					<form action="search.php" method="get" id="searchform" class="searchform">
						<input type="text" placeholder="Search Keyword." name="search" id="s">
						<input type="submit" name="submit" id="searchsubmit" value="Search">
					</form>					
				</div>
			</div>
		</div>
		
		<div class="navigationsection templet"> 
			<?php 
				$path = $_SERVER['SCRIPT_FILENAME'];
				$currenpage = basename($path, '.php');
			?>
			<ul>
				<ul>
				<li><a <?php if ($currenpage == 'index') {echo 'id="active"';}?>
				href="index.php">Home</a></li>
				<?php 
                 $query = "SELECT * FROM tbl_page";
                 $pages = $db->select($query);
                 if ($pages) {
                    while ($result = $pages->fetch_assoc()) {
                   ?> 
                        <li><a
                        	<?php 
							if (isset($_GET['pageid']) && $_GET['pageid'] ==  $result['id']) {
								echo 'id="active"';
							}?>
                         href="page.php?pageid=<?php echo $result['id'];?>"><?php echo $result['name'];?></a> </li>
                        <?php } }?>
				<li><a <?php if ($currenpage == 'contact') {echo 'id="active"';}?> href="contact.php">Contact</a></li>
			</ul>
		</div>