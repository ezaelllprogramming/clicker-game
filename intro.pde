void intro() {
  background (255);
  
  fill(0);
  textSize(100);
  text("CLICKER GAME", 400, 400);
  
  rect(400,600,200,100);
  theme.play();
}  

void introClicks() {
  if (mouseX > 300 && mouseX < 550 && mouseY > 500 && mouseY < 650);
    mode = GAME;
    theme.pause();
    theme.rewind();
}
