Particle[] star;
void setup()
{
	size(500, 500);
	star = new Particle[500];
	for(int i=0; i< star.length; i++){
		star[i] = new NormalParticle();
	}
	star[0] = new OddballParticle();
	star[1] = new JumboParticle();

}
void draw()
{
	for(int i=0; i < star.length; i++){
		star[i].show();
		star[i].move();
	}

}

void mousePressed(){
	star = new Particle[500];
	for(int i=0; i< star.length; i++){
		star[i] = new NormalParticle();
	}
	star[0] = new OddballParticle();
	star[1] = new JumboParticle();
}
class NormalParticle implements Particle
{
	double myX, myY, angle, speed;
	int myColor;
	NormalParticle(){
		myX = 250;
		myY = 250;
		angle = Math.random()*2*Math.PI;
		speed = Math.random()*10;
 		myColor = color(random(255), random(255), random(255));
 	}

 	void move(){
 		myX = (float)Math.cos(angle*speed) + myX;
 		myY = (float)Math.sin(angle*speed) + myY;
 	}

 	void show(){
 		fill(myColor);
 		ellipse((float)myX, (float)myY, 20, 20);
 	}

}
interface Particle
{
	public void show();
	public void move(); 

}
class OddballParticle implements Particle
{
	double myX, myY, angle, speed;
	OddballParticle(){
		myX = 250;
		myY = 250;
		angle = Math.random()*2*Math.PI;
		speed = Math.random()*10;
	}
	public void show(){
 		fill(255, 255, 0);
 		ellipse((float)myX, (float)myY, 100, 100);
 	}
	public void move(){
 		myX = (float)Math.sin(angle*speed);
 		myY = (float)Math.cos(angle*speed) + myY;
 	}

}
class JumboParticle extends NormalParticle
{
	
 	void show(){
 		fill(myColor);
 		ellipse((float)myX, (float)myY, 50, 50);
 	}

}

