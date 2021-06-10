PFont miTipografia, miTipografia2;
String MiTexto = ("Mi texto");
String MiTexto2 = ("Mi texto2");
int posY;
int pantalla = 0;
color colorFondo = (0);
PImage miImagen, miImagen2, miImagen3;

/*
AND : && 
 OR : ||
 */
void setup() {
  size(350, 470);
  posY  = height;
  miTipografia = loadFont("Constantia-BoldItalic-40.vlw");
  miTipografia2 = loadFont("Cambria-BoldItalic-25.vlw");
  miImagen = loadImage("img1.jpg");
  miImagen2 = loadImage("img2.jpg");
  miImagen3 = loadImage("img3.jpg");
}
void draw() {
  background(colorFondo);
  
  if (posY >= 0 && pantalla < 5) {
    posY--;
  } else {
    posY = height;
  }
  if (posY == 0) {
    pantalla++;

  }
  if (pantalla == 0) {
  image(miImagen, 0, 0, width, height);
  fill(255, 255, 0);
  textFont(miTipografia);
  text(MiTexto, width/2, posY);
  MiTexto = "PULGARCITO";
  textAlign(CENTER,TOP);
  
  fill(255, 255, 0);
  textFont(miTipografia2);
  text(MiTexto2, 40, posY);
  MiTexto2 = "\n\n\n\n\n\n\n\n\n\n\n\n\n\nCharles\nPerrault";
  text(MiTexto2, 290, posY);
  MiTexto2 = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n1967";
  
  colorFondo = color(0,0,0);
  
  }
  if (pantalla == 1) {
    
  image(miImagen, 20, 200 + posY, 120, 150);
  
  fill(255, 255, 0);
  textFont(miTipografia);
  text(MiTexto, width/2, posY);
  MiTexto = "CREDITOS:";
 
  fill(255, 0, 0);
  textFont(miTipografia2);
  text(MiTexto2, 200, posY);
  MiTexto2 = "\n\nPERSONAJES\nPRINCIPALES";
  text(MiTexto2, width/2, posY);
  MiTexto2 = "\n\n\n\n\n\nPulgarcito\n\nEl Ogro\n\nLa Ogra\n\nHermanos de\nPulgarcito"; 
  
  colorFondo = color(0,0,0);    
  }
  
  else if (pantalla == 2) {

  image(miImagen2, 20, 150 + posY, 120, 150);
  
  fill(255, 0, 0);
  textFont(miTipografia2);
  text(MiTexto2, 200, posY);
  MiTexto2 = "PERSONAJES\nSECUNDARIOS";
  text(MiTexto2, width/2, posY);
  MiTexto2 = "\n\n\n\nPadre de\nPulgarcito\n\nMadre de\nPulgarcito\n\nLa Ogra\n\nHijas del\nOgro"; 
  
  colorFondo = color(0,0,0);
}
  else if (pantalla == 3) {
  
  fill(255, 0, 0);
  textFont(miTipografia2);
  text(MiTexto2, width/2, posY);
  MiTexto2 = "MUSICALIZACIÓN\n\nHijas del Ogro\n\nLa Ogra\n\nIDEA Y GUIÓN\n\nPulgarcito\n\nPROGAMADOR\n\nEl Ogro";
  
  colorFondo = color(0,0,0);
}
  else if (pantalla == 4) {
  
  image(miImagen3, 120, 100 + posY, 100, 100);  
    
  fill(255, 0, 0);
  textFont(miTipografia2);
  text(MiTexto2, width/2, posY);
  MiTexto2 = "PRODUCCIÓN\n\nCharles Perrault\n\n\n\n\n\nDIRECCIÓN\n\nBarros Andres";
  
  colorFondo = color(0,0,0);
}
 else if (pantalla == 5) {
  
  fill(255, 0, 0);
  textFont(miTipografia2);
  text(MiTexto2, width/2, 120);
  MiTexto2 = "REINICIAR";
  
  stroke(255);
  noFill();
  rect(100, 200, 150, 150);
  
  
} 
 println("PosY: ", posY);
println("Pantalla: ", pantalla);
}
void mouseClicked() {
  
  if (pantalla==5) {
    if (mouseX>100 && mouseX<320 && mouseY>200 && mouseY<350) {
      pantalla=0;
    }
    }
 }
