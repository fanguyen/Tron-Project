Joueur bleu = new Joueur (450, 400, color(0, 0, 255), 10);
Joueur rouge = new Joueur (550, 400, color(255, 0, 0), 10);

int valr=0;
char valb;
char z='z';
char q='q';
char s='s';
char d='d';

void setup() {
  size(1000, 800);
  background(0);
}

boolean collision(Joueur joueur) {
  float x = joueur.position_x+joueur.dep_x;
  float y = joueur.position_y+joueur.dep_y;
  if (get((int)x, (int)y)!= color(0)) {
    return true;
  }
  return false;
}

void draw() {
  keyPressed();
  deplacer_joueur(rouge);
  if ( collision(rouge) != true) {
    dessiner_joueur(rouge);
  } else {
    fill(255, 0, 0);
    textSize(100);
    text("GAME OVER", 200, 400);
    noLoop();
  }

  deplacer_joueur(bleu);
  if (collision(bleu) != true) {
    dessiner_joueur(bleu);
  } else {
    fill(0, 0, 255);
    textSize(100);
    text("GAME OVER", 200, 400);
    noLoop();
  }
}

void dessiner_joueur(Joueur joueur) {
  fill(joueur.couleur);
  noStroke();
  rect(joueur.position_x, joueur.position_y, joueur.dimension, joueur.dimension);
}
void deplacer_joueur(Joueur joueur) {
  joueur.position_x+= joueur.dep_x;
  joueur.position_y+= joueur.dep_y;
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP && DOWN!=valr ) {
      rouge.dep_x = 0;
      rouge.dep_y = -5;
      valr= keyCode;
    }  
    if (keyCode == DOWN && UP!=valr) {
      rouge.dep_x = 0;
      rouge.dep_y = 5;
      valr = keyCode;
    } 
    if (keyCode == RIGHT && LEFT!=valr) {
      rouge.dep_x = 5;
      rouge.dep_y = 0;
      valr = keyCode;
    } 
    if (keyCode == LEFT && RIGHT!=valr) {
      rouge.dep_x = -5;
      rouge.dep_y = 0;
      valr = keyCode;
    }
  }

  if (key == z && valb != s) {
    bleu.dep_x =0;
    bleu.dep_y =-5;
    valb= key;
  }
  if  (key == q && valb != d) {
    bleu.dep_x = -5;
    bleu.dep_y = 0;
    valb= key;
  }
  if (key == s && valb != z) {
    bleu.dep_x = 0;
    bleu.dep_y = 5;
    valb= key;
  }
  if (key == d && valb != q) {
    bleu.dep_x = 5;
    bleu.dep_y = 0;
    valb= key;
  }
}