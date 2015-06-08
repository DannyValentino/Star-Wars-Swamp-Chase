class ShapeFactory {
  PShape basicCadet;
  PShape basicEnemy;

  ShapeFactory() {
    buildbasicEnemy();
    buildbasicCadet();
  }
  PShape getbasicCadet() {
    return basicCadet;
  }

  PShape getbasicEnemy() {
    return basicEnemy;
  }
  void buildbasicCadet() {
    basicCadet = createShape(GROUP);
    PShape Speeder = createShape();
    Speeder.beginShape();
    Speeder.vertex(-30, -40);
    Speeder.vertex(-30, -10);
    Speeder.vertex(-10, -40); 
    Speeder.vertex(0, -80);
    Speeder.vertex(10, -40);
    Speeder.vertex(30, -10);
    Speeder.vertex(30, -40);
    Speeder.vertex(30, -10);
    Speeder.vertex(0, -30);
    Speeder.vertex(-30, -10);
    Speeder.endShape();
    PShape Cockpit = createShape();
    Cockpit.beginShape();
    Cockpit.vertex(8, -50);
    Cockpit.vertex(-8, -50);
    Cockpit.vertex(0, -30);
    Cockpit.vertex(8, -50);
    Cockpit.endShape();
    basicCadet.addChild(Speeder);
    basicCadet.addChild(Cockpit);
  }
  void buildbasicEnemy() {
    basicEnemy = createShape(GROUP);
    PShape Speeder = createShape();
    Speeder.beginShape();
    Speeder.fill(255, 0, 0);
    Speeder.vertex(-20, -10);
    Speeder.vertex(-20, 10);
    Speeder.vertex(20, 10);
    Speeder.vertex(20, -10);
    basicEnemy.addChild(Speeder);
    Speeder.endShape();
    PShape Cockpit = createShape(ELLIPSE, -10, -15, 20, 30);
  }
}

