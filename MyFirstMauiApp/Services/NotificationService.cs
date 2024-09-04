using Plugin.LocalNotification;
using System;

namespace MyFirstMauiApp.Services
{
    public class NotificationService
    {
        public void ShowNotification(int notificationId, string title, string subtitle, string description, int badgeNumber, TimeSpan delay)
        {
            var request = new NotificationRequest
            {
                NotificationId = notificationId,
                Title = title,
                Subtitle = subtitle,
                Description = description,
                BadgeNumber = badgeNumber,

                Schedule = new NotificationRequestSchedule
                {
                    NotifyTime = DateTime.Now.Add(delay),
                }
            };

            LocalNotificationCenter.Current.Show(request);
        }
    }
}
