void intro() {
  background(255);
  
  fill(0);
  textSize(72);
  text("CLICKER GAME", 400, 400);
  
  rect(400, 600, 200, 100);
}

void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 550 && mouseY < 650) {
    mode = GAME;
  }
  
  
}
