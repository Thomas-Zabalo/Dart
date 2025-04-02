enum Sexe { femelle, male }

class Foret {
  List<Animal> animaux = [];

  void addAnimal({required Animal animal}) {
    animaux.add(animal);
  }

  String toString() {
    return animaux.map((animal) => animal.toString());
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

class Mammifere extends Animal {
  Mammifere({required String n, required Sexe s}) : super(n, s) {}

  String toString() {
    return "-> Mammfère";
  }
}

class Insecte extends Animal {
  Insecte({required String n, required Sexe s}) : super(n, s) {}

  String toString() {
    return "-> Insecte";
  }
}

class Chat extends Mammifere {
  Chat({required String n, required Sexe s}) : super(n: n, s: s) {}
}

void main() {
  Foret f = Foret();
  f.addAnimal(animal: Chat(n: "Minine", s: Sexe.femelle));
  print(f);
}
