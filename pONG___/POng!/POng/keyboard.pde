void keyPressed() {
  if (key == 'w' || key == 'W') wkey = true;
  if (key == 's' || key == 'S') skey = true; 
  if (keyCode == UP) upkey = true;
  if (keyCode == DOWN) downkey= true;
  // note: single quotations for key characters
  //keyCode = is a code that represents the arrow keys
}

void keyReleased () {
  if (key == 'w' || key == 'W') wkey = false;
  if (key == 's' || key == 'S') skey = false; 
  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false;
}
