class ShapeFactory {

  PShape basicBullet;
  PShape basicEnemy;
  PShape space_pod;
  
  int basicBulletRadius;
  int basicEnemyRadius;
  int basicspace_podRadius;

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
    basicBulletRadius = 20;
    basicBullet = createShape(ELLIPSE, -10, -10, 20, 20);
    basicBullet.setStroke(color(255));
    basicBullet.setStrokeWeight(4);
    basicBullet.setFill(color(127));
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
    basicEnemy = createShape(ELLIPSE,10, 25, -10, -25);
  }
}



