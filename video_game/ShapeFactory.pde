class ShapeFactory {

  PShape basicBullet;
  PShape basicPlayer;
  PShape basicEnemy;
  PShape space_pod;

  //the constructor - very important!
  ShapeFactory() {
    buildBasicBullet();
    buildBasicPlayer();
    buildBasicEnemy();
  }

  PShape getBasicBullet() { 
    return basicBullet;
  }
  PShape getBasicPlayer() { 
    return space_pod;
  }
  PShape getBasicEnemy() { 
    return basicEnemy;
  }

  void buildBasicBullet() {
    //your code goes here
  }

  void buildBasicPlayer() {
    space_pod = createShape(GROUP);
    PShape chassis = createShape();
    chassis.beginShape();
    chassis.vertex(0, -100);
    chassis.vertex(10, -40);
    chassis.vertex(10, -90);
    chassis.vertex(20, -90);
    chassis.vertex(20, -40);
    chassis.vertex(60, 30);
    chassis.vertex(60, 10);
    chassis.vertex(70, 10);
    chassis.vertex(70, 30);
    chassis.vertex(20, 30);
    chassis.vertex(20, 50);
    chassis.vertex(15, 6);
    chassis.vertex(10, 50);
    chassis.vertex(0, 70);
    chassis.vertex(-10, 50);
    chassis.vertex(-15, 6);
    chassis.vertex(-20, 50);
    chassis.vertex(-20, 30);
    chassis.vertex(-60, 30);
    chassis.vertex(-70, 30);
    chassis.vertex(-70, 10);
    chassis.vertex(-60, 10);
    chassis.vertex(-60, 30);
    chassis.vertex(-20, -40);
    chassis.vertex(-20, -90);
    chassis.vertex(-10, -90);
    chassis.vertex(-10, -40);
    chassis.vertex(0, -100);
    chassis.endShape();
    PShape orb1 = createShape(ELLIPSE, -10, -15, 20, 30);
    space_pod.addChild(chassis);
    space_pod.addChild(orb1);
  }

  void buildBasicEnemy() {
    enemy = createShape(ELLIPSE,10, 25, -10, -25);
  }
}




