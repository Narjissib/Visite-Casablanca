
class UserModel{
final String Prenom;
final String Nom;
final String Num_telephone;
final String Adresse;

const UserModel({
required this.Prenom,
required this.Nom,
required this.Num_telephone,
required this.Adresse,
});
toJson(){
  return{
    "Prenom":Prenom,
    "Nom":Nom,
    "Num_telephone":Num_telephone,
    "Adresse":Adresse,

  };
}
}