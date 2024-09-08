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
