using System;
using System.Threading.Tasks;
using Microsoft.Maui.Devices.Sensors;
using Microsoft.Maui.Controls;

namespace MyFirstMauiApp.Services
{
    public class GpsService
    {
        private readonly ContentPage _page; // Optional, if you want to show alerts or messages

        public GpsService(ContentPage page)
        {
            _page = page;
        }

        public async Task GetGpsLocationAsync()
        {
            try
            {
                var request = new GeolocationRequest(GeolocationAccuracy.Medium);
                var location = await Geolocation.GetLocationAsync(request);

                if (location != null)
                {
                    // Optionally display location on the page
                    if (_page != null)
                    {
                        var gpsSignalLabel = _page.FindByName<Label>("GpsSignalLabel");
                        if (gpsSignalLabel != null)
                        {
                            gpsSignalLabel.Text = $"Latitude: {location.Latitude}, Longitude: {location.Longitude}";
                        }
                    }
                }
                else
                {
                    ShowAlert("No GPS signal available.");
                }
            }
            catch (FeatureNotSupportedException)
            {
                ShowAlert("GPS is not supported on this device.");
            }
            catch (PermissionException)
            {
                ShowAlert("Permission to access location was denied.");
            }
            catch (Exception ex)
            {
                ShowAlert($"Unable to get GPS signal: {ex.Message}");
            }
        }

        private async void ShowAlert(string message)
        {
            if (_page != null)
            {
                await _page.DisplayAlert("GPS Error", message, "OK");
            }
        }
    }
}
