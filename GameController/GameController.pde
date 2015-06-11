
ArrayList<Sprite> sprites = new ArrayList<Sprite>();
ArrayList<Sprite> enemies = new ArrayList<Sprite>();
HostileSprite Cadet;

final int screenWidth = 800;
final int screenHeight = 600;
final int CadetsTeam = 1;
final int enemiesTeam = 2;
int CadetSpeedLimit = 8;
boolean[] keys = new boolean[3];
ShapeFactory factory;
PShape enemy;


void setup() {
  size(screenWidth, screenHeight, P2D);
  factory = new ShapeFactory();
  enemy = factory.getBasicEnemy();
  Cadet = spawnCadet();
  noCursor();
  sprites.add(Cadet);
}

void draw() {
  background(0, 0, 90);
  controlPlayer(); 
  for (int i = 0; i < sprites.size (); i++) {
    sprites.get(i).updateAndDisplay();
  }
}

HostileSprite spawnCadet() {
  PVector startingPosition = new PVector(0.5 * width, 0.85 * height);
  PVector initialVelocity = new PVector(0, 0);
  PShape graphic = factory.getBasicCadet();
  int radius = 40;
  return new HostileSprite(CadetsTeam, radius, graphic, startingPosition, initialVelocity);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT)
      keys[0] = true; //LEFT
    if (keyCode == RIGHT)
      keys[1] = true; //RIGHT
  }
  if (key == ' ' || key == ' ')
    keys[2] = true;
}
void keyReleased() {
  if (key == CODED) {
    if (keyCode == LEFT)
      keys[0] = false; //LEFT
    if (keyCode == RIGHT)
      keys[1] = false; //RIGHT
  }
  if (key == ' ' || key == ' ')
    keys[2] = false;
}

void controlPlayer() {
  if (keys[2]) {
    Cadet.fire(new PVector(0, -10));
  }
  if (keys[0]) {
    if (isLeftBound(Cadet))
      Cadet.position.x = 2 * Cadet.radius;
    else
      Cadet.position.x -= CadetSpeedLimit;
  }
  if (keys[1]) {
    if (isRightBound(Cadet)) {
      Cadet.position.x = width - 2 * Cadet.radius;
    } else {
      Cadet.position.x -= CadetSpeedLimit;
    }
  }
}



boolean isLeftBound(AbstractSprite sprite) {
  int leftBoundary = 2 * sprite.radius;
  if (sprite.position.x <= leftBoundary)
    return true;
  else
    return false;
}

boolean isRightBound(AbstractSprite sprite) {
  int rightBoundary = width - 2 * sprite.radius;
  if (sprite.position.x >= rightBoundary)
    return true;
  else
    return false;
}

