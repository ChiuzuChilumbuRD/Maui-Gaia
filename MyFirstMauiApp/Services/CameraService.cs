using Microsoft.Maui.Controls;
using System;
using System.IO;
using System.Threading.Tasks;

namespace MyFirstMauiApp.Services
{
    public class CameraService
    {
        private readonly ContentPage _page;

        public CameraService(ContentPage page)
        {
            _page = page;
        }

        public async Task RequestPermissionsAsync()
        {
            var cameraStatus = await Permissions.RequestAsync<Permissions.Camera>();
            if (cameraStatus != PermissionStatus.Granted)
            {
                await _page.DisplayAlert("Permissions Denied", "Unable to access camera", "OK");
            }
        }

        public async Task TakePhotoAsync(Image capturedImage)
        {
            try
            {
                if (!MediaPicker.IsCaptureSupported)
                {
                    await _page.DisplayAlert("Not Supported", "Camera is not supported on this device", "OK");
                    return;
                }

                var cameraStatus = await Permissions.CheckStatusAsync<Permissions.Camera>();
                if (cameraStatus != PermissionStatus.Granted)
                {
                    cameraStatus = await Permissions.RequestAsync<Permissions.Camera>();
                    if (cameraStatus != PermissionStatus.Granted)
                    {
                        await _page.DisplayAlert("Permissions Denied", "Camera permission is not granted", "OK");
                        return;
                    }
                }

                FileResult photo = await MediaPicker.CapturePhotoAsync();

                if (photo != null)
                {
                    // 顯示拍照成功的訊息
                    await _page.DisplayAlert("Photo Taken", "The photo was taken successfully", "OK");

                    // 顯示照片
                    var stream = await photo.OpenReadAsync();
                    capturedImage.Source = ImageSource.FromStream(() => stream);
                    capturedImage.IsVisible = true;
                }
            }
            catch (Exception ex)
            {
                await _page.DisplayAlert("Error", $"An error occurred: {ex.Message}", "OK");
            }
        }
    }
}
