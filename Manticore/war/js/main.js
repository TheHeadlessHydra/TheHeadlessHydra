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
surface,
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

	// APPEARING TEXTURE
	// Texture that has all pixels at u=0 and v set to white, all else set to black.
	var transitionTexture = new THREE.ImageUtils.loadTexture('images/ShiftToWhite_Soft_512.png');
	// noiseTexture.wrapS = noiseTexture.wrapT = THREE.RepeatWrapping; // NO REPEAT

	// Texture to transition in.
	var growthTexture = new THREE.ImageUtils.loadTexture('images/corner_test01.png');
	// lavaTexture.wrapS = lavaTexture.wrapT = THREE.RepeatWrapping; // NO REPEAT

	// Uniforms used to call the fragment shader
	this.customUniforms = {
			baseTexture: 		{ type: "t", value: growthTexture },
			transitionTexture: 	{ type: "t", value: transitionTexture },	
			baseSpeed: 			{ type: "f", value: 0.5 },
			time: 				{ type: "f", value: 0.0 },					// Start position
			moveX:				{ type: "f", value: -1.0},					// Amount to move in X
			moveY:				{ type: "f", value: 0.0}					// Amount to move in Y
		};

	// create custom material from the shader code above
	// that is within specially labeled script tags
	var customMaterial = new THREE.ShaderMaterial({
		uniforms : customUniforms,
		vertexShader : document.getElementById('vertexShader').innerHTML,
		fragmentShader : document.getElementById('transitionShader').innerHTML
	});
	// IMPORTANT! Set the transparency or there will be no alpha manipulation!
	customMaterial.transparent = true;

	// apply the material to a surface
	var flatGeometry = new THREE.PlaneGeometry(256, 256, 1, 1);
	surface = new THREE.Mesh(flatGeometry, customMaterial);
	surface.material.side = THREE.DoubleSide;

	// Add the surface to the HUD camera, and position it
	HUDCamera.add(surface);
	surface.position.set(-SCREEN_WIDTH_HALF+120,-SCREEN_HEIGHT_HALF+120,-500);
	
	// RENDERER
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
	surface.position.set(-window.innerWidth / 2+120,-window.innerHeight/2+120,-500);
	HUDCamera.updateProjectionMatrix();
	
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
	customUniforms.time.value += 0.01;
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