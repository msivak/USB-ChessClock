USB-ChessClock
==============

The Processing and Arduino code for a USB connected chess clock

Design choice notes
-Time should be maintained on the Arduino because then it is OS dependent and above all else we want the output the players see to be accurate
-To handle turn extensions when time expires hitting the pause button will give the extension


Processing features implemented:
-Multiple windows that can be resized
-Changing the background color
-Movable config panel
-Mode change between deathclock and timed turns

Processing features to implement:
-Change color of clock
-Serial connection with an arduino
-Change font
-Change font size
-Turn extension length
-Color change for when time runs low
-Player names to input to Arduino

Arduino features implemented:
-

Arduino features to implment:
-Serial communication
-Countdown of time
-Pausing with a button
-Switching turns with a switch and LED feedback
-LED feedback for when time is low
-Holding down a button to reset
-Turn extensions done with the button
-Display to LCD/7-segment LED
-Ready to start mode

Documentation to add:
-Fitzring diagram for system
-BOM for parts
-Installation instructions
-Assembly instructions
-Case models
