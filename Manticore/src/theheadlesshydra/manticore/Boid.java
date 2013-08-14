package theheadlesshydra.manticore;

import java.util.ArrayList;
import java.util.Vector;

/*Boid object class
* Matt Wetmore
* Changelog
* ---------
* 12/14/09: Started work
* 12/16/09: Revised code to work with forces instead of heading. First steering algorithm implemented
* 12/18/09: Arrival steering behavior
* 12/20/09: Alignment added NEED TO FIX COHESION
* 1/6/10: Finished algorithms. Time to clean up the code!
*/
 
class Boid
{
  //fields
  Vector pos,vel,acc,ali,coh,sep; //pos, velocity, and acceleration in a vector datatype
  float neighborhoodRadius; //radius in which it looks for fellow boids
  float maxSpeed = 4; //maximum magnitude for the velocity vector
  float maxSteerForce = (float) .1; //maximum magnitude of the steering vector
  float h; //hue
  float sc=3; //scale factor for the render of the boid
  float flap = 0;
  float t=0;
  boolean avoidWalls = false;
   
  //constructors
  Boid(Vector inPos)
  {
    pos = new Vector();
    pos.set(inPos);
    vel = new Vector(random(-1,1),random(-1,1),random(1,-1));
    acc = new Vector(0,0,0);
    neighborhoodRadius = 100;
  }
  Boid(Vector inPos,Vector inVel,float r)
  {
    pos = new Vector();
    pos.set(inPos);
    vel = new Vector();
    vel.set(inVel);
    acc = new Vector(0,0);
    neighborhoodRadius = r;
  }
   
  void run(ArrayList bl)
  {
    t+=.1;
    flap = 10*sin(t);
    //acc.add(steer(new Vector(mouseX,mouseY,300),true));
    //acc.add(new Vector(0,.05,0));
    if(avoidWalls)
    {
      acc.add(Vector.mult(avoid(new Vector(pos.x,height,pos.z),true),5));
      acc.add(Vector.mult(avoid(new Vector(pos.x,0,pos.z),true),5));
      acc.add(Vector.mult(avoid(new Vector(width,pos.y,pos.z),true),5));
      acc.add(Vector.mult(avoid(new Vector(0,pos.y,pos.z),true),5));
      acc.add(Vector.mult(avoid(new Vector(pos.x,pos.y,300),true),5));
      acc.add(Vector.mult(avoid(new Vector(pos.x,pos.y,900),true),5));
    }
    flock(bl);
    move();
    checkBounds();
    render();
  }
   
  /////-----------behaviors---------------
  void flock(ArrayList bl)
  {
    ali = alignment(bl);
    coh = cohesion(bl);
    sep = seperation(bl);
    acc.add(Vector.mult(ali,1));
    acc.add(Vector.mult(coh,3));
    acc.add(Vector.mult(sep,1));
  }
   
  void scatter()
  {
     
  }
  ////------------------------------------
     
  void move()
  {
    vel.add(acc); //add acceleration to velocity
    vel.limit(maxSpeed); //make sure the velocity vector magnitude does not exceed maxSpeed
    pos.add(vel); //add velocity to position
    acc.mult(0); //reset acceleration
  }
   
  void checkBounds()
  {
    if(pos.x>width) pos.x=0;
    if(pos.x<0) pos.x=width;
    if(pos.y>height) pos.y=0;
    if(pos.y<0) pos.y=height;
    if(pos.z>900) pos.z=300;
    if(pos.z<300) pos.z=900;
  }
   
  void render()
  {
     
    pushMatrix();
    translate(pos.x,pos.y,pos.z);
    rotateY(atan2(-vel.z,vel.x));
    rotateZ(asin(vel.y/vel.mag()));
    stroke(h);
    noFill();
    noStroke();
    fill(h);
    //draw bird
    beginShape(TRIANGLES);
    vertex(3*sc,0,0);
    vertex(-3*sc,2*sc,0);
    vertex(-3*sc,-2*sc,0);
     
    vertex(3*sc,0,0);
    vertex(-3*sc,2*sc,0);
    vertex(-3*sc,0,2*sc);
     
    vertex(3*sc,0,0);
    vertex(-3*sc,0,2*sc);
    vertex(-3*sc,-2*sc,0);
     
    /* wings
    vertex(2*sc,0,0);
    vertex(-1*sc,0,0);
    vertex(-1*sc,-8*sc,flap);
     
    vertex(2*sc,0,0);
    vertex(-1*sc,0,0);
    vertex(-1*sc,8*sc,flap);
    */
     
    vertex(-3*sc,0,2*sc);
    vertex(-3*sc,2*sc,0);
    vertex(-3*sc,-2*sc,0);
    endShape();
    //box(10);
    popMatrix();
  }
   
  //steering. If arrival==true, the boid slows to meet the target. Credit to Craig Reynolds
  Vector steer(Vector target,boolean arrival)
  {
    Vector steer = new Vector(); //creates vector for steering
    if(!arrival)
    {
      steer.set(Vector.sub(target,pos)); //steering vector points towards target (switch target and pos for avoiding)
      steer.limit(maxSteerForce); //limits the steering force to maxSteerForce
    }
    else
    {
      Vector targetOffset = Vector.sub(target,pos);
      float distance=targetOffset.mag();
      float rampedSpeed = maxSpeed*(distance/100);
      float clippedSpeed = min(rampedSpeed,maxSpeed);
      Vector desiredVelocity = Vector.mult(targetOffset,(clippedSpeed/distance));
      steer.set(Vector.sub(desiredVelocity,vel));
    }
    return steer;
  }
   
  //avoid. If weight == true avoidance vector is larger the closer the boid is to the target
  Vector avoid(Vector target,boolean weight)
  {
    Vector steer = new Vector(); //creates vector for steering
    steer.set(Vector.sub(pos,target)); //steering vector points away from target
    if(weight)
      steer.mult(1/sq(Vector.dist(pos,target)));
    //steer.limit(maxSteerForce); //limits the steering force to maxSteerForce
    return steer;
  }
   
  Vector seperation(ArrayList boids)
  {
    Vector posSum = new Vector(0,0,0);
    Vector repulse;
    for(int i=0;i<boids.size();i++)
    {
      Boid b = (Boid)boids.get(i);
      float d = Vector.dist(pos,b.pos);
      if(d>0&&d<=neighborhoodRadius)
      {
        repulse = Vector.sub(pos,b.pos);
        repulse.normalize();
        repulse.div(d);
        posSum.add(repulse);
      }
    }
    return posSum;
  }
   
  Vector alignment(ArrayList boids)
  {
    Vector velSum = new Vector(0,0,0);
    int count = 0;
    for(int i=0;i<boids.size();i++)
    {
      Boid b = (Boid)boids.get(i);
      float d = Vector.dist(pos,b.pos);
      if(d>0&&d<=neighborhoodRadius)
      {
        velSum.add(b.vel);
        count++;
      }
    }
    if(count>0)
    {
      velSum.div((float)count);
      velSum.limit(maxSteerForce);
    }
    return velSum;
  }
   
  Vector cohesion(ArrayList boids)
  {
    Vector posSum = new Vector(0,0,0);
    Vector steer = new Vector(0,0,0);
    int count = 0;
    for(int i=0;i<boids.size();i++)
    {
      Boid b = (Boid)boids.get(i);
      float d = dist(pos.x,pos.y,b.pos.x,b.pos.y);
      if(d>0&&d<=neighborhoodRadius)
      {
        posSum.add(b.pos);
        count++;
      }
    }
    if(count>0)
    {
      posSum.div((float)count);
    }
    steer = Vector.sub(posSum,pos);
    steer.limit(maxSteerForce);
    return steer;
  }
}
