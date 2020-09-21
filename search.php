		<?php include 'inc/header.php'; ?>


<?php
	if (!isset($_GET['search']) || $_GET['search'] == NULL) {
		header("Location:404.php");
	} else {
		$search =$_GET['search'];
	}
?> 

		<div class="contentsection mctemplet clear"> 
			<div class="mainecontent clear">



<?php 
	 $query = "SELECT * FROM tbl_post WHERE title LIKE '%$search%' OR body LIKE '%$search%' ";
	 $post = $db->select($query);
	 if ($post) {
	 	while ($result = $post->fetch_assoc()) {

	?>

				<div class="samepost clear">
					<a href="post.php?id=<?php echo $result['id'];?>"><h2> <?php echo $result['title'];?> </h2></a>
					<h2> Date :<?php echo $fm->formatDate($result['date']);?>| By : <a href="#"><?php echo $result['author'];?></a></h2>

					<a href="<?php echo $result['id'];?>"><img src="admin/<?php echo $result['image'];?>" alt="Post Image"/></a>

				<?php echo $fm->textShorten($result['body'],300);?>

					<div class="readmore clear"><a href="post.php?id=<?php echo $result['id'];?>">Read More</a></div>
				</div>

					<?php } } else{ ?>
<p>Your Query Not Found !!</p>
					<?php } ?>			
		
			</div>
<?php include "inc/sidebar.php";?>
		</div>
		<?php include "inc/footer.php";?> 