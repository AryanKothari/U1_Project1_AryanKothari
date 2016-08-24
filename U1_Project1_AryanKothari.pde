/*
Free Draw project by Aryan Kothari

This is my first project of this course. In this interactive drawing app,
One can make the picture that they want to!

*/


int w = 10;
int h = 10;
int portrait = 0;
int screen = 0;
int red = 0;
int green = 255;
int blue = 0;
int size = 5;


void setup ()
{
  fullScreen();
  background(0);
  noStroke();
  
  fill (255,255,0);
  textSize(100);
  text("Welcome to Free Draw!",180,330);
  
  fill (255,255,0);
  textSize(30);
  text("Created by Aryan Kothari",1050,860);
  
  fill(0,255,0);
  rect(620,400,180,50);
  
  fill(0,255,0);
  rect(620,480,180,50);
  
  fill(0,0,255);
  textSize(35);
  text("Play now!", 635, 440);
  
  fill(0,0,255);
  textSize(30);
  text("Instructions",625, 520); 
}

void keyPressed()
{
  if (keyCode == ENTER) //Enter Free Draw 
  {
     //Resets to iniial x and y values
     w = 10;
     h = 10;
   
   
     //black background 
     background(0);
     
     fill(255,255,255);
     rect(0,0,150,50);
  
     fill(0,0,0);
     textSize(25);
     text("Home Page",10,25);
    
 
     fill (255,0,0);
     textSize(50);
     text("Free Draw",600,40);
    
     fill(255,0,0);
     textSize(20);
     text("Portrait: #", 1280, 30);
    
     fill(255,0,0);
     textSize(20);
     text(portrait,1378,30);
    
     screen = 1; 
     portrait = portrait + 1;
    
     //border lines
     fill(255,255,255);
     rect(72,75,5,735);
    
     fill(255,255,255);
     rect(1358,75,5,735);
    
     fill(255,255,255);
     rect(72,808,1291,5);
    
     fill(255,255,255);
     rect(72,74,1291,5);
  }
}



void draw () 
{
  if (screen == 0 & mousePressed & mouseX >= 620 & mouseX <= 800 & 
   mouseY >= 400 & mouseY <= 450)
   {
     w = 10;
     h = 10;
     
     fill(255,255,255);
     rect(0,0,150,50);
  
     fill(0,0,0);
     textSize(25);
     text("Home Page",10,25);
   
   
      //black background 
     background(0);
    
 
     fill (255,0,0);
     textSize(50);
     text("Free Draw",600,40);
    
     fill(255,0,0);
     textSize(20);
     text("Portrait: #", 1280, 30);
    
     fill(255,0,0);
     textSize(20);
     text(portrait,1378,30);
     
     fill(255,0,0);
     textSize(35);
     text("Size Bigger",200,870);
    
     screen = 1; 
     portrait = portrait + 1;
    
    
     //border lines
     fill(255,255,255);
     rect(72,75,5,735);
    
     fill(255,255,255);
     rect(1358,75,5,735);
    
     fill(255,255,255);
     rect(72,808,1291,5);
    
     fill(255,255,255);
     rect(72,74,1291,5);
   }
 
  
if (screen == 1) //Free Draw Scene 
{
    if(mousePressed & mouseX >= 75 & mouseX <= 1350 & mouseY >= 75 & mouseY <= 800)
    {
      fill(255,255,255);
      rect(0,0,150,50);
  
      fill(0,0,0);
      textSize(25);
      text("Home Page",10,25);
      
      strokeWeight(size);
      stroke(red,green,blue);
      fill(red,green,blue);
      line(pmouseX,pmouseY,mouseX,mouseY);
      ellipse(mouseX,mouseY,w,h);
      
      if (keyPressed)
      {
        if (key == 'w')
        size = size + 1;
      }
      if (keyPressed) //Make size bigger 
      {
        if (key == '1' || key == '1') 
        red = 255;
        green = 0;
        blue = 0;
      }
      if (keyPressed) //Make size bigger 
      {
        if (key == '2' || key == '2') 
        red= 0;
        green = 0;
        blue = 255;
      }
    }
  }
  if (screen == 0 & mousePressed & mouseX >= 620 & mouseX <= 800 & 
  mouseY >= 480 & mouseY <= 520)
  {
    {
      background(0);
      fill(255,0,0);
      textSize(80);
      text("Instructions:",480,90);
      
      fill(255,255,255);
      textSize(30);
      text("1.Press Mouse to Draw", 480, 200);
      
      fill(255,255,255);
      textSize(30);
      text("2.To change color, use numbers 1-4", 480, 300);
      
      fill(255,255,255);
      textSize(30);
      text("3.To increase size of line use S key", 480, 400);
      
      fill(255,255,255);
      textSize(30);
      text("3.To decrease size of line use W key", 480, 500);
      
      fill(255,255,255);
      rect(0,0,150,50);
  
      fill(0,0,0);
      textSize(25);
      text("Home Page",10,25);
      
      
      
    }
  }
  
  if(mousePressed & mouseX >= 0 & mouseX <= 150 & mouseY >= 0 & mouseY <= 150)
  {
  fullScreen();
  background(0);
  noStroke();
  
  fill (255,255,0);
  textSize(100);
  text("Welcome to Free Draw!",180,330);
  
  fill (255,255,0);
  textSize(30);
  text("Created by Aryan Kothari",1050,860);
  
  fill(0,255,0);
  rect(620,400,180,50);
  
  fill(0,255,0);
  rect(620,480,180,50);
  
  fill(0,0,255);
  textSize(35);
  text("Play now!", 635, 440);
  
  fill(0,0,255);
  textSize(30);
  text("Instructions",625, 520); 
  
  screen = 0;
}
}
  
    
  

  
//future goals for project:
//Add Song 
//function to change color properly
//problem is that the borders are grabing size and color. Why?