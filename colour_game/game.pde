void game() {
  background(0);
  fill(255);
  rect(400, 0, 400, 800);
  textFont(muthiara); 
  textSize(30); 
  
  //match and no match 
  text("match", 200, 50); 
  fill(0); 
  text("no match", 600, 50);
  
  //random word 
  fill(colors[c]); 
  textFont(muthiara); 
  textSize(clock); 
  text(words[w], 400, 300); 
  
  //score 
  fill(red); 
  textSize(30); 
  text("score: " + score, 400, 50); 
  
  //clock 
  clock = clock + 0.5; 
  if (clock >= 250) mode = GAMEOVER; 
 
}

void gameClicks() { 
  if (mouseX < width/2) {
    //guesed "match" 
    if (w == c) { 
      score = score + 1; 
      w = int(random(0, 6)); 
      c = int(random(0, 6));  
      clock = 30; 
    } else { 
      mode = GAMEOVER; 
    } 
  }
  if (mouseX > width/2) { 
    //guessed "not match" 
    if (w == c) { 
      mode = GAMEOVER; 
    } else { 
      score = score + 1; 
      w = int(random(0, 6)); 
      c = int(random(0, 6));  
      clock = 30; 
    }
  }
  
    w = int(random(0, 6)); 
    c = int(random(0, 6));  
} 
