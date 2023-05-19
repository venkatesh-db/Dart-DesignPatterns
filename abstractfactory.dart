abstract class drinkabale {
  void pour();
}

class beer implements drinkabale {
  void pour() {
    print("drink unlimited");
  }
}

class cofee implements drinkabale {
  void pour() {}
}

abstract class drinkfact {
  drinkabale createdrink();
}

class pub implements drinkfact {
  drinkabale createdrink() {
    return beer();
  }
}

class cs implements drinkfact {
  drinkabale createdrink() {
    return cofee();
  }
}

void main() {
  drinkfact p = pub();

  var res = p.createdrink();

  res.pour();

  print(res);
}
