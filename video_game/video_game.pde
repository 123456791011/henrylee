final int screenWidth = 800;
final int sreenHeight = 600;
ShapeFactory factory;
PShape space_pod;
PShape enemy;

void setup() {
  size(screenWidth, screenHeght, P2D);
  factory = new ShapeFactory();
  enemy = factory.getBasicEnemy();
  space_pod = factory.getBasicPlayer();
  noCursor();
}

void draw() {
  background(25);
  shape(space_pod, mouseX, mouseY);
  shape(enemy, 100, 100);
}
