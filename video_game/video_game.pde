PShape space_pod;

void setup() {
  size(500,500,P2D);
  space_pod = createShape(GROUP);
  PShape chassis = createShape();
  chassis.beginShape();
  chassis.vertex(0,-100);
  chassis.vertex(10,-40);
  chassis.vertex(10,-90);
  chassis.vertex(20,-90);
  chassis.vertex(20,-40);
  chassis.vertex(60,30);
  chassis.vertex(60,10);
  chassis.vertex(70,10);
  chassis.vertex(70,30);
  chassis.vertex(20,30);
  chassis.vertex(20,50);
  chassis.vertex(15,6);
  chassis.vertex(10,50);
  chassis.vertex(0,70);
  chassis.vertex(-10,50);
  chassis.vertex(-15,6);
  chassis.vertex(-20,50);
  chassis.vertex(-20,30);
  chassis.vertex(-60,30);
  chassis.vertex(-70,30);
  chassis.vertex(-70,10);
  chassis.vertex(-60,10);
  chassis.vertex(-60,30);
  chassis.vertex(-20,-40);
  chassis.vertex(-20,-90);
  chassis.vertex(-10,-90);
  chassis.vertex(-10,-40);
  chassis.vertex(0,-100);
  chassis.endShape();
  PShape orb1 = createShape(ELLIPSE, -10, -15, 20, 30);
  space_pod.addChild(chassis);
  space_pod.addChild(orb1);
}

void draw() {
  background(0,0,50);
  shape(space_pod,mouseX,mouseY);
}
