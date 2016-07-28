class Crono {
  int dif,segMaq,seg,hr,min,dia;
  
  Crono(){
    dif=0;
    segMaq=0;
    seg=0;
    hr=0;
    min=0;
    dia=0;
  }
  
  String show(int letra, int x, int y) {
    String k="";
    textAlign(CENTER);
    textSize(letra);
    reloj.update();
    k = nf(this.horas(),2)+":"+nf(this.minutos(),2)+":"+nf(this.segundos(),2);
    text(k,x,y);
    return k;
  }
  
  void update() {
    dif = millis()/1000-segMaq;
    segMaq = millis()/1000;
    seg += dif;
    if(seg > 59) {
      seg -= 60;
      min++;
      if(min > 59) {
        hr++;
        min=0;
        if(hr > 24) {
          dia++;
          hr=0;
        }
      }
    }
  }
  
  int segundos() {
     return this.seg;
  }
  
  int minutos() {
    return this.min;
  }
  
  int horas() {
    return this.hr;
  }
  
  int dias() {
    return this.dia;
  }
}