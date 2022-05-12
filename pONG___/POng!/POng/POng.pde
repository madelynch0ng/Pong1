//POng!
//Madelyn Chong
// April/19/ 2022

//colour pallete
color red = (#E63946);
color light =(#F1FAEE);
color lightblue = (#A8DADC);
color blue = (#457B9D);
color navy = (#1D3557);

//mode framework;
int mode;
final int INTRO =1;
final int GAME= 2;
final int PAUSE =3 ;
final int GAMEOVER=4;

int paddlex;
int paddley;
//scoring
int score1, score2, timer;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd; // paddles
float ballx, bally, balld;
//float ballx, bally, balld; // ball
float vx, vy;

//keyboard variables 
boolean wkey, skey, upkey, downkey; 
boolean AI;

void setup() {
  size (800, 600); 
    mode= INTRO;/////////////////-----------------------------------

  // initialize paddles
  leftx = 0;
  lefty = height/2;
  leftd=  200;

  rightx= width;
  righty= height/2;
  rightd= 200;

  vx = random( -5, 5);
  vy = random (-5, 5);
  // initialized score
  score1 = 0;
  score2 = 0;
  timer=100;

  //initialize ball
  ballx = width/2;
  bally= height/2;
  balld= 100;


  //initialize keyboard variables
  wkey = skey = upkey= downkey = false;
}

void draw() {
  if ( mode== INTRO) {
    intro();
  } else if ( mode== GAME) {
    game();
  } else if (mode== PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else { 
    println( "Mode error:" + mode);
  }
}
