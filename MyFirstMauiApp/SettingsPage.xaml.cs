using Microsoft.Maui.Controls;
using System;
using MyFirstMauiApp.Services;

namespace MyFirstMauiApp
{
    public partial class SettingsPage : ContentPage
    {
        private readonly WiFiStatusChecker _wiFiStatusChecker; // WiFi Connection
        public SettingsPage()
        {
            InitializeComponent();
            _wiFiStatusChecker = new WiFiStatusChecker(this); // WiFi Connection
        }

        private async void OnCancelClicked(object sender, EventArgs e)
        {
            await Navigation.PopAsync();
        }

        private async void OnDoneClicked(object sender, EventArgs e)
        {
            await DisplayAlert("Settings", "Settings saved successfully.", "OK");
            await Navigation.PopAsync();
        }

        private void OnLanguageChanged(object sender, EventArgs e)
        {
            // Get the selected language
            var selectedLanguage = LanguagePicker.SelectedItem.ToString();

            // Simulate setting the language
            switch (selectedLanguage)
            {
                case "Simplified Chinese":
                    SimulateLanguageChange("zh-CN");
                    break;
                case "Traditional Chinese":
                    SimulateLanguageChange("zh-TW");
                    break;
                case "Vietnamese":
                    SimulateLanguageChange("vi-VN");
                    break;
                case "Japanese":
                    SimulateLanguageChange("ja-JP");
                    break;
                default:
                    SimulateLanguageChange("en");
                    break;
            }

            // Optionally, show a message or refresh UI elements
            DisplayAlert("Language Changed", $"Language changed to {selectedLanguage}.", "OK");
        }

        private void SimulateLanguageChange(string cultureCode)
        {
            // Simulated language change logic
            // For now, this does nothing more than logging or displaying the selected culture code
            Console.WriteLine($"Language set to: {cultureCode}");

            // In the future, you would set the localization and refresh UI components here
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
