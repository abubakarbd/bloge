<?php include 'header.php' ?>
	
		<div class="contentsection mctemplet clear"> 
			<div class="mainecontent clear">				
				<div class="Sort">				
					<h1>Isotope - filtering &amp; sorting</h1>
					<h2>Filter</h2>
					<div id="filters" class="button-group">  <button class="button is-checked" data-filter="*">show all</button>
					  <button class="button" data-filter=".metal">metal</button>
					  <button class="button" data-filter=".transition">transition</button>
					  <button class="button" data-filter=".alkali, .alkaline-earth">alkali and alkaline-earth</button>
					  <button class="button" data-filter=":not(.transition)">not transition</button>
					  <button class="button" data-filter=".metal:not(.transition)">metal but not transition</button>
					  <button class="button" data-filter="numberGreaterThan50">number > 50</button>
					  <button class="button" data-filter="ium">name ends with &ndash;ium</button>
					</div>

					<h2>Sort</h2>
					<div id="sorts" class="button-group">  <button class="button is-checked" data-sort-by="original-order">original order</button>
					  <button class="button" data-sort-by="name">name</button>
					  <button class="button" data-sort-by="symbol">symbol</button>
					  <button class="button" data-sort-by="number">number</button>
					  <button class="button" data-sort-by="weight">weight</button>
					  <button class="button" data-sort-by="category">category</button>
					</div>

					<div class="grid">
					  <div class="element-item transition metal " data-category="transition">
						<h3 class="name">Mercury</h3>
						<p class="symbol">Hg</p>
						<p class="number">80</p>
						<p class="weight">200.59</p>
					  </div>
					  <div class="element-item metalloid " data-category="metalloid">
						<h3 class="name">Tellurium</h3>
						<p class="symbol">Te</p>
						<p class="number">52</p>
						<p class="weight">127.6</p>
					  </div>
					  <div class="element-item post-transition metal " data-category="post-transition">
						<h3 class="name">Bismuth</h3>
						<p class="symbol">Bi</p>
						<p class="number">83</p>
						<p class="weight">208.980</p>
					  </div>
					  <div class="element-item post-transition metal " data-category="post-transition">
						<h3 class="name">Lead</h3>
						<p class="symbol">Pb</p>
						<p class="number">82</p>
						<p class="weight">207.2</p>
					  </div>
					  <div class="element-item transition metal " data-category="transition">
						<h3 class="name">Gold</h3>
						<p class="symbol">Au</p>
						<p class="number">79</p>
						<p class="weight">196.967</p>
					  </div>
					  <div class="element-item alkali metal " data-category="alkali">
						<h3 class="name">Potassium</h3>
						<p class="symbol">K</p>
						<p class="number">19</p>
						<p class="weight">39.0983</p>
					  </div>
					  <div class="element-item alkali metal " data-category="alkali">
						<h3 class="name">Sodium</h3>
						<p class="symbol">Na</p>
						<p class="number">11</p>
						<p class="weight">22.99</p>
					  </div>
					  <div class="element-item transition metal " data-category="transition">
						<h3 class="name">Cadmium</h3>
						<p class="symbol">Cd</p>
						<p class="number">48</p>
						<p class="weight">112.411</p>
					  </div>
					  <div class="element-item alkaline-earth metal " data-category="alkaline-earth">
						<h3 class="name">Calcium</h3>
						<p class="symbol">Ca</p>
						<p class="number">20</p>
						<p class="weight">40.078</p>
					  </div>
					  <div class="element-item transition metal " data-category="transition">
						<h3 class="name">Rhenium</h3>
						<p class="symbol">Re</p>
						<p class="number">75</p>
						<p class="weight">186.207</p>
					  </div>
					  <div class="element-item post-transition metal " data-category="post-transition">
						<h3 class="name">Thallium</h3>
						<p class="symbol">Tl</p>
						<p class="number">81</p>
						<p class="weight">204.383</p>
					  </div>
					  <div class="element-item metalloid " data-category="metalloid">
						<h3 class="name">Antimony</h3>
						<p class="symbol">Sb</p>
						<p class="number">51</p>
						<p class="weight">121.76</p>
					  </div>
					  <div class="element-item transition metal " data-category="transition">
						<h3 class="name">Cobalt</h3>
						<p class="symbol">Co</p>
						<p class="number">27</p>
						<p class="weight">58.933</p>
					  </div>
					  <div class="element-item lanthanoid metal inner-transition " data-category="lanthanoid">
						<h3 class="name">Ytterbium</h3>
						<p class="symbol">Yb</p>
						<p class="number">70</p>
						<p class="weight">173.054</p>
					  </div>
					  <div class="element-item noble-gas nonmetal " data-category="noble-gas">
						<h3 class="name">Argon</h3>
						<p class="symbol">Ar</p>
						<p class="number">18</p>
						<p class="weight">39.948</p>
					  </div>
					  <div class="element-item diatomic nonmetal " data-category="diatomic">
						<h3 class="name">Nitrogen</h3>
						<p class="symbol">N</p>
						<p class="number">7</p>
						<p class="weight">14.007</p>
					  </div>
					  <div class="element-item actinoid metal inner-transition " data-category="actinoid">
						<h3 class="name">Uranium</h3>
						<p class="symbol">U</p>
						<p class="number">92</p>
						<p class="weight">238.029</p>
					  </div>
					  <div class="element-item actinoid metal inner-transition " data-category="actinoid">
						<h3 class="name">Plutonium</h3>
						<p class="symbol">Pu</p>
						<p class="number">94</p>
						<p class="weight">(244)</p>
					  </div>
					</div>

				</div>
			</div>
		
			<div class="sidebar clear">
				<div class="samesidebar clear">
					<h2>Latest Articles</h2>
					<ul>
						<li><a href="#">Post Title one well be go here</a></li>
						<li><a href="#">Post Title two well be go here</a></li>
						<li><a href="#">Post Title three well be go here</a></li>
						<li><a href="#">Post Title for well be go here</a></li>
						<li><a href="#">Post Title five well be go here</a></li>
						<li><a href="#">Post Title six well be go here</a></li>
					</ul>
					
				</div>
				
				<div class="samesidebar clear">
					<h2> Popular Articles</h2>
					<div class="popular clear">
						<a href="#"><h3>Post Title Here</h3>
						<img src="images/18-512.png" alt="Post Image"/></a>
						<p>
						My fast class My fast class My fast class My fast class My fast class My fast class My fast class My fast class My fast My fast class My fast class My fast class My fast class My fast class My fast  
						</p>
					</div>
					
					<div class="popular clear">
						<a href="#"><h3>Post Title Here</h3>
						<img src="images/18-512.png" alt="Post Image"/></a>
						<p>
						My fast class My fast class My fast class My fast class My fast class My fast class My fast class My fast class My fast My fast class My fast class My fast class My fast class My fast class My fast  
						</p>
					</div>
					
					<div class="popular clear">
						<a href="#"><h3>Post Title Here</h3>
						<img src="images/18-512.png" alt="Post Image"/></a>
						<p>
						My fast class My fast class My fast class My fast class My fast class My fast class My fast class My fast class My fast My fast class My fast class My fast class My fast class My fast class My fast  
						</p>
					</div>
				</div>
				
				<div class="samesidebar clear">
					<h2>Popular Video</h2>
					<iframe width="100%" height="150px" src="https://www.youtube.com/embed/v4SVKLTVNS8" frameborder="0" allowfullscreen></iframe>
				</div>
			</div>
		</div>
<?php include "footer.php";?>
