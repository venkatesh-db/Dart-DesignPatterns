class database {
  String name = "";
  String dob = "";

  database(String s, String t);
}

class ui {
  api ref;
  ui(this.ref);

  void backend(database db) {
    print("ui");
    ref.jsonapi(db);
  }
}

class api {
  var array = {};

  void jsonapi(database db) {
    array.addEntries(db);
    print(array.values);
  }

  static api instance() {
    return api();
  }
}

void main() {
  api ret = api.instance();
  var venkatesh = ui(ret);
  venkatesh.backend(database("venkatesh", "2-6-1992"));
}
