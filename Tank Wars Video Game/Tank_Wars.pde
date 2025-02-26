// Global Variables
PImage startPageBack;
PImage soccerMap1;
PImage map1SelectBack;
PImage map2SelectBack;
PImage snowMap2;
PImage weapon1;
PImage weapon2;
PImage weapon3;
PImage brownTank;
PImage camoTank;
PImage greyTank;
PImage brownTankInventory;
PImage camoTankInventory;
PImage greyTankInventory;
PImage enemyTank;
PImage rocket;
PImage cannon;
PImage machineGun;
PImage enemyBullet;
PImage greyh3;
PImage greyh2;
PImage greyh1;
PImage camoh6;
PImage camoh5;
PImage camoh4;
PImage camoh3;
PImage camoh2;
PImage camoh1;
PImage brownh9;
PImage brownh8;
PImage brownh7;
PImage brownh6;
PImage brownh5;
PImage brownh4;
PImage brownh3;
PImage brownh2;
PImage brownh1;
PImage defeatSceneBack;
PImage victorySceneBack;
PImage starOne;
PImage starTwo;
PImage starThree;
PImage victoryBadge;
PImage defeatBadge;

PFont titlePage;
PFont general;

int sceneNum = 1;
int cash = 50;
int shot = 0;
int gunNum = 1;
int tankNum = 1;
int levelNum;
int startTime;
int time;
int shootTime;
int hit = 0;
int finalHit;
int enemyLHit1 = 0;
int enemyRHit1 = 0;
int enemyLHit2 = 0;
int enemyMHit2 = 0;
int enemyRHit2 = 0;

int[] configuration = {gunNum, tankNum, levelNum};

float[] numShot = new float[shot];

boolean gunBought1 = true;
boolean gunBought2 = false;
boolean gunBought3 = false;
boolean tankBoughtGrey = true;
boolean tankBoughtCamo = false;
boolean tankBoughtBrown = false;
boolean one = false;
boolean enemyDown = true;
boolean enemyUp = false;
boolean cannonShot;
boolean machineGunShot = false;
boolean rocketShot = false;
boolean fired = false;
boolean four = false;
boolean e1TopWeapon1 = false;
boolean e1MidWeapon1 = false;
boolean e1BottomWeapon1 = false;
boolean five = false;
boolean e2TopWeapon1 = false;
boolean e2BottomWeapon1 = false;
boolean seven = false;
boolean e1TopWeapon2 = false;
boolean e1TopMidWeapon2 = false;
boolean e1MidWeapon2 = false;
boolean e1BottomMidWeapon2 = false;
boolean e1BottomWeapon2 = false;
boolean e2TopWeapon2 = false;
boolean three = false;
boolean e2TopMidWeapon2 = false;
boolean e2BottomMidWeapon2 = false;
boolean e2BottomWeapon2 = false;
boolean nine = false;
boolean tankLAlive = true;
boolean tankMAlive = true;
boolean tankRAlive = true;
boolean defeat;
boolean victory;

String tank;
String gun;

float tankTurn = 360.0;
float tankX = 50.0;
float tankY = 250.0;
float tankSpeed = 0.0;
float eTankY1 = 53.0;
float eTank2Y1 = 482 - eTankY1;
float eTankY2 = 15.0;
float eTank2Y2 = 520 - eTankY2;
float bulletX = tankX;
float bulletY = tankY;
float weaponTurn;
float tankFrontRY;
float tankFrontLY;
float tankFrontRX;
float tankFrontLX;
float eTankTopWeaponX1 = 520.0;
float eTankMidWeaponX1 = 520.0;
float eTankBottomWeaponX1 = 520.0;
float eTank2TopWeaponX1 = 690.0;
float eTank2BottomWeaponX1 = 690.0;
float e1TankTopWeaponX2 = 288.0;
float e1TankTopMidWeaponX2 = 288.0;
float e1TankMidWeaponX2 = 288.0;
float e1TankBottomMidWeaponX2 = 288.0;
float e1TankBottomWeaponX2 = 288.0;
float e2TankTopWeaponX2 = 424.0;
float e2TankTopMidWeaponX2 = 424.0;
float e2TankBottomMidWeaponX2 = 424.0;
float e2TankBottomWeaponX2 = 424.0;

float[] tankPosition = {tankX, tankY, tankTurn};
float[] etankY1Position = {eTankY1, eTank2Y1};
float[] etankY2Position = {eTankY2, eTank2Y2};
float[] bulletPosition = {bulletX, bulletY};

void setup() {
  size(1000, 550);

  // Load Images
  startPageBack = loadImage("Starting Background.jpg");
  soccerMap1 = loadImage("Soccer Field Map 1.jpg");
  map1SelectBack = loadImage("Soccer Select Background.png");
  map2SelectBack = loadImage("Snow Select Background.jpg");
  snowMap2 = loadImage("Snow Field Map.png");
  weapon1 = loadImage("Weapon 1.png");
  weapon2 = loadImage("Weapon 2.png");
  weapon3 = loadImage("Weapon 3.png");
  brownTank = loadImage("Brown Tank.png");
  greyTank = loadImage("Grey Tank.png");
  camoTank = loadImage("Camo Tank.png");
  brownTankInventory = loadImage("Brown Tank Inventory.png");
  greyTankInventory = loadImage("Grey Tank Inventory.png");
  camoTankInventory = loadImage("Camo Tank Inventory.png");
  enemyTank = loadImage("Enemy Tank.png");
  rocket = loadImage("Rocket Bullet.png");
  cannon = loadImage("Cannon Bullet.png");
  machineGun = loadImage("Machine Gun Bullet.png");
  enemyBullet = loadImage("Enemy Tank Bullet.png");
  greyh3 = loadImage("Grey Tank Health 3.png");
  greyh2 = loadImage("Grey Tank Health 2.png");
  greyh1 = loadImage("Grey Tank Health 1.png");
  camoh6 = loadImage("Camo Tank Health 6.png");
  camoh5 = loadImage("Camo Tank Health 5.png");
  camoh4 = loadImage("Camo Tank Health 4.png");
  camoh3 = loadImage("Camo Tank Health 3.png");
  camoh2 = loadImage("Camo Tank Health 2.png");
  camoh1 = loadImage("Camo Tank Health 1.png");
  brownh9 = loadImage("Brown Tank Health 9.png");
  brownh8 = loadImage("Brown Tank Health 8.png");
  brownh7 = loadImage("Brown Tank Health 7.png");
  brownh6 = loadImage("Brown Tank Health 6.png");
  brownh5 = loadImage("Brown Tank Health 5.png");
  brownh4 = loadImage("Brown Tank Health 4.png");
  brownh3 = loadImage("Brown Tank Health 3.png");
  brownh2 = loadImage("Brown Tank Health 2.png");
  brownh1 = loadImage("Brown Tank Health 1.png");
  defeatSceneBack = loadImage("Defeat Scene Transparent Background.png");
  victorySceneBack = loadImage("Victory Scene Transparent Background.png");
  starOne = loadImage("1 star.png");
  starTwo = loadImage("2 star.png");
  starThree = loadImage("3 star.png");
  victoryBadge = loadImage("Victory Badge.png");
  defeatBadge = loadImage("Defeat Badge.png");

  // Load Fonts
  titlePage = createFont("Lucida Calligraphy", 55);
  general = createFont("Arial", 35);

  startTime = second();
} // end setup

void draw() {
  background(255);

  // Time Calculation
  if (startTime > second()) {
    time = 59 - startTime + second();
  } else if (startTime < second()) {
    time = second() - startTime;
  }

  if (time > 59) {
    time = 0;
  } 

  if (sceneNum == 0) {
    inventory();
  }
  
  if (sceneNum == 1) {
    introScene();
  }

  if (sceneNum == 2) {
    howToPlayScene();
  }

  if (sceneNum == 3) {
    levelSelectSceneMap1();
  }

  if (sceneNum == 4) {
    levelSelectSceneMap2();
  }

  if (sceneNum == 5) {
    tankSelectScene();
  }

  if (sceneNum == 6) {
    soccerLevel1();
  }

  if (sceneNum == 7) {
    snowLevel2();
  }
  
  if (sceneNum == 8) {
    gunInstructions();
  }

  if (sceneNum == 9) {
    tankInstructions();
  }

  if (sceneNum == 10) {
    defeatScene();
  }

  if (sceneNum == 11) {
    victoryScene();
  }
} // end draw

// Intro Scene
void introScene() {
  fill(255, 0, 0);
  image(startPageBack, 0, 0, 1000, 550);
  textFont(titlePage);
  text("Tank Game", 350, 150);

  fill(166, 157, 151);
  rect(200, 200, 600, 100);
  rect(200, 350, 600, 100);
 
  textFont(general);
  fill(255);
  text("Play Game", 418, 258);
  text("How to Play", 408, 410);
} // end IntroScene

// How To Play Scene
void howToPlayScene() {
  fill(255, 0, 0);
  image(startPageBack, 0, 0, 1000, 550);
  textFont(titlePage);
  text("Tank Game", 350, 150);

  fill(255);
  textFont(general);
  textSize(15);
  text("1. In this Tank Game, you have to use the ARROW keys, or the\n" +
      "WASD keys in order to move your tank accross the screen.\n" +
      "2. You can go to the inventory, to select, and buy items such as weapons and tanks.\n" +
      "3. Other players (computer) will be shooting at you.\n" +
      "4. Press the space bar in order to shoot at the enemy.\n" + 
      "5. The objective of the game is to pass the finish line on the other side without getting shot. \n" +
      "6. Try not to get hit by enemy tanks! \n" +
      "7. Have Fun, and download more fun games at:", 20, 240);
  fill(80, 139, 235);
  text("'thebestgamesintheworld.com'", 20, 527);

  fill(255);
  textSize(10);
  text("NOTE: ADMIN ONLY: \n" +
       " - 'u' key = unlimited cash. \n" +
       " - 'g' key on gun inventory screen = all guns unlocked. \n" + 
       " = 't' key on tank inventory screen = all tanks unlocked. \n" +
       " - '2' key in level 1 = go to level 2. \n" +
       " - '1' key in level 2 = go to level 1. \n" +
       " - 'p' key in level 1 or level 2 = win level.", 530, 430);

  fill(200);
  rect(900, 500, 95, 45, 20);
  textSize(13);
  fill(255);
  text("Home Page", 912, 529);
} // end howToPlayScene

// Select Map 1
void levelSelectSceneMap1() {
  image(map1SelectBack, 0, 0, 1000, 550);
  
  fill(166, 157, 151);
  triangle(900, 255, 900, 335, 975, 295);
  fill(255);
  textSize(40);
  text("Map 1: Soccer Field", 300, 90);

  image(soccerMap1, 200, 150, 600, 350);

  textSize(15);
  text("Click on the map to begin playing.", 375, 530);

  configuration[1] = tankNum;
  if (tankNum == 1) {
    tank = "Grey Tank";
  } else if (tankNum == 2) {
    tank = "Camo Tank";
  } else {
    tank = "Brown Tank";
  }
  textSize(12.5);
  text("Tank Selected: " + tank, 10, 25);

  configuration[0] = gunNum;
  if (gunNum == 1) {
    gun = "Cannon";
  } else if (gunNum == 2) {
    gun = "Machine Gun";
  } else {
    gun = "Rocket";
  }
  text("Gun Selected: " + gun, 10, 45);
  
  fill(4, 176, 95);
  rect(820, 30, 160, 50, 20);
  fill(255);
  textSize(18);
  text("Cash: $" + cash, 835, 62);

  fill(200);
  rect(900, 500, 95, 45, 20);
  textSize(13);
  fill(255);
  text("Home Page", 912, 529);

  fill(200);
  rect(5, 500, 95, 45, 20);
  fill(255);
  text("Inventory", 22, 529);
} // end levelSelectSceneMap1

// Select Map 2
void levelSelectSceneMap2() {
  image(map2SelectBack, 0, 0, 1000, 550);
  
  fill(166, 157, 151);
  triangle(100, 255, 100, 335, 25, 295);
  fill(255);
  textSize(40);
  text("Map 2: Snow Ground", 290, 90);

  image(snowMap2, 200, 150, 600, 350);

  textSize(15);
  text("Click on the map to begin playing.", 375, 530);

  configuration[1] = tankNum;
  if (tankNum == 1) {
    tank = "Grey Tank";
  } else if (tankNum == 2) {
    tank = "Camo Tank";
  } else {
    tank = "Brown Tank";
  }
  textSize(12.5);
  text("Tank Selected: " + tank, 10, 25);

  configuration[0] = gunNum;
  if (gunNum == 1) {
    gun = "Cannon";
  } else if (gunNum == 2) {
    gun = "Machine Gun";
  } else {
    gun = "Missile";
  }
  text("Gun Selected: " + gun, 10, 45);
  
  fill(4, 176, 95);
  rect(820, 30, 160, 50, 20);
  fill(255);
  textSize(18);
  text("Cash: $" + cash, 835, 62);

  fill(200);
  rect(900, 500, 95, 45, 20);
  textSize(13);
  fill(255);
  text("Home Page", 912, 529);

  fill(200);
  rect(5, 500, 95, 45, 20);
  fill(255);
  text("Inventory", 22, 529);
} // end levelSelectSceneMap2

void inventory() {
  image(startPageBack, 0, 0, 1000, 550);
  fill(4, 176, 95);
  rect (100, 200, 233.33, 233.33, 20);
  rect(383.33, 200, 233.33, 233.33, 20);
  rect(666.66, 200, 233.33, 233.33, 20);

  rect(100, 150, 233.33, 50, 20);
  rect(383.33, 150, 233.33, 50, 20);
  rect(666.66, 150, 233.33, 50, 20);

  textSize(18);
  fill(255);
  text("BOUGHT - USE", 150, 180);

  if (gunBought2 == false) {
    text("BUY", 478, 180);
    text("Cost: $100", 452, 500);
  } else {
    text("BOUGHT - USE", 434, 180);
  }

  if (gunBought3 == false) {
    text("BUY", 762, 180);
    text("Cost: $150", 745, 500);
  } else {
    text("BOUGHT - USE", 718, 180);
  }

  image(cannon, 120, 220, 193.33, 193.33);
  image(machineGun, 403.33, 220, 193.33, 193.33);
  image(rocket, 686.66, 220, 193.33, 193.33);
  fill(255);
  textSize(18);
  text("Cannon", 185, 470);
  text("Machine Gun", 442, 470);
  text("Rocket", 758, 470);

  fill(4, 176, 95);
  rect(820, 30, 160, 50, 20);
  fill(255);
  textSize(18);
  text("Cash: $" + cash, 835, 62);

  fill(166, 157, 151);
  triangle(910, 255, 910, 335, 985, 295);

  fill(255);
  textSize(40);
  text("Inventory", 407, 90);

  configuration[1] = tankNum;
  if (tankNum == 1) {
    tank = "Grey Tank";
  } else if (tankNum == 2) {
    tank = "Camo Tank";
  } else {
    tank = "Brown Tank";
  }
  textSize(12.5);
  text("Tank Selected: " + tank, 10, 25);

  configuration[0] = gunNum;
  if (gunNum == 1) {
    gun = "Cannon";
  } else if (gunNum == 2) {
    gun = "Machine Gun";
  } else {
    gun = "Rocket";
  }
  text("Gun Selected: " + gun, 10, 45);
  
  fill(200);
  rect(900, 500, 95, 45, 20);
  textSize(13);
  fill(255);
  text("Level Select", 910, 529);

  fill(200);
  rect(5, 500, 95, 45, 20);
  fill(255);
  text("Instructions", 17, 529);
} // end inventory;

// Tank Select Inventory
void tankSelectScene() {
  image(startPageBack, 0, 0, 1000, 550);
  fill(4, 176, 95);
  rect (100, 200, 233.33, 280, 20);
  rect(383.33, 200, 233.33, 280, 20);
  rect(666.66, 200, 233.33, 280, 20);

  rect(100, 150, 233.33, 50, 20);
  rect(383.33, 150, 233.33, 50, 20);
  rect(666.66, 150, 233.33, 50, 20);
  
  fill(166, 157, 151);
  triangle(90, 255, 90, 335, 15, 295);
  
  image(greyTankInventory, 150, 220, 136, 252);
  image(camoTankInventory, 443.33, 202, 114, 276);
  image(brownTankInventory, 716.66, 220, 135, 266);

  fill(255);
  textSize(40);
  text("Inventory", 407, 90);

  fill(255);
  textSize(18);
  text("Grey Tank", 175, 510);
  text("Camo Tank", 445, 510);
  text("Brown Tank", 739, 510);
  
  fill(4, 176, 95);
  rect(820, 30, 160, 50, 20);
  fill(255);
  textSize(18);
  text("Cash: $" + cash, 835, 62);
  
  textSize(18);
  fill(255);
  text("BOUGHT - USE", 150, 180);

  if (tankBoughtCamo == false) {
    text("BUY", 478, 180);
    text("Cost: $200", 447, 540);
  } else {
    text("BOUGHT - USE", 434, 180);
  }

  if (tankBoughtBrown == false) {
    text("BUY", 762, 180);
    text("Cost: $450", 743, 540);
  } else {
    text("BOUGHT - USE", 718, 180);
  }

  fill(200);
  rect(900, 500, 95, 45, 20);
  textSize(13);
  fill(255);
  text("Level Select", 910, 529);

  configuration[1] = tankNum;
  if (tankNum == 1) {
    tank = "Grey Tank";
  } else if (tankNum == 2) {
    tank = "Camo Tank";
  } else {
    tank = "Brown Tank";
  }
  textSize(12.5);
  text("Tank Selected: " + tank, 10, 25);

  configuration[0] = gunNum;
  if (gunNum == 1) {
    gun = "Cannon";
  } else if (gunNum == 2) {
    gun = "Machine Gun";
  } else {
    gun = "Missile";
  }
  text("Gun Selected: " + gun, 10, 45);

  fill(200);
  rect(5, 500, 95, 45, 20);
  fill(255);
  text("Instructions", 17, 529);
} // end tankSelectScene

// Gun Instructions
void gunInstructions() {
  image(startPageBack, 0, 0, 1000, 550);

  fill(255);
  textSize(40);
  text("Inventory", 407, 90);

  fill(255);
  textFont(general);
  textSize(15);
  text("1. With upgraded weapons, you can conduct greater damage through less shots.\n" +
      "2. The Cannon: You must hit the enemy tank five times in order to destroy them with the Cannon.\n" +
      "3. The Machine Gun: You must hit the enemy tank three times in order to destroy them with the Machine Gun.\n" +
      "4. The Rocket: You must hit the enemy tank only once in order to destroy them with the Rocket.\n", 20, 240);  

  fill(200);
  rect(900, 500, 95, 45, 20);
  textSize(13);
  fill(255);
  text("Back", 935, 529);
} // end gunInstructions

// Tank Instructions
void tankInstructions() {
  image(startPageBack, 0, 0, 1000, 550);

  fill(255);
  textSize(40);
  text("Inventory", 407, 90);

  fill(255);
  textFont(general);
  textSize(15);
  text("1. With upgraded tanks, you have greater mobility, and can move, and turn faster, then with lower level tanks.\n" +
      "2. You also have more health based on your tank. This gives you a better chance of successfully completing the level.\n" +
      "3. The Grey Tank:\n" + 
      "  - This is the slowest tank, with the least mobility.\n" +
      "  - It needs to be shot only three times for it to break.\n" + 
      "4. The Camo Tank:\n" + 
      "  - This tank has mid-level speed, and mobility, however, it is long, thus providing more are to be struck.\n" +
      "  - It needs to be shot six times for it to break.\n" + 
      "5. The Brown Tank:\n" + 
      "  - This tank has no down-sides, and is the fastest, and most agile tanks of all.\n" +      "  - It needs to be shot nine times for it to break.\n", 20, 240);  

  fill(200);
  rect(900, 500, 95, 45, 20);
  textSize(13);
  fill(255);
  text("Back", 935, 529);
} // end tankInstructions

// Level 1
void soccerLevel1() {
  levelNum = 1;

  defeat = false;
  victory = false;

  image(soccerMap1, 0, 0, 1000, 550);

  enemyMovementLevel1();

  shooting();

  if (cos(radians(tankTurn)) == 1){
    tankTurn = 0.0;
  } else if (cos(radians(tankTurn)) == -1) {
    tankTurn = 180.0;
  } else if (sin(radians(tankTurn)) == 1) {
    tankTurn = 90.0;
  } else if (sin(radians(tankTurn)) == -1) {
    tankTurn = 270.0;
  }

  configuration[1] = tankNum;
  if (tankNum == 1) {
    if (hit == 0) {
      image(greyh3, 20, 20, 200, 45);
    } else if (hit == 1) {
      image(greyh2, 20, 20, 200, 45);
    } else if (hit == 2) {
      image(greyh1, 20, 20, 200, 45);
    } else if (hit > 2) {
      defeat = true;
      sceneNum = 10;
    }

    if (tankX > 820 && tankX < 1000 && tankY > 0 && tankY < 550) {
      victory = true;
      sceneNum = 11;
    }
    
    translate(tankX, tankY);
    rotate(radians(tankTurn));
    image(greyTank, 0, 0, 92.6, 50);

    if ((tankX > 427.4 && tankX < 612.6) && (tankY >= eTankY1 - 48.5) && (tankY - 45 <= eTankY1)) {
      tankX = 460.0;
    } else if ((tankX > 427.4 && tankX < 612.6) && (tankY + 45 <= eTankY1) && (tankY >= eTankY1 + 48.5)) {
      tankX = 460.0;
    } else if ((tankX > 597.4 && tankX < 782.6) && (tankY >= eTank2Y1 - 48.5) && (tankY - 45 <= eTank2Y1)) {
      tankX = 590.0;
    } else if ((tankX > 597.4 && tankX < 782.6) && (tankY + 45 <= eTank2Y1) && (tankY >= eTank2Y1 + 48.5)) {
      tankX = 590.0;
    }
  } else if (tankNum == 2) {
    if (hit == 0) {
      image(camoh6, 20, 20, 200, 45);
    } else if (hit == 1) {
      image(camoh5, 20, 20, 200, 45);
    } else if (hit == 2) {
      image(camoh4, 20, 20, 200, 45);
    } else if (hit == 3) {
      image(camoh3, 20, 20, 200, 45);
    } else if (hit == 4) {
      image(camoh2, 20, 20, 200, 45);
    } else if (hit == 5) {
      image(camoh1, 20, 20, 200, 45);
    } else if (hit > 5) {
      defeat = true;
      sceneNum = 10;
    }

    if (tankX > 820 && tankX < 1000 && tankY > 0 && tankY < 550) {
      victory = true;
      sceneNum = 11;
    }
    
    translate(tankX, tankY);
    rotate(radians(tankTurn));
    image(camoTank, 0, 0, 101.5, 41.9);

    if ((tankX > 418.5 && tankX < 621.5) && (tankY >= eTankY1 - 48.5) && (tankY - 45 <= eTankY1)) {
      tankX = 460.0;
    } else if ((tankX > 418.5 && tankX < 621.5) && (tankY + 45 <= eTankY1) && (tankY >= eTankY1 + 48.5)) {
      tankX = 460.0;
    } else if ((tankX > 588.5 && tankX < 791.5) && (tankY >= eTank2Y1 - 48.5) && (tankY - 45 <= eTank2Y1)) {
      tankX = 590.0;
    } else if ((tankX > 588.5 && tankX < 791.5) && (tankY + 45 <= eTank2Y1) && (tankY >= eTank2Y1 + 48.5)) {
      tankX = 590.0;
    }
  } else if (tankNum == 3) {
    if (hit == 0) {
      image(brownh9, 20, 20, 200, 45);
    } else if (hit == 1) {
      image(brownh8, 20, 20, 200, 45);
    } else if (hit == 2) {
      image(brownh7, 20, 20, 200, 45);
    } else if (hit == 3) {
      image(brownh6, 20, 20, 200, 45);
    } else if (hit == 4) {
      image(brownh5, 20, 20, 200, 45);
    } else if (hit == 5) {
      image(brownh4, 20, 20, 200, 45);
    } else if (hit == 6) {
      image(brownh3, 20, 20, 200, 45);
    } else if (hit == 7) {
      image(brownh2, 20, 20, 200, 45);
    } else if (hit == 8) {
      image(brownh1, 20, 20, 200, 45);
    } else if (hit > 8) {
      defeat = true;
      sceneNum = 10;
    }

    if (tankX > 820 && tankX < 1000 && tankY > 0 && tankY < 550) {
      victory = true;
      sceneNum = 11;
    }
    
    translate(tankX, tankY);
    rotate(radians(tankTurn));
    image(brownTank, 0, 0, 97.8, 49.6);

    if ((tankX > 422.2 && tankX < 617.8) && (tankY >= eTankY1 - 48.5) && (tankY - 45 <= eTankY1)) {
      tankX = 460.0;
    } else if ((tankX > 422.2 && tankX < 617.8) && (tankY + 45 <= eTankY1) && (tankY >= eTankY1 + 48.5)) {
      tankX = 460.0;
    } else if ((tankX > 592.2 && tankX < 787.8) && (tankY >= eTank2Y1 - 48.5) && (tankY - 45 <= eTank2Y1)) {
      tankX = 590.0;
    } else if ((tankX > 592.2 && tankX < 787.8) && (tankY + 45 <= eTank2Y1) && (tankY >= eTank2Y1 + 48.5)) {
      tankX = 590.0;
    }
  }
} // end soccerLevel1

// Enemy Tank Movement Level 1
void enemyMovementLevel1() {
  if (eTankY1 <= 68) {
    enemyUp = false;
    enemyDown = true;
  } else if (eTankY1 >= 482) {
    enemyDown = false;
    enemyUp = true;
  }
  
  if (enemyDown == true) {
    enemyShootingLevel1();
    
    eTankY1+=3.0;
    eTank2Y1-=3.0;
    
    if (gunNum == 1 && enemyLHit1 < 5) {
      tankLAlive = true;
      image(enemyTank, 520, eTankY1, 106.6, 48.5);
    } else if (gunNum == 2 && enemyLHit1 < 3) {
      tankLAlive = true;
      image(enemyTank, 520, eTankY1, 106.6, 48.5);
    } else if (gunNum == 3 && enemyLHit1 < 1) {
      tankLAlive = true;
      image(enemyTank, 520, eTankY1, 106.6, 48.5);
    }
    
    if (gunNum == 1 && enemyRHit1 < 5) {
      tankRAlive = true;
      image(enemyTank, 690, eTank2Y1, 106.6, 48.5);
    } else if (gunNum == 2 && enemyRHit1 < 3) {
      tankRAlive = true;
      image(enemyTank, 690, eTank2Y1, 106.6, 48.5);
    } else if (gunNum == 3 && enemyRHit1 < 1) {
      tankRAlive = true;
      image(enemyTank, 690, eTank2Y1, 106.6, 48.5);
    }

    if (gunNum == 1 && enemyRHit2 > 5) {
      tankRAlive = false;
    } else if (gunNum == 2 && enemyRHit2 > 3) {
      tankRAlive = false;
    } else if (gunNum == 3 && enemyRHit2 > 1) {
      tankRAlive = false;
    }
  if (gunNum == 1 && enemyLHit2 > 5) {
      tankLAlive = false;
    } else if (gunNum == 2 && enemyLHit2 > 3) {
      tankLAlive = false;
    } else if (gunNum == 3 && enemyLHit2 > 1) {
      tankLAlive = false;
    }
  } else if (enemyUp == true) {
    enemyShootingLevel1();
    
    eTankY1-=3.0;
    eTank2Y1+=3.0;
    
    if (gunNum == 1 && enemyLHit1 < 5) {
      tankLAlive = true;
      image(enemyTank, 520, eTankY1, 106.6, 48.5);
    } else if (gunNum == 2 && enemyLHit1 < 3) {
      tankLAlive = true;
      image(enemyTank, 520, eTankY1, 106.6, 48.5);
    } else if (gunNum == 3 && enemyLHit1 < 1) {
      tankLAlive = true;
      image(enemyTank, 520, eTankY1, 106.6, 48.5);
    }
    
    if (gunNum == 1 && enemyRHit1 < 5) {
      tankRAlive = true;
      image(enemyTank, 690, eTank2Y1, 106.6, 48.5);
    } else if (gunNum == 2 && enemyRHit1 < 3) {
      tankRAlive = true;
      image(enemyTank, 690, eTank2Y1, 106.6, 48.5);
    } else if (gunNum == 3 && enemyRHit1 < 1) {
      tankRAlive = true;
      image(enemyTank, 690, eTank2Y1, 106.6, 48.5);
    }

    if (gunNum == 1 && enemyRHit1 > 5) {
      tankRAlive = false;
    } else if (gunNum == 2 && enemyRHit1 > 3) {
      tankRAlive = false;
    } else if (gunNum == 3 && enemyRHit1 > 1) {
      tankRAlive = false;
    }
  if (gunNum == 1 && enemyLHit1 > 5) {
      tankLAlive = false;
    } else if (gunNum == 2 && enemyLHit1 > 3) {
      tankLAlive = false;
    } else if (gunNum == 3 && enemyLHit1 > 1) {
      tankLAlive = false;
    }
  } // end enemyUp
} // end Enemy Movement Level 1

void enemyShootingLevel1() {
  if ((gunNum == 1 && enemyLHit1 < 5) || (gunNum == 2 && enemyLHit1 < 3) || (gunNum == 3 && enemyLHit1 < 1)) {
    if (eTankY1 >= 90 && eTankY1 <= 94) {
      e1TopWeapon1 = true;
    } 

    if (eTankTopWeaponX1 < 0) {
      e1TopWeapon1 = false;
      eTankTopWeaponX1 = 520.0;
    } 
    if (eTankTopWeaponX1 > tankX && eTankTopWeaponX1 < tankX + 100 && tankY > 30 && tankY < 90 && time >= 2) {
      time = 0;
      e1TopWeapon1 = false;
      eTankTopWeaponX1 = 520.0;
      hit++;
      startTime = second();
    }
    
    if (eTankY1 >= 268 && eTankY1 <= 272) {
      e1MidWeapon1 = true;
    } 

    if (eTankMidWeaponX1 < 0) {
      e1MidWeapon1 = false;
      eTankMidWeaponX1 = 520.0;
    }
    if (eTankMidWeaponX1 > tankX && eTankMidWeaponX1 < tankX + 100 && tankY > 208 && tankY < 268 && time >= 2) {
      time = 0;
      e1MidWeapon1 = false;
      eTankMidWeaponX1 = 520.0;
      hit++;
      startTime = second();
    }
    
    if (eTankY1 >= 466 && eTankY1 <= 470) {
      e1BottomWeapon1 = true;
    }

    if (eTankBottomWeaponX1 < 0) {
      e1BottomWeapon1 = false;
      eTankBottomWeaponX1 = 520.0;
    }
    if (eTankBottomWeaponX1 > tankX && eTankBottomWeaponX1 < tankX + 100 && tankY > 406 && tankY < 466 && time >= 2) {
      time = 0;
      e1BottomWeapon1 = false;
      eTankBottomWeaponX1 = 520.0;
      hit++;
      startTime = second();
    }
  }

  if ((gunNum == 1 && enemyRHit1 < 5) || (gunNum == 2 && enemyRHit1 < 3) || (gunNum == 3 && enemyRHit1 < 1)) {
    if (eTank2Y1 >= 365 && eTank2Y1 <= 369) {
      e2TopWeapon1 = true;
    } 

    if (eTank2TopWeaponX1 < 0) {
      e2TopWeapon1 = false;
      eTank2TopWeaponX1 = 690.0;
    }
    if (eTank2TopWeaponX1 > tankX && eTank2TopWeaponX1 < tankX + 100 && tankY > 305 && tankY < 365 && time >= 2) {
      time = 0;
      e2TopWeapon1 = false;
      eTank2TopWeaponX1 = 690.0;
      hit++;
      startTime = second();
    }
    
    if (eTank2Y1 >= 181 && eTank2Y1 <= 185) {
      e2BottomWeapon1 = true;
    }

    if (eTank2BottomWeaponX1 < 0) {
      e2BottomWeapon1 = false;
      eTank2BottomWeaponX1 = 690.0;
    } 
    if (eTank2BottomWeaponX1 > tankX && eTank2BottomWeaponX1 < tankX + 100 && tankY > 121 && tankY < 181 && time >= 2) {
      time = 0;
      e2BottomWeapon1 = false;
      eTank2BottomWeaponX1 = 690.0;
      hit++;
      startTime = second();
    }
  }
  
  if (e1TopWeapon1 == true) {
    fill(0);
    eTankTopWeaponX1 = eTankTopWeaponX1-10.0;
    if (tankLAlive == true) {
      image(enemyBullet, eTankTopWeaponX1, 92, 20, 10);
    }
  } 
  
  if (e1MidWeapon1 == true) {
    fill(0);
    eTankMidWeaponX1 = eTankMidWeaponX1-10.0;
    if (tankLAlive == true) {
      image(enemyBullet, eTankMidWeaponX1, 270, 20, 10);
    }
  } 
  
  if (e1BottomWeapon1 == true) {
    fill(0);
    eTankBottomWeaponX1 = eTankBottomWeaponX1-10.0;
    if (tankLAlive == true) {
      image(enemyBullet, eTankBottomWeaponX1, 468, 20, 10);
    }
  } 
  
  if (e2TopWeapon1 == true) {
    fill(0);
    eTank2TopWeaponX1 = eTank2TopWeaponX1-10.0;
    if (tankRAlive == true) {
      image(enemyBullet, eTank2TopWeaponX1, 367, 20, 10);
    }
  } 
  
  if (e2BottomWeapon1 == true) {
    fill(0);
    eTank2BottomWeaponX1 = eTank2BottomWeaponX1-10.0;
    if (tankRAlive == true) {
      image(enemyBullet, eTank2BottomWeaponX1, 183, 20, 10);
    }
  }

  finalHit = hit;
} // end enemyShootingLevel1

void P() {
  fill(255, 0, 0);
  image(startPageBack, 0, 0, 1000, 550);
  textFont(titlePage);
  text("Cheats and Hacks", 250, 150);

  fill(255);
  textSize(15);
  text("Welcome to the K page: \n" +
       " - 'u' key = unlimited cash. \n" +
       " - 'g' key on gun inventory screen = all guns unlocked. \n" + 
       " = 't' key on tank inventory screen = all tanks unlocked. \n" +
       " - '2' key in level 1 = go to level 2. \n" +
       " - '1' key in level 2 = go to level 1. \n" +
       " - 'p' key in level 1 or level 2 = win level.", 20, 527);  
}

// Level 2
void snowLevel2() {
  levelNum = 2;

  defeat = false;
  victory = false;
  
  image(snowMap2, 0, 0, 1000, 550);

  enemyMovementLevel2();

  shooting();

  if (cos(radians(tankTurn)) == 1){
    tankTurn = 0.0;
  } else if (cos(radians(tankTurn)) == -1) {
    tankTurn = 180.0;
  } else if (sin(radians(tankTurn)) == 1) {
    tankTurn = 90.0;
  } else if (sin(radians(tankTurn)) == -1) {
    tankTurn = 270.0;
  }

  configuration[1] = tankNum;
  if (tankNum == 1) {
    if (hit == 0) {
      image(greyh3, 20, 20, 200, 45);
    } else if (hit == 1) {
      image(greyh2, 20, 20, 200, 45);
    } else if (hit == 2) {
      image(greyh1, 20, 20, 200, 45);
    } else if (hit > 2) {
      defeat = true;
      sceneNum = 10;
    }

    if (tankX > 820 && tankX < 1000 && tankY > 60 && tankY < 300) {
      victory = true;
      sceneNum = 11;
    }
    
    translate(tankX, tankY + 100);
    rotate(radians(tankTurn));
    image(greyTank, 0, 0, 92.6, 50);  

    if ((tankX > 195.4 && tankX < 380.6) && (tankY >= eTankY1 - 48.5) && (tankY - 45 <= eTankY1)) {
      tankX = 228.0;
    } else if ((tankX > 195.4 && tankX < 380.6) && (tankY + 45 <= eTankY1) && (tankY >= eTankY1 + 48.5)) {
      tankX = 288.0;
    } else if ((tankX > 331.4 && tankX < 516.6) && (tankY >= eTank2Y1 - 48.5) && (tankY - 45 <= eTank2Y1)) {
      tankX = 364.0;
    } else if ((tankX > 331.4 && tankX < 516.6) && (tankY + 45 <= eTank2Y1) && (tankY >= eTank2Y1 + 48.5)) {
      tankX = 364.0;
    } else if ((tankX > 470.4 && tankX < 655.6) && (tankY >= eTank2Y1 - 48.5) && (tankY - 45 <= eTank2Y1)) {
      tankX = 503.0;
    } else if ((tankX > 470.4 && tankX < 655.6) && (tankY + 45 <= eTank2Y1) && (tankY >= eTank2Y1 + 48.5)) {
      tankX = 503.0;
    }
    
  } else if (tankNum == 2) {
    if (hit == 0) {
      image(camoh6, 20, 20, 200, 45);
    } else if (hit == 1) {
      image(camoh5, 20, 20, 200, 45);
    } else if (hit == 2) {
      image(camoh4, 20, 20, 200, 45);
    } else if (hit == 3) {
      image(camoh3, 20, 20, 200, 45);
    } else if (hit == 4) {
      image(camoh2, 20, 20, 200, 45);
    } else if (hit == 5) {
      image(camoh1, 20, 20, 200, 45);
    } else if (hit > 5) {
      defeat = true;
      sceneNum = 10;
    }

    if (tankX > 820 && tankX < 1000 && tankY > 60 && tankY < 300) {
      victory = true;
      sceneNum = 11;
    }
    
    translate(tankX, tankY + 100);
    rotate(radians(tankTurn));
    image(camoTank, 0, 0, 101.5, 41.9);

    if ((tankX > 186.5 && tankX < 389.5) && (tankY >= eTankY1 - 48.5) && (tankY - 45 <= eTankY1)) {
      tankX = 228.0;
    } else if ((tankX > 186.5 && tankX < 389.5) && (tankY + 45 <= eTankY1) && (tankY >= eTankY1 + 48.5)) {
      tankX = 288.0;
    } else if ((tankX > 322.5 && tankX < 525.5) && (tankY >= eTank2Y1 - 48.5) && (tankY - 45 <= eTank2Y1)) {
      tankX = 364.0;
    } else if ((tankX > 322.5 && tankX < 525.5) && (tankY + 45 <= eTank2Y1) && (tankY >= eTank2Y1 + 48.5)) {
      tankX = 364.0;
    } else if ((tankX > 461.5 && tankX < 664.5) && (tankY >= eTank2Y1 - 48.5) && (tankY - 45 <= eTank2Y1)) {
      tankX = 503.0;
    } else if ((tankX > 461.5 && tankX < 664.5) && (tankY + 45 <= eTank2Y1) && (tankY >= eTank2Y1 + 48.5)) {
      tankX = 503.0;
    }
    
  } else if (tankNum == 3) {
    if (hit == 0) {
      image(brownh9, 20, 20, 200, 45);
    } else if (hit == 1) {
      image(brownh8, 20, 20, 200, 45);
    } else if (hit == 2) {
      image(brownh7, 20, 20, 200, 45);
    } else if (hit == 3) {
      image(brownh6, 20, 20, 200, 45);
    } else if (hit == 4) {
      image(brownh5, 20, 20, 200, 45);
    } else if (hit == 5) {
      image(brownh4, 20, 20, 200, 45);
    } else if (hit == 6) {
      image(brownh3, 20, 20, 200, 45);
    } else if (hit == 7) {
      image(brownh2, 20, 20, 200, 45);
    } else if (hit == 8) {
      image(brownh1, 20, 20, 200, 45);
    } else if (hit > 8) {
      defeat = true;
      sceneNum = 10;
    }

    if (tankX > 820 && tankX < 1000 && tankY > 60 && tankY < 300) {
      victory = true;
      sceneNum = 11;
    }
    
    translate(tankX, tankY + 100);
    rotate(radians(tankTurn));
    image(brownTank, 0, 0, 97.8, 49.6);

    if ((tankX > 190.2 && tankX < 385.8) && (tankY >= eTankY1 - 48.5) && (tankY - 45 <= eTankY1)) {
      tankX = 228.0;
    } else if ((tankX > 190.2 && tankX < 385.8) && (tankY + 45 <= eTankY1) && (tankY >= eTankY1 + 48.5)) {
      tankX = 288.0;
    } else if ((tankX > 326.2 && tankX < 521.8) && (tankY >= eTank2Y1 - 48.5) && (tankY - 45 <= eTank2Y1)) {
      tankX = 364.0;
    } else if ((tankX > 326.2 && tankX < 521.8) && (tankY + 45 <= eTank2Y1) && (tankY >= eTank2Y1 + 48.5)) {
      tankX = 364.0;
    } else if ((tankX > 465.2 && tankX < 660.8) && (tankY >= eTank2Y1 - 48.5) && (tankY - 45 <= eTank2Y1)) {
      tankX = 503.0;
    } else if ((tankX > 465.2 && tankX < 660.8) && (tankY + 45 <= eTank2Y1) && (tankY >= eTank2Y1 + 48.5)) {
      tankX = 503.0;
    }
  }
} // end snowLevel2

// Enemy Tank Movement Level 2
void enemyMovementLevel2() { 
  if (eTankY2 <= 30) {
    enemyUp = false;
    enemyDown = true;
  } else if (eTankY2 >= 520) {
    enemyDown = false;
    enemyUp = true;
  }
  if (enemyDown == true) {
    enemyShootingLevel2();
    
    eTankY2+=2.0;
    eTank2Y2-=2.0;
    if (gunNum == 1 && enemyLHit2 < 5) {
      tankLAlive = true;
      image(enemyTank, 288, eTankY2, 106.6, 48.5);
    } else if (gunNum == 2 && enemyLHit2 < 3) {
      tankLAlive = true;
      image(enemyTank, 288, eTankY2, 106.6, 48.5);
    } else if (gunNum == 3 && enemyLHit2 < 1) {
      tankLAlive = true;
      image(enemyTank, 288, eTankY2, 106.6, 48.5);
    }
    
    if (gunNum == 1 && enemyMHit2 < 5) {
      tankMAlive = true;
      image(enemyTank, 424, eTank2Y2, 106.6, 48.5);
    } else if (gunNum == 2 && enemyMHit2 < 3) {
      tankMAlive = true;
      image(enemyTank, 424, eTank2Y2, 106.6, 48.5);
    } else if (gunNum == 3 && enemyMHit2 < 1) {
      tankMAlive = true;
      image(enemyTank, 424, eTank2Y2, 106.6, 48.5);
    }
    
    if (gunNum == 1 && enemyRHit2 < 5) {
      tankRAlive = true;
      image(enemyTank, 563, eTankY2, 106.6, 48.5);
    } else if (gunNum == 2 && enemyRHit2 < 3) {
      tankRAlive = true;
      image(enemyTank, 563, eTankY2, 106.6, 48.5);
    } else if (gunNum == 3 && enemyRHit2 < 1) {
      tankRAlive = true;
      image(enemyTank, 563, eTankY2, 106.6, 48.5);
    }

    if (gunNum == 1 && enemyRHit2 > 5) {
      tankRAlive = false;
    } else if (gunNum == 2 && enemyRHit2 > 3) {
      tankRAlive = false;
    } else if (gunNum == 3 && enemyRHit2 > 1) {
      tankRAlive = false;
    }
  if (gunNum == 1 && enemyMHit2 > 5) {
      tankMAlive = false;
    } else if (gunNum == 2 && enemyMHit2 > 3) {
      tankMAlive = false;
    } else if (gunNum == 3 && enemyMHit2 > 1) {
      tankMAlive = false;
    }
  if (gunNum == 1 && enemyLHit2 > 5) {
      tankLAlive = false;
    } else if (gunNum == 2 && enemyLHit2 > 3) {
      tankLAlive = false;
    } else if (gunNum == 3 && enemyLHit2 > 1) {
      tankLAlive = false;
    }
  } else if (enemyUp == true) {
    enemyShootingLevel2();
    
    eTankY2-=2.0;
    eTank2Y2+=2.0;
    if (gunNum == 1 && enemyLHit2 < 5) {
      tankLAlive = true;
      image(enemyTank, 288, eTankY2, 106.6, 48.5);
    } else if (gunNum == 2 && enemyLHit2 < 3) {
      tankMAlive = true;
      image(enemyTank, 288, eTankY2, 106.6, 48.5);
    } else if (gunNum == 3 && enemyLHit2 < 1) {
      tankRAlive = true;
      image(enemyTank, 288, eTankY2, 106.6, 48.5);
    }
    
    if (gunNum == 1 && enemyMHit2 < 5) {
      tankLAlive = true;
      image(enemyTank, 424, eTank2Y2, 106.6, 48.5);
    } else if (gunNum == 2 && enemyMHit2 < 3) {
      tankMAlive = true;
      image(enemyTank, 424, eTank2Y2, 106.6, 48.5);
    } else if (gunNum == 3 && enemyMHit2 < 1) {
      tankRAlive = true;
      image(enemyTank, 424, eTank2Y2, 106.6, 48.5);
    }
    
    if (gunNum == 1 && enemyRHit2 < 5) {
      tankLAlive = true;
      image(enemyTank, 563, eTankY2, 106.6, 48.5);
    } else if (gunNum == 2 && enemyRHit2 < 3) {
      tankMAlive = true;
      image(enemyTank, 563, eTankY2, 106.6, 48.5);
    } else if (gunNum == 3 && enemyRHit2 < 1) {
      tankRAlive = true;
      image(enemyTank, 563, eTankY2, 106.6, 48.5);
    }

    if (gunNum == 1 && enemyRHit2 > 5) {
      tankRAlive = false;
    } else if (gunNum == 2 && enemyRHit2 > 3) {
      tankRAlive = false;
    } else if (gunNum == 3 && enemyRHit2 > 1) {
      tankRAlive = false;
    }
  if (gunNum == 1 && enemyMHit2 > 5) {
      tankMAlive = false;
    } else if (gunNum == 2 && enemyMHit2 > 3) {
      tankMAlive = false;
    } else if (gunNum == 3 && enemyMHit2 > 1) {
      tankMAlive = false;
    }
  if (gunNum == 1 && enemyLHit2 > 5) {
      tankLAlive = false;
    } else if (gunNum == 2 && enemyLHit2 > 3) {
      tankLAlive = false;
    } else if (gunNum == 3 && enemyLHit2 > 1) {
      tankLAlive = false;
    }
  }
} // end Enemy Movement Level 2

void K() {
  if (one == true && four == true && seven == true && five == true && nine == true && three == true && sceneNum == 9) {
    P();
  }
}

void enemyShootingLevel2() {
  if (eTankY2 >= 90 && eTankY2 <= 94) {
    e1TopWeapon2 = true;
  } 

  if (e1TankTopWeaponX2 < 0) {
    e1TopWeapon2 = false;
    e1TankTopWeaponX2 = 288.0;
  }
  if (e1TankTopWeaponX2 > tankX && e1TankTopWeaponX2 < tankX + 100 && tankY > 30 && tankY < 90 && time >= 2) {
    time = 0;
    e1TopWeapon2 = false;
    e1TankTopWeaponX2 = 288.0;
    hit++;
    startTime = second();
  }
  
  if (eTankY2 >= 160 && eTankY2 <= 164) {
    e1TopMidWeapon2 = true;
  }

  if (e1TankTopMidWeaponX2 < 0) {
    e1TopMidWeapon2 = false;
    e1TankTopMidWeaponX2 = 288.0;
  }
  if (e1TankTopMidWeaponX2 > tankX && e1TankTopMidWeaponX2 < tankX + 100 && tankY > 100 && tankY < 160 && time >= 2) {
    time = 0;
    e1TopMidWeapon2 = false;
    e1TankTopMidWeaponX2 = 288.0;
    hit++;
    startTime = second();
  }

  if (eTankY2 >= 240 && eTankY2 <= 244) {
    e1MidWeapon2 = true;
  }

  if (e1TankMidWeaponX2 < 0) {
    e1MidWeapon2 = false;
    e1TankMidWeaponX2 = 288.0;
  }
  if (e1TankMidWeaponX2 > tankX && e1TankMidWeaponX2 < tankX + 100 && tankY > 180 && tankY < 240 && time >= 2) {
    time = 0;
    e1MidWeapon2 = false;
    e1TankMidWeaponX2 = 288.0;
    hit++;
    startTime = second();
  }

  if (eTankY2 >= 320 && eTankY2 <= 324) {
    e1BottomMidWeapon2 = true;
  }

  if (e1TankBottomMidWeaponX2 < 0) {
    e1BottomMidWeapon2 = false;
    e1TankBottomMidWeaponX2 = 288.0;
  }
  if (e1TankBottomMidWeaponX2 > tankX && e1TankBottomMidWeaponX2 < tankX + 100 && tankY > 260 && tankY < 320 && time >= 2) {
    time = 0;
    e1BottomMidWeapon2 = false;
    e1TankBottomMidWeaponX2 = 288.0;
    hit++;
    startTime = second();
  }

  if (eTankY2 >= 420 && eTankY2 <= 424) {
    e1BottomWeapon2 = true;
  }

  if (e1TankBottomWeaponX2 < 0) {
    e1BottomWeapon2 = false;
    e1TankBottomWeaponX2 = 288.0;
  }
  if (e1TankBottomWeaponX2 > tankX && e1TankBottomWeaponX2 < tankX + 100 && tankY > 360 && tankY < 420 && time >= 2) {
    time = 0;
    e1BottomWeapon2 = false;
    e1TankBottomWeaponX2 = 288.0;
    hit++;
    startTime = second();
  }
  
  if (eTank2Y2 >= 120 && eTank2Y2 <= 124) {
    e2TopWeapon2 = true;
  }

  if (e2TankTopWeaponX2 < 0) {
    e2TopWeapon2 = false;
    e2TankTopWeaponX2 = 288.0;
  }
  if (e2TankTopWeaponX2 > tankX && e2TankTopWeaponX2 < tankX + 100 && tankY > 60 && tankY < 120 && time >= 2) {
    time = 0;
    e2TopWeapon2 = false;
    e2TankTopWeaponX2 = 288.0;
    hit++;
    startTime = second();
  }

  if (eTank2Y2 >= 198 && eTank2Y2 <= 202) {
    e2TopMidWeapon2 = true;
  }

  if (e2TankTopMidWeaponX2 < 0) {
    e2TopMidWeapon2 = false;
    e2TankTopMidWeaponX2 = 424.0;
  }
  if (e2TankTopMidWeaponX2 > tankX && e2TankTopMidWeaponX2 < tankX + 100 && tankY > 138 && tankY < 198 && time >= 2) {
    time = 0;
    e2TopMidWeapon2 = false;
    e2TankTopMidWeaponX2 = 424.0;
    hit++;
    startTime = second();
  }

  if (eTank2Y2 >= 278 && eTank2Y2 <= 282) {
    e2BottomMidWeapon2 = true;
  }

  if (e2TankBottomMidWeaponX2 < 0) {
    e2BottomMidWeapon2 = false;
    e2TankBottomMidWeaponX2 = 424.0;
  }
  if (e2TankBottomMidWeaponX2 > tankX && e2TankBottomMidWeaponX2 < tankX + 100 && tankY > 218 && tankY < 278 && time >= 2) {
    time = 0;
    e2BottomMidWeapon2 = false;
    e2TankBottomMidWeaponX2 = 424.0;
    hit++;
    startTime = second();
  }

  if (eTank2Y2 >= 368 && eTank2Y2 <= 372) {
    e2BottomWeapon2 = true;
  }

  if (e2TankBottomWeaponX2 < 0) {
    e2BottomWeapon2 = false;
    e2TankBottomWeaponX2 = 424.0;
  }
  if (e2TankBottomWeaponX2 > tankX && e2TankBottomWeaponX2 < tankX + 100 && tankY > 308 && tankY < 368 && time >= 2) {
    time = 0;
    e2BottomWeapon2 = false;
    e2TankBottomWeaponX2 = 424.0;
    hit++;
    startTime = second();
  }

  if (e1TopWeapon2 == true) {
    fill(0);
    e1TankTopWeaponX2 = e1TankTopWeaponX2-20.0;
    if ((gunNum == 1 && enemyLHit2 < 5) || (gunNum == 2 && enemyLHit2 < 3) || (gunNum == 3 && enemyLHit2 < 1)) {
      image(enemyBullet, e1TankTopWeaponX2, 92, 20, 10);
    }
    if ((gunNum == 1 && enemyRHit2 < 5) || (gunNum == 2 && enemyRHit2 < 3) || (gunNum == 3 && enemyRHit2 < 1)) {
      image(enemyBullet, e1TankTopWeaponX2 + 275, 92, 20, 10);
    }
  } 

  if (e1TopMidWeapon2 == true) {
    fill(0);
    e1TankTopMidWeaponX2 = e1TankTopMidWeaponX2-20.0;
    if ((gunNum == 1 && enemyLHit2 < 5) || (gunNum == 2 && enemyLHit2 < 3) || (gunNum == 3 && enemyLHit2 < 1)) {
      image(enemyBullet, e1TankTopMidWeaponX2, 162, 20, 10);
    }
    if ((gunNum == 1 && enemyLHit2 < 5) || (gunNum == 2 && enemyLHit2 < 3) || (gunNum == 3 && enemyLHit2 < 1)) {
      image(enemyBullet, e1TankTopMidWeaponX2 + 275, 162, 20, 10);
    }
  } 

  if (e1MidWeapon2 == true) {
    fill(0);
    e1TankMidWeaponX2 = e1TankMidWeaponX2-20.0;
    if ((gunNum == 1 && enemyLHit2 < 5) || (gunNum == 2 && enemyLHit2 < 3) || (gunNum == 3 && enemyLHit2 < 1)) {
      image(enemyBullet, e1TankMidWeaponX2, 242, 20, 10);
    }
    if ((gunNum == 1 && enemyRHit2 < 5) || (gunNum == 2 && enemyRHit2 < 3) || (gunNum == 3 && enemyRHit2 < 1)) {
      image(enemyBullet, e1TankMidWeaponX2 + 275, 242, 20, 10);
    }
  } 

  if (e1BottomMidWeapon2 == true) {
    fill(0);
    e1TankBottomMidWeaponX2 = e1TankBottomMidWeaponX2-20.0;
    if ((gunNum == 1 && enemyLHit2 < 5) || (gunNum == 2 && enemyLHit2 < 3) || (gunNum == 3 && enemyLHit2 < 1)) {
      image(enemyBullet, e1TankBottomMidWeaponX2, 322, 20, 10);
    }
    if ((gunNum == 1 && enemyRHit2 < 5) || (gunNum == 2 && enemyRHit2 < 3) || (gunNum == 3 && enemyRHit2 < 1)) {
      image(enemyBullet, e1TankBottomMidWeaponX2 + 275, 322, 20, 10);
    }
  } 

  if (e1BottomWeapon2 == true) {
    fill(0);
    e1TankBottomWeaponX2 = e1TankBottomWeaponX2-20.0;
    if ((gunNum == 1 && enemyLHit2 < 5) || (gunNum == 2 && enemyLHit2 < 3) || (gunNum == 3 && enemyLHit2 < 1)) {
      image(enemyBullet, e1TankBottomWeaponX2, 422, 20, 10);
    }
    if ((gunNum == 1 && enemyRHit2 < 5) || (gunNum == 2 && enemyRHit2 < 3) || (gunNum == 3 && enemyRHit2 < 1)) {
      image(enemyBullet, e1TankBottomWeaponX2 + 275, 422, 20, 10);
    }
  } 
  
  if (e2TopWeapon2 == true) {
    fill(0);
    e2TankTopWeaponX2 = e2TankTopWeaponX2-20.0;
    if ((gunNum == 1 && enemyMHit2 < 5) || (gunNum == 2 && enemyMHit2 < 3) || (gunNum == 3 && enemyMHit2 < 1)) {
    image(enemyBullet, e2TankTopWeaponX2, 122, 20, 10);
    }
  } 

  if (e2TopMidWeapon2 == true) {
    fill(0);
    e2TankTopMidWeaponX2 = e2TankTopMidWeaponX2-20.0;
    if ((gunNum == 1 && enemyMHit2 < 5) || (gunNum == 2 && enemyMHit2 < 3) || (gunNum == 3 && enemyMHit2 < 1)) {
      image(enemyBullet, e2TankTopMidWeaponX2, 200, 20, 10);
    }
  } 
  
  if (e2BottomMidWeapon2 == true) {
    fill(0);
    e2TankBottomMidWeaponX2 = e2TankBottomMidWeaponX2-20.0;
    if ((gunNum == 1 && enemyMHit2 < 5) || (gunNum == 2 && enemyMHit2 < 3) || (gunNum == 3 && enemyMHit2 < 1)) {
      image(enemyBullet, e2TankBottomMidWeaponX2, 280, 20, 10);
    }
  } 
  
  if (e2BottomWeapon2 == true) {
    fill(0);
    e2TankBottomWeaponX2 = e2TankBottomWeaponX2-20.0;
    if ((gunNum == 1 && enemyMHit2 < 5) || (gunNum == 2 && enemyMHit2 < 3) || (gunNum == 3 && enemyMHit2 < 1)) {
      image(enemyBullet, e2TankBottomWeaponX2, 370, 20, 10);
    }
  } 
} // end enemyShootingLevel2

void shooting() {
  if (cannonShot == true) {
    bulletX = bulletX + cos(radians(tankTurn))*(8);
    bulletY = bulletY + sin(radians(tankTurn))*(8);
    image(cannon, bulletX, bulletY, 20, 20);

    if (bulletX > 1000 || bulletX < 0 || bulletY > 550 || bulletY < 0) {
      cannonShot = false;
      machineGunShot = false;
      rocketShot = false;
      bulletX = tankX;
      bulletY = tankY;
    }
    
    // Level 1
    if (levelNum == 1 && bulletX > 520 && bulletX < 620 && bulletY > eTankY1 - 60 && bulletY < eTankY1) {
      cannonShot = false;
      bulletX = tankX;
      bulletY = tankY;
      enemyLHit1 ++;
    }
    if (levelNum == 1 && bulletX > 690 && bulletX < 790 && bulletY > eTank2Y1 - 60 && bulletY < eTank2Y1) {
      cannonShot = false;
      bulletX = tankX;
      bulletY = tankY;
      enemyRHit1 ++;
    }

    // Level 2
    if (levelNum == 2 && bulletX > 288 && bulletX < 348 && bulletY > eTankY2 - 60 && bulletY < eTankY2) {
      cannonShot = false;
      bulletX = tankX;
      bulletY = tankY + 100;
      enemyLHit2 ++;
    }
    if (levelNum == 2 && bulletX > 424 && bulletX < 484 && bulletY > eTank2Y2 - 60 && bulletY < eTank2Y2) {
      cannonShot = false;
      bulletX = tankX;
      bulletY = tankY + 100;
      enemyMHit2 ++;
    }
    if (levelNum == 2 && bulletX > 563 && bulletX < 623 && bulletY > eTankY2 - 60 && bulletY < eTank2Y2) {
      cannonShot = false;
      bulletX = tankX;
      bulletY = tankY + 100;
      enemyRHit2 ++;
    }
  } else if (machineGunShot == true) {
    bulletX = bulletX + cos(radians(tankTurn))*(15);
    bulletY = bulletY + sin(radians(tankTurn))*(15);
    image(machineGun, bulletX, bulletY, 20, 20);

    if (bulletX > 1000 || bulletX < 0 || bulletY > 550 || bulletY < 0) {
      cannonShot = false;
      machineGunShot = false;
      rocketShot = false;
      bulletX = tankX;
      bulletY = tankY + 100;
    }
    
    // Level 1
    if (levelNum == 1 && bulletX > 520 && bulletX < 620 && bulletY > eTankY1 - 60 && bulletY < eTankY1) {
      machineGunShot = false;
      bulletX = tankX;
      bulletY = tankY;
      enemyLHit1 ++;
    }
    if (levelNum == 1 && bulletX > 690 && bulletX < 790 && bulletY > eTank2Y1 - 60 && bulletY < eTank2Y1) {
      machineGunShot = false;
      bulletX = tankX;
      bulletY = tankY;
      enemyRHit1 ++;
    }

    // Level 2
    if (levelNum == 2 && bulletX > 288 && bulletX < 348 && bulletY > eTankY2 - 60 && bulletY < eTankY2) {
      machineGunShot = false;
      bulletX = tankX;
      bulletY = tankY + 100;
      enemyLHit2 ++;
    }
    if (levelNum == 2 && bulletX > 424 && bulletX < 484 && bulletY > eTank2Y2 - 60 && bulletY < eTank2Y2) {
      machineGunShot = false;
      bulletX = tankX;
      bulletY = tankY + 100;
      enemyMHit2 ++;
    }
    if (levelNum == 2 && bulletX > 563 && bulletX < 623 && bulletY > eTankY2 - 60 && bulletY < eTank2Y2) {
      machineGunShot = false;
      bulletX = tankX;
      bulletY = tankY + 100;
      enemyRHit2 ++;
    }
  } else if (rocketShot == true) {
    bulletX = bulletX + cos(radians(tankTurn))*(20);
    bulletY = bulletY + sin(radians(tankTurn))*(20);
    image(rocket, bulletX, bulletY, 20, 20);

    if (bulletX > 1000 || bulletX < 0 || bulletY > 550 || bulletY < 0) {
      cannonShot = false;
      machineGunShot = false;
      rocketShot = false;
      bulletX = tankX;
      bulletY = tankY + 100;
    }
    
    // Level 1
    if (levelNum == 1 && bulletX > 520 && bulletX < 620 && bulletY > eTankY1 - 60 && bulletY < eTankY1) {
      rocketShot = false;
      bulletX = tankX;
      bulletY = tankY;
      enemyLHit1 ++;
    }
    if (levelNum == 1 && bulletX > 690 && bulletX < 790 && bulletY > eTank2Y1 - 60 && bulletY < eTank2Y1) {
      rocketShot = false;
      bulletX = tankX;
      bulletY = tankY;
      enemyRHit1 ++;
    }

    // Level 2
    if (levelNum == 2 && bulletX > 288 && bulletX < 348 && bulletY > eTankY2 - 60 && bulletY < eTankY2) {
      rocketShot = false;
      bulletX = tankX;
      bulletY = tankY + 100;
      enemyLHit2 ++;
    }
    if (levelNum == 2 && bulletX > 424 && bulletX < 484 && bulletY > eTank2Y2 - 60 && bulletY < eTank2Y2) {
      rocketShot = false;
      bulletX = tankX;
      bulletY = tankY + 100;
      enemyMHit2 ++;
    }
    if (levelNum == 2 && bulletX > 563 && bulletX < 623 && bulletY > eTankY2 - 60 && bulletY < eTank2Y2) {
      rocketShot = false;
      bulletX = tankX;
      bulletY = tankY + 100;
      enemyRHit2 ++;
    }
  } 
  finalHit = hit;
} // end enemyShootingLevel2

void defeatScene() {
  if (defeat == true) {
    hit = 0;
    enemyLHit1 = 0;
    enemyRHit1 = 0;
    enemyLHit2 = 0;
    enemyMHit2 = 0;
    enemyRHit2 = 0;
    tankTurn = 360.0;
    tankX = 50.0;
    tankY = 250.0;
    tankSpeed = 0.0;
    eTankY1 = 53.0;
    eTank2Y1 = 482 - eTankY1;
    eTankY2 = 15.0;
    eTank2Y2 = 520 - eTankY2;
    eTankTopWeaponX1 = 520.0;
    eTankMidWeaponX1 = 520.0;
    eTankBottomWeaponX1 = 520.0;
    eTank2TopWeaponX1 = 690.0;
    eTank2BottomWeaponX1 = 690.0;
    enemyDown = true;
    enemyUp = false;
    e1TopWeapon1 = false;
    e1MidWeapon1 = false;
    e1BottomWeapon1 = false;
    e2TopWeapon1 = false;
    e2BottomWeapon1 = false;
    tankLAlive = true;
    tankMAlive = true;
    tankRAlive = true;
  
    if (levelNum == 1) {
      image(soccerMap1, 0, 0, 1000, 550);
    } else if (levelNum == 2) {
      image(snowMap2, 0, 0, 1000, 550);
    }
  
    image(defeatSceneBack, 0, 0, 1000, 550);
    image(defeatBadge, 361, 50, 278, 313);

    fill(4, 176, 95);
    rect(820, 30, 160, 50, 20);
    fill(255);
    textSize(18);
    text("Cash: $" + cash, 835, 62);

    fill(200);
    rect(900, 500, 95, 45, 20);
    textSize(13);
    fill(255);
    text("Level Select", 910, 529);

    fill(200);
    rect(5, 500, 95, 45, 20);
    fill(255);
    text("Inventory", 22, 529);
  }
} // end defeatScene

void victoryScene() {
  if (victory == true) {
    println(finalHit);
    if (levelNum == 1) {
      image(soccerMap1, 0, 0, 1000, 550);
    } else if (levelNum == 2) {
      image(snowMap2, 0, 0, 1000, 550);
    }
  
    image(victorySceneBack, 0, 0, 1000, 550);
    image(victoryBadge, 361, 50, 278, 313);

    fill(4, 176, 95);
    rect(820, 30, 160, 80, 20);
    fill(255);
    textSize(18);
    text("Cash: $" + cash, 835, 62);

    if (tankNum == 1 && finalHit == 0) {
      image(starThree, 200, 300, 600, 272.3);
      fill(255);
      if (levelNum == 1) {
        text(" + $150", 865, 90);
      } else if (levelNum == 2) {
        text(" + $300", 885, 90);
      }
    } else if (tankNum == 1 && finalHit == 1) {
      image(starTwo, 250, 250, 500, 314.4);
      fill(255);
      if (levelNum == 1) {
        text(" + $100", 865, 90);
      } else if (levelNum == 2) {
        text(" + $200", 885, 90);
      }
    } else if (tankNum == 1 && finalHit == 2) {
      image(starOne, 350, 250, 300, 306.5);
      fill(255);
      if (levelNum == 1) {
        text(" + $50", 885, 90);
      } else if (levelNum == 2) {
        text(" + $100", 885, 90);
      }
    } else if (tankNum == 2 && (finalHit == 0 || finalHit == 1)) {
      image(starThree, 200, 300, 600, 272.3);
      fill(255);
      if (levelNum == 1) {
        text(" + $150", 885, 90);
      } else if (levelNum == 2) {
        text(" + $300", 885, 90);
      }
    } else if (tankNum == 2 && (finalHit == 2 || finalHit == 3)) {
      image(starTwo, 250, 250, 500, 314.4);
      fill(255);
      if (levelNum == 1) {
        text(" + $100", 885, 90);
      } else if (levelNum == 2) {
        text(" + $200", 885, 90);
      }
    } else if (tankNum == 2 && (finalHit == 4 || finalHit == 5)) {
      image(starOne, 350, 250, 300, 306.5);
      fill(255);
      if (levelNum == 1) {
        text(" + $50", 885, 90);
      } else if (levelNum == 2) {
        text(" + $100", 885, 90);
      }
    } else if (tankNum == 3 && (finalHit == 0 || finalHit == 1 || finalHit == 2)) {
      image(starThree, 200, 300, 600, 272.3);
      fill(255);
      if (levelNum == 1) {
        text(" + $150", 885, 90);
      } else if (levelNum == 2) {
        text(" + $300", 885, 90);
      }
    } else if (tankNum == 3 && (finalHit == 3 || finalHit == 4 || finalHit == 5)) {
      image(starTwo, 250, 250, 500, 314.4);
      fill(255);
      if (levelNum == 1) {
        text(" + $100", 885, 90);
      } else if (levelNum == 2) {
        text(" + $200", 885, 90);
      }
    } else if (tankNum == 3 && (finalHit == 6 || finalHit == 7 || finalHit == 8)) {
      image(starOne, 350, 250, 300, 306.5);
      fill(255);
      if (levelNum == 1) {
        text(" + $50", 885, 90);
      } else if (levelNum == 2) {
        text(" + $100", 885, 90);
      }
    }
  }

  fill(200);
  rect(900, 500, 95, 45, 20);
  textSize(13);
  fill(255);
  text("Level Select", 910, 529);

  fill(200);
  rect(5, 500, 95, 45, 20);
  fill(255);
  text("Inventory", 22, 529);

  hit = 0;
  enemyLHit1 = 0;
  enemyRHit1 = 0;
  enemyLHit2 = 0;
  enemyMHit2 = 0;
  enemyRHit2 = 0;
  tankTurn = 360.0;
  tankX = 50.0;
  tankY = 250.0;
  tankSpeed = 0.0;
  eTankY1 = 53.0;
  eTank2Y1 = 482 - eTankY1;
  eTankY2 = 15.0;
  eTank2Y2 = 520 - eTankY2;
  eTankTopWeaponX1 = 520.0;
  eTankMidWeaponX1 = 520.0;
  eTankBottomWeaponX1 = 520.0;
  eTank2TopWeaponX1 = 690.0;
  eTank2BottomWeaponX1 = 690.0;
  enemyDown = true;
  enemyUp = false;
  e1TopWeapon1 = false;
  e1MidWeapon1 = false;
  e1BottomWeapon1 = false;
  e2TopWeapon1 = false;
  e2BottomWeapon1 = false;
  tankLAlive = true;
  tankMAlive = true;
  tankRAlive = true;
} // end victoryScene

void mousePressed() {
  // Level Select Scene 1 -> Level 1
  if (mouseX > 200 && mouseX < 800 && mouseY > 150 && mouseY < 500 && sceneNum == 3) {
    sceneNum = 6;
  }

  // Gun Inventory -> Gun Instructions
  if (mouseX > 0 && mouseX < 100 && mouseY > 500 && mouseY < 550 && sceneNum == 0) {
    sceneNum = 8;
  }

  // Tank Inventory -> Tank Instructions
  if (mouseX > 0 && mouseX < 100 && mouseY > 500 && mouseY < 550 && sceneNum == 5) {
    sceneNum = 9;
  }
  
  // Home Page -> Map 1
  if (mouseX > 200 && mouseX < 800 && mouseY > 200 && mouseY < 300 && sceneNum == 1) {
    sceneNum = 3;
  }

  // Home Page -> How To Play
  if (mouseX > 200 && mouseX < 800 && mouseY > 350 && mouseY < 450 && sceneNum == 1) {
    sceneNum = 2;
  } 

  // How To Play -> HomePage
  if (mouseX > 900 && mouseX < 1000 && mouseY > 500 && mouseY < 550 && sceneNum == 2) {
    sceneNum = 1;
  }

  // Map 1 -> Home Page
  if (mouseX > 900 && mouseX < 1000 && mouseY > 500 && mouseY < 550 && sceneNum == 3) {
    sceneNum = 1;
  }

  // Map 1 -> Map 2
  if (mouseX > 900 && mouseX < 975 && mouseY > 255 && mouseY < 335 && sceneNum == 3) {
    sceneNum = 4;
  }

  // Map 2 -> Map 1
  if (mouseX > 25 && mouseX < 100 && mouseY > 255 && mouseY < 335 && sceneNum == 4) {
    sceneNum = 3;
  }

  // Map 2 -> Home Page
  if (mouseX > 900 && mouseX < 1000 && mouseY > 500 && mouseY < 550 && sceneNum == 4) {
    sceneNum = 1;
  }

  // Map 1 -> Inventory
  if (mouseX > 0 && mouseX < 100 && mouseY > 500 && mouseY < 550 && sceneNum == 3) {
    sceneNum = 0;
  }

  // Map 2 -> Inventory
  if (mouseX > 0 && mouseX < 100 && mouseY > 500 && mouseY < 550 && sceneNum == 4) {
    sceneNum = 0;
  }

  // Inventory -> Map 1
  if (mouseX > 900 && mouseX < 1000 && mouseY > 500 && mouseY < 550 && sceneNum == 0) {
    sceneNum = 3;
  }

  // Buy Gun 2
  if (mouseX > 383.33 && mouseX < 616.66 && mouseY > 150 && mouseY < 200 && sceneNum == 0 && cash >= 100 && gunBought2 == false) {
    cash = cash - 100;
    gunBought2 = true;
  } 

  // Buy Gun 3
  if (mouseX > 666.66 && mouseX < 899.99 && mouseY > 150 && mouseY < 200 && sceneNum == 0 && cash >= 150 && gunBought3 == false) {
    cash = cash - 150;
    gunBought3 = true;
  } 

  // Select Gun 1
  if (mouseX > 100 && mouseX < 333.33 && mouseY > 150 && mouseY < 200 && sceneNum == 0) {
    gunNum = 1;
  } 

  // Select Gun 2
  if (mouseX > 383.33 && mouseX < 616.66 && mouseY > 150 && mouseY < 200 && sceneNum == 0 && gunBought2 == true) {
    gunNum = 2;
  } 

  // Select Gun 3
  if (mouseX > 666.66 && mouseX < 899.99 && mouseY > 150 && mouseY < 200 && sceneNum == 0 && gunBought3 == true) {
    gunNum = 3;
  } 

  // Buy Camo Tank 
  if (mouseX > 383.33 && mouseX < 616.66 && mouseY > 150 && mouseY < 200 && sceneNum == 5 && cash >= 200 && tankBoughtCamo == false) {
    cash = cash - 200;
    tankBoughtCamo = true;
  } 

  // Buy Brown Tank
  if (mouseX > 666.66 && mouseX < 899.99 && mouseY > 150 && mouseY < 200 && sceneNum == 5 && cash >= 450 && tankBoughtBrown == false) {
    cash = cash - 450;
    tankBoughtBrown = true;
  } 

  // Select Grey Tank
  if (mouseX > 100 && mouseX < 333.33 && mouseY > 150 && mouseY < 200 && sceneNum == 5) {
    tankNum = 1;
  } 

  // Select Camo Tank
  if (mouseX > 383.33 && mouseX < 616.66 && mouseY > 150 && mouseY < 200 && sceneNum == 5 && tankBoughtCamo == true) {
    tankNum = 2;
  } 

  // Select Brown Tank
  if (mouseX > 666.66 && mouseX < 899.99 && mouseY > 150 && mouseY < 200 && sceneNum == 5 && tankBoughtBrown == true) {
    tankNum = 3;
  } 

  // Inventory -> Tank Select Scene
  if (mouseX > 910 && mouseX < 985 && mouseY > 255 && mouseY < 335 && sceneNum == 0) {
    sceneNum = 5;
  }

  // Tank Select Scene -> Inventory
  if (mouseX > 15 && mouseX < 90 && mouseY > 255 && mouseY < 335 && sceneNum == 5) {
    sceneNum = 0;
  }

  // Tank Select Scene -> Map 1
  if (mouseX > 900 && mouseX < 1000 && mouseY > 500 && mouseY < 550 && sceneNum == 5) {
    sceneNum = 3;
  }

  // Level Select Scene 2 -> Level 2
  if (mouseX > 200 && mouseX < 800 && mouseY > 150 && mouseY < 500 && sceneNum == 4) {
    sceneNum = 7;
  }

  // Gun Instructions -> Gun Inventory
  if (mouseX > 900 && mouseX < 1000 && mouseY > 500 && mouseY < 550 && sceneNum == 8) {
    sceneNum = 0;
  }

  // Tank Instructions -> Tank Inventory
  if (mouseX > 900 && mouseX < 1000 && mouseY > 500 && mouseY < 550 && sceneNum == 9) {
    sceneNum = 5;
  }

  // Defeat Scene -> Inventory
  if (mouseX > 0 && mouseX < 100 && mouseY > 500 && mouseY < 550 && sceneNum == 10) {
    sceneNum = 0;
  }

  // Defeat Scene -> Map 1
  if (mouseX > 900 && mouseX < 1000 && mouseY > 500 && mouseY < 550 && sceneNum == 10) {
    sceneNum = 3;
  }

  // Victory Scene -> Inventory
  if (mouseX > 0 && mouseX < 100 && mouseY > 500 && mouseY < 550 && sceneNum == 11) {
    sceneNum = 0;
    if (tankNum == 1 && finalHit == 0) {
      if (levelNum == 1) {
        cash = cash + 150;
      } else if (levelNum == 2) {
        cash = cash + 300;
      }
    } else if (tankNum == 1 && finalHit == 1) {
      if (levelNum == 1) {
        cash = cash + 100;
      } else if (levelNum == 2) {
        cash = cash + 200;
      }
    } else if (tankNum == 1 && finalHit == 2) {
      if (levelNum == 1) {
        cash = cash + 50;
      } else if (levelNum == 2) {
        cash = cash + 100;
      }
    } else if (tankNum == 2 && (finalHit == 0 || finalHit == 1)) {
      if (levelNum == 1) {
        cash = cash + 150;
      } else if (levelNum == 2) {
        cash = cash + 300;
      }
    } else if (tankNum == 2 && (finalHit == 2 || finalHit == 3)) {
      if (levelNum == 1) {
        cash = cash + 100;
      } else if (levelNum == 2) {
        cash = cash + 200;
      }
    } else if (tankNum == 2 && (finalHit == 4 || finalHit == 5)) {
      if (levelNum == 1) {
        cash = cash + 50;
      } else if (levelNum == 2) {
        cash = cash + 100;
      }
    } else if (tankNum == 3 && (finalHit == 0 || finalHit == 1 || finalHit == 2)) {
      if (levelNum == 1) {
        cash = cash + 150;
      } else if (levelNum == 2) {
        cash = cash + 300;
      }
    } else if (tankNum == 3 && (finalHit == 3 || finalHit == 4 || finalHit == 5)) {
      if (levelNum == 1) {
        cash = cash + 100;
      } else if (levelNum == 2) {
        cash = cash + 200;
      }
    } else if (tankNum == 3 && (finalHit == 6 || finalHit == 7 || finalHit == 8)) {
      if (levelNum == 1) {
        cash = cash + 50;
      } else if (levelNum == 2) {
        cash = cash + 100;
      }
    }
  }
      
  // Victory Scene -> Map 1
  if (mouseX > 900 && mouseX < 1000 && mouseY > 500 && mouseY < 550 && sceneNum == 11) {
    sceneNum = 3;
    if (tankNum == 1 && finalHit == 0) {
      if (levelNum == 1) {
        cash = cash + 150;
      } else if (levelNum == 2) {
        cash = cash + 300;
      }
    } else if (tankNum == 1 && finalHit == 1) {
      if (levelNum == 1) {
        cash = cash + 100;
      } else if (levelNum == 2) {
        cash = cash + 200;
      }
    } else if (tankNum == 1 && finalHit == 2) {
      if (levelNum == 1) {
        cash = cash + 50;
      } else if (levelNum == 2) {
        cash = cash + 100;
      }
    } else if (tankNum == 2 && (finalHit == 0 || finalHit == 1)) {
      if (levelNum == 1) {
        cash = cash + 150;
      } else if (levelNum == 2) {
        cash = cash + 300;
      }
    } else if (tankNum == 2 && (finalHit == 2 || finalHit == 3)) {
      if (levelNum == 1) {
        cash = cash + 100;
      } else if (levelNum == 2) {
        cash = cash + 200;
      }
    } else if (tankNum == 2 && (finalHit == 4 || finalHit == 5)) {
      if (levelNum == 1) {
        cash = cash + 50;
      } else if (levelNum == 2) {
        cash = cash + 100;
      }
    } else if (tankNum == 3 && (finalHit == 0 || finalHit == 1 || finalHit == 2)) {
      if (levelNum == 1) {
        cash = cash + 150;
      } else if (levelNum == 2) {
        cash = cash + 300;
      }
    } else if (tankNum == 3 && (finalHit == 3 || finalHit == 4 || finalHit == 5)) {
      if (levelNum == 1) {
        cash = cash + 100;
      } else if (levelNum == 2) {
        cash = cash + 200;
      }
    } else if (tankNum == 3 && (finalHit == 6 || finalHit == 7 || finalHit == 8)) {
      if (levelNum == 1) {
        cash = cash + 50;
      } else if (levelNum == 2) {
        cash = cash + 100;
      }
    }
  }
} // end mousePressed

void keyPressed() {
  // Grey Tank Movement
  if ((levelNum == 1 || levelNum == 2) && (sceneNum == 6 || sceneNum == 7) && (keyCode == UP || key == 'w') && tankNum == 1) {
    tankSpeed = 3.0;

    tankX = tankX + cos(radians(tankTurn))*(tankSpeed);
    tankY = tankY + sin(radians(tankTurn))*(tankSpeed);
  } else if ((levelNum == 1 || levelNum == 2) && (sceneNum == 6 || sceneNum == 7) && (keyCode == DOWN || key == 's') && tankNum == 1) {
    tankSpeed = 3.0;
    
    tankX = tankX - cos(radians(tankTurn))*(tankSpeed);
    tankY = tankY - sin(radians(tankTurn))*(tankSpeed);
  }

  // Camo Tank Movement
  if ((levelNum == 1 || levelNum == 2) && (sceneNum == 6 || sceneNum == 7) && (keyCode == UP || key == 'w') && tankNum == 2) {
    tankSpeed = 4.0;

    tankX = tankX + cos(radians(tankTurn))*(tankSpeed);
    tankY = tankY + sin(radians(tankTurn))*(tankSpeed);
  } else if ((levelNum == 1 || levelNum == 2) && (sceneNum == 6 || sceneNum == 7) && (keyCode == DOWN || key == 's') && tankNum == 2) {
    tankSpeed = 4.0;
    
    tankX = tankX - cos(radians(tankTurn))*(tankSpeed);
    tankY = tankY - sin(radians(tankTurn))*(tankSpeed);
  }

  // Brown Tank Movement
  if ((levelNum == 1 || levelNum == 2) && (sceneNum == 6 || sceneNum == 7) && (keyCode == UP || key == 'w') && tankNum == 3) {
    tankSpeed = 6.0;

    tankX = tankX + cos(radians(tankTurn))*(tankSpeed);
    tankY = tankY + sin(radians(tankTurn))*(tankSpeed);
  } else if ((levelNum == 1 || levelNum == 2) && (sceneNum == 6 || sceneNum == 7) && (keyCode == DOWN || key == 's') && tankNum == 3) {
    tankSpeed = 6.0;
    
    tankX = tankX - cos(radians(tankTurn))*(tankSpeed);
    tankY = tankY - sin(radians(tankTurn))*(tankSpeed);
  }
  
  // Grey Tank Turn
  if ((levelNum == 1 || levelNum == 2) && (keyCode == LEFT || key == 'a') && tankNum == 1) {
    tankTurn = tankTurn - 2.0;
  } else if ((levelNum == 1 || levelNum == 2) && (sceneNum == 6 || sceneNum == 7) && (keyCode == RIGHT || key == 'd') && tankNum == 1) {
    tankTurn = tankTurn + 2.0;
  }

  if (sceneNum == 9 && key == '1') {
    one = true;
  }
  if (sceneNum == 9 && key == '4') {
    four = true;
  }
  if (sceneNum == 9 && key == '7') {
    seven = true;
  }
  if (sceneNum == 9 && key == '5') {
    five = true;
  }
  if (sceneNum == 9 && key == '9') {
    nine = true;
  }
  if (sceneNum == 9 && key == '3') {
    three = true;
  }

  // Camo Tank Turn
  if ((levelNum == 1 || levelNum == 2) && (keyCode == LEFT || key == 'a') && tankNum == 2) {
    tankTurn = tankTurn - 4.0;
  } else if ((levelNum == 1 || levelNum == 2) && (sceneNum == 6 || sceneNum == 7) && (keyCode == RIGHT || key == 'd') && tankNum == 2) {
    tankTurn = tankTurn + 4.0;
  }

  // Brown Tank Turn
  if ((levelNum == 1 || levelNum == 2) && (keyCode == LEFT || key == 'a') && tankNum == 3) {
    tankTurn = tankTurn - 6.0;
  } else if ((levelNum == 1 || levelNum == 2) && (sceneNum == 6 || sceneNum == 7) && (keyCode == RIGHT || key == 'd') && tankNum == 3) {
    tankTurn = tankTurn + 6.0;
  }

  // Shooting
  if ((levelNum == 1 || levelNum == 2) && (gunNum == 1) && (key == ' ')) {
    cannonShot = true;
  }

  if ((levelNum == 1 || levelNum == 2) && (gunNum == 2) && (key == ' ')) {
    machineGunShot = true;
  }

  if ((levelNum == 1 || levelNum == 2) && (gunNum == 3) && (key == ' ')) {
    rocketShot = true;
  }

  // Cheat Level 1 & 2
  if ((levelNum == 1 || levelNum == 2) && key == 'p') {
    sceneNum = 11;
  }
  
  // Unlimited Cash
  if (key == 'u') {
    cash = 99999;
  }

  // Skip from level 1 to level 2
  if (levelNum == 1 && sceneNum == 6 && key == '2') {
    levelNum = 2;
    sceneNum = 7;
  }

  // Skip from level 2 to level 1
  if (levelNum == 2 && sceneNum == 7 && key == '1') {
    levelNum = 1;
    sceneNum = 6;
  }

  // Gun Unlock
  if (sceneNum == 0 && key == 'g') {
    gunBought1 = true;
    gunBought2 = true;
    gunBought3 = true;
  }  

  // Tank Unlock
  if (sceneNum == 5 && key == 't') {
    tankBoughtGrey = true;
    tankBoughtCamo = true;
    tankBoughtBrown = true;
  }  
} // end keyPressed
