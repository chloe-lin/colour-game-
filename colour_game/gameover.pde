void gameover() {
  background(0);
  fill(purple); 
  textSize(20); 
  textFont(muthiara);
  text("gameover :(", 400, 300); 
  textSize(50);
  text("click to restart", 400, 600); 
  
  //score  
  text("score: " + score, 400, 400); 
  
  //highscore 
  if (score > highscore)
  { highscore = score;
  } 
  text("highscore: " + highscore, 400, 500); 
}

void gameoverClicks() {
  mode = INTRO;
  score = 0; 
}
