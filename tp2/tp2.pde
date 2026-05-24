 

 
 
PImage ben101, ben102, ben103, ben104, ben105;
int segundos= 0;
int estado= 0;

int posX2, posX3, posX4, posX5, posX6;

int px, py, ancho, alto;
int posX = 200;

boolean inicio, reinicio;

PFont mifuente;

void setup() {

  size(640, 480);
  textAlign(CENTER, CENTER);

  mifuente = loadFont("mifuente.vlw");
  textFont(mifuente, 20);

  posX2 = 1100;
  posX3 = -200;
  posX4 = 1100;
  posX5 = -200;
  posX6 = 1100;

  px = 420;
  py = 420;
  ancho = 200;
  alto = 50;

  ben101 = loadImage("alien1.jpg");
  ben102 = loadImage("alien2.jpeg");
  ben103 = loadImage("alien3.jpeg");
  ben104 = loadImage("alien4.jpg");
  ben105 = loadImage("alien5.jpg");
}

void draw() {

  if (inicio == true) {

    if (frameCount%60==0) {
      segundos ++;
    }
  }

  cambiarEstados();

  if (estado==0) {
    pantalla1();
  }

  if (estado==1) {
    pantalla2();
  }

  if (estado==2) {
    pantalla3();
  }

  if (estado==3) {
    pantalla4();
  }

  if (estado==4) {
    pantalla5();
  }

  if (segundos>40) {
    botonReinicio();
  }
}

void pantalla1() {

  image(ben101, 0, 0, 640, 480);

  if (segundos<= 0) {

    fill(0);
    rect(px, py, ancho, alto);

    fill(250);
    textSize(15);
    text("INICIAR", 520, 445);

  } else if ( segundos>0 && segundos<= 8) {

    fill(0,0,255);

    text("la historia sigue a ben\n cuando descubre que unos alienigenas  \nllamados nanochips\nestan controlando personas y maquinas", posX2, height/2);
  }

  if (posX2>width/2) {
    posX2 = posX2 -3;
  }
}

void pantalla2() {

  image(ben102, 0, 0, 640, 480);

  fill(0,0,255);

  text("Estos bichitos pueden meterse  \nen el cuerpo de la gente  \n y manejarla como si fueran robots \n ", width/2, posX3);

  if (posX3 < height/2) {
    posX3 = posX3 +2;
  }
}

void pantalla3() {

  image(ben103, 0, 0, 640, 480 );

  fill(0,0,255);

  text("Todo empieza cuando Ben conoce a una chica \nllamada Elena, que le pide ayuda porque su padre \n porque su padre desapareció investigando esa amenaza. \n ", posX4, height/2);

  if (posX4>-1000) {
    posX4 = posX4 -2;
  }
}

void pantalla4() {

  image(ben104, 0, 0, 640, 480);

  fill(255,0,0);

  text("Entonces Ben Gwen y Kevin empiezan a investigar qué está pasando \ny descubren que los nanochips están expandiéndose rápidamente y podrían invadir todo el planeta", width/2, posX5);

  if (posX5 < height/2) {
    posX5 = posX5 +2;
  }
}

void pantalla5() {

  image(ben105, 0, 0, 640, 480);

  fill(0,255,0);

  text("Mientras avanzan, Ben tiene que usar distintos aliens del Omnitrix  \npara pelear contra criaturas controladas y detener la invasión antes de que sea demasiado tarde.", posX6, height/2);

  if (posX6>-1000) {
    posX6 = posX6 -2;
  }
}

void cambiarEstados() {

  if (segundos<=8) {

    estado = 0;

    if (segundos<=0) {

      if (mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto) {
        fill(0, 0, 0, 200);

      } else {
        fill(0, 0, 0, 100);
      }
    }

  } else if (segundos>8 && segundos<=16) {

    estado = 1;

  } else if (segundos>16 && segundos<=24) {

    estado = 2;

  } else if (segundos>24 && segundos<=32) {

    estado = 3;

  } else if (segundos>32 && segundos<=40) {

    estado = 4;
  }
}

void botonReinicio() {

  fill(255);
  rect(px, py, ancho, alto);

  fill(0);

  textSize(32);
  text("REINICIO", 520, 445 );
}

void mousePressed() {

  if (mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto) {

    inicio = true;

    if (segundos>40) {

      segundos = 0;

      posX2 = 1100;
      posX3 = -200;
      posX4 = 1100;
      posX5 = -200;
      posX6 = 1100;
    }
  }
}
