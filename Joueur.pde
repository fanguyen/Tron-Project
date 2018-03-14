class Joueur {
  String nom;
  Joueur() {
    nom = "vert";
  }
  Joueur(String nom) {
    this.nom = nom;
  }
  float position_x;
  float position_y;
  color couleur;
  float dimension;
  float dep_x = 0;
  float dep_y = -5;

  Joueur(float position_x, float position_y, color couleur, float dimension) {
    this.position_x =  position_x;
    this.position_y = position_y;
    this.couleur = couleur;
    this.dimension = dimension;
  }
}