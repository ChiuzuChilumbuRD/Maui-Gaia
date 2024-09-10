using MyFirstMauiApp.Services;

namespace MyFirstMauiApp
{
    public partial class CameraPage : ContentPage
    {
        private CameraService _cameraService;
        private readonly HttpService _httpService;
        public CameraPage()
        {
            InitializeComponent();
            _httpService = new HttpService(); // Initialize the HttpService
            _cameraService = new CameraService(this);
            // Add the first button (Camera)
            ToolbarItems.Add(new ToolbarItem
            {
                IconImageSource = "http_get.png", // icon image for the first button
                Order = ToolbarItemOrder.Primary, // position the button on the navigation bar
                Priority = 0,
                Command = new Command(OnGetRequestButtonClicked)
            });

            // Add the second button (Settings)
            ToolbarItems.Add(new ToolbarItem
            {
                IconImageSource = "http_post.png", // icon image for the second button
                Order = ToolbarItemOrder.Primary, // position the button on the navigation bar
                Priority = 1, // Set a different priority for this button
                Command = new Command(OnPostRequestButtonClicked)
            });
            _cameraService.RequestPermissionsAsync();
        }

        private async void OnGetRequestButtonClicked(object sender)
        {
            try
            {
                string url = "https://gurugaia.royal.club.tw/eHR/GuruOutbound/getTmpOrg?u=AxtimTmpOrg_List&code=BQ0000";
                string response = await _httpService.GetAsync(url);
                await DisplayAlert("GET Response", response, "OK");
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", ex.Message, "OK");
            }
        }

        private async void OnPostRequestButtonClicked(object sender)
        {
            try
            {
                string url = "https://gurugaia.royal.club.tw/eHR/GuruOutbound/getTmpOrg?u=AxtimTmpOrg_List&code=BQ0000";
                var data = new { name = "John Doe", age = 30 };
                string response = await _httpService.PostAsync(url, data);
                await DisplayAlert("POST Response", response, "OK");
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", ex.Message, "OK");
            }
        }
        private async void OnTakePhotoClicked(object sender, EventArgs e)
        {
            await _cameraService.TakePhotoAsync(capturedImage);
        }
    }
}
