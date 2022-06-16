void titleTxt() {
  blendMode(SCREEN);
  textAlign(CENTER);
  PFont myFont = loadFont("Dialog-50.vlw");
  textFont(myFont);
  textSize(50);
  fill(255, fadein); 

  if (fadein<255) { 
    fadein += 5;
  }
  text("flying donuts", 0, height/5, width, 50);
}


void titleTxtOut() {
  blendMode(SCREEN);
  textAlign(CENTER);
  PFont myFont = loadFont("Dialog-50.vlw");
  textFont(myFont);
  textSize(50);
  fill(255, fadein); 

  if (fadein > 0) { 
    fadein -=5;
  }
  text("flying donuts", 0, height/5, width, 50);
}
