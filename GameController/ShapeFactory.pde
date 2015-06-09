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
    Speeder.fill(152,152,152);
    Speeder.vertex(10,-60);
    Speeder.vertex(-10,-60);
    Speeder.vertex(-10,-75);
    Speeder.vertex(-20,-75);
    Speeder.vertex(-20,-60);
    Speeder.vertex(-30,-60);
    Speeder.vertex(0,50);
    Speeder.vertex(30,-60);
    Speeder.vertex(20,-60);
    Speeder.vertex(20,-75);
    Speeder.vertex(10,-75);
    Speeder.vertex(10,-60);
    PShape Cockpit = createShape();
    Cockpit.beginShape();
    Cockpit.fill(112,112,112);
    Cockpit.vertex(5,-60);
    Cockpit.vertex(5,-50);
    Cockpit.vertex(15,-50);
    Cockpit.vertex(15,-40);
    Cockpit.vertex(-15,-40);
    Cockpit.vertex(-15,-50);
    Cockpit.vertex(-5,-50);
    Cockpit.vertex(-5,-60);
    Cockpit.endShape();
    basicEnemy.addChild(Speeder);
    basicEnemy.addChild(Cockpit);
    Speeder.endShape();
  
  }
}

