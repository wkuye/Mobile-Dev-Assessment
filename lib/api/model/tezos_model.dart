class Tezos {
  final String hash;
  final String time;
  final int level;
  final int reward;
  final int fees;

  final int bonus;

  Tezos(
      {required this.hash,
      required this.time,
      required this.level,
      required this.reward,
      required this.fees,
      required this.bonus});

  factory Tezos.fromJson(Map<String, dynamic> json) {
    return Tezos(
        hash: json['hash'],
        time: json['timestamp'],
        level: json['level'],
        reward: json['reward'],
        fees: json['fees'],
        bonus: json['bonus']);
  }
}
