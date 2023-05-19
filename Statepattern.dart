abstract class State {
  void handler(Stateful cont);
  String tostring();
}

class Statuson implements State {
  void handler(Stateful cont) {
    print("  Handler of StatusOn is being called!");
    cont._venkat = Statusoff();
  }

  String tostring() {
    return "on";
  }
}

class Statusoff implements State {
  void handler(Stateful cont) {
    print("  Handler of StatusOff is being called!");
    cont._venkat = Statuson();
  }

  String tostring() {
    return "off";
  }
}

class Stateful {
  State _venkat;

  Stateful(this._venkat);

  State get happy => _venkat;

  set urs(State p) => _venkat = p;

  void touch() {
    _venkat.handler(this);
  }
}

void main() {
  var jvt = Stateful(Statusoff());

  jvt.touch();
}
