class Account {
  String name;
  String email;
  String password;

  Account(this.name, this.email, this.password);

  static Account create({name = String, email = String, password = String}) {
    return Account(name, email, password);
  }
}
