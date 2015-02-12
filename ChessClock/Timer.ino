

void timer(){
  if(activePlayer){
    mins = p1Time[0];
    secs = p1Time[1];
  }
  
  else{
    mins = p2Time[0];
    secs = p2Time[1];
  }
  
 if(secs <= 0){
    mins--;
    if(abs(mins)<10 && mins>=0){
      minStr = "0";
    }
    else{
      minStr = "";
    }
    
    if(mins < 0 && secs <= 0){
      gameOver();
    }
    secs = 60;
    secStr = "";
  }
  
  else if(secs <= 10 && secs > 0){
    secStr = "0";
  }
  
  else{
    secStr = "";
  }
  
  if(mins == 1 && secs == 1){
      playTone();
    }
    
  if(mins == 0 && secs < 5){
    playTone();
  }
    
  secs--;
    
  if(activePlayer){
    p1Time[0] = mins;
    p1Time[1] = secs;
    timeText = minStr+String(abs(mins))+":"+secStr+String(secs);
  }
  
  else{
    p2Time[0] = mins;
    p2Time[1] = secs;
    timeText2 = minStr+String(abs(mins))+":"+secStr+String(secs);
  }
      
  serialWrite();
  lcdWrite();
}

void gameOver(){
  gameOverTime = millis();
  analogWrite(speakerPin, 200);
  
  switch(gameMode){
    case 0:
      //
      break;
    case 1:
      pause = true;
      break;
    case 2:
      pause = true;
      break;
  }
}
