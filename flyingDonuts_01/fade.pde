void fadeIn() {

  //text("fade", 0, height*3/5, width, 50);
  //strokeWeight(30);
  blendMode(BLEND);
  fill(0, (255 - fadeinBlack));

  pushMatrix();
  translate(0, 0, 500);
  rect(0, 0, width, 2*height);
  popMatrix();


  if (fadeinBlack<255) {
    fadeinBlack += 1;
  }
  
}
