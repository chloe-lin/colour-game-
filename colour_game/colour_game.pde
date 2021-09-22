//colour game
//Chloe Lin, 1-4

int mode; 
final int INTRO = 0; 
final int GAME = 1; 
final int GAMEOVER = 2;

//font 
PFont muthiara; 

//initialize colours 
color red = #CF4647; 
color orange = #F7A541;
color yellow = #DFD487;
color green = #A0C55F; 
color blue = #83AF9B;
color purple = #B179DB;

//initialize array 
String[] words; 
color[] colors; 
int w = int(random(0, 6)); 
int c = int(random(0, 6));

//scores 
int score, highscore; 

//clock 
float clock; 

//gif 
PImage[] gif; 
int numberofframes, i, f; 


void setup() { 
  size(800, 800); 
  mode = INTRO; 
  textAlign(CENTER, CENTER); 

  //font 
  muthiara = createFont("Muthiara.otf", 100);
  
  //array 
  words = new String[6]; 
  colors = new color[6];
  
  //colours 
  words[0] = "red"; 
  colors[0] = red; 
  words[1] = "orange"; 
  colors[1] = orange; 
  words[2] = "yellow"; 
  colors[2] = yellow; 
  words[3] = "green"; 
  colors[3] = green; 
  words[4] = "blue"; 
  colors[4] = blue; 
  words[5] = "purple"; 
  colors[5] = purple; 
  
  //random words and colours 
  int words = int(random(0, 6)); 
  int colors = int(random(0, 6)); 
  
  //clock 
  clock = 30;
  
  //highscore 
  highscore = 0;
  
  //gif 
  numberofframes = 20; 
  gif = new PImage [numberofframes]; 
  
  int i = 0; 
  while (i < numberofframes) {
    gif[i] = loadImage("frame_" + i + "_delay-0.1s.gif");
    i++; 
  }
 
 
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover(); 
  } else { 
    println("Error: Mode = " + mode); 
  }
}
