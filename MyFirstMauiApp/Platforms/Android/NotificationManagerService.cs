using Android.App;
using Android.Content;
using Android.OS; // Required for BuildVersionCodes
using AndroidX.Core.App;

namespace MyFirstMauiApp.Services
{
    public class NotificationManagerService
    {
        const string CHANNEL_ID = "default_channel_id";
        const int NOTIFY_ID = 1000;

        public static void CreateNotificationChannel(Context context)
        {
            // Check if the Android version is Oreo or higher (API level 26+)
            if (Build.VERSION.SdkInt >= BuildVersionCodes.O)
            {
                NotificationChannel channel = new NotificationChannel(
                    CHANNEL_ID,
                    "Default Channel",
                    NotificationImportance.Default)
                {
                    Description = "General notifications"
                };

                NotificationManager notificationManager = (NotificationManager)context.GetSystemService(Context.NotificationService);
                notificationManager.CreateNotificationChannel(channel);
            }
        }

        public static void ShowNotification(Context context, string title, string message)
        {
            NotificationCompat.Builder builder = new NotificationCompat.Builder(context, CHANNEL_ID)
                .SetContentTitle(title)
                .SetContentText(message)
                .SetSmallIcon(Resource.Drawable.gaia_logo) // Ensure you have an app icon here
                .SetPriority(NotificationCompat.PriorityDefault);

            NotificationManagerCompat notificationManager = NotificationManagerCompat.From(context);
            notificationManager.Notify(NOTIFY_ID, builder.Build());
        }
    }
}
