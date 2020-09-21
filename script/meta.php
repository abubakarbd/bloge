<?php 
if (isset($_GET['pageid'])) {
	$pagetitleid = $_GET['pageid'];
	    $query = "SELECT * FROM tbl_page WHERE id = '$pagetitleid'";
        $pages = $db->select($query);
         if ($pages) {
         while ($result = $pages->fetch_assoc()) {?>

   	 		<title><?php echo $result['name'];?> - <?php echo TITLE;?></title>
    
	    <?php  } } }elseif (isset($_GET['id'])) {
		$postid = $_GET['id'];
	    $query = "SELECT * FROM tbl_post WHERE id = '$postid'";
        $posts = $db->select($query);
         if ($posts) {
         while ($result = $posts->fetch_assoc()) {?>

   	 		<title><?php echo $result['title'];?> - <?php echo TITLE;?></title>
    
	    <?php  } } } else{ ?>
	    	<title><?php echo $fm->title();?>-<?php echo TITLE;?></title>
	  <?php  } ?>
			
		
		
		
		
<meta charset="utf-8"/>
<meta name="description" content="this is a website about education"/>
<?php
	if (isset($_GET['id'])) {
		$keywordid = $_GET['id'];
		$query = "SELECT * FROM tbl_post where id='$keywordid'";
		$keywordid = $db->select($query);
		if ($keywordid) {
			while ($result = $keywordid->fetch_assoc()) { ?>
				<meta name="keywords" content="<?php echo $result['tags']?>"/>
			
<?php } } } else{?>
		<meta name="keywords" content="<?php echo KEYWORDS;?>"/>
<?php } ?>
<meta name="keywords" content="ssc,hsc"/>
<meta name="author" content="abubakar"/>