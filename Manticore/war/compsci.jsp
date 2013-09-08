<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">

<title>Computer Science</title>

<!-- Fonts -->
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Aldrich">
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Gudea">
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Quattrocento">

<!-- main style -->
<link rel="stylesheet" type="text/css" href="css/compsci.css"></link>

<!-- Tab CSS --> 
<link href="css/tabcontent-compsci.css" rel="stylesheet" type="text/css" />
</head>


<!-- Horizontal Tabs -->
<script src="lib/tabcontent.js" type="text/javascript"></script>

<!--  Vertical Tabs -->
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>

<!-- scripts -->
<script src="js/compsci.js"></script>
  
<body>

<div id="body-page">

	<div id="body-header">
	
		<div id="title_container">
			<div id="title_inner_border">
				<div id="content_container">
					<header id="header-computer" class="clearfix">
							<span id="text-computer">COMPUTER</span>
					</header>
					<header id="header-science" class="clearfix">
							<span id="text-science">SCIENCE</span>
					</header>
				</div> <!-- content_container -->
			</div>
		</div>
		
		<div id="text-projects">
			<h1>PROJECTS</h1>
			<p>Can be viewed in more detail on my personal <a href="https://github.com/TheHeadlessHydra" target="_blank">Github</a>.</p>
		</div> <!-- text-projects -->
	</div> <!-- body-header -->
	
	<div id="tab_container">
		<ul class="tabs" data-persist="true">
			<li><a href="#view1">Personal</a></li>
			<li><a href="#view2">University</a></li>
		</ul>
		<div class="tabcontents">
			<div id="view1">
			
				<div id="v-tab_container">
					<ul class="v-tabs">
						<li><a href="#v-view1">The Headless Hydra</a></li>
						<li><a href="#v-view2">Lolpaper</a></li>
						<li><a href="#v-view3">LeagueView</a></li>
					</ul>
					<div class="v-tabcontents">
						<div id="v-view1">
						
							<h1 class="project_header">The Headless Hydra</h1>
							<a class="project_github" href="https://github.com/TheHeadlessHydra/TheHeadlessHydra" target="_blank">-> Find on Github</a>
							<img src="images/compsci/banners/theheadlesshydra.png">
							<br><br><br>
							<p class="sub-heading">Idea</p>
							<p class="project_details">
								The idea here was simple. Create a website to showcase my work, but do so in a unique way that also shows off some more skills.
								There were a few things I wanted to show with this website:</p>
							<ul class="project_details_list">
								<li>Ability to manipulate 3d space on a web browser using THREE.js</li>
								<li>Ability to create clean and professional content, paying attention to detail</li>
								<li>Showcase artistic and design ability</li>
							</ul>
							<br><br><br>
							<p class="sub-heading">Execution</p>
							<p class="project_details">
							In order to ahieve the above results, there were many hurdles that needed to be overcome. 
							Firstly, in order to get 3D into the website, I needed to make an 'opening' to the website.</p>
							<p class="project_details_subheading">Main page</p>
							<p class="project_details">
							This opening contains a manipulated boids simulation taken from the examples section of the THREE.js documentation.
							That was easy since most of the work was already done. I decided to move on and create a HUD element display all using 3D objects only; 
							as a challenge to myself. This was the most challenging portion of the page.<br><br>
							
							To begin, I created a GLSL shader that transitions an element into view from left-to-right using a black-white gradient image.
							Second, I needed to make sure the HUD stays in view regardless of how the user manipulates the browser. After many different iterations,
							I decided on using an orthogonal camera, with plane objects attached to the camera that were using my GLSL shader.
							I wanted some of these planes to adjust themselves in accordance with the browser window, so I did some mathematical manipulation of 
							the vertices of the plane in order to make sure that the plane stays within the visible browser view, thus maintaining the HUD size and
							aspect ratio.Lastly, since all the HUD planes were using transparency, and there was an orthogonal camera being used for rendering, 
							the rendering order was incorrect. So, each plane has to be manually ordered from back to front in order to maintain their
							transparency properly.<br><br>
							
							In the end there were two scenes being rendered. First, the scene with the birds, and second, the scene with the HUD. 
							</p>
							<p class="project_details_subheading">Art page</p>
							<p class="project_details">
							The art page was built to showcase my 3D artwork. This page took, by far, the longest of the three to make.
							I knew I wanted to make a popup-gallery system for each project I've worked on. I thought it would be an easy task, but I was wrong.
							It was the hardest and took the longest to achieve. I looked around online for a popup system I could use as a base and begin to 
							manipulate and found <a href="http://istockphp.com/jquery/creating-popup-div-with-jquery/" target="_blank">this</a>.<br><br>
							
							Next I needed to make it so that clicking different links triggers different galleries being popped up. This was the troublesome
							part. In order to maintain space and make things as fast as possible, I attempted to create the galleries dynamically in many ways:</p>
							<ul class="project_details_list">
								<li>Using the MVC and POST-REDIRECT-GET system to manipulate forms. I would load the same page, and use
								    server side Java and JSPs to rebuild the page each time with different images in each gallery.
								    This worked, however there was a major problem: Because you kept clicking, and kept opening up
								    the page again, every time you pressed the 'back' button on the browser, you would go through
								    each gallery page you had previously clicked on. This was unacceptable and there was no way around it
								    so I had to drop the entire MVC PRG system.</li>
								<li>Using AJAX commands to dynamically remove and replace contents of the gallery. I got the system working for this
								    as well, but unfortunately, every slider system I came across could not handle dynamically added images to the
								    galleries. They required all the images to be in the gallery on intialization of the page.
								    I wasn't about to go create my own gallery system, so I had to drop the AJAX idea and move on to something else. </li>
								<li>I settled with Javascript and multiple hidden galleries. This bloats the file and is fake dynamic, but it was the best solution I could come up
								    with without needing more drastic alterations that would have taken more time than I had available to get this done.</li>
							</ul>							
							<p class="project_details">
							I modified the popup system to allow for multiple-popups in one page, and altered its contents so
							that they could handle browser resizing properly. The gallery system also had to be altered heavily to properly handle browser
							resizing. 
							</p>
							<p class="project_details_subheading">Computer Science page</p>
							<p class="project_details">
							The page you are currently on, this was the easiest page to complete. It just took time to get the CSS working properly.
							The more difficult aspect was having vertical-tabs within horizontal-tabs and still properly maintain the look of the page.
							In the end, it was not very hard and only took a couple of days to complete.<br><br>
							
							Incidentally, the footer image at the bottom of the page that's used as decoration is a real diagram. It is a basic
							adder circuit diagram. 
							</p>
							<br><br><br>
							<p class="sub-heading">Results</p>
							<p class="project_details">
							In the end, I'm pleased with the website. It showcases design ability and technical ability in an interesting and unique way.
							I was able to complete the goals I set out to do, and it became everything I hoped for and more. 
							</p>
							
						</div> <!-- v-view1 -->
						<div id="v-view2">
							<h1 class="project_header">Lolpaper</h1>
							<a class="project_github" href="https://github.com/TheHeadlessHydra/Lolpaper" target="_blank">-> Find on Github</a>
							<img src="images/compsci/banners/lolpaper.png">
							<br><br><br>
							<p class="sub-heading">Idea</p>
							<p class="project_details">
								I like wallpapers. I especially like live wallpapers. I like the game League of Legends even more. For this project, I decided to
								combine both of these things. I wanted to create a live wallpaper for Android devices on mobile 
								that would have animations of characters from the game.
								I'd be able to use my coding skills to produce the backbone, and my artistic skills to produce the visuals.<br>
								The goals for this project were:</p>
							<ul class="project_details_list">
								<li>Gain further understanding of mobile development, more specifically android development.</li>
								<li>Create a live wallpaper that is functional and stable.</li>
								<li>Showcase artistic ability.</li>
							</ul>
							<br><br><br>
							<p class="sub-heading">Execution</p>
							<p class="project_details">
							This one had a multi-pronged approach. There were a couple of things I needed to make to get this thing up and running:</p>
							<ul class="project_details_list">
								<li>A neat UI that offered multiple animations to the user that had the ability to add and remove animations as well as
								    clear the animations and change the background wallpaper.</li>
								<li>The actual live wallpaper system.</li>
								<li>An animation tree system that would properly blend animations together.</li>
								<li>An XML parser that would parse an XML page that I or any user has designed, and from the information in the XML,
								    build an animation system for the image and add it to the list of animations.</li>
								<li>The actual animations</li>
							</ul>
							<p class="project_details_subheading">UI</p>
							<p class="project_details">
							The UI for the app had to offer tons of things to the user. So I went around on the android documentaiton as well as google to
							try and offer them the best that I could. I was able to achieve everything I wanted to achieve through clever manipulation of 
							the android API.<br><br>
							
							To choose from the various animations available, I created a Grid View system that can insert/remove images and properly call the
							live wallpaper to initialize. The clear button simply stops the animation from proceeding and overwrites the current 
							wallpaper with a saved copy of the initial wallpaper. To choose the background, I simply called the regular android wallpaper
							system and then fire a delayed event that triggers the user choosing an animation right afterwards. The last major thing I offered
							was a settings page that lists all the major settings that the user can change.    
							
							</p>
							<p class="project_details_subheading">Live wallpaper system</p>
							<p class="project_details">
							The live wallpaper system creates an android engine that gets updated a certain number of times per second. Each time, it updates
							the frame through calls to the animation system which will be talked about later.<br><br>
							
							This system has to intercept the wallpaper stream, get the image from it, draw it, and then draw the animation on top of it every frame.
							It also had to check for touch so that the user can place the animation where they see fit. The touch had to check for 
							boundaries to make sure the image did not get clipped, and also had to centre itself to the images centre. 
							</p>
							<img src="images/compsci/base-key-system.png" class="textWrapRight">
							<p class="project_details_subheading">Animation system</p>
							<p class="project_details">
							Before writing the animation system and parser, I needed an idea on how I was going to handle the animations. This is the
							conclusion I came to: I would have <b>stages</b> of animation that could be one of two things: A <i>base</i> or a 
							<i>key</i>. There would be only one base per character, and any number of keys. Each base/key were required to have a main idle animation
							attached to it, then any number of extra idle animations. Each base/key would be looping through the main idle animation constantly
							at all times. At random preset times (a user controlled setting labeled as IDLE_RATE), a random idle animation would play. 
							In randomized preset times (a user controlled setting labeled as ACTION_RATE), the animation would smoothly transition 
							into a randomly chosen key. But to do this, some special aspects were required:
							</p>
							<ul class="project_details_list">
								<li>Each base/key was required to have a main idle animation, and then optionally any extra idle animations.</li>
								<li>Each base/key needed to have a list of transitions that it would be able to transition into. From key to key,
								    key to base, etc.</li>
								<li>The start and end frames of these transitions needed to be the same as the start and end frames of the main idle animations.
								    This is because once transitioning into a key/base, the main idle animation would begin playing. Matching the frames
								    allows for a smooth transition.</li>
								<li>The animation system would have to wait for the current idle animation that was playing to end before playing the next transition
								    animation/idle animation. This is, again, to allow for smooth transitions.</li>
							</ul>
							<p class="project_details">
							The image to the right explains this process more conciseley. <br><br>
					
							There are more details than this, but this is the short version of how the animation system works.
							</p>
							<p class="project_details_subheading">XML Parser</p>
							<p class="project_details">
							The XML parser needed to identify all the information the animation system needed, and store it all in an XML so that it could be 
							read externally and used to create an animation system. This is exactly what it currently does. By following the format:<br>
							<img src="images/compsci/animation-system-format.png"><br>
							It is possible to create an animation system yourself.
							</p>
							<p class="project_details_subheading">Animations</p>
							<p class="project_details">
							This is where the project came to a halt. I underestimated the amount of time required in creating 2D animations. 
							I am used to 3D animations myself and decided to challenge myself by doing 2D animations for this project. 
							This proved to be a fatal idea. I spent over 2 months and was only able to generate about a minutes worth of content
							which is simply not enough for it to be very interesting. 
							</p>
							<br><br><br>
							<p class="sub-heading">Results</p>
							<p class="project_details">
							My results this time around were varied. I got everything I wanted to do done on the technical side of things. I was able to
							complete the UI to spec, stabalize it so that there were no bugs, have solid memory management, get the XML parser and the
							animation system done. It was a <b>HUGE</b> success on that front!<br><br>
							
							Unfortunately my plans fell through on the artistic side of things. As I described earlier, I simply did not have enough time to
							gnerate the amount of content I wanted. It was a huge underestimation of work involved in generating the art. Had I done it through
							3D animation(something I have worked with for years) instead of 2D animation(something I had never done before), 
							I would have generated much, much more content. It was underestimation and too much confidence
							that made this project have such little actual animation content. <br><br>
							
							However, I am still pleased with the project and myself for finishing it and getting as much done as I did. 
							There is still time in the future to come back to this project and add content.
							</p>
						</div> <!-- v-view2 -->
						<div id="v-view3">
							<h1 class="project_header">LeagueView</h1>
							<a class="project_github" href="https://github.com/TheHeadlessHydra/CustomView" target="_blank">-> Find on Github</a>
							<img src="images/compsci/banners/leagueview.png">
							<br><br><br>
							<p class="sub-heading">Idea</p>
							<p class="project_details">
							My first attempt at mobile development. This was a very, very simple project that I did not want to take far.
							I simply wanted to get a hang of how mobile development works so that I can plan out my real mobile app, 
							Lolpaper. However, I did generate some interesting content with the project. More so than I anticipated, so I
							have decided to keep it up. The genral idea was to create a tool that will dynamically go online to gather inforamtion
							about league of legends characters/items and display them to the user:<br></p>
							<ul class="project_details_list">
								<li>Gain a general idea of how android/mobile dev works.</li>
								<li>Connect online.</li>
								<li>Customize the UI a bit.</li>
							</ul>
							<br><br><br>
							<p class="sub-heading">Execution</p>
							<p class="project_details">
							This was simple and somehow not simple. I spent a large amount of time understanding how Android dev works for this project.
							But I did end up going through some interesting motions to generate the content:
							<p class="project_details_subheading">HTML parsing</p>
							<p class="project_details">
							The first part of the project involved connecting online to the League of Legends webpage, then parsing their HTML to generate the
							list of characters. I would download each champions image, their names and descriptions, then generate a list view with the information
							and display it to the user. 
							</p>
							<p class="project_details_subheading">List view</p>
							<p class="project_details">
							Generating a unique method of showing information to the user involved overwriting the base image adaptor class
							and generating my own that catered to the leauge of legends champion view system.
							</p>
							<br><br><br>
							<p class="sub-heading">Results</p>
							<p class="project_details">
							Well I did what I set out to do. I learned a lot about Android, connected online, and customized the UI.<br><br>
							
							The main problem is that the entire system relies on the connected League of Legends webpage to retain their method of HTML
							coding. If they changed the system, this app would no longer function.<br><br>
							
							This is exactly what they did not long ago. Re-engineering their whole website caused this app to no longer function. I don't actually
							mind though, since this was always meant to be a throwaway project.
							
						
							</p>
						</div> <!-- v-view3 -->
					</div> <!-- v-tabcontents -->
				</div> <!-- v-tab_container -->
			
			
			</div> <!-- view1 -->
			<div id="view2">
				
				<div id="v-tab_container-2">
					<ul class="v-tabs">
						<li><a href="#v2-view1">WLPP Compiler</a></li>
						<li><a href="#v2-view2">Hearts</a></li>
					</ul>
					<div class="v-tabcontents">
						<div id="v2-view1">
							<h1 class="project_header">WLPP Compiler</h1>
							<a class="project_github" href="https://github.com/TheHeadlessHydra/WLPPCompiler" target="_blank">-> Find on Github</a>
						</div> <!-- v2-view1 -->
						<div id="v2-view2">
							<h1 class="project_header">Hearts</h1>
							<a class="project_github" href="https://github.com/TheHeadlessHydra/Hearts" target="_blank">-> Find on Github</a>
						</div> <!-- v2-view2 -->
					</div> <!-- v-tabcontents -->
				</div> <!-- v-tab_container-2 -->
				
				
			</div> <!-- view2 -->
		</div> <!-- tabcontents -->
	</div> <!-- tab_container -->

	
</div> <!-- body_page -->

<div id="page_footer"></div>

</body>

</html>