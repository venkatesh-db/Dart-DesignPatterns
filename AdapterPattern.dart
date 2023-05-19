class Login {
  repositry ref;

  Login(this.ref);

  void signup() {
    print("login");

    ref.buynow();
  }
}

abstract class repositry {
  void buynow();
}

class Order implements repositry {
  void buynow() {
    print("buy now");
  }
}

void main() {
  var customer = Login(Order());
  customer.signup();
}
