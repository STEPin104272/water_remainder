Future<void> scheduleNotification(
    {notifs.FlutterLocalNotificationsPlugin notifsPlugin,
      String id,
      String title,
      String body,
      DateTime scheduledTime}) async {
  var notifs;
  var androidSpecifics = notifs.AndroidNotificationDetails(
    id, // This specifies the ID of the Notification
    'Scheduled notification', // This specifies the name of the notification channel
    'A scheduled notification', //This specifies the description of the channel
    icon: 'icon',
  );
  var iOSSpecifics = notifs.IOSNotificationDetails();
  var platformChannelSpecifics = notifs.NotificationDetails(
      androidSpecifics, iOSSpecifics);
  await notifsPlugin.schedule(10, title, "Scheduled notification",
      scheduledTime, platformChannelSpecifics); // This literally schedules the notification
}