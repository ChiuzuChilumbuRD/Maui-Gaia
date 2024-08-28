namespace MyFirstMauiApp
{
    public partial class SQLitePage : ContentPage
    {
        public SQLitePage()
        {
            InitializeComponent();

            // add the setting button on navigation bar
            ToolbarItems.Add(new ToolbarItem
            {
                IconImageSource = "edit.png", // icon image
                Order = ToolbarItemOrder.Primary, // the button is on the navigation bar
                Priority = 0,
                Command = new Command(OnSettingsIconClicked)
            });
            
            // get MainViewModel
            var viewModel = Application.Current?.Handler?.MauiContext?.Services?.GetService<MainViewModel>();
            
            if (viewModel != null)
            {
                BindingContext = viewModel;
            }
            else
            {
                throw new InvalidOperationException("Unable to resolve MainViewModel. Please check your service registrations.");
            }
        }

        private async void OnSettingsIconClicked(object obj) // Updated method signature
        {
            await Navigation.PushAsync(new SettingsPage());
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            (BindingContext as MainViewModel)?.OnViewAppearing();
        }
    }
}
