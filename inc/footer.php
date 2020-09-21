		<div class="footersection templet clear">
			<div class="footermanu clear">
				<ul>
					<li><a href="#">Home</a></li>
					<li><a href="#">About</a></li>
					<li><a href="#">Contact</a></li>
					<li><a href="#">Tutirul</a></li>
				</ul>
			</div>
<?php 
     $query = "SELECT * FROM tbl_footer WHERE id='1'";
     $blog_title = $db->select($query);
     if ($blog_title) {
        while ($result = $blog_title->fetch_assoc()) {
?> 

	<p>&copy; <?php echo $result['name'];?>-<?php echo date('Y');?> </p>

<?php } }?>
		</div>
		
		<div class="fixedsocile clear" alt="socile_icon"> 
<?php 
     $query = "SELECT * FROM tbl_socal WHERE id='1'";
     $footedrnote = $db->select($query);
     if ($footedrnote) {
        while ($result = $footedrnote->fetch_assoc()) {
?> 
				<a href="<?php echo $result['fb'];?>" target="_blank"><img src="images/socile/fb.png" alt="Facebook"/></a>
				<a href="<?php echo $result['tw'];?>" target="_blank"><img src="images/socile/tw.png" alt="Tweeter"/></a>
				<a href="<?php echo $result['ln'];?>" target="_blank"><img src="images/socile/in.png" alt="Linkend"/></a>
				<a href="<?php echo $result['gg'];?>" target="_blank"><img src="images/socile/yt.png" alt="YouTube"/></a>
<?php } }?>
			</div>
			
			<!--<script type="text/javascript" src="js/scroll.js"></script>
			
					 <script src="http://maps.google.com/maps/api/js"></script>
					<script src="js/gmaps.js"></script>
					<script type="text/javascript">
						var map;
						$(document).ready(function(){
						  var map = new GMaps({
							el: '#map',
							lat: 22.1637922,
							lng: 89.8464393,
							scrollwheel:false
						  });
						  

						  GMaps.geolocate({
							success: function(position){
							  map.setCenter(position.coords.latitude, position.coords.longitude);
							},
							error: function(error){
							  alert('Geolocation failed: '+error.message);
							},
							not_supported: function(){
							  alert("Your browser does not support geolocation");
							},
							always: function(){
							  alert("Done!");
							}
						  });
						});
				    </script>

					<script src="//cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
					<script src="js/jquery.counterup.min.js"></script>
					
					<script>
						jQuery(document).ready(function($) {
						$('.counter').counterUp({
							delay: 10,
							time: 1000
						});
						});
					</script>-->
			
	</body>
</html>
