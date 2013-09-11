

/**
 * The main JS that runs the core functionality of the website.
 * 
 * It creates the scene, camera, renderer, birds, and border transitions.


 */
var 
SCREEN_WIDTH = window.innerWidth, 
SCREEN_HEIGHT = window.innerHeight, 
SCREEN_WIDTH_HALF = SCREEN_WIDTH / 2, 
SCREEN_HEIGHT_HALF = SCREEN_HEIGHT / 2;

var camera, scene, renderer, 
birds, bird, boid, boids, 
stats, 
surface_corner1, surface_corner2, botRightGeo1, botRightGeo2, surface_cracks1, surface_cracks2,
clock = new THREE.Clock();

init();
animate();

function init() {

	// used to render the birds
	birdCamera = new THREE.PerspectiveCamera(75, SCREEN_WIDTH / SCREEN_HEIGHT, 1,10000);
	birdCamera.position.z = 450;
	birdScene = new THREE.Scene();
	
	// used to render the HUD
	HUDCamera = new THREE.OrthographicCamera( SCREEN_WIDTH / - 2, SCREEN_WIDTH / 2, SCREEN_HEIGHT / 2, SCREEN_HEIGHT / - 2, 1, 1000 );
	//HUDCamera = new THREE.PerspectiveCamera(75, 1, 1,10000);
	HUDCamera.position.z = 0;
	HUDScene = new THREE.Scene();
	HUDScene.add( HUDCamera );

	/**						*
	 * 			BOIDS		*
	 * 						*
	 */	
	birds = [];
	boids = [];

	// Create 200 birds with random positions
	for ( var i = 0; i < 100; i++) {

		boid = boids[i] = new Boid();
		boid.position.x = Math.random() * (200 - 1) + 1;
		boid.position.y = -2 * Math.random() * (250 - 1) + 1;
		boid.position.z = Math.random() * (200 - 1) + 1;
		boid.velocity.x = Math.random() * (0.2 - 0.1) + 0.1;
		boid.velocity.y = Math.random() * (0.02 - 0.01) + 0.01;
		boid.velocity.z = Math.random() * (0.02 - 0.01) + 0.01;
		boid.setAvoidWalls(true);
		boid.setWorldSize(500, 500, 400);

		bird = birds[i] = new THREE.Mesh(new Bird(),
				new THREE.MeshBasicMaterial({
					color : Math.random() * 0xffffff,
					side : THREE.DoubleSide
				}));
		bird.phase = Math.floor(Math.random() * 62.83);
		bird.position = boids[i].position;
		birdScene.add(bird);
	}

	
	/**					HUD 					*
	 * 											*
	 * 		Creates items needed for the HUD	*
	 */
	// Bottom left texture 01 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	
	// Texture that has all pixels at u=0 and v set to white, all else set to black.
	var transitionTexture = new THREE.ImageUtils.loadTexture('images/main/ShiftToWhite_Soft_512.png');
	// Texture to transition in.
	var growthTexture01 = new THREE.ImageUtils.loadTexture('images/main/corner_test01.png');
	// Uniforms used to call the fragment shader
	this.growthUniform01 = {
			baseTexture: 		{ type: "t", value: growthTexture01 },
			transitionTexture: 	{ type: "t", value: transitionTexture },	
			baseSpeed: 			{ type: "f", value: 0.5 },
			time: 				{ type: "f", value: 0.0 },					// Start position
			moveX:				{ type: "f", value: -1.0},					// Amount to move in X
			moveY:				{ type: "f", value: 0.0},					// Amount to move in Y
			alphaMult:			{ type: "f", value: 1.0}
		};
	// create custom material
	var growth01Material = new THREE.ShaderMaterial({
		uniforms : growthUniform01,
		vertexShader : document.getElementById('vertexShader').innerHTML,
		fragmentShader : document.getElementById('transitionShader').innerHTML
	});
	// IMPORTANT! Set the transparency or there will be no alpha manipulation!
	growth01Material.transparent = true;
	// apply the material to a surface
	var flatGeometry = new THREE.PlaneGeometry(256, 256, 1, 1);
	surface_corner1 = new THREE.Mesh(flatGeometry, growth01Material);
	// Make it double sided, so that if we want to mirror it, we can still see it
	surface_corner1.material.side = THREE.DoubleSide;
	// Add the surface to the HUD camera, and position it
	HUDCamera.add(surface_corner1);
	surface_corner1.position.set(-SCREEN_WIDTH_HALF+120,-SCREEN_HEIGHT_HALF+120,-1.0);
	
	// Bottom left texture 02 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	var growthTexture02 = new THREE.ImageUtils.loadTexture('images/main/corner_test02.png');
	this.growthUniform02 = {
			baseTexture: 		{ type: "t", value: growthTexture02 },
			transitionTexture: 	{ type: "t", value: transitionTexture },	
			baseSpeed: 			{ type: "f", value: 0.2 },
			time: 				{ type: "f", value: 0.0 },					// Start position
			moveX:				{ type: "f", value: -1.0},					// Amount to move in X
			moveY:				{ type: "f", value: 0.0},					// Amount to move in Y
			alphaMult:			{ type: "f", value: 1.0}
		};
	var growth02Material = new THREE.ShaderMaterial({
		uniforms : growthUniform02,
		vertexShader : document.getElementById('vertexShader').innerHTML,
		fragmentShader : document.getElementById('transitionShader').innerHTML
	});
	growth02Material.transparent = true;
	var flatGeometry2 = new THREE.PlaneGeometry(256, 256, 1, 1);
	surface_corner2 = new THREE.Mesh(flatGeometry2, growth02Material);
	surface_corner2.material.side = THREE.DoubleSide;
	HUDCamera.add(surface_corner2);
	HUDScene.add(surface_corner2);
	surface_corner2.position.set(-SCREEN_WIDTH_HALF+120,-SCREEN_HEIGHT_HALF+120,-2.0);
	
	// Bottom right texture 01 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	var botRightTex1 = new THREE.ImageUtils.loadTexture('images/main/corner_test03.png');
	this.botRightUniform1 = {
			baseTexture: 		{ type: "t", value: botRightTex1 },
			transitionTexture: 	{ type: "t", value: transitionTexture },	
			baseSpeed: 			{ type: "f", value: 0.4 },
			time: 				{ type: "f", value: 0.0 },					// Start position
			moveX:				{ type: "f", value: -1.0},					// Amount to move in X
			moveY:				{ type: "f", value: 0.0},					// Amount to move in Y
			alphaMult:			{ type: "f", value: 1.0}
		};
	var botRightMaterial01 = new THREE.ShaderMaterial({
		uniforms : botRightUniform1,
		vertexShader : document.getElementById('vertexShader').innerHTML,
		fragmentShader : document.getElementById('transitionShader').innerHTML
	});
	botRightMaterial01.transparent = true;
	var botGeometry1 = new THREE.PlaneGeometry(800, 200, 1, 1);
	botRightGeo1 = new THREE.Mesh(botGeometry1, botRightMaterial01);
	botRightGeo1.material.side = THREE.DoubleSide;
	HUDCamera.add(botRightGeo1);
	HUDScene.add(botRightGeo1);
	botRightGeo1.rotation.y=Math.PI;
	botRightGeo1.position.set(SCREEN_WIDTH_HALF-400,-SCREEN_HEIGHT_HALF+100,-4.0);
	
	// Bottom right texture 02 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	var botRightTex2 = new THREE.ImageUtils.loadTexture('images/main/corner_test04.png');
	this.botRightUniform2 = {
			baseTexture: 		{ type: "t", value: botRightTex2 },
			transitionTexture: 	{ type: "t", value: transitionTexture },	
			baseSpeed: 			{ type: "f", value: 0.2 },
			time: 				{ type: "f", value: 0.0 },					// Start position
			moveX:				{ type: "f", value: -1.0},					// Amount to move in X
			moveY:				{ type: "f", value: 0.0},					// Amount to move in Y
			alphaMult:			{ type: "f", value: 1.0}
		};
	var botRightMaterial02 = new THREE.ShaderMaterial({
		uniforms : botRightUniform2,
		vertexShader : document.getElementById('vertexShader').innerHTML,
		fragmentShader : document.getElementById('transitionShader').innerHTML
	});
	botRightMaterial02.transparent = true;
	var botGeometry2 = new THREE.PlaneGeometry(800, 200, 1, 1);
	botRightGeo2 = new THREE.Mesh(botGeometry2, botRightMaterial02);
	botRightGeo2.material.side = THREE.DoubleSide;
	HUDCamera.add(botRightGeo2);
	HUDScene.add(botRightGeo2);
	botRightGeo2.rotation.y=Math.PI;
	botRightGeo2.position.set(SCREEN_WIDTH_HALF-400,-SCREEN_HEIGHT_HALF+100,-4.0);
	
	
	
	// Cracked texture 01 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	var crackTexture01 = new THREE.ImageUtils.loadTexture('images/main/SideCracks.png');
	var transitionTexture02 = new THREE.ImageUtils.loadTexture('images/main/ShiftToWhite_Softer_512.png');
	this.crackUniform01 = {
			baseTexture: 		{ type: "t", value: crackTexture01 },
			transitionTexture: 	{ type: "t", value: transitionTexture02 },	
			baseSpeed: 			{ type: "f", value: 0.1 },
			time: 				{ type: "f", value: 0.0 },					// Start position
			moveX:				{ type: "f", value: -1.0},					// Amount to move in X
			moveY:				{ type: "f", value: 0.0},					// Amount to move in Y
			alphaMult:			{ type: "f", value: 0.7}
		};
	var crackMaterial01 = new THREE.ShaderMaterial({
		uniforms : crackUniform01,
		vertexShader : document.getElementById('vertexShader').innerHTML,
		fragmentShader : document.getElementById('transitionShader').innerHTML
	});
	crackMaterial01.transparent = true;
	var flatCrackGeometry1 = new THREE.PlaneGeometry(SCREEN_HEIGHT/2, SCREEN_HEIGHT, 1, 1);
	surface_cracks1 = new THREE.Mesh(flatCrackGeometry1, crackMaterial01);
	surface_cracks1.material.side = THREE.DoubleSide;
	HUDCamera.add(surface_cracks1);
	HUDScene.add(surface_cracks1);
	resize4PointPlane(surface_cracks1,false,-SCREEN_WIDTH_HALF,-SCREEN_HEIGHT_HALF,SCREEN_HEIGHT,SCREEN_HEIGHT_HALF,-5.0);
	
	// Cracked texture 02 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	var crackTexture02 = new THREE.ImageUtils.loadTexture('images/main/SideCracks2.png');
	this.crackUniform02 = {
			baseTexture: 		{ type: "t", value: crackTexture02 },
			transitionTexture: 	{ type: "t", value: transitionTexture02 },	
			baseSpeed: 			{ type: "f", value: 0.1 },
			time: 				{ type: "f", value: 0.0 },					// Start position
			moveX:				{ type: "f", value: -1.0},					// Amount to move in X
			moveY:				{ type: "f", value: 0.0},					// Amount to move in Y
			alphaMult:			{ type: "f", value: 0.7}
		};
	var crackMaterial02 = new THREE.ShaderMaterial({
		uniforms : crackUniform02,
		vertexShader : document.getElementById('vertexShader').innerHTML,
		fragmentShader : document.getElementById('transitionShader').innerHTML
	});
	crackMaterial02.transparent = true;
	var flatCrackGeometry2 = new THREE.PlaneGeometry(SCREEN_HEIGHT/2, SCREEN_HEIGHT, 1, 1);
	surface_cracks2 = new THREE.Mesh(flatCrackGeometry2, crackMaterial02);
	surface_cracks2.material.side = THREE.DoubleSide;
	HUDCamera.add(surface_cracks2);
	HUDScene.add(surface_cracks2);
	resize4PointPlane(surface_cracks2,true,SCREEN_WIDTH_HALF,-SCREEN_HEIGHT_HALF,SCREEN_HEIGHT,SCREEN_HEIGHT_HALF,-6.0);
	
	
	
	/**							*
	 * 			RENDERER		*
	 * 							*
	 */
	renderer = new THREE.WebGLRenderer({
		antialias : true
	});
	container.appendChild(renderer.domElement);
	renderer.autoClear = false;
	renderer.setSize(SCREEN_WIDTH, SCREEN_HEIGHT);

	document.addEventListener('mousemove', onDocumentMouseMove, false);
	document.body.appendChild(renderer.domElement);

	// The performance monitor for FPS
	stats = new Stats();
	stats.domElement.style.position = 'absolute';
	stats.domElement.style.left = '0px';
	stats.domElement.style.top = '0px';
	//document.getElementById('container').appendChild(stats.domElement);

	window.addEventListener('resize', onWindowResize, false);

}


function onWindowResize() {
	/** Match bird camera and renderer to new browser window size
	 * 
	 */
	
	birdCamera.aspect = window.innerWidth / window.innerHeight;
	birdCamera.updateProjectionMatrix();
	
	HUDCamera.left = window.innerWidth / - 2;
	HUDCamera.right = window.innerWidth / 2;
	HUDCamera.top = window.innerHeight / 2;
	HUDCamera.bottom = window.innerHeight / - 2;
	HUDCamera.updateProjectionMatrix();
	
	
	surface_corner1.position.set(-window.innerWidth/2+120,-window.innerHeight/2+120,-1.0);
	surface_corner2.position.set(-window.innerWidth/2+120,-window.innerHeight/2+120,-2.0);
	botRightGeo1.position.set(window.innerWidth/2-400,-window.innerHeight/2+100,-4.0);
	botRightGeo2.position.set(window.innerWidth/2-400,-window.innerHeight/2+100,-4.0);
	resize4PointPlane(surface_cracks1,false,-(window.innerWidth/2),-(window.innerHeight/2),window.innerHeight,window.innerHeight/2,-5.0);
	resize4PointPlane(surface_cracks2,true,(window.innerWidth/2),-(window.innerHeight/2),window.innerHeight,window.innerHeight/2,-6.0);
	
	renderer.setSize(window.innerWidth, window.innerHeight);
}


function resize4PointPlane(mesh, isRotated, posX, posY, height, width, depth) {
	/**	Used to resize a 4 pointed mesh that has the following vertices order:
	 * 
	 * 				0------1                      
	 * 				|	   |     
	 * 				|      |
	 * 				2------3
	 * 
	 *  If isRotated is true, it will flip the mesh horizontally
	 * 
	 * @param mesh:		Mesh to resize
	 * @param posX:		Bottom left X position to place		
	 * @param posY:		Bottom left Y position to place
	 * @param height:	Height to resize plane
	 * @param width:	Width to resize plane
	 * @param depth:	Depth in Z to place
	 */
	mesh.geometry.vertices[0].y=posY+height;
	mesh.geometry.vertices[1].y=posY+height;
	mesh.geometry.vertices[2].y=posY;
	mesh.geometry.vertices[3].y=posY;
	if (!isRotated){
		mesh.geometry.vertices[0].x=posX;
		mesh.geometry.vertices[1].x=posX+width;
		mesh.geometry.vertices[2].x=posX;
		mesh.geometry.vertices[3].x=posX+width;
	}
	else{
		mesh.geometry.vertices[0].x=posX;
		mesh.geometry.vertices[1].x=posX-width;
		mesh.geometry.vertices[2].x=posX;
		mesh.geometry.vertices[3].x=posX-width;
	}
	mesh.geometry.vertices[0].z=depth;
	mesh.geometry.vertices[1].z=depth;
	mesh.geometry.vertices[2].z=depth;
	mesh.geometry.vertices[3].z=depth;
	
	mesh.geometry.verticesNeedUpdate = true;
}

function onDocumentMouseMove(event) {
	var vector = new THREE.Vector3(event.clientX - SCREEN_WIDTH_HALF,
			-event.clientY + SCREEN_HEIGHT_HALF, 0);
	for ( var i = 0, il = boids.length; i < il; i++) {
		boid = boids[i];
		vector.z = boid.position.z;
		boid.repulse(vector);
	}

}

function animate() {

	requestAnimationFrame(animate);

	update();
	render();
	stats.update();
}

function update() {
	// increment the transition clock - used by transitionShader
	var delta = clock.getDelta();
	growthUniform01.time.value += 0.01;
	growthUniform02.time.value += 0.01;
	botRightUniform1.time.value += 0.01;
	botRightUniform2.time.value += 0.01;
	crackUniform01.time.value += 0.01;
	crackUniform02.time.value += 0.01;
}


function setHUDRenderOrder(){
	/**
	 * Set the render order for the objects manually! If rendered in an incorrect order,
	 * there will be major transparency issues.
	 * The ones farthest back must have the highest renderDepth ID!
	 * Camera calculates it based on distance from camera, but it is counting the x/y axis as well.
	 * This causes incorrect order in rendering since its an orthogonal camera. 
	 * We want it to only count the Z axis, which it is not, so it must be set manually. 
	 */
	surface_corner1.renderDepth=0;
	surface_corner2.renderDepth=1;
	botRightGeo1.renderDepth=2;
	botRightGeo2.renderDepth=3;
	surface_cracks1.renderDepth=4;
	surface_cracks2.renderDepth=5;
}

function render() {

	for ( var i = 0, il = birds.length; i < il; i++) {

		boid = boids[i];
		boid.run(boids);

		bird = birds[i];

		// Fade the colours the farther they get from the camera
		color = bird.material.color;
		color.r = color.g = color.b = (500 - bird.position.z) / 1000;

		// move closer/farther from camera, as well as up/down
		bird.rotation.y = Math.atan2(-boid.velocity.z, boid.velocity.x);
		bird.rotation.z = Math.asin(boid.velocity.y / boid.velocity.length());

		// flap the wings (vertices 5,4 = end of the wing)
		bird.phase = (bird.phase + (Math.max(0, bird.rotation.z) + 0.1)) % 62.83;
		bird.geometry.vertices[5].y = bird.geometry.vertices[4].y = Math
				.sin(bird.phase) * 5;
	}

	// Make sure the HUD has the proper depth rendering order before rendering
	setHUDRenderOrder();
	
	renderer.render(birdScene, birdCamera);
	renderer.render(HUDScene, HUDCamera);

}