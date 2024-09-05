using Android.OS;
using Android.App;
using Android.Content;
using Android.Content.PM;
using MyFirstMauiApp.Services;
using MyFirstMauiApp.Platforms.Android;



namespace MyFirstMauiApp;

[Activity(Theme = "@style/Maui.SplashTheme", MainLauncher = true, LaunchMode = LaunchMode.SingleTop, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize | ConfigChanges.Density)]
public class MainActivity : MauiAppCompatActivity
{
    protected override void OnCreate(Bundle savedInstanceState)
    {
        base.OnCreate(savedInstanceState);
        
        // Request notification permissions for Android 13+
        RequestNotificationPermission();

        // Initialize notification channel for Android O+
        NotificationManagerService.CreateNotificationChannel(this);

        // Handle notification if app is launched via a notification
        CreateNotificationFromIntent(Intent);
    }

    protected override void OnNewIntent(Intent intent)
    {
        base.OnNewIntent(intent);
        // Handle notification when the app is already running
        CreateNotificationFromIntent(intent);
    }

    private void CreateNotificationFromIntent(Intent? intent)
    {
        if (intent?.Extras != null)
        {
            string title = intent.GetStringExtra("title_key");
            string message = intent.GetStringExtra("message_key");
            // Handle the notification intent (e.g., show message or navigate to specific page)
        }
    }

    private async void RequestNotificationPermission()
    {
        PermissionStatus status = await Permissions.RequestAsync<NotificationPermission>();
        if (status != PermissionStatus.Granted)
        {
            // Handle permission denied case
            Console.WriteLine("Notification permission denied.");
        }
    }
}
