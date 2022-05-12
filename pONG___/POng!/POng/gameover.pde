PImage sinking; 


void gameover() {

  sinking = loadImage ("sinking.png");
  background (lightblue);
  fill(blue);
  rect( 550, 650, 200, 100);
  textSize(50);
  fill(255);
  text("Quit", 620, 700);

  if (score1> score2) {
    image( sinking, 450, 200, 250, 250);  
    image(sailboat1, 100, 300, 250, 250);
    fill(255);
    text ( "YOU WIN!",100,200,100,100);
  } else {
    image( sinking, 50, 200, 250, 250);
    image(sailboat22, 400, 300, 250, 250);
    fill(255);
    text ( "YOU WIN!",500,200,100,100);
  }
}

void gameoverClicks() {
  if (mouseX > 550 && mouseX< 750 && mouseY > 650 && mouseY < 750) {
    exit();
  }
}
