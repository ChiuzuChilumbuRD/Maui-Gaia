using Microsoft.Maui.Networking;
using System;
using Microsoft.Maui.Controls;

namespace MyFirstMauiApp.Services
{
    public class WiFiStatusChecker
    {
        private bool _isCheckingNetworkStatus = false;
        private readonly ContentPage _page; // show the alert when not connected to WiFi
        private bool _hasAlerted = false; // Track if the alert has been shown

        public WiFiStatusChecker(ContentPage page)
        {
            _page = page;
        }

        public void Start()
        {
            if (!_isCheckingNetworkStatus)
            {
                _isCheckingNetworkStatus = true;
                Device.StartTimer(TimeSpan.FromSeconds(10), () =>
                {
                    CheckNetworkStatus();
                    return _isCheckingNetworkStatus; // true or false
                });
            }
        }

        public void Stop()
        {
            _isCheckingNetworkStatus = false;
        }

        private async void CheckNetworkStatus()
        {
            var current = Connectivity.Current.NetworkAccess;
            var profiles = Connectivity.Current.ConnectionProfiles;

            // Check if the device is connected to a WiFi network
            bool isConnectedToWiFi = profiles.Contains(ConnectionProfile.WiFi);

            if (current != NetworkAccess.Internet || !isConnectedToWiFi)
            {
                if (!_hasAlerted)
                {
                    _hasAlerted = true; // Set the flag to true after showing the alert
                    await _page.DisplayAlert("WiFi Connection", "You are not connected to the internet.", "OK");
                }
            }
            else
            {
                // Reset the flag if the network is connected and stable
                _hasAlerted = false;
            }
        }
    }
}
