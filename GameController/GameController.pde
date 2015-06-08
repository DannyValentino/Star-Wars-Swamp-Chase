final int screenWidth = 800;
final int screenHeight = 600;
ShapeFactory factory;
PShape enemy;
PShape Cadet;
void setup() {
  size(screenWidth, screenHeight, P2D);
  factory = new ShapeFactory();
  enemy = factory.getbasicEnemy();
  Cadet = factory.getbasicCadet();
  noCursor();
}

void draw() {
  background(0);
  shape(Cadet, mouseX, mouseY);
  shape(enemy, 100, 100);
}


