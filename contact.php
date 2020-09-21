		<?php include 'inc/header.php' ?>
		

<?php
	if($_SERVER['REQUEST_METHOD'] == 'POST'){
		$fastname = $fm->validation($_POST['fastname']);
		$lastname = $fm->validation($_POST['lastname']);
		$email = $fm->validation($_POST['email']);
		$mobile = $fm->validation($_POST['mobile']);
		$body = $fm->validation($_POST['body']);

		$fastname = mysqli_real_escape_string($db->link, $fastname);
		$lastname = mysqli_real_escape_string($db->link, $lastname);
		$email = mysqli_real_escape_string($db->link, $email);
		$mobile = mysqli_real_escape_string($db->link, $mobile);
		$body = mysqli_real_escape_string($db->link, $body);


		$error = "";
		if (empty($fastname)) {
			$error = "First Name must not be empty!";
		}elseif (empty($lastname)) {
			$error = "Last Name must not be empty!";
		}elseif (empty($email)) {
			$error = "Email field must not be empty!";
		}elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
			$error = "Invalid Email Address !";
		}elseif (empty($mobile)) {
			$error = "Mobile must not be empty!";
		}elseif (empty($body)) {
			$error = "Message field not be empty!";
		}else{
			$query = "INSERT INTO tbl_contact(fastname, lastname, email, mobile, body) 
   			 VALUES('$fastname','$lastname','$email','$mobile','$body')";
    		$inserted_rows = $db->insert($query);
		    if ($inserted_rows) {
		     $msg = "Message Sent Successfully.";
		     
		    }else {
		     $error = "Message Not Sent !";
		    }
		}
}
?>

		<div class="contentsection mctemplet clear"> 
			<div class="mainecontent clear">
				<div class="contact">
				<h2> Contact us </h2>
				<?php
					if (isset($error)) {
						echo "<span class='error'>$error</span>";
					}
					if (isset($msg)) {
						echo "<span class='success'>$msg</span>";
					}
				?>
				<form action="" method="post">
					<table>
						<tr>
							<td>Enter Fast Name :</td>
							<td><input type="text" name="fastname" placeholder="Enter Fast Name"/></td>
						</tr>
						
						<tr>
							<td>Enter Last Name :</td>
							<td><input type="text" name="lastname" placeholder="Enter Last Name"/></td>
						</tr>
						
						<tr>
							<td>Enter Email Address :</td>
							<td><input type="email" name="email" placeholder="Enter Email Address"/></td>
						</tr>

						<tr>
							<td>Enter Mobile Nomber :</td>
							<td><input type="mobile" name="mobile" placeholder="Mobile Nomber"/></td>
						</tr>
						
						<tr>
							<td>Enter Address :</td>
							<td><textarea name="body"></textarea></td>
						</tr>
						
						<tr>
							<td></td>
							<td><input name="submit" value="Sent" type="submit" /></td>
						</tr>
						
					</table>
				</form>
					
				</div>
				
				<!--<div class="gmape">
					<div id="map"></div>
				</div>-->
				
			</div>
			<?php include 'inc/sidebar.php';?>
			</div>
			<?php include "inc/footer.php";?>
			
		