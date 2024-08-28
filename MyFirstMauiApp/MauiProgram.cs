
using Microsoft.Extensions.Logging;
using CommunityToolkit.Maui;
using MyFirstMauiApp.Datastore;

namespace MyFirstMauiApp;

public static class MauiProgram
{
    public static MauiApp CreateMauiApp()
    {
		
        var builder = MauiApp.CreateBuilder();
        builder
            .UseMauiApp<App>()
            .UseMauiCommunityToolkit() // Ensure this is chained after UseMauiApp<App>()
            .ConfigureFonts(fonts =>
            {
                fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
            });

        builder.Services.AddTransient<ISqliteService, SqliteService>();
        builder.Services.AddTransient<MainViewModel>();

#if DEBUG
        builder.Logging.AddDebug();
#endif

        return builder.Build();
    }
}
