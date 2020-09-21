<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>

<?php
    if (!isset($_GET['viewpostid']) || $_GET['viewpostid'] == NULL ) {
       header("Location :postlist.php");
    } else {
        $postid = $_GET['viewpostid'];
    }
?>

<div class="grid_10">
    <div class="box round first grid">
        <h2>Updet  Post</h2>


 <?php
    if($_SERVER['REQUEST_METHOD'] == 'POST'){
        echo "<script>window.location = 'postlist.php';</script>";
    }
?>
        <div class="block">  

<?php 
     $query = "SELECT * FROM tbl_post WHERE id='$postid' order by id desc";
     $getpost = $db->select($query);
        while ($postresult = $getpost->fetch_assoc()) {
?> 

         <form action="" method="post">
            <table class="form">
               
                <tr>
                    <td>
                        <label>Title</label>
                    </td>
                    <td>
                        <input type="text" readonly value="<?php echo $postresult['title'];?>" class="medium" />
                    </td>
                </tr>
				<tr>
                    <td>
                        <label>Category</label>
                    </td>
                    <td>
                        <select id="select" readonly>
                            <option>Select Category</option>

                <?php 
                     $query = "select * from tbl_category";
                     $catagory = $db->select($query);
                     if ($catagory) {
                        while ($result = $catagory->fetch_assoc()) {
                 ?>
                            <option 
                            <?php
                                if ($postresult['cat'] == $result['id']) {?>
                             selected="selected"
                           <?php } ?>value="<?php echo $result['id'];?>"><?php echo $result['cname'];?></option>
                <?php } } ?>
                        </select>
                    </td>
                </tr>
			    <tr>
                    <td>
                        <label>Image</label>
                    </td>
                    <td>
                        <img src="<?php echo $postresult['image'];?>" height="80" width="200"> 
                    </td>
                </tr>
				
				 <tr>
                    <td style="vertical-align: top; padding-top: 9px;">
                        <label>Content</label>
                    </td>
                    <td>
                        <textarea class="tinymce" readonly>
                            <?php echo $postresult['body'];?>
                        </textarea>
                    </td>
                </tr>

                <tr>
                    <td>
                        <label>Tags</label>
                    </td>
                    <td>
                        <input type="text" readonly value="<?php echo $postresult['tags'];?>" class="medium" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <label>Author</label>
                    </td>
                    <td>
                        <input type="text" readonly value="<?php echo $postresult['author'];?>" class="medium" />
                    </td>
                </tr>
				
				<tr>
                    <td></td>
                    <td>
                        <input type="submit" name="submit" Value="Ok" />
                    </td>
                </tr>
            </table>
            </form>

    <?php } ?>
        </div>
    </div>
</div>
<!-- Load TinyMCE -->
<script src="js/tiny-mce/jquery.tinymce.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        setupTinyMCE();
        setDatePicker('date-picker');
        $('input[type="checkbox"]').fancybutton();
        $('input[type="radio"]').fancybutton();
    });
</script>
<!-- Load TinyMCE -->
<?php include 'inc/footer.php';?>


