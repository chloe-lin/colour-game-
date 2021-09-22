void intro() {
  background(255);
  fill(0);
  
  //gif 
  int i;
  image(gif[f], 0, 0, width, height);  
  f = f + 1; 
  if (f == numberofframes) f = 0; 
  
  textSize(20); 
  textFont(muthiara);
  text("colour game!", 400, 300); 
  textSize(40); 
  text("click anywhere to start", 400, 400); 
  
}

void introClicks() {
  mode = GAME; 
  clock = 30;
} 
