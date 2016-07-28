import controlP5.*;
ControlP5 cp5;

Crono reloj = new Crono();

public void setup() {
  size(400,800,JAVA2D);
  noStroke();
  cp5 = new ControlP5(this);
  cp5.addButton("Reinicio")
    .setSize(70,20)
    .setPosition(width/2,150)
  ;
}

public void draw() {
  background(125);
  reloj.show(30,width/2,50);
}

public void Reinicio() {
  reloj = new Crono();
}