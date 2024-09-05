using UserNotifications;

namespace MyFirstMauiApp.Platforms.iOS
{
    public class NotificationDelegate : UNUserNotificationCenterDelegate
    {
        // Called when a notification is delivered while the app is in the foreground
        public override void WillPresentNotification(UNUserNotificationCenter center, UNNotification notification, Action<UNNotificationPresentationOptions> completionHandler)
        {
            // Show the notification as an alert even when the app is in the foreground
            completionHandler(UNNotificationPresentationOptions.Alert | UNNotificationPresentationOptions.Sound);
        }

        // Called when the user taps on the notification
        public override void DidReceiveNotificationResponse(UNUserNotificationCenter center, UNNotificationResponse response, Action completionHandler)
        {
            // Handle the notification tap action
            var title = response.Notification.Request.Content.Title;
            var message = response.Notification.Request.Content.Body;
            Console.WriteLine($"Notification tapped with title: {title} and message: {message}");
            completionHandler();
        }
    }
}
