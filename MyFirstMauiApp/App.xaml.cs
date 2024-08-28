using AsyncAwaitBestPractices;
using MyFirstMauiApp.Datastore;
namespace MyFirstMauiApp;

public partial class App : Application
{
	public App()
	{
		InitializeComponent();
		SqliteDataStore.InitializeDataStoreAsync().SafeFireAndForget();
		MainPage = new AppShell();
		// MainPage = new NavigationPage(new MainPage());
	}
}
