class tx_Model {
  final String hash;
  final int time;
  final int size;
  final int block_index;

  final int received_time;

  tx_Model({required this.hash, required this.time, required this.block_index,  required this.received_time, required this.size});

  factory tx_Model.fromJson(Map<String, dynamic> json) {
    return tx_Model(hash: json['hash'], time: json['time'], block_index: json['block_index'], received_time: json['time'], size: json['size']);
  }
}
