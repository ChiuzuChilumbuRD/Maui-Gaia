using System;
using Microsoft.Maui.Controls;
using CommunityToolkit.Maui.Alerts;
using MyFirstMauiApp.Services;

namespace MyFirstMauiApp
{
    public partial class MainPage : ContentPage
    {

        private readonly MainViewModel? viewModel; // SQLite function
        private readonly WiFiStatusChecker _wiFiStatusChecker; // WiFi Connection
        private readonly NotificationService _notificationService; // Notification function
        public MainPage()
        {
            InitializeComponent();
            BindingContext = viewModel = Application.Current?.Handler?.MauiContext?.
                                     Services?.GetService<MainViewModel>(); // SQLite Function

            _wiFiStatusChecker = new WiFiStatusChecker(this); // WiFi Connection
            _notificationService = new NotificationService(); // Notification function
        }

        private void OnLogonClicked(object sender, EventArgs e)
        {
            // Retrieve user input
            string account = AccountEntry.Text;
            string password = PasswordEntry.Text;

            // Basic validation
            if (string.IsNullOrEmpty(account) || string.IsNullOrEmpty(password))
            {
                DisplayAlert("Error", "Please enter both account and password.", "OK");
                return;
            }

            // Simulate a login process (you can replace this with actual authentication logic)
            if (IsLoginValid(account, password))
            {
                _notificationService.ShowNotification(
                    notificationId: 1337,
                    title: "Login Success", // 推播標題
                    subtitle: "MetaGuru", // 推播子標題
                    description: "You have successfully logged in.", // 推播內容
                    badgeNumber: 1,
                    delay: TimeSpan.FromSeconds(1) // 幾秒後發送推播
                );

                // Navigate to the success page
                Navigation.PushAsync(new GPSPage());
            }
            else
            {
                DisplayAlert("Error", "Invalid account or password.", "OK");
            }
        }


        // Simulate login validation
        private bool IsLoginValid(string account, string password)
        {
            // Replace this with your actual authentication logic
            return account == "admin" && password == "password";
        }

        // SQLite page navigation
        private async void OnSettingsIconClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new SQLitePage());
        }
        protected override void OnAppearing()
        {
            base.OnAppearing();
            viewModel?.OnViewAppearing();
            _wiFiStatusChecker.Start(); // Start the WiFi Connection Checker
        }
        protected override void OnDisappearing()
        {
            base.OnDisappearing();
            _wiFiStatusChecker.Stop(); // Stop the WiFi Connection Checker
        }
    }
}
