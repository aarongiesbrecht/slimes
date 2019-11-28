//basic class to hold a moves dmg value and name

class Move {

  final String _name;
  final int _damage;

  Move(this._name, this._damage);

  String get name {
    return this._name;
  }
  int get damage {
    return this._damage;
  }
}