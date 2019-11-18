void game() {
  background(0,255,0);
  
  fill(purple);
  textSize(40);
  text("SCORE: " + score, 100, 100);
  text("LIVES: " + lives, 100, 170);
  
  strokeWeight(4);
  fill(white);
  ellipse(x, y, 100, 100);
  
  x = x + vx;
  y = y + vy;
  
  if(y < 50 || y > 750) vy = vy * -1;
  if(x < 50 || x > 750) vx = vx * -1;
  
}  

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < 50) {
    score++;  
    coin.play();
  } else {
    lives--;
    if(lives == 0) {
      mode = GAMEOVER;
      gameover.play();
    }  
  }
}
