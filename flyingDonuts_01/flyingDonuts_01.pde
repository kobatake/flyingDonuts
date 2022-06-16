import gab.opencv.*;
import processing.video.*;
import processing.sound.*;

Amplitude amp;
AudioIn in;

FFT fft;

// 解析する周波数帯域の数
int COUNT = 64;
// 周波数成分の解析結果を入れる変数
float[] spectrum = new float[COUNT];
float[] bars = new float[COUNT];

float peakDetector = 0.1;
int limitTime = 10;
int countTime01 = 0;
int countTime02 = 0;
int countTime05 = 1;
int countTimeGround01 = 0;
int countTimeGround02 = 0;
float a;
float time = 0;

float rot = 0; 
float radius = 3000.0, weight = 1000, dot = 100.0;
float fadein = 0;
float fadeinBlack = 0;
float fadeoutBlack = 0;

boolean radiusFlg = false;
boolean weightFlg = false;
boolean dotFlg = false;


int cols, rows;
int scl= 16;
int w = 4960;
int h = 1920;

float flying;

float[][] terrain;


int [] scenes;
int [] sceneIndex;
int startPoint;
int opacity;

int countScene04=0;

void setup() {
  //size(1440, 960, P3D);
  fullScreen(P3D);
  colorMode(RGB); 
  frameRate(90);
  amp = new Amplitude(this);
  in = new AudioIn(this, 0);
  in.start();
  amp.input(in);

  cols = w / scl;
  rows = h / scl;

  terrain= new float[cols][rows];

  

  // 再生ポイント
  startPoint= 0;

  int sceneNum = 9;
  scenes = new int[sceneNum];
  sceneIndex = new int[sceneNum +1];

  // sceneの長さ 

  scenes[0] = 40;
  scenes[1] = 120;
  scenes[2] = 100;
  scenes[3] = 60;
  scenes[4] = 60;
  scenes[5] = 60;
  scenes[6] = 60;
  scenes[7] = 30;
  scenes[8] = 400;
  
  sceneIndex[0] = 0;




  for (int j = 0; j <= sceneNum-1; j++) {
    sceneIndex[j+1] = sceneIndex[j] + scenes[j];
  }
}



void draw() {

  float a = amp.analyze();
  time += 0.1;

  background(0);


  
  
  //scene01
  if (( sceneIndex[1]- startPoint)<=time && time<(sceneIndex[2]- startPoint)) {
    

    pushMatrix();
    donut00();
    popMatrix();
    pushMatrix();
    ground0();
    popMatrix();

    fadeIn();

 
  }




  //scene02
    if ((sceneIndex[2] - startPoint)<=time && time<(sceneIndex[2] + 30 - startPoint)) { 
    pushMatrix();
    donut00();
    popMatrix();
  }
  if ((sceneIndex[2] + 30 - startPoint)<=time && time<(sceneIndex[3]- startPoint)) { 
    pushMatrix();
    donut01();
    popMatrix();

    
  }
  if ((sceneIndex[2]- startPoint)<=time && time<(sceneIndex[3]- startPoint)) { 

    pushMatrix();
    ground01();
    popMatrix();
    
    
  }
  //scene03
  if ((sceneIndex[3]- startPoint)<=time && time<(sceneIndex[4]- startPoint)) { 
    pushMatrix();
    donut02();
    popMatrix();
  }

  //scene04
  if ((sceneIndex[4]- startPoint)<=time && time<(sceneIndex[5]- startPoint)) { 

    countScene04++;

    if (time%500 < 250) {    
      pushMatrix();
      donut03_static();
      popMatrix();
    } else {    
      pushMatrix();
      donut03();
      popMatrix();
    }
  }



  //scene05
  if ((sceneIndex[5]- startPoint)<=time && time<(sceneIndex[6]- startPoint)) { 
    pushMatrix();
    donut04();
    popMatrix();
  }
  //scene06
  if ((sceneIndex[6]- startPoint)<=time && time<(sceneIndex[7]- startPoint)) { 
    pushMatrix();
    donut05();
    popMatrix();
  }

  //scene07
  if ((sceneIndex[7]- startPoint)<=time && time<(sceneIndex[8]- startPoint)) { 
    if (time%300 < 150) {    
      pushMatrix();
      donut04_static();
      popMatrix();
    } else {    
      pushMatrix();
      donut04();
      popMatrix();
    }
  }

  //scene08
  if ((sceneIndex[8]- startPoint)<=time && time<(sceneIndex[9]- startPoint)) { 
   
      pushMatrix();
      donut06();
      popMatrix();
 
    //pushMatrix();
    //ground02();
    //popMatrix();

  }


  //scene00
  if (( sceneIndex[0]- startPoint)<=time && time<(sceneIndex[1]-20 - startPoint)) {
    titleTxt();
  }
  if (( sceneIndex[1]-20 - startPoint)<=time && time<(sceneIndex[1] - startPoint)) {
    titleTxtOut();
  }


  //text(str((int)time), 0, 0, width, 50);

  //text(millis()/1000,100,100);
  
  
  println("a:"+ a);
  println("time:"+ time);
  println("countTime01:"+ countTime01);
  println("rot:"+ rot);
  println("weight:"+ weight);
  println("weightFlg:"+ weightFlg);
  println("radius:"+ radius);
  println("radiusFlg:"+ radiusFlg);
  println("dot:"+ dot);
  println("fadein:"+ fadein);
  println("fadeinBlack:"+ fadeinBlack);
  println();
}
