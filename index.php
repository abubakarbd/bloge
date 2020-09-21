		<?php include 'inc/header.php'; ?>
		<?php include 'inc/slider.php'; ?>


		<div class="contentsection mctemplet clear"> 
			<div class="mainecontent clear">

<!--Pagination-->
<?php
	$per_page = 5;
	if(isset($_GET["page"])){
		$page = $_GET["page"];
	} else {
		$page=1;
	}
	$start_form = ($page-1) * $per_page;

?>
<!--End Pagination-->


	<?php 
	 $query = "select * from tbl_post limit $start_form, $per_page";
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
			
	<?php } ?> <!--while end-->

<!--Pagination-->
	<?php
	$query = "select * from tbl_post";
	$result = $db->select($query);
	$total_rows = mysqli_num_rows($result);
	$total_pages = ceil($total_rows/$per_page);

	echo "<span class='pagination'><a href='index.php?page=1'>".'First Page'."</a>";
	for ($i=1; $i <= $total_pages; $i++) { 
		echo "<a href='index.php?page=".$i."'>".$i."</a>";
	};


	 echo "<a href='index.php?page=$total_pages'>".'Last Page'."</a></span>"?>
<!--Pagination end-->

	<?php } else{ header('Location:404.php');}?>			
		
			</div>
<?php include "inc/sidebar.php";?>
		</div>
		<?php include "inc/footer.php";?>