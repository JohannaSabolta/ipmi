// Johanna Sabolta
// Comisióm 1
// Legajo 119137/0

PImage boton, boom, imag1, imag2, imag3, imag4, imag5, imagTitulo;
int estado = 0;  
int startTime; 
PFont fuente,fuenteGrafitti;
boolean reiniciarPresionado = false;

void setup() {
  size(640, 480);
  boton = loadImage("boton.jpg");
  boom = loadImage("boom.jpg");
  imag1 = loadImage("imag1.jpg");
  imag2 = loadImage("imag2.jpg");
  imag3 = loadImage("imag3.png");
  imag4 = loadImage("imag4.jpg");
  imag5 = loadImage("imag5.png");
  imagTitulo = loadImage("imagTitulo.jpg");
  fuente = createFont("Arcane.otf", 32);
  fuenteGrafitti = createFont("Painterz.ttf", 32);
  
}

void draw() {
  background(0);  
  
  switch (estado) {
    case 0: 
    image(boton, width - 201, height - 210, 200, 200);
     fill(145, 89, 255);
     textFont(fuenteGrafitti);
     textSize(30);
     textAlign(RIGHT, BOTTOM); 
     text("tocame", width - 50, height - 20); 
    break;
      
    case 1:
      image(boom, width - 220, height - 200, 250, 300);
      if (millis() - startTime > 500) {
        estado = 2;
        startTime = millis();
      }
      break;
      
    case 2:
      image(imag1, 0, 0, width, height);
      fill(255);
      textFont(fuente);
      textAlign(CENTER, CENTER);
      textSize(32);
      String texto = "RIOT GAMES presenta";
      int duracion = 2000;
      float alpha = map(min(millis() - startTime, duracion), 0, duracion, 0, 255);
      fill(255, alpha);
      text(texto, width/2, height/2);
      if (millis() - startTime > duracion) {
        estado = 3;
        startTime = millis();
      }
      break;
      
    case 3:
      image(imag2, 0, 0, width, height);
      fill(255);
      textFont(fuente);
      textSize(20);
      String texto1 = "Productores exclusivo";
      int duracion1 = 2000;
      float alpha1 = map(min(millis() - startTime, duracion1), 0, duracion1, 0, 255);
      fill(255, alpha1);
      text(texto1, 150, 300);
      if (millis() - startTime > duracion1) {
        String texto2 = "Christian Linke \n Marc Merrill \n Brandon Beck";
        int duracion2 = 500;
        float alpha2 = map(min(millis() - startTime - duracion1, duracion2), 0, duracion2, 0, 255);
        fill(255, alpha2);
        textSize(35);
        text(texto2,150,360);
        if (millis() - startTime > duracion1 + duracion2 + 2000) {
          estado = 4;
          startTime = millis();
        }
      }
      break;
      
    case 4:
      image(imag3, 0, 0, width, height);
      fill(255);
      textFont(fuente);
      textSize(20);
      String texto3 = "Escrito por \n \n \n Historia por";
      int duracion3 = 2000;
      float alpha3 = map(min(millis() - startTime, duracion3), 0, duracion3, 0, 255);
      fill(255, alpha3);
      textAlign(CENTER, CENTER);
      text(texto3, 320, 385);
      
      if (millis() - startTime > duracion3) {
        String texto4 = "Christian Linke  Alex Yee \n \n Christian Linke  Alex Yee  Conor Sheehy  Ash Brandon";
        int duracion4 = 500;
        float alpha4 = map(min(millis() - startTime - duracion3, duracion4), 0, duracion4, 0, 255);
        fill(255, alpha4);
        textAlign(CENTER, CENTER);
        textSize(28);
        text(texto4, 320, 410);
        
        if (millis() - startTime > duracion3 + duracion4 + 2000) {
          estado = 5;
          startTime = millis();
        }
      }
      break;
      
    case 5:
      image(imag4, 0, 0, width, height);
      fill(255);
      textFont(fuente);
      textSize(20);
      String texto5 = "Dirigido por";
      int duracion5 = 2000;
      float alpha5 = map(min(millis() - startTime, duracion5), 0, duracion5, 0, 255);
      fill(255, alpha5);
      textAlign(CENTER, CENTER);
      text(texto5, width/2, 375);
      
      if (millis() - startTime > duracion5) {
        String texto6 = "Pascal Charrue     Arnaud Delord";
        int duracion6 = 2000;
        float alpha6 = map(min(millis() - startTime - duracion5, duracion6), 0, duracion6, 0, 255);
        fill(255, alpha6);
        textAlign(CENTER, CENTER);
        textSize(28);
        text(texto6, width/2, 400);
        if (millis() - startTime > duracion5 + duracion6 + 2000) {
          estado = 6;
          startTime = millis();
        }
      }
      break;
      
     case 6:
      image(imag5, 0, 0, width, height);
      fill(255);
      textFont(fuente);
      textSize(20);
      String texto7 = "Canción de inicio 'Enemy' por";
      int duracion7 = 2000;
      float alpha7 = map(min(millis() - startTime, duracion7), 0, duracion7, 0, 255);
      fill(255, alpha7);
      textAlign(CENTER, CENTER);
      text(texto7, width/2, 100);

   if (millis() - startTime > duracion7) {
      String texto8 = "Imagine Dragons ft. JID";
      int duracion8 = 2000;
      float alpha8 = map(min(millis() - startTime - duracion7, duracion8), 0, duracion8, 0, 255);
      fill(255, alpha8);
      textAlign(CENTER, CENTER);
      textSize(30);
      text(texto8, width/2, 130);

    if (millis() - startTime > duracion7 + duracion8 + 1000) {
      String texto9 = "Canción original 'Playground' por";
      int duracion9 = 2000;
      float alpha9 = map(min(millis() - startTime - duracion7 - duracion8, duracion9), 0, duracion9, 0, 255);
      fill(255, alpha9);
      textAlign(CENTER, CENTER);
      textSize(20);
      text(texto9, width/2, 300);

      if (millis() - startTime > duracion7 + duracion8 + duracion9 + 1000) {
        String texto10 = "Bea Miller";
        int duracion10 = 2000;
        float alpha10 = map(min(millis() - startTime - duracion7 - duracion8 - duracion9, duracion10), 0, duracion10, 0, 255);
        fill(255, alpha10);
        textAlign(CENTER, CENTER);
        textSize(30);
        text(texto10, width/2, 330);

        if (millis() - startTime > duracion7 + duracion8 + duracion9 + duracion10 + 1000) {
          estado = 7;
          startTime = millis();
        }
      }
    }
  }
  break;

    case 7:
      image(imagTitulo, 0, 0, width, height);
      if (!reiniciarPresionado) {
        fill(100);
        rect(width - 200, height - 60, 180, 40);
        fill(255);
        textFont(fuente);
        textSize(20);
        textAlign(CENTER, CENTER);
        text("Reiniciar", width - 110, height - 40);
      }
      break;
  }
}

void mousePressed() {
  if (estado == 0 && mouseX > width - 201 && mouseX < width - 1 && mouseY > height - 210 && mouseY < height - 10) {
    estado = 1;
    startTime = millis();
  }
  
  if (estado == 7 && mouseX > width - 200 && mouseX < width - 20 && mouseY > height - 60 && mouseY < height - 20) {
    estado = 0;
    reiniciarPresionado = true;
  }
}
