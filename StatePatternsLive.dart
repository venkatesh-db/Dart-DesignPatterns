abstract class StatelessWidget {
  void uistate(BuildContext ref);
}

class Wui implements StatelessWidget {
  void uistate(BuildContext ref) {
    ref.dart = Mui();
      print("Wui");
  }
}

class Mui implements StatelessWidget {
  void uistate(BuildContext ref) {
    ref.dart = Wui();

    print("mui");
  }
}

class BuildContext {

  StatelessWidget dart; // refernce to widget

  BuildContext(this.dart);

  void renderui() {
    dart.uistate(this);
    print("Libarray");
     dart.uistate(this);
    
  }
}

void main() {
  var developer = BuildContext(Mui());

  // developer : dart abstract class object

  developer.renderui();
}
