class ChatModel {
  String? name;
  String? icon;
  String? time;
  bool? isGroup;
  String? currentMessage;
  String? status;
  bool select = false;

  ChatModel(
      {this.name,
      this.icon,
      this.time,
      this.isGroup,
      this.currentMessage,
      this.status,
      this.select= false});
}
