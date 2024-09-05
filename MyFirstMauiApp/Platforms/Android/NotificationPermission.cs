using Android;
using Microsoft.Maui.ApplicationModel;

namespace MyFirstMauiApp.Platforms.Android;

public class NotificationPermission : Permissions.BasePlatformPermission
{
    public override (string androidPermission, bool isRuntime)[] RequiredPermissions =>
        OperatingSystem.IsAndroidVersionAtLeast(33)
        ? new[] { (Manifest.Permission.PostNotifications, true) }
        : new (string, bool)[0];
}
