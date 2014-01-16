<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">

<title>Computer Science</title>

<!-- Fonts -->
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Aldrich">
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Gudea">
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Quattrocento">
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Josefin+Sans">

<!-- styles -->
<link rel="stylesheet" type="text/css" href="css/compsci.css"></link>
<link rel="stylesheet" type="text/css" href="css/nav.css"></link>
<link rel="stylesheet" type="text/css" href="css/footer.css"></link>
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

<!-- Navigation Bar -->
<div id="nav_bar">
	<ul id="nav_ul">
	<li class="nav_li"><a href="webgl.html"><img class="nav_img" src="images/nav/headlesshydra_logo.png"></a></li>
	<li class="nav_li"><div class="nav_element"><a class="nav_link" href="home">Home</a></div></li>
	<li class="nav_li"><div class="nav_element"><a class="nav_link" href="art">Art</a></div></li>
	<li class="nav_li"><div class="nav_selectedelement"><a class="nav_selected" href="compsci">Compsci</a></div></li>
	</ul>
</div>

<div id="body-page">

	<div id="outer-border">
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
			<p>All my code can be found on my personal <a href="https://github.com/TheHeadlessHydra" target="_blank">Github</a>.</p>
		</div> <!-- text-projects -->
	</div> <!-- body-header -->
	</div><!-- outer-border -->
	
	<div id="tab_container">
		<ul class="tabs" data-persist="true">
			<li><a href="#view1">Personal</a></li>
			<li><a href="#view2">University</a></li>
		</ul>
		<div class="tabcontents">
			<div id="view1">
			
				<div id="v-tab_container">
					<ul class="v-tabs">
						<li><a href="#v-view4">Zanthus</a></li>
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
						<div id="v-view4">
							<h1 class="project_header">Zanthus</h1>
							<a class="project_github" href="https://github.com/TheHeadlessHydra/Zanthus" target="_blank">-> Find on Github</a>
							<img src="images/compsci/banners/zanthus.png">
							<p class="sub-heading">Idea</p>
							<p class="project_details">
							Create a tower defence game! After building this website and learning the various tricks needed to get three.js
							and webGL working, I decided to take on the creation of a game. I wouldn't be able to build anything crazy or
							extremely big, so I wanted to go for a simpler approach that offers the ability to do cool looking things 
							using my 3D modeling/texturing skills. I went for a 2.5D tower defense game with some unique ideas. Build a 
							tower that raises into the sky, and all the way into space! Different parts of the tower will have different 
							forms of defense against invading enemies who are trying to climb to the top of your tower. 
							</p>
							<br><br><br>
							<p class="sub-heading">Initialization and drivers</p>
							<p class="project_details">
							After building this website, I learned how much of a hassle it is to hold all the jscirpt code in
							a single file, so I decided to split it all. I did this by including a driver that acts as the kick off point
							of the code. It initializes all the various pieces and modules that need to be initailzed and allows globals to be
							shared through the modules in the same way. 
							</p>
							<br><br><br>
							<p class="sub-heading">Workflow from Maya to Three.js</p>
							<p class="project_details">
							The most difficult part of the process was understanding the worflow of getting custom, animated, 
							textured meshes into three.js. It is a difficult and arduous process.
							<br><br>
							The main point is to use the JSON loader that comes with three.js to do the majority of this work. 
							The JSON format offers a simple and heavily modifiable system to bring meshes into three.js and is, 
							in my opinion, currently the strongest way to bring meshes into a scene in three.js.
							<br><br>
							Firstly, the native Maya exporter for three.js that ships with the product is useless. 
							The workflow needed to get this working is to create things in Maya, and then shift over to 
							Blender for the exporting. 
							<br><br>
							The process begins by modelling, animating, and UV'ing the scene in Maya. 
							They have to be exported from Maya without textures since Blender cannot handle Maya textures.
							Once modelling is done, it must be exported to a special format called COLLADA (listed as DAE_FBX in Maya). 
							Exporting with animations requires that you blend the animations, thus creating morph targets which can
							then be used to animate in three.js. Once exported, that's the Maya part taken care of.
							<br><br>
							Now it's the Blender part. I import the exported DAE from Maya.
						    Sometimes this import will fail if the DAE was exported with textures in Maya. In this case, I completely remove 
						    textures in the exported DAE file by opening it up in a text editor and locating any XML tag for 'texture'. 
						    Getting rid of all those references fixes the issue. 

							Once done, it can be exported from Blender in the three.js format (which is a JSON file). The JSON file can be modified
							afterwards to include custom materials such as normals, displacements and whatnot. The entire material for each texture
							can be manually written in the JSON file and makes the process much simpler. 
							</p>
							<br><br><br>
							<p class="sub-heading">Loading and animating the meshes</p>
							<p class="project_details">
							loader.js was a heavy file and is responsible for loading all the meshes into the scene. A mesh only
							needs to be loaded a single time into the scene using the JSONloader class that comes with three.js.
							From then on, I can instantiate a copy of it and save on processing time. This forces a single
							large loading time at the beginning of the game but allows for arbitrarily large amount of
							meshes to be added to the scene at any given time afterwords, which is useful for a large amount
							of enemies.  
							<br><br>
							Animating the meshes was tough. There is no automated way to animate morph targets in three.js, it
							has to be handled manually. So I created an animation system to handle the process through morph targets.
							A global array exists that holds all meshes currently aniamting, and calls their aniamte() functions on each
							frame render. To animate a mesh, its as simple as adding it to the array. It will remove itself once
							its animation finishes (or for animations that are meant to loop, it will not remove itself). The logistics
							of this are layed out in animation.js. 
							</p>
							<br><br><br>
							<p class="sub-heading">The game logic</p>
							<p class="project_details">
							tower.js is the biggest file in the codebase and handles the logic of building and removing tower pieces
							from the tower. It's not rocket science and involves fairly simple mecahnics such as a global to keep track
							of the current height of the tower. 
							<br><br>
							The enemies posed a bit of a performance problem. Heavy optimizations needed to be performed to 
							allow for an arbitrariy large amount of enemies to be on the scene at a time. 
							<br><br>
							The enemy spawning system is a process that involves setTimeout. Each wave of enemies that spawns
							will set off another setTimeout event to spawn more enemies. On each call, the length of time the wave
							lasts is longer and it also spawns more people on each wave. There is a hard max-cap set on the time
							and the amount of enemies right now since plans are in place to add more types of enemies and it would
							be meaningless to flood the player with a basic type of enemy. 
							</p>
						</div> <!-- v-view4 -->
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
							<br><br><br>
							<p class="sub-heading">Project</p>
							<p class="project_details">
							The course I was taking that resulted in this project was labeled CS241 - Foundations of Sequential Programs.
							It's basically a course on learning assembly, compilers and how they work. The whole course builds up to it, 
							but the end result they ask for is a compiler for a watered-down version of C++, called WLPP.
							</p>
							<br><br><br>
							<p class="sub-heading">Execution</p>
							<p class="project_details">
							There are multiple stages in the development of a compiler. We went through a very rigid and specific sequence
							in order to generate our compiler. This sequence was as such:
							</p>
							<ul class="project_details_list">
								<li>Develop Grammer</li>
								<li>Lexical Analysis</li>
								<li>Top-down LL(1) parsing</li>
								<li>Semantic Analysis</li>
								<li>Code Generation</li>
								<li>Optimization</li>
							</ul>
							<p class="project_details_subheading">Develop Grammer</p>
							<p class="project_details">
							The first thing to do when writing a compiler is to write out the actual grammer for it. Two of them need to be written:
							Context-Free grammer and Context-Sensitive grammer. It's complicated but in essence, context-free tells you where you're allowed
							to put certain tokens, while context-sensitive tells you what type of tokens are allowed where. Flimsy explanation, but I'm not going
							into detail on that here. These two are important stages in the compiler generation process. 
							In the interests of marking, we had this grammer given to us, and it was up to us to make a compiler for it. 
							</p>
							<p class="project_details_subheading">Lexical Analysis</p>
							<p class="project_details">
							Now, there must be a system created that will take an input stream and convert it into <b>tokens</b> that can then be parsed.
							This was one of the early sections of the course. An interesting and also somewhat simple stage in the process. It is sometimes
							called tokenizing. I was able to develop a simple solution to this - it is not that hard. A simple recursive function can do it
							for a language as simple as WLPP.
							</p>
							<p class="project_details_subheading">Top-down LL(1) parsing</p>
							<p class="project_details">
							Once the stream of input has been tokenized, it can then be parsed into an optionally decorated parse tree. We had many
							choices for how we wished to go about the creation of this parser. I chose to use a tree and stack based algortihm to
							design my parser that involved pushing/poping nodes on each step of the parse. 
							</p>
							<p class="project_details_subheading">Semantic Analysis</p>
							<p class="project_details">
							Once the input has been turned into a parse tree, it must then be carefully inspected to make sure it follows the
							context-sensitive rules of the grammer. This involved a lot of recursive calls (since we are dealing with a parse tree)
							but wasn't too bad once you got the hang of it. The difficulty really depended on wether or not you decorated your parse tree
							on the parsing stage. It was much easier if you had a decorated parse tree. 
							</p>
							<p class="project_details_subheading">Code Generation</p>
							<p class="project_details">
							Now here was the bulk of the work and also the distinguishing factor among parsers. You take the input that has been parsed,
							recurse through it and begin generating assembly code for it. There were a million ways to go about this, all leading to different
							optimization routes. I began, however, with the naiive approach. I went by-the-book and generated the code as cleanly as I could.
							</p>
							<p class="project_details_subheading">Optimization</p>
							<p class="project_details">
							Optimization. The last stage. Once you have the entire compiler working, you go back and optimize it for specifically what
							you want to optimize. Code length, speed, etc. Personally I never did this stage. It was bonus marks and wasn't very important.
							I spent my time instead creating LeagueView.
							</p>
							<br><br>
							<p class="project_details">
							From there, the assembly code goes into an assembler, which will handle the rest. 
							</p>
							<br><br><br>
							<p class="sub-heading">Results</p>
							<p class="project_details">
							It was an eye-opening course and I loved taking it. Learned a lot about how programming languages work - It makes it easier
							to understand why certain bugs and errors occur when coding. You can even identify which stage of the compiler it hit the error in: 
							parsing, context-sensitive analysis, or even linking! 
							</p>
						</div> <!-- v2-view1 -->
						<div id="v2-view2">
							<h1 class="project_header">Hearts</h1>
							<a class="project_github" href="https://github.com/TheHeadlessHydra/Hearts" target="_blank">-> Find on Github</a>
							<br><br><br>
							<p class="sub-heading">Project</p>
							<p class="project_details">
							The course I was taking that resulted in this project was labeled CS246 - Object-Oriented Software Development.
							This was a fun and very easy course. For people who have worked with c++ before, this course comes easily and
							you can sit back and have fun with the assignments. The final assignment for it was to create a game of hearts
							(the card game) with a classmate. I had fun with it!
							</p>
							<br><br><br>
							<p class="sub-heading">Execution</p>
							<p class="project_details">
							It was a class on object-oriented design, and I'll be damned if I wasn't going to make this game in an object-oriented
							way. So I did. I made this game incredibly well organized into sections:
							<ul class="project_details_list">
								<li>Card, card pile, and Deck</li>
								<li>Player, smart player, random player, and human player</li>
								<li>Trick, options and hearts</li>
							</ul>
							<p class="project_details">
							I made this project from scratch. I didn't like the direction they were going with it, so I built it myself.
							</p>
							<p class="project_details_subheading">Card, card pile, and Deck</p>
							<p class="project_details">
							First, we developed a class that describes a card, that can build a card from input, can compare cards, and can do
							any other card manipulation required. <br><br>
							
							Next we built a data structure to store cards in an array like manner that could be used by others.<br><br>
							
							Then build a class to handle a card deck. It can only have one card of each type per deck. 
							It can have a discard pile, and can allow for cards to be removed from the front of the deck.
							</p>
							<p class="project_details_subheading">Player, smart player, random player, and human player</p>
							<p class="project_details">
							Next, develop the players. Begin with an abstact class player that handles all the basic actions a player can do.<br><br>
							
							Next, derive three types (according to what the assignment we were doing wanted): A human, smart and random player.<br><br>
							
							The human player gives a text-based interface to play manually.<br>
							The random player is a dumb AI that will randomly choose the next card to play (if it cant be played on that hand, it keeps choosing
							random cards until it can).<br>
							The smart player is the smart AI that used interesting forsight and tactics to choose the next card in an attempt to win the game. 
							</p>
							<p class="project_details_subheading">Trick, options, and hearts</p>
							<p class="project_details">
							Lastly three things left. Create an options class that can allow for customization of how the game will be played. It holds constants
							and other such values that are used throughout the code to setup the game. Then create a trick class that will handle a single round
							of the game. It can take 4 cards, figure out who won, and pass along the discard pile to whoever gets it. The last thing needed is
							the main interface of the game that will initalize a game; that was hearts.
							</p>
							<br><br><br>
							<p class="sub-heading">Results</p>
							<p class="project_details">
							It was not a particulairy hard project, but it was fun. Object-oriented design projects like this have an air of attrctiveness to 
							them because they do not involve particularly hard and abstact ideas. They simply need smart design.
							</p>
						</div> <!-- v2-view2 -->
					</div> <!-- v-tabcontents -->
				</div> <!-- v-tab_container-2 -->
				
				
			</div> <!-- view2 -->
		</div> <!-- tabcontents -->
	</div> <!-- tab_container -->

<div id="main_footer">
	<div id="main_footer_innerborder">
		<h1 class="footer_h1">Contact</h1>
		<p class="footer_p" style="font-size: 30px;">serjkazar@gmail.com</p>
		<ul id="footer_ul">
		<li class="footer_li"><a href="webgl.html" target="_blank"><div class="footer_element"><img class="footer_img" src="images/footer/headlesshydra_logo.png"></div></a></li>
		<li class="footer_li"><a href="https://github.com/TheHeadlessHydra" target="_blank"><div class="footer_element"><img class="footer_img" src="images/footer/github-logo-small.png"></div></a></li>
		<li class="footer_li"><a href="http://www.linkedin.com/pub/serj-kazar/25/192/231" target="_blank"><div class="footer_element"><img class="footer_img" src="images/footer/linkedin-logo-small.png"></div></a></li>
		</ul>
		<p class="footer_p">&#169 2013 Serj Kazar. All Rights Reserved.</p>
	</div>
</div>

</div> <!-- body_page -->

<!-- <div id="page_footer"></div> -->

</body>

</html>