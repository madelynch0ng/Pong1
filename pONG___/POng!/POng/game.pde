void game () {

  background(0);
  fill(light);
  stroke(light);
  rect(0, 0, 400, 600);
  fill ( blue);
  stroke(blue);
  rect( 400, 0, 800, 600);

  //draw paddles
  fill ( red);
  stroke(red);
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);


  //move paddles 
  if (wkey == true) lefty = lefty -5;
  if (skey == true) lefty = lefty +5;

  if (AI ==false) {
    if (upkey == true)righty= righty - 5;
    if (downkey == true) righty= righty +5 ;
  } else { 
    //if (ballx > 400 && bally> ){
     
    AI=true;
    }
    //if the ball is on the right side{
     //if ball is above the right paddle, move up
     //if ball is below the right paddle

     
     lefty = max( lefty, 0+100);
     lefty = min( lefty, height-100);
     righty= max ( righty, 0+100);
     righty= min ( righty, height- 100);
     
     if (bally>550 || bally <50) {
     vx=vx*1.01;
     }
     //ball 
     fill (lightblue);
     stroke(lightblue);
     circle( ballx, bally, balld);
     
     //ball movement
     if ( timer < 0) {
     ballx= ballx + vx;
     bally = bally + vy;
     }
     
     
     //bouncing  
     if ( bally < 0+ 50|| bally > height-50) {
     vy = vy *- 1.05;
     }
     
     // scoring
     if (ballx < 0) {
     score1++;
     ballx=width/2;
     bally=height/2;
     timer=100;
     }
     
     if (ballx > 800) {
     score2++;
     ballx=width/2;
     bally=height/2;
     timer=100;
     }
     //colliding 
     if (dist(leftx, lefty, ballx, bally)<= leftd/2+balld/2) {
     vx = (ballx- leftx )/10;
     vy = (bally- lefty )/10;
     }
     
     if (dist(rightx, righty, ballx, bally)<= rightd/2+balld/2) {
     vx = (ballx - rightx) /10;
     vy = (bally- righty )/10;
     }
     //SCOREBOARD
     fill (255);
     textAlign(CENTER, CENTER);
     textSize(50);
     text("Score:" + score1, 600, 50);
     fill (navy);
     text("Score:" + score2, 200, 50);
     //text(timer, 3*width/4,550);
     timer = timer -1;
    }
     
     void gameClicks() {
     if ( score1 == 3)
     mode=GAMEOVER;
     else if (score2 == 3)
     mode = GAMEOVER;
     }
