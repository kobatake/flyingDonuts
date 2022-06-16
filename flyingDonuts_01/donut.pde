
void donut00() {
  //text("donut 00", 0, height*4/5, width, 50);
  radius = 100.0; 
  weight = 200.0;
  float a = amp.analyze()*0.7;    
  blendMode(SCREEN);
  strokeWeight(30);
  //radius +=0.5;
  //weight +=0.2;
  rot += 0.005;
  dot=100;

  translate(width/2, height/3);
  rotateY(rot + PI/2);
  rotateX(rot + PI/2+random(0, a*0.02));

  float fc = 0;
  float circ =0;

  float cx = sin(circ+fc);
  float cy = 0;
  float cz = cos(circ+fc);

  float don=0;

  int r = int(50*cos(don));
  //int g = (int)random(100) + int(50*cos(don));
  //int b = (int)random(150) + int(50*cos(don));
  int g = 60 + int(50*cos(don)+a*100);
  int b = 90 + int(50*cos(don)+a*100);

  float x = radius*cx + weight*sin(don)*cx ;
  float y = radius*cy + weight*cos(don) ;
  float z = radius*cz + weight*sin(don)*cz ;

  //fill(color(r, g, b));
  //point(x,y,z);
  stroke(color(r, g, b));
  noFill();

  pushMatrix();
  translate(x+random(0, 5), y+random(0, 5), z+random(0, 5));
  rotateX(random(radians(5)));
  rotateY(random(radians(5)));
  rotateZ(random(PI/2));
  ellipse(0, 0, dot, dot);
  //box(random(1,40),random(5,60),random(5,30));
  popMatrix();
}



void donut01() {
  //text("donut 01", 0, height*4/5, width, 50);
  radius = 100.0; 
  weight = 200.0;
  float a = amp.analyze()*0.7;    
  blendMode(SCREEN);
  strokeWeight(30);
  //radius +=0.5;
  //weight +=0.2;
  rot += 0.005;
  dot=100;
  countTime01 += 1;

  translate(width/2, height/3);
  rotateY(rot + PI/2);
  rotateX(rot + PI/2+random(0, a*0.02));

  float fc = 0;
  float circ =0;

  float cx = sin(circ+fc);
  float cy = 0;
  float cz = cos(circ+fc);


  for (float don=0; don < radians(countTime01*5); don += radians(20))
  {
    //int r = int(50*cos(don));
    int r = int(50*cos(don) );
    //int g = (int)random(100) + int(50*cos(don));
    //int b = (int)random(150) + int(50*cos(don));
    int g = 60 + int(50*cos(don)+a*100);
    int b = 90 + int(50*cos(don)+a*100);

    float x = radius*cx + weight*sin(don)*cx+random(-a*50, a*50) ;
    float y = radius*cy + weight*cos(don) ;
    float z = radius*cz + weight*sin(don)*cz+random(-a*50, a*50) ;

    //fill(color(r, g, b));
    //point(x,y,z);
    stroke(color(r, g, b));
    noFill();

    pushMatrix();
    translate(x+random(0, 5), y+random(0, 5), z+random(0, 5));
    rotateX(don);
    rotateY(random(radians(30)));
    rotateZ(random(radians(30)));
    ellipse(0, 0, dot, dot);
    //box(random(1,40),random(5,60),random(5,30));
    popMatrix();
  }
}


void donut02() {
  //text("donut 02", 0, height*4/5, width, 50);
  float a = amp.analyze()*0.7;    
  blendMode(SCREEN);
  strokeWeight(30);

  rot += 0.01;

  countTime02 += 1;


  if (radius <= 200) { 
    radiusFlg = true;
  }
  if (radius >= 3000 ) {
    radiusFlg = false;
  }
  if (weight <= 400) { 
    weightFlg = true;
  }
  if (weight >= 8000 ) { 
    weightFlg = false;
  }
  if (dot <= 100) { 
    dotFlg = true;
  }
  if (dot >= 400 ) { 
    dotFlg = false;
  }

  if ( weightFlg == true) {
    weight += 15;
  } else { 
    weight -= 15;
  }
  if ( radiusFlg == true) {
    radius += 2;
  } else { 
    radius -= 20;
  }
  if ( dotFlg == true) {
    dot += 1;
  } else {
    dot -= 1;
  }


  translate(width/2, height/3);
  rotateY(rot + PI/2);
  rotateX(rot + PI/2+random(0, a*0.02));

  float fc = 0;
  for (float circ=0; circ < radians(countTime02*2); circ += radians(15))
  {
    float cx = sin(circ+fc);
    float cy = 0;
    float cz = cos(circ+fc);


    for (float don=0; don < TWO_PI; don += radians(20))
    {
      //int r = int(50*cos(don));
      int r = int(50*cos(don));
      //int g = (int)random(100) + int(50*cos(don));
      //int b = (int)random(150) + int(50*cos(don));
      int g = 60 + int(50*cos(don)+a*100);
      int b = 90 + int(50*cos(don)+a*100);

      float x = radius*cx + weight*sin(don)*cx+random(-a*80, a*80) ;
      float y = radius*cy + weight*cos(don) ;
      float z = radius*cz + weight*sin(don)*cz+random(-a*80, a*80) ;

      //fill(color(r, g, b));
      //point(x,y,z);
      stroke(color(r, g, b));
      noFill();

      pushMatrix();
      translate(x+random(0, 5), y+random(0, 5), z+random(0, 5));
      rotateX(don);
      rotateY(random(radians(30)));
      rotateZ(random(radians(30)));
      ellipse(0, 0, dot, dot);
      //box(random(1,40),random(5,60),random(5,30));
      popMatrix();
    }
  }
}


void donut03() {
  //text("donut 03", 0, height*4/5, width, 50);
  float a = amp.analyze()*0.7;    
  blendMode(SCREEN);
  strokeWeight(30);

  rot += 0.01;

  countTime02 += 1;


  if (radius <= 200) { 
    radiusFlg = true;
  }
  if (radius >= 2000 ) {
    radiusFlg = false;
  }
  if (weight <= 400) { 
    weightFlg = true;
  }
  if (weight >= 3000 ) { 
    weightFlg = false;
  }
  if (dot <= 100) { 
    dotFlg = true;
  }
  if (dot >= 400 ) { 
    dotFlg = false;
  }

  if ( weightFlg == true) {
    weight += 15;
  } else { 
    weight -= 15;
  }
  if ( radiusFlg == true) {
    radius += 5;
  } else { 
    radius -= 20;
  }
  if ( dotFlg == true) {
    dot += 5;
  } else {
    dot -= 1;
  }


  translate(width/2, height/3);
  rotateY(rot + PI/2);
  rotateX(rot + PI/2+random(0, a*0.02));

  float fc = 0;
  for (float circ=0; circ < radians(countTime02*2); circ += radians(15))
  {
    float cx = sin(circ+fc);
    float cy = 0;
    float cz = cos(circ+fc);


    for (float don=0; don < TWO_PI; don += radians(20))
    {
      //int r = int(50*cos(don));
      int r = int(50*cos(don));
      //int g = (int)random(100) + int(50*cos(don));
      //int b = (int)random(150) + int(50*cos(don));
      int g = 60 + int(50*cos(don)+a*100);
      int b = 90 + int(50*cos(don)+a*100);

      float x = radius*cx + weight*sin(don)*cx+random(-a*50, a*50) ;
      float y = radius*cy + weight*cos(don) ;
      float z = radius*cz + weight*sin(don)*cz+random(-a*50, a*50) ;

      //fill(color(r, g, b));
      //point(x,y,z);
      stroke(color(r, g, b));
      noFill();

      pushMatrix();
      translate(x, y, z);
      rotateX(random(PI/2));
      //rotateY(random(PI/2));
      //rotateZ(random(PI/2));
      ellipse(0, 0, dot, dot);
      //box(random(1,40),random(5,60),random(5,30));
      popMatrix();
    }
  }
}


void donut03_static() {
  //text("donut 03_static", 0, height*4/5, width, 50);
  float a = amp.analyze()*0.7;    
  blendMode(SCREEN);
  strokeWeight(30);

  rot += 0.01;

  countTime02 += 1;


  if (radius <= 200) { 
    radiusFlg = true;
  }
  if (radius >= 2000 ) {
    radiusFlg = false;
  }
  if (weight <= 400) { 
    weightFlg = true;
  }
  if (weight >= 3000 ) { 
    weightFlg = false;
  }
  if (dot <= 100) { 
    dotFlg = true;
  }
  if (dot >= 400 ) { 
    dotFlg = false;
  }

  if ( weightFlg == true) {
    weight += 15;
  } else { 
    weight -= 15;
  }
  if ( radiusFlg == true) {
    radius += 5;
  } else { 
    radius -= 20;
  }
  if ( dotFlg == true) {
    dot += 5;
  } else {
    dot -= 1;
  }


  translate(width/2, height/3);
  rotateY(rot + PI/2);
  rotateX(rot + PI/2+random(0, a*0.02));

  float fc = 0;
  for (float circ=0; circ < radians(countTime02*2); circ += radians(15))
  {
    float cx = sin(circ+fc);
    float cy = 0;
    float cz = cos(circ+fc);


    for (float don=0; don < TWO_PI; don += radians(20))
    {
      //int r = int(50*cos(don));
      int r = int(50*cos(don));
      //int g = (int)random(100) + int(50*cos(don));
      //int b = (int)random(150) + int(50*cos(don));
      int g = 60 + int(50*cos(don)+a*100);
      int b = 90 + int(50*cos(don)+a*100);

      float x = radius*cx + weight*sin(don)*cx+random(-a*80, a*80) ;
      float y = radius*cy + weight*cos(don) ;
      float z = radius*cz + weight*sin(don)*cz+random(a*300);

      //fill(color(r, g, b));
      //point(x,y,z);
      stroke(color(r, g, b));
      noFill();

      pushMatrix();
      translate(x, y, z);
      //rotateX(random(PI/2));
      //rotateY(random(PI/2));
      //rotateZ(random(PI/2));
      ellipse(0, 0, dot, dot);
      //box(random(1,40),random(5,60),random(5,30));
      popMatrix();
    }
  }
}

void donut04() {

  //text("donut 04", 0, height*4/5, width, 50);

  float a = amp.analyze()*0.1;    
  blendMode(SCREEN);
  strokeWeight(30);

  rot += 0.01;

  countTime02 += 1;

  if (radius > 400) { 
    radius -= 15;
  } else {
    radius=400;
  }

  if (weight > 100 ) { 
    weight -= 15;
  } else {
    weight=100;
  }

  if (dot <= 70) { 
    dotFlg = true;
  }
  if (dot >= 100 ) { 
    dotFlg = false;
  }

  if ( dotFlg == true) {
    dot += 1;
  } else {
    dot -= 1;
  }


  translate(width/2, height/3);
  rotateY(rot + PI/2);
  rotateX(rot + PI/2+random(0, a*0.06));

  float fc = 0;
  for (float circ=0; circ < radians(countTime02*2); circ += radians(15))
  {
    float cx = sin(circ+fc);
    float cy = 0;
    float cz = cos(circ+fc);


    for (float don=0; don < TWO_PI; don += radians(20))
    {
      //int r = int(50*cos(don));
      int r = int(50*cos(don) + a*50);
      //int g = (int)random(100) + int(50*cos(don));
      //int b = (int)random(150) + int(50*cos(don));
      int g = 60 + int(50*cos(don)-a*10);
      int b = 90 + int(50*cos(don)+a*50);

      float x = radius*cx + weight*sin(don)*cx ;
      float y = radius*cy + weight*cos(don) ;
      float z = radius*cz + weight*sin(don)*cz+random(a*30) ;

      //fill(color(r, g, b));
      //point(x,y,z);
      stroke(color(r, g, b));
      noFill();

      pushMatrix();
      translate(x,y,z);
      rotateX(don);
      //rotateY(random(PI/2)*10*a);
      //rotateZ(random(PI/2));
      ellipse(0, 0, dot+1000*a, dot+1000*a);
      //box(random(1,40),random(5,60),random(5,30));
      popMatrix();
    }
  }
}

void donut04_static() {

  //text("donut 04 static", 0, height*4/5, width, 50);

  float a = amp.analyze()*0.3;    
  blendMode(SCREEN);
  strokeWeight(30);

  rot += 0.01;

  countTime02 += 1;

  if (radius > 400) { 
    radius -= 15;
  } else {
    radius=400;
  }

  if (weight > 100 ) { 
    weight -= 15;
  } else {
    weight=100;
  }

  if (dot <= 50) { 
    dotFlg = true;
  }
  if (dot >= 100 ) { 
    dotFlg = false;
  }

  if ( dotFlg == true) {
    dot += 0;
  } else {
    dot -= 1;
  }


  translate(width/2, height/3);
  rotateY(rot + PI/2);
  rotateX(rot + PI/2+random(0, a*0.01));

  float fc = 0;
  for (float circ=0; circ < radians(countTime02*2); circ += radians(15))
  {
    float cx = sin(circ+fc);
    float cy = 0;
    float cz = cos(circ+fc);


    for (float don=0; don < TWO_PI; don += radians(20))
    {
      //int r = int(50*cos(don));
      int r = int(50*cos(don) + a*30);
      //int g = (int)random(100) + int(50*cos(don));
      //int b = (int)random(150) + int(50*cos(don));
      int g = 60 + int(50*cos(don)-a*10);
      int b = 90 + int(50*cos(don)-a*50);

      float x = radius*cx + weight*sin(don)*cx +random(a*30);
      float y = radius*cy + weight*cos(don) ;
      float z = radius*cz + weight*sin(don)*cz +random(a*30);

      //fill(color(r, g, b));
      //point(x,y,z);
      stroke(color(r, g, b));
      noFill();

      pushMatrix();
      translate(x, y, z);
      rotateX(don);
      //rotateY(random(PI/2));
      //rotateZ(random(PI/2));
      ellipse(0, 0, dot+a*1000, dot+a*1000);
      //box(random(1,40),random(5,60),random(5,30));
      popMatrix();
    }
  }
}

void donut05() {

  //text("donut 05", 0, height*4/5, width, 50);

  float a = amp.analyze()*0.7;    
  blendMode(SCREEN);
  strokeWeight(30);

  rot += 0.01;

  countTime02 += 1;


  if (radius <= 200) { 
    radiusFlg = true;
  }
  if (radius >= 2000 ) {
    radiusFlg = false;
  }
  if (weight <= 100) { 
    weightFlg = true;
  }
  if (weight >= 2000 ) { 
    weightFlg = false;
  }
  if (dot <= 50) { 
    dotFlg = true;
  }
  if (dot >= 100 ) { 
    dotFlg = false;
  }

  if ( weightFlg == true) {
    weight += 20;
  } else { 
    weight -= 15;
  }
  if ( radiusFlg == true) {
    radius += 20;
  } else { 
    radius -= 30;
  }

  if ( dotFlg == true) {
    dot += 3;
  } else {
    dot -= 5;
  }


  translate(width/2, height/3);
  rotateY(rot + PI/2);
  rotateX(rot + PI/2+random(0, a*0.02));

  float fc = 0;
  for (float circ=0; circ < radians(countTime02*2); circ += radians(15))
  {
    float cx = sin(circ+fc);
    float cy = 0;
    float cz = cos(circ+fc);


    for (float don=0; don < TWO_PI; don += radians(20))
    {
      //int r = int(50*cos(don));
      int r = int(50*cos(don) + a*100);
      //int g = (int)random(100) + int(50*cos(don));
      //int b = (int)random(150) + int(50*cos(don));
      int g = 60 + int(50*cos(don)+a*50);
      int b = 90 + int(50*cos(don)+a*50);

      float x = radius*cx + weight*sin(don)*cx ;
      float y = radius*cy + weight*cos(don) ;
      float z = radius*cz + weight*sin(don)*cz ;

      //fill(color(r, g, b));
      //point(x,y,z);
      stroke(color(r, g, b));
      noFill();

      pushMatrix();
      translate(x, y, z);
      rotateX(don);
      rotateY(random(PI/2)*a);
      //rotateZ(random(PI/2));
      ellipse(0, 0, dot+1000*a, dot+1000*a);
      //box(random(1,40),random(5,60),random(5,30));
      popMatrix();
    }
  }
}

void donut06() {

  //text("donut 06", 0, height*4/5, width, 50);

  float a = amp.analyze()*0.7;    
  blendMode(SCREEN);
  strokeWeight(30);

  rot += 0.01;

  countTime05 += 1;


  if (radius >= 450) { 
      radius -= 20;
  }


  if (weight >= 150 ) { 
      weight -= 4;
  }

  if (dot >= 40 ) { 
     dot -= 5;
  }


  translate(width/2, height/3, -countTime05*5);
  rotateY(rot + PI/2);
  rotateX(rot + PI/2+random(0, a*0.02));
  
  println("countTime:"+ countTime05);
  
  float fc = 0;
  for (float circ=0; circ < radians(countTime02*2); circ += radians(15))
  {
    float cx = sin(circ+fc);
    float cy = 0;
    float cz = cos(circ+fc);


    for (float don=0; don < TWO_PI; don += radians(20))
    {
      //int r = int(50*cos(don));
      int r = int(50*cos(don) + a*200);
      //int g = (int)random(100) + int(50*cos(don));
      //int b = (int)random(150) + int(50*cos(don));
      int g = 60 + int(50*cos(don)+a*100);
      int b = 90 + int(50*cos(don)+a*100);

      float x = radius*cx + weight*sin(don)*cx ;
      float y = radius*cy + weight*cos(don)  ;
      float z = radius*cz + weight*sin(don)*cz ;

      //fill(color(r, g, b));
      //point(x,y,z);
      stroke(color(r, g, b));
      noFill();

      pushMatrix();
      translate(x, y, z);
      rotateX(don);
      rotateY(random(PI/2)*a);
      //rotateZ(random(PI/2));
      ellipse(0, 0, dot+1000*a, dot+1000*a);
      //box(random(1,40),random(5,60),random(5,30));
      popMatrix();
    }
  }
}
