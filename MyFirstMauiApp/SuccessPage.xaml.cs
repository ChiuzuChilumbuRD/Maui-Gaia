using Microsoft.Maui.Controls;
using System;
using MyFirstMauiApp.Services;

namespace MyFirstMauiApp
{
    public partial class SuccessPage : ContentPage
    {
        private readonly WiFiStatusChecker _wiFiStatusChecker; // WiFi Connection

        public SuccessPage()
        {
            InitializeComponent();
            _wiFiStatusChecker = new WiFiStatusChecker(this); // WiFi Connection
        }

        private async void OnLogoutClicked(object sender, EventArgs e)
        {
            // Navigate back to the login page
            await Navigation.PopToRootAsync();
        }
        protected override void OnAppearing()
        {
            base.OnAppearing();
            _wiFiStatusChecker.Start();
        }
        protected override void OnDisappearing()
        {
            base.OnDisappearing();
            _wiFiStatusChecker.Stop();
        }
    }
}
