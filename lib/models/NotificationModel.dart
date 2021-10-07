class NotificationModel {
  final String peopleProfilePic;
  final String peopleName;
  final String? postDescription;
  final String? subPostDescription;

  NotificationModel(
      {required this.peopleProfilePic,
      required this.peopleName,
      this.postDescription,
      this.subPostDescription});
}
