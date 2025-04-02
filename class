enum Sexe { femelle, male }

class Foret {
  List<Animal> animaux = [];

  void addAnimal({required Animal animal}) {
    animaux.add(animal);
  }
  
  void chanterDansLaForet(){
    for(var animal in animaux){
      if(animal is Crie){
        print((animal as Crie).chant());
      }
    }
  }

  String toString() {
    return animaux.join('\n');
  }
}

abstract class Animal {
  final String _n;
  final Sexe _s;

  Animal(this._n, this._s);

  String toString() {
    var o = runtimeType;
    return "$_n ($o $_s)";
  }
}

abstract class Crie {
  String chant();
}

class Mammifere extends Animal {
  Mammifere({required String n, required Sexe s}) : super(n, s);

  String toString() {
    String texte = super.toString();
    return "$texte-> Mammfère";
  }
}

class Insecte extends Animal {
  Insecte({required String n, required Sexe s}) : super(n, s);

  String toString() {
    String texte = super.toString();
    return "$texte-> Insecte";
  }
}

class Chat extends Mammifere implements Crie {
  Chat({required String n, required Sexe s}) : super(n: n, s: s);

  @override
  String chant() {
    return '$_n fait miaou';
  }
}

class Chenille extends Insecte {
  Chenille({required String n, required Sexe s}) : super(n: n, s: s);
}

class Cigale extends Insecte implements Crie {
  Cigale({required String n, required Sexe s}) : super(n: n, s: s);
  String chant() {
    return '$_n fait Ksss';
  }
}

class Girafe extends Mammifere {
  Girafe({required String n, required Sexe s}) : super(n: n, s: s);
}

class Hyene extends Mammifere implements Crie {
  Hyene({required String n, required Sexe s}) : super(n: n, s: s);
  String chant() {
    return '$_n fait hihihi';
  }
}

void main() {
  Foret f = Foret();
  f.addAnimal(animal: Chat(n: "Minine", s: Sexe.femelle));
  f.addAnimal(animal: Chenille(n: "Louise", s: Sexe.male));
  f.addAnimal(animal: Cigale(n: "Chante", s: Sexe.femelle));
  f.addAnimal(animal: Girafe(n: "Grande", s: Sexe.male));
  f.addAnimal(animal: Hyene(n: "Hirene", s: Sexe.femelle));
  f.addAnimal(animal: Chat(n: "Manchat", s: Sexe.male));
  f.addAnimal(animal: Cigale(n: "Aude", s: Sexe.femelle));
  f.addAnimal(animal: Chenille(n: "Corinne", s: Sexe.femelle));
  print(f);
  
  f.chanterDansLaForet();
}
