/*
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
surface_corner1, surface_corner2, surface_long1,
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
	HUDCamera.position.z = 450;
	HUDScene = new THREE.Scene();
	HUDScene.add( HUDCamera );

	/*						*
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

	
	/*					HUD 					*
	 * 											*
	 * 		Creates items needed for the HUD	*
	 */
	// Texture that has all pixels at u=0 and v set to white, all else set to black.
	var transitionTexture = new THREE.ImageUtils.loadTexture('images/ShiftToWhite_Soft_512.png');
	// Texture to transition in.
	var growthTexture01 = new THREE.ImageUtils.loadTexture('images/corner_test01.png');
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
	surface_corner1.position.set(-SCREEN_WIDTH_HALF+120,-SCREEN_HEIGHT_HALF+120,-500);
	
	// Texture 2
	var growthTexture02 = new THREE.ImageUtils.loadTexture('images/corner_test02.png');
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
	surface_corner2.position.set(-SCREEN_WIDTH_HALF+120,-SCREEN_HEIGHT_HALF+120,-500);
	
	// Texture 3
	growthTexture03 = new THREE.ImageUtils.loadTexture('images/long_test01.png');
	this.growthUniform03 = {
			baseTexture: 		{ type: "t", value: growthTexture03 },
			transitionTexture: 	{ type: "t", value: transitionTexture },	
			baseSpeed: 			{ type: "f", value: 0.4 },
			time: 				{ type: "f", value: 0.0 },					// Start position
			moveX:				{ type: "f", value: -1.0},					// Amount to move in X
			moveY:				{ type: "f", value: 0.0},					// Amount to move in Y
			alphaMult:			{ type: "f", value: 0.8}
		};
	var growth03Material = new THREE.ShaderMaterial({
		uniforms : growthUniform03,
		vertexShader : document.getElementById('vertexShader').innerHTML,
		fragmentShader : document.getElementById('transitionShader').innerHTML
	});
	growth03Material.transparent = true;
	var flatGeometry3 = new THREE.PlaneGeometry(1024, 128, 1, 1);
	surface_long1 = new THREE.Mesh(flatGeometry3, growth03Material);
	surface_long1.material.side = THREE.DoubleSide;
	HUDCamera.add(surface_long1);
	HUDScene.add(surface_long1);
	surface_long1.rotation.y=Math.PI;
	surface_long1.position.set(200,-400,0);
	
	
	
	/*							*
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

/* Match bird camera and renderer to new browser window size
 * 
 * Do NOT update the HUD angles, so that the HUD does not get displaced
 * due to FOV
 */
function onWindowResize() {
	birdCamera.aspect = window.innerWidth / window.innerHeight;
	birdCamera.updateProjectionMatrix();
	
	HUDCamera.left = window.innerWidth / - 2;
	HUDCamera.right = window.innerWidth / 2;
	HUDCamera.top = window.innerHeight / 2;
	HUDCamera.bottom = window.innerHeight / - 2;
	HUDCamera.updateProjectionMatrix();
	
	surface_corner1.position.set(-window.innerWidth / 2+120,-window.innerHeight/2+120,-500);
	surface_corner2.position.set(-window.innerWidth / 2+120,-window.innerHeight/2+120,-500);
	surface_long1.position.set(-window.innerWidth / 2+120,-window.innerHeight/2+120,-500);
	
	renderer.setSize(window.innerWidth, window.innerHeight);
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
	growthUniform03.time.value += 0.01;
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

	renderer.render(birdScene, birdCamera);
	renderer.render(HUDScene, HUDCamera);

}