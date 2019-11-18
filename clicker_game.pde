import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer bump, coin, theme, gameover;

int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

color red = #FF0000;
color orange = #FF9E00;
color yellow = #FFF700;
color green = #10FF00;
color blue = #0074FF;
color purple = #C300FF;
color white = #FFFFFF;
color black = #000000;
color grey = #555555;

float x, y, vx, vy;
int score, lives;

void setup() {
  x = 400;
  y = 400;
  vx = random(-25,25);
  vy = random(-25,25);
  score = 0;
  lives = 3;
  
  size(800,800);
  mode = INTRO;
  textAlign(CENTER,CENTER);
  rectMode(CENTER);
   
  minim = new Minim(this);
  coin = minim.loadFile("coin donk.wav");
  theme = minim.loadFile("mario bros theme donk.mp3");
  gameover = minim.loadFile("gameover donk.wav");
  bump = minim.loadFile("bump donk.wav");
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {  
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }  
}
