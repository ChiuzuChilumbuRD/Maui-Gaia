using System;
using Microsoft.Maui.Controls;

namespace MyFirstMauiApp
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
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
                DisplayAlert("Success", "You have successfully logged in.", "OK");

                // Navigate to the success page
                Navigation.PushAsync(new SuccessPage());
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

        //Settings page navigation
        private async void OnSettingsIconClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new SettingsPage());
        }

    }
}
