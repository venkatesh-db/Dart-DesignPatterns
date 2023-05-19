class Adapter {
  String methods() {
    print("jvt tech");
    return "gold";
  }
}

abstract class target {
  String call();
}

class sales implements target {
  String call() {
    var adaptee = Adapter();
    print('Adapter#call is being called');
    return adaptee.methods();
  }
}

void main() {
  var have = sales();
  have.call();
}
