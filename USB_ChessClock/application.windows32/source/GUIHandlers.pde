

// G4P code for colour chooser
public void handleBackgroundColorChooser() {
  backgroundColor = G4P.selectColor();
  pg.beginDraw();
  pg.background(backgroundColor);
  pg.endDraw();
  
  if(window2 != null){
    window2.setBackground(backgroundColor);
  }
}

// G4P code for colour chooser
public void handleFontColorChooser() {
  fontColor = G4P.selectColor();
  pg2.beginDraw();
  pg2.background(fontColor);
  pg2.endDraw();
}

/**
 * Button Event Handler
 * @param button
 */
void handleButtonEvents(GButton button, GEvent event) {
  if(button == btnStart){
    configPanel.setText("CP");
    frame.setSize(240,120);
    configPanel.setCollapsed(true);
    configPanel.moveTo(-50,-50);
    if (window2 == null && event == GEvent.CLICKED) {
      createWindows();
      config = false;
    }
    if(usbMode){
      configSerial();
    }
    else{
      p1t[0] = gameTime;
      p1t[1] = 0;
      p2t[0] = gameTime;
      p2t[1] = 0;
      timeText = str(p1t[0])+":00";
      timeText2 = str(p2t[0])+":00";
      timer = CountdownTimer.getNewCountdownTimer(this).configure(1000, gameTime*numPlayers*60*1000);  
    }
  }
  else if(button == btnBackgroundColor){
    handleBackgroundColorChooser();
  }
  else if(button == btnFontColor){
    handleFontColorChooser();
  }
  else if(button == btnDefaultFont){
    timeFont = createFont("Let's go Digital Regular.ttf", timeSize);
    textFont(timeFont);
    if(window2 != null){
      p2App.textFont(timeFont);
    }
  }
  else if(button == btnSerialConnect){
   clockPort = new Serial(this, portName, 9600); 
  }
}

/**
 * Radio Button Event Handler
 * @param toggle
 */
public void handleToggleControlEvents(GToggleControl option, GEvent event) {
  if(option == deathClock) {
    gameMode = true;
  }
  else if(option == timedTurns) {
    gameMode = false;
    turnExtension = 5;
  }
  else if(option == hardcore){
    gameMode = false;
    turnExtension = 0;
  }
  
  if(option == usbClock){
    usbMode = true;
  }
  else if(option == laptopClock){
    usbMode = false;
  }
}

/**
 * Slider Event Handler
 * @param slider
 */
public void handleSliderEvents(GValueControl slider, GEvent event) {
  if(slider == timeSlide){
    gameTime = timeSlide.getValueI();
  }
}

/**
 * List Event Handler
 *
 */
public void handleDropListEvents(GDropList list, GEvent event) {
  if(list == fontList){
    timeFont = createFont(list.getSelectedText(), timeSize);
    textFont(timeFont);
    if(window2 != null){
      p2App.textFont(timeFont);  
    }
  }
  if(list == serialList){
    portName = list.getSelectedText();
  }
}


public void handlePanelEvents(GPanel panel, GEvent event) {
  
}