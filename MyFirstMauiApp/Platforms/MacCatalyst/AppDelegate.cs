using Foundation;
using UserNotifications; // Required for handling notifications
using UIKit;

namespace MyFirstMauiApp
{
    [Register("AppDelegate")]
    public class AppDelegate : MauiUIApplicationDelegate
    {
        protected override MauiApp CreateMauiApp() => MauiProgram.CreateMauiApp();

        public override bool FinishedLaunching(UIApplication app, NSDictionary options)
        {
            // Set the delegate for notifications
            UNUserNotificationCenter.Current.Delegate = new NotificationDelegate();

            // Request notification permissions
            RequestNotificationPermissions();

            return base.FinishedLaunching(app, options);
        }

        private void RequestNotificationPermissions()
        {
            // Request permission to display notifications
            UNUserNotificationCenter.Current.RequestAuthorization(
                UNAuthorizationOptions.Alert | UNAuthorizationOptions.Badge | UNAuthorizationOptions.Sound,
                (approved, err) => {
                    if (approved)
                    {
                        // Notifications approved, you can register for remote notifications if needed
                        InvokeOnMainThread(UIApplication.SharedApplication.RegisterForRemoteNotifications);
                    }
                    else
                    {
                        // Handle the case where notifications are not approved
                        Console.WriteLine("Notification permission denied.");
                    }
                });
        }
    }

    // Notification Delegate to handle notifications when app is in the foreground
    public class NotificationDelegate : UNUserNotificationCenterDelegate
    {
        // Called when a notification is delivered to a foreground app.
        public override void WillPresentNotification(UNUserNotificationCenter center, UNNotification notification, Action<UNNotificationPresentationOptions> completionHandler)
        {
            // Show the notification even when the app is in the foreground
            completionHandler(UNNotificationPresentationOptions.Alert | UNNotificationPresentationOptions.Sound | UNNotificationPresentationOptions.Badge);
        }

        // Optionally, you can handle what happens when a user taps on a notification while the app is in the background
        public override void DidReceiveNotificationResponse(UNUserNotificationCenter center, UNNotificationResponse response, Action completionHandler)
        {
            Console.WriteLine($"Notification received: {response.Notification.Request.Content.Body}");
            completionHandler();
        }
    }
}
