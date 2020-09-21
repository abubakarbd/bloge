		<?php include 'inc/header.php'; ?>


<?php
	if (!isset($_GET['Catagory']) || $_GET['Catagory'] == NULL) {
		header("Location:404.php");
	} else {
		$id =$_GET['Catagory'];
	}
?>

		<div class="contentsection mctemplet clear"> 
			<div class="mainecontent clear">



<?php 
	 $query = "select * from tbl_post where cat=$id";
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
			<h3>No Post Available in this Category.</h3>
		<?php } ?>				
		
			</div>
<?php include "inc/sidebar.php";?>
		</div>
		<?php include "inc/footer.php";?>