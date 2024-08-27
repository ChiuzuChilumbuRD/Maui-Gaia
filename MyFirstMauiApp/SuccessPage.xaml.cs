using Microsoft.Maui.Controls;
using System;

namespace MyFirstMauiApp
{
    public partial class SuccessPage : ContentPage
    {
        public SuccessPage()
        {
            InitializeComponent();
        }

        private async void OnLogoutClicked(object sender, EventArgs e)
        {
            // Navigate back to the login page
            await Navigation.PopToRootAsync();
        }
    }
}
