using UIKit;
using Foundation;
using UserNotifications;
using MyFirstMauiApp.Platforms.iOS; 


namespace MyFirstMauiApp;

[Register("AppDelegate")]
public class AppDelegate : MauiUIApplicationDelegate
{
    protected override MauiApp CreateMauiApp() => MauiProgram.CreateMauiApp();

    public override bool FinishedLaunching(UIApplication application, NSDictionary launchOptions)
    {
        // Request notification permissions
        RequestNotificationPermission();
        return base.FinishedLaunching(application, launchOptions);
    }

    private void RequestNotificationPermission()
    {
        // Request permission for alerts, badges, and sounds
        UNUserNotificationCenter.Current.RequestAuthorization(UNAuthorizationOptions.Alert | UNAuthorizationOptions.Badge | UNAuthorizationOptions.Sound, (approved, err) =>
        {
            if (!approved)
            {
                Console.WriteLine("Notification permission denied.");
            }
        });

        // Set the notification delegate
        UNUserNotificationCenter.Current.Delegate = new NotificationDelegate();
    }
}
