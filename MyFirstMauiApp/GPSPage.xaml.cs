using Microsoft.Maui.Controls;
using MyFirstMauiApp.Services;

namespace MyFirstMauiApp
{
    public partial class GPSPage : ContentPage
    {
        private readonly GpsService _gpsService; // GPS Location
        private readonly WiFiStatusChecker _wiFiStatusChecker; // WiFi Connection

        public GPSPage()
        {
            InitializeComponent();
            _wiFiStatusChecker = new WiFiStatusChecker(this); // WiFi Connection
            _gpsService = new GpsService(this); // GPS Location
            GetGpsSignal();
        }

        private async void GetGpsSignal()
        {
            await _gpsService.GetGpsLocationAsync();
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