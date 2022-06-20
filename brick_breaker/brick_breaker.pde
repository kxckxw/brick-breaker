import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

int mode;
final int INTRO    = 1;
final int GAME     = 2;
final int PAUSE    = 3;
final int GAMEOVER = 4;

//brick variable
int[] bx;
int[] by;
int brickd;
int n;
int tempx, tempy;


//colour variables
color white     = #ffffff;
color lavender  = #CDB4DB;
color lightpink = #FFC8DD;
color pink      = #FFAFCC;
color lightblue = #BDE0FE;
color blue      = #A2D2FF;

color red       = #d90429;
color lightred  = #ef233c;
color orange    = #ff9f1c;
color lorange   = #ffbf69;
color green     = #6a994e;
color darkgreen = #386641;
color darkpurple= #5603ad;

color selectedColour;


//keyboard variables
boolean akey, dkey, leftkey, rightkey;

//target variable
float paddlex, paddley, paddled;
float x, y, d;
float vx, vy;
int lives, score, timer;

//sound variables
Minim minim;
AudioPlayer theme, coin, bump, gameover;




void setup() {
  size(1000, 900);
  mode = INTRO;
  textAlign(CENTER, CENTER);

  //target setup
  paddlex = 500;
  paddley = 900;
  paddled = 200;

  x = 500;
  y = 500;
  d = 20;
  vx = 0;
  vy = 3;

  lives = 3;
  score = 0;

  timer = 100;


  brickd = 50;
  n = 36;
  bx = new int[n];
  by = new int[n];
  tempx = 100;
  tempy = 100;

  int i = 0;
  while (i<n) {
    bx[i] = tempx;
    by[i] = tempy;
    tempx = tempx + 100;
    if (tempx == width) {
      tempx = 100;
      tempy = tempy +100;
    }
     
    
    i=i+1;
  }

  //initialize keyboard
  akey = dkey = leftkey = rightkey = false;
}//end--------------------------



void draw() {
  if (mode==INTRO) {
    intro();
  } else if (mode==GAME) {
    game();
  } else if (mode==PAUSE) {
    pause();
  } else if (mode==GAMEOVER) {
    gameover();
  } else {
    println("Mode error: " + mode);
  }
}
