<?php include 'inc/header.php' ?>

<?php
	if (!isset($_GET['id']) || $_GET['id'] == NULL) {
		header("Location:404.php");
	} else {
		$id =$_GET['id'];
	}
?>
		
		<div class="contentsection mctemplet clear"> 
			<div class="mainecontent clear">
				<div class="about">


<?php 
	 $query = "select * from tbl_post where id=$id";
	 $post = $db->select($query);
	 if ($post) {
	 	while ($result = $post->fetch_assoc()) {

?>
			<h2> <?php echo $result['title'];?> </h2>
			<h2> Date :<?php echo $fm->formatDate($result['date']);?>| By : <a href="#"><?php echo $result['author'];?></a></h2>
			<img src="admin/<?php echo $result['image'];?>" alt="Post Image"/>
		<?php echo ($result['body']);?>


	<div class="slidepost">
	<h2>Related artical</h2>
<?php 
	 $catid = $result['cat'];
	 $queryrelated = "select * from tbl_post where cat='$catid' order by rand() limit 6";
	 $relatedpost = $db->select($queryrelated);
	 if ($relatedpost) {
	 	while ($rresult = $relatedpost->fetch_assoc()) {

?>
	
					
				
					<a href="post.php?id=<?php echo $rresult['id'];?>"><img src="admin/<?php echo $rresult['image'];?>" alt="Post Image"/></a>
				
<?php } } else{ echo "Related Post Not Available!";}?>
</div>
<?php } }  else{ header('Location:404.php');}?>
				</div>
			</div>
			<?php include 'inc/sidebar.php';?>
		</div>
<?php include "inc/footer.php";?>