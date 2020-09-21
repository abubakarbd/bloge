<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>

<?php
    if (!isset($_GET['msgid']) || $_GET['msgid'] == NULL ) {
       header("Location :inbox.php");
    } else {
        $id = $_GET['msgid'];
    }
?>

<div class="grid_10">
    <div class="box round first grid">
        <h2>View Massage</h2>


    <?php
    if($_SERVER['REQUEST_METHOD'] == 'POST'){
       $toEmail   = $fm->validation($_POST['toEmail']);
       $fromEmail = $fm->validation($_POST['fromEmail']);
       $subject   = $fm->validation($_POST['subject']);
       $massage   = $fm->validation($_POST['massage']);

       $sentmail = mail($toEmail, $subject, $massage, $fromEmail);
       if ($sentmail) {
           echo "<span class='success'>Massage Sent Successfully.
     </span>";
       }else{
        echo "<span class='error'>Massage Sent Successfully.
     </span>";
       }
   } ?>
        <div class="block">               
         <form action="" method="post">
<?php 
 $query = "SELECT * FROM tbl_contact WHERE id = '$id'";
 $contact = $db->select($query);
 if ($contact) {
    $i=0;
    while ($result = $contact->fetch_assoc()) {
        $i++;
?>
            <table class="form">
               
                <tr>
                    <td>
                        <label>To</label>
                    </td>
                    <td>
                        <input type="text" name="toEmail" readonly value="<?php echo $result['email']; ?>"class="medium" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <label>from</label>
                    </td>
                    <td>
                        <input type="text" name="fromEmail" placeholder="Place Enter Your Email Address! " class="medium" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <label>Subject</label>
                    </td>
                    <td>
                        <input type="text" name="subject" placeholder="Place Enter Your Subject " class="medium" />
                    </td>
                </tr>

				 <tr>
                    <td>
                        <label>Massage</label>
                    </td>
                    <td>
                        <textarea class="tinymce" name="massage">
                        </textarea>
                    </td>
                </tr>

				<tr>
                    <td></td>
                    <td>
                        <input type="submit" name="submit" Value="Sent" />
                    </td>
                </tr>
            </table>
<?php } } ?>
            </form>
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