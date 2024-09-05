; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [153 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [306 x i64] [
	i64 36418902923615093, ; 0: Plugin.LocalNotification => 0x8162cc9bdf1b75 => 54
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 46
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 152
	i64 131669012237370309, ; 3: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 51
	i64 196720943101637631, ; 4: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 112
	i64 210515253464952879, ; 5: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 65
	i64 232391251801502327, ; 6: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 82
	i64 435170709725415398, ; 7: Xamarin.GooglePlayServices.Location => 0x60a097471d687e6 => 90
	i64 545109961164950392, ; 8: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 7
	i64 687654259221141486, ; 9: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 88
	i64 750875890346172408, ; 10: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 141
	i64 799765834175365804, ; 11: System.ComponentModel.dll => 0xb1956c9f18442ac => 102
	i64 849051935479314978, ; 12: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 10
	i64 870603111519317375, ; 13: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 59
	i64 872800313462103108, ; 14: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 70
	i64 1120440138749646132, ; 15: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 87
	i64 1121665720830085036, ; 16: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 18
	i64 1301485588176585670, ; 17: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 58
	i64 1369545283391376210, ; 18: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 78
	i64 1476839205573959279, ; 19: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 117
	i64 1486715745332614827, ; 20: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 48
	i64 1513467482682125403, ; 21: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 151
	i64 1518315023656898250, ; 22: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 60
	i64 1537168428375924959, ; 23: System.Threading.Thread.dll => 0x15551e8a954ae0df => 141
	i64 1556147632182429976, ; 24: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 16
	i64 1624659445732251991, ; 25: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 63
	i64 1628611045998245443, ; 26: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 75
	i64 1731380447121279447, ; 27: Newtonsoft.Json => 0x18071957e9b889d7 => 53
	i64 1735388228521408345, ; 28: System.Net.Mail.dll => 0x181556663c69b759 => 116
	i64 1743969030606105336, ; 29: System.Memory.dll => 0x1833d297e88f2af8 => 114
	i64 1767386781656293639, ; 30: System.Private.Uri.dll => 0x188704e9f5582107 => 121
	i64 1795316252682057001, ; 31: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 62
	i64 1825687700144851180, ; 32: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 129
	i64 1835311033149317475, ; 33: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 6
	i64 1836611346387731153, ; 34: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 82
	i64 1881198190668717030, ; 35: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 28
	i64 1920760634179481754, ; 36: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 49
	i64 1930726298510463061, ; 37: CommunityToolkit.Mvvm.dll => 0x1acb5156cd389055 => 38
	i64 1959996714666907089, ; 38: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 28
	i64 1981742497975770890, ; 39: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 74
	i64 1983698669889758782, ; 40: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 2
	i64 2019660174692588140, ; 41: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 20
	i64 2133195048986300728, ; 42: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 53
	i64 2262844636196693701, ; 43: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 70
	i64 2287834202362508563, ; 44: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 96
	i64 2302323944321350744, ; 45: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 24
	i64 2329709569556905518, ; 46: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 73
	i64 2335503487726329082, ; 47: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 137
	i64 2470498323731680442, ; 48: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 66
	i64 2497223385847772520, ; 49: System.Runtime => 0x22a7eb7046413568 => 133
	i64 2547086958574651984, ; 50: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 61
	i64 2602673633151553063, ; 51: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 27
	i64 2656907746661064104, ; 52: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 41
	i64 2662981627730767622, ; 53: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 2
	i64 2895129759130297543, ; 54: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 7
	i64 3017704767998173186, ; 55: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 87
	i64 3289520064315143713, ; 56: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 72
	i64 3311221304742556517, ; 57: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 119
	i64 3344514922410554693, ; 58: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 93
	i64 3411255996856937470, ; 59: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 89
	i64 3429672777697402584, ; 60: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 51
	i64 3494946837667399002, ; 61: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 39
	i64 3522470458906976663, ; 62: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 83
	i64 3551103847008531295, ; 63: System.Private.CoreLib.dll => 0x31480e226177735f => 149
	i64 3567343442040498961, ; 64: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 22
	i64 3571415421602489686, ; 65: System.Runtime.dll => 0x319037675df7e556 => 133
	i64 3638003163729360188, ; 66: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 40
	i64 3647754201059316852, ; 67: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 145
	i64 3655542548057982301, ; 68: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 39
	i64 3716579019761409177, ; 69: netstandard.dll => 0x3393f0ed5c8c5c99 => 148
	i64 3727469159507183293, ; 70: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 81
	i64 3869221888984012293, ; 71: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 43
	i64 3890352374528606784, ; 72: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 49
	i64 3933965368022646939, ; 73: System.Net.Requests => 0x369840a8bfadc09b => 118
	i64 3966267475168208030, ; 74: System.Memory => 0x370b03412596249e => 114
	i64 4009997192427317104, ; 75: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 132
	i64 4073500526318903918, ; 76: System.Private.Xml.dll => 0x3887fb25779ae26e => 123
	i64 4073631083018132676, ; 77: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 47
	i64 4120493066591692148, ; 78: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 33
	i64 4154383907710350974, ; 79: System.ComponentModel => 0x39a7562737acb67e => 102
	i64 4187479170553454871, ; 80: System.Linq.Expressions => 0x3a1cea1e912fa117 => 112
	i64 4205801962323029395, ; 81: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 101
	i64 4247996603072512073, ; 82: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 91
	i64 4337444564132831293, ; 83: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 57
	i64 4356591372459378815, ; 84: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 30
	i64 4477672992252076438, ; 85: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 143
	i64 4636684751163556186, ; 86: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 84
	i64 4679594760078841447, ; 87: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 0
	i64 4794310189461587505, ; 88: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 61
	i64 4795410492532947900, ; 89: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 83
	i64 4853321196694829351, ; 90: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 131
	i64 5081566143765835342, ; 91: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 127
	i64 5099468265966638712, ; 92: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 127
	i64 5290786973231294105, ; 93: System.Runtime.Loader => 0x496ca6b869b72699 => 131
	i64 5423376490970181369, ; 94: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 129
	i64 5446034149219586269, ; 95: System.Diagnostics.Debug => 0x4b94333452e150dd => 104
	i64 5471532531798518949, ; 96: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 26
	i64 5522859530602327440, ; 97: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 29
	i64 5528247634813456972, ; 98: Plugin.LocalNotification.dll => 0x4cb847ef1773124c => 54
	i64 5570799893513421663, ; 99: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 109
	i64 5573260873512690141, ; 100: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 134
	i64 5692067934154308417, ; 101: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 86
	i64 6068057819846744445, ; 102: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 23
	i64 6182294023748435638, ; 103: AsyncAwaitBestPractices => 0x55cbeba8ce8bbeb6 => 35
	i64 6183170893902868313, ; 104: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 57
	i64 6200764641006662125, ; 105: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 23
	i64 6222399776351216807, ; 106: System.Text.Json.dll => 0x565a67a0ffe264a7 => 138
	i64 6357457916754632952, ; 107: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 34
	i64 6401687960814735282, ; 108: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 73
	i64 6478287442656530074, ; 109: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 11
	i64 6548213210057960872, ; 110: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 69
	i64 6560151584539558821, ; 111: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 45
	i64 6743165466166707109, ; 112: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 19
	i64 6777482997383978746, ; 113: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 22
	i64 6786606130239981554, ; 114: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 106
	i64 6814185388980153342, ; 115: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 146
	i64 6876862101832370452, ; 116: System.Xml.Linq => 0x5f6f85a57d108914 => 144
	i64 6894844156784520562, ; 117: System.Numerics.Vectors => 0x5faf683aead1ad72 => 119
	i64 6999232271162345813, ; 118: SQLiteNetExtensions => 0x612244aac7150955 => 56
	i64 7083547580668757502, ; 119: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 122
	i64 7220009545223068405, ; 120: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 26
	i64 7270811800166795866, ; 121: System.Linq => 0x64e71ccf51a90a5a => 113
	i64 7338192458477945005, ; 122: System.Reflection => 0x65d67f295d0740ad => 126
	i64 7377312882064240630, ; 123: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 101
	i64 7488575175965059935, ; 124: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 144
	i64 7489048572193775167, ; 125: System.ObjectModel => 0x67ee71ff6b419e3f => 120
	i64 7547171332664898270, ; 126: SQLiteNetExtensions.dll => 0x68bcf0572680b2de => 56
	i64 7654504624184590948, ; 127: System.Net.Http => 0x6a3a4366801b8264 => 115
	i64 7694700312542370399, ; 128: System.Net.Mail => 0x6ac9112a7e2cda5f => 116
	i64 7708790323521193081, ; 129: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 17
	i64 7714652370974252055, ; 130: System.Private.CoreLib => 0x6b0ff375198b9c17 => 149
	i64 7735176074855944702, ; 131: Microsoft.CSharp => 0x6b58dda848e391fe => 95
	i64 7735352534559001595, ; 132: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 92
	i64 7836164640616011524, ; 133: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 63
	i64 8064050204834738623, ; 134: System.Collections.dll => 0x6fe942efa61731bf => 99
	i64 8083354569033831015, ; 135: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 72
	i64 8087206902342787202, ; 136: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 105
	i64 8113615946733131500, ; 137: System.Reflection.Extensions => 0x70995ab73cf916ec => 125
	i64 8167236081217502503, ; 138: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 150
	i64 8185542183669246576, ; 139: System.Collections => 0x7198e33f4794aa70 => 99
	i64 8246048515196606205, ; 140: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 52
	i64 8290740647658429042, ; 141: System.Runtime.Extensions => 0x730ea0b15c929a72 => 128
	i64 8368701292315763008, ; 142: System.Security.Cryptography => 0x7423997c6fd56140 => 134
	i64 8400357532724379117, ; 143: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 80
	i64 8410671156615598628, ; 144: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 124
	i64 8518412311883997971, ; 145: System.Collections.Immutable => 0x76377add7c28e313 => 97
	i64 8542368324533842761, ; 146: MyFirstMauiApp => 0x768c96bb54637349 => 94
	i64 8563666267364444763, ; 147: System.Private.Uri => 0x76d841191140ca5b => 121
	i64 8599632406834268464, ; 148: CommunityToolkit.Maui => 0x7758081c784b4930 => 36
	i64 8614108721271900878, ; 149: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 21
	i64 8626175481042262068, ; 150: Java.Interop => 0x77b654e585b55834 => 150
	i64 8638972117149407195, ; 151: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 95
	i64 8639588376636138208, ; 152: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 79
	i64 8677882282824630478, ; 153: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 21
	i64 8725526185868997716, ; 154: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 105
	i64 8941376889969657626, ; 155: System.Xml.XDocument => 0x7c1626e87187471a => 146
	i64 9045785047181495996, ; 156: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 31
	i64 9312692141327339315, ; 157: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 86
	i64 9324707631942237306, ; 158: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 62
	i64 9542582288305145569, ; 159: MyFirstMauiApp.dll => 0x846e10084e5cc6e1 => 94
	i64 9584643793929893533, ; 160: System.IO.dll => 0x85037ebfbbd7f69d => 111
	i64 9659729154652888475, ; 161: System.Text.RegularExpressions => 0x860e407c9991dd9b => 139
	i64 9678050649315576968, ; 162: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 66
	i64 9702891218465930390, ; 163: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 98
	i64 9808709177481450983, ; 164: Mono.Android.dll => 0x881f890734e555e7 => 152
	i64 9875200773399460291, ; 165: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 88
	i64 9956195530459977388, ; 166: Microsoft.Maui => 0x8a2b8315b36616ac => 50
	i64 9991543690424095600, ; 167: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 6
	i64 10038780035334861115, ; 168: System.Net.Http.dll => 0x8b50e941206af13b => 115
	i64 10051358222726253779, ; 169: System.Private.Xml => 0x8b7d990c97ccccd3 => 123
	i64 10092835686693276772, ; 170: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 48
	i64 10143853363526200146, ; 171: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 3
	i64 10229024438826829339, ; 172: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 69
	i64 10245369515835430794, ; 173: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 124
	i64 10360651442923773544, ; 174: System.Text.Encoding => 0x8fc86d98211c1e68 => 136
	i64 10406448008575299332, ; 175: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 93
	i64 10430153318873392755, ; 176: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 67
	i64 10506226065143327199, ; 177: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 1
	i64 10566960649245365243, ; 178: System.Globalization.dll => 0x92a562b96dcd13fb => 108
	i64 10714184849103829812, ; 179: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 128
	i64 10785150219063592792, ; 180: System.Net.Primitives => 0x95ac8cfb68830758 => 117
	i64 10880838204485145808, ; 181: CommunityToolkit.Maui.dll => 0x970080b2a4d614d0 => 36
	i64 11002576679268595294, ; 182: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 44
	i64 11009005086950030778, ; 183: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 50
	i64 11103970607964515343, ; 184: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 12
	i64 11162124722117608902, ; 185: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 85
	i64 11220793807500858938, ; 186: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 15
	i64 11226290749488709958, ; 187: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 45
	i64 11340910727871153756, ; 188: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 68
	i64 11485890710487134646, ; 189: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 130
	i64 11518296021396496455, ; 190: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 13
	i64 11529969570048099689, ; 191: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 85
	i64 11530571088791430846, ; 192: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 43
	i64 11597940890313164233, ; 193: netstandard => 0xa0f429ca8d1805c9 => 148
	i64 11705530742807338875, ; 194: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 9
	i64 11739066727115742305, ; 195: SQLite-net.dll => 0xa2e98afdf8575c61 => 55
	i64 11743665907891708234, ; 196: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 140
	i64 11806260347154423189, ; 197: SQLite-net => 0xa3d8433bc5eb5d95 => 55
	i64 12123043025855404482, ; 198: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 125
	i64 12145679461940342714, ; 199: System.Text.Json => 0xa88e1f1ebcb62fba => 138
	i64 12201331334810686224, ; 200: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 132
	i64 12269460666702402136, ; 201: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 97
	i64 12279246230491828964, ; 202: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 60
	i64 12341818387765915815, ; 203: CommunityToolkit.Maui.Core.dll => 0xab46f26f152bf0a7 => 37
	i64 12451044538927396471, ; 204: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 71
	i64 12466513435562512481, ; 205: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 76
	i64 12475113361194491050, ; 206: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 34
	i64 12517810545449516888, ; 207: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 106
	i64 12538491095302438457, ; 208: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 64
	i64 12550732019250633519, ; 209: System.IO.Compression => 0xae2d28465e8e1b2f => 110
	i64 12681088699309157496, ; 210: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 14
	i64 12700543734426720211, ; 211: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 65
	i64 12708238894395270091, ; 212: System.IO => 0xb05cbbf17d3ba3cb => 111
	i64 12708922737231849740, ; 213: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 135
	i64 12823819093633476069, ; 214: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 27
	i64 12843321153144804894, ; 215: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 46
	i64 13221551921002590604, ; 216: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 1
	i64 13222659110913276082, ; 217: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 15
	i64 13343850469010654401, ; 218: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 151
	i64 13381594904270902445, ; 219: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 9
	i64 13465488254036897740, ; 220: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 92
	i64 13467053111158216594, ; 221: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 29
	i64 13540124433173649601, ; 222: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 30
	i64 13545416393490209236, ; 223: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 13
	i64 13572454107664307259, ; 224: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 81
	i64 13713329104121190199, ; 225: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 107
	i64 13717397318615465333, ; 226: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 100
	i64 13755568601956062840, ; 227: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 8
	i64 13814445057219246765, ; 228: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 11
	i64 13881769479078963060, ; 229: System.Console.dll => 0xc0a5f3cade5c6774 => 103
	i64 13959074834287824816, ; 230: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 71
	i64 14100563506285742564, ; 231: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 3
	i64 14124974489674258913, ; 232: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 64
	i64 14125464355221830302, ; 233: System.Threading.dll => 0xc407bafdbc707a9e => 142
	i64 14254574811015963973, ; 234: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 135
	i64 14327695147300244862, ; 235: System.Reflection.dll => 0xc6d632d338eb4d7e => 126
	i64 14390169238844270433, ; 236: AsyncAwaitBestPractices.dll => 0xc7b426ae2b10e761 => 35
	i64 14461014870687870182, ; 237: System.Net.Requests.dll => 0xc8afd8683afdece6 => 118
	i64 14464374589798375073, ; 238: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 24
	i64 14522721392235705434, ; 239: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 5
	i64 14551742072151931844, ; 240: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 137
	i64 14556034074661724008, ; 241: CommunityToolkit.Maui.Core => 0xca016bdea6b19f68 => 37
	i64 14669215534098758659, ; 242: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 41
	i64 14678510994762383812, ; 243: Xamarin.GooglePlayServices.Location.dll => 0xcbb48bfaca7a41c4 => 90
	i64 14690985099581930927, ; 244: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 143
	i64 14705122255218365489, ; 245: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 16
	i64 14744092281598614090, ; 246: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 32
	i64 14852515768018889994, ; 247: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 68
	i64 14892012299694389861, ; 248: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 33
	i64 14904040806490515477, ; 249: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 0
	i64 14954917835170835695, ; 250: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 42
	i64 14987728460634540364, ; 251: System.IO.Compression.dll => 0xcfff1ba06622494c => 110
	i64 15076659072870671916, ; 252: System.ObjectModel.dll => 0xd13b0d8c1620662c => 120
	i64 15111608613780139878, ; 253: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 17
	i64 15115185479366240210, ; 254: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 109
	i64 15133485256822086103, ; 255: System.Linq.dll => 0xd204f0a9127dd9d7 => 113
	i64 15227001540531775957, ; 256: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 40
	i64 15234786388537674379, ; 257: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 107
	i64 15370334346939861994, ; 258: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 67
	i64 15391712275433856905, ; 259: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 42
	i64 15526743539506359484, ; 260: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 136
	i64 15527772828719725935, ; 261: System.Console => 0xd77dbb1e38cd3d6f => 103
	i64 15536481058354060254, ; 262: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 4
	i64 15582737692548360875, ; 263: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 75
	i64 15609085926864131306, ; 264: System.dll => 0xd89e9cf3334914ea => 147
	i64 15661133872274321916, ; 265: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 145
	i64 15664356999916475676, ; 266: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 4
	i64 15743187114543869802, ; 267: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 12
	i64 15783653065526199428, ; 268: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 5
	i64 15817206913877585035, ; 269: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 140
	i64 15928521404965645318, ; 270: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 47
	i64 15930129725311349754, ; 271: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 91
	i64 16154507427712707110, ; 272: System => 0xe03056ea4e39aa26 => 147
	i64 16288847719894691167, ; 273: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 18
	i64 16321164108206115771, ; 274: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 44
	i64 16648892297579399389, ; 275: CommunityToolkit.Mvvm => 0xe70cbf55c4f508dd => 38
	i64 16649148416072044166, ; 276: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 52
	i64 16677317093839702854, ; 277: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 80
	i64 16755018182064898362, ; 278: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 58
	i64 16890310621557459193, ; 279: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 139
	i64 16942731696432749159, ; 280: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 25
	i64 16998075588627545693, ; 281: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 78
	i64 17008137082415910100, ; 282: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 98
	i64 17031351772568316411, ; 283: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 77
	i64 17062143951396181894, ; 284: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 100
	i64 17089008752050867324, ; 285: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 32
	i64 17230721278011714856, ; 286: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 122
	i64 17342750010158924305, ; 287: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 10
	i64 17438153253682247751, ; 288: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 25
	i64 17514990004910432069, ; 289: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 8
	i64 17623389608345532001, ; 290: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 20
	i64 17627500474728259406, ; 291: System.Globalization => 0xf4a176498a351f4e => 108
	i64 17685921127322830888, ; 292: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 104
	i64 17702523067201099846, ; 293: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 31
	i64 17704177640604968747, ; 294: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 76
	i64 17710060891934109755, ; 295: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 74
	i64 17712670374920797664, ; 296: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 130
	i64 17986907704309214542, ; 297: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 89
	i64 18025913125965088385, ; 298: System.Threading => 0xfa28e87b91334681 => 142
	i64 18099568558057551825, ; 299: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 19
	i64 18121036031235206392, ; 300: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 77
	i64 18245806341561545090, ; 301: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 96
	i64 18305135509493619199, ; 302: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 79
	i64 18324163916253801303, ; 303: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 14
	i64 18370042311372477656, ; 304: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 59
	i64 18380184030268848184 ; 305: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 84
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [306 x i32] [
	i32 54, ; 0
	i32 46, ; 1
	i32 152, ; 2
	i32 51, ; 3
	i32 112, ; 4
	i32 65, ; 5
	i32 82, ; 6
	i32 90, ; 7
	i32 7, ; 8
	i32 88, ; 9
	i32 141, ; 10
	i32 102, ; 11
	i32 10, ; 12
	i32 59, ; 13
	i32 70, ; 14
	i32 87, ; 15
	i32 18, ; 16
	i32 58, ; 17
	i32 78, ; 18
	i32 117, ; 19
	i32 48, ; 20
	i32 151, ; 21
	i32 60, ; 22
	i32 141, ; 23
	i32 16, ; 24
	i32 63, ; 25
	i32 75, ; 26
	i32 53, ; 27
	i32 116, ; 28
	i32 114, ; 29
	i32 121, ; 30
	i32 62, ; 31
	i32 129, ; 32
	i32 6, ; 33
	i32 82, ; 34
	i32 28, ; 35
	i32 49, ; 36
	i32 38, ; 37
	i32 28, ; 38
	i32 74, ; 39
	i32 2, ; 40
	i32 20, ; 41
	i32 53, ; 42
	i32 70, ; 43
	i32 96, ; 44
	i32 24, ; 45
	i32 73, ; 46
	i32 137, ; 47
	i32 66, ; 48
	i32 133, ; 49
	i32 61, ; 50
	i32 27, ; 51
	i32 41, ; 52
	i32 2, ; 53
	i32 7, ; 54
	i32 87, ; 55
	i32 72, ; 56
	i32 119, ; 57
	i32 93, ; 58
	i32 89, ; 59
	i32 51, ; 60
	i32 39, ; 61
	i32 83, ; 62
	i32 149, ; 63
	i32 22, ; 64
	i32 133, ; 65
	i32 40, ; 66
	i32 145, ; 67
	i32 39, ; 68
	i32 148, ; 69
	i32 81, ; 70
	i32 43, ; 71
	i32 49, ; 72
	i32 118, ; 73
	i32 114, ; 74
	i32 132, ; 75
	i32 123, ; 76
	i32 47, ; 77
	i32 33, ; 78
	i32 102, ; 79
	i32 112, ; 80
	i32 101, ; 81
	i32 91, ; 82
	i32 57, ; 83
	i32 30, ; 84
	i32 143, ; 85
	i32 84, ; 86
	i32 0, ; 87
	i32 61, ; 88
	i32 83, ; 89
	i32 131, ; 90
	i32 127, ; 91
	i32 127, ; 92
	i32 131, ; 93
	i32 129, ; 94
	i32 104, ; 95
	i32 26, ; 96
	i32 29, ; 97
	i32 54, ; 98
	i32 109, ; 99
	i32 134, ; 100
	i32 86, ; 101
	i32 23, ; 102
	i32 35, ; 103
	i32 57, ; 104
	i32 23, ; 105
	i32 138, ; 106
	i32 34, ; 107
	i32 73, ; 108
	i32 11, ; 109
	i32 69, ; 110
	i32 45, ; 111
	i32 19, ; 112
	i32 22, ; 113
	i32 106, ; 114
	i32 146, ; 115
	i32 144, ; 116
	i32 119, ; 117
	i32 56, ; 118
	i32 122, ; 119
	i32 26, ; 120
	i32 113, ; 121
	i32 126, ; 122
	i32 101, ; 123
	i32 144, ; 124
	i32 120, ; 125
	i32 56, ; 126
	i32 115, ; 127
	i32 116, ; 128
	i32 17, ; 129
	i32 149, ; 130
	i32 95, ; 131
	i32 92, ; 132
	i32 63, ; 133
	i32 99, ; 134
	i32 72, ; 135
	i32 105, ; 136
	i32 125, ; 137
	i32 150, ; 138
	i32 99, ; 139
	i32 52, ; 140
	i32 128, ; 141
	i32 134, ; 142
	i32 80, ; 143
	i32 124, ; 144
	i32 97, ; 145
	i32 94, ; 146
	i32 121, ; 147
	i32 36, ; 148
	i32 21, ; 149
	i32 150, ; 150
	i32 95, ; 151
	i32 79, ; 152
	i32 21, ; 153
	i32 105, ; 154
	i32 146, ; 155
	i32 31, ; 156
	i32 86, ; 157
	i32 62, ; 158
	i32 94, ; 159
	i32 111, ; 160
	i32 139, ; 161
	i32 66, ; 162
	i32 98, ; 163
	i32 152, ; 164
	i32 88, ; 165
	i32 50, ; 166
	i32 6, ; 167
	i32 115, ; 168
	i32 123, ; 169
	i32 48, ; 170
	i32 3, ; 171
	i32 69, ; 172
	i32 124, ; 173
	i32 136, ; 174
	i32 93, ; 175
	i32 67, ; 176
	i32 1, ; 177
	i32 108, ; 178
	i32 128, ; 179
	i32 117, ; 180
	i32 36, ; 181
	i32 44, ; 182
	i32 50, ; 183
	i32 12, ; 184
	i32 85, ; 185
	i32 15, ; 186
	i32 45, ; 187
	i32 68, ; 188
	i32 130, ; 189
	i32 13, ; 190
	i32 85, ; 191
	i32 43, ; 192
	i32 148, ; 193
	i32 9, ; 194
	i32 55, ; 195
	i32 140, ; 196
	i32 55, ; 197
	i32 125, ; 198
	i32 138, ; 199
	i32 132, ; 200
	i32 97, ; 201
	i32 60, ; 202
	i32 37, ; 203
	i32 71, ; 204
	i32 76, ; 205
	i32 34, ; 206
	i32 106, ; 207
	i32 64, ; 208
	i32 110, ; 209
	i32 14, ; 210
	i32 65, ; 211
	i32 111, ; 212
	i32 135, ; 213
	i32 27, ; 214
	i32 46, ; 215
	i32 1, ; 216
	i32 15, ; 217
	i32 151, ; 218
	i32 9, ; 219
	i32 92, ; 220
	i32 29, ; 221
	i32 30, ; 222
	i32 13, ; 223
	i32 81, ; 224
	i32 107, ; 225
	i32 100, ; 226
	i32 8, ; 227
	i32 11, ; 228
	i32 103, ; 229
	i32 71, ; 230
	i32 3, ; 231
	i32 64, ; 232
	i32 142, ; 233
	i32 135, ; 234
	i32 126, ; 235
	i32 35, ; 236
	i32 118, ; 237
	i32 24, ; 238
	i32 5, ; 239
	i32 137, ; 240
	i32 37, ; 241
	i32 41, ; 242
	i32 90, ; 243
	i32 143, ; 244
	i32 16, ; 245
	i32 32, ; 246
	i32 68, ; 247
	i32 33, ; 248
	i32 0, ; 249
	i32 42, ; 250
	i32 110, ; 251
	i32 120, ; 252
	i32 17, ; 253
	i32 109, ; 254
	i32 113, ; 255
	i32 40, ; 256
	i32 107, ; 257
	i32 67, ; 258
	i32 42, ; 259
	i32 136, ; 260
	i32 103, ; 261
	i32 4, ; 262
	i32 75, ; 263
	i32 147, ; 264
	i32 145, ; 265
	i32 4, ; 266
	i32 12, ; 267
	i32 5, ; 268
	i32 140, ; 269
	i32 47, ; 270
	i32 91, ; 271
	i32 147, ; 272
	i32 18, ; 273
	i32 44, ; 274
	i32 38, ; 275
	i32 52, ; 276
	i32 80, ; 277
	i32 58, ; 278
	i32 139, ; 279
	i32 25, ; 280
	i32 78, ; 281
	i32 98, ; 282
	i32 77, ; 283
	i32 100, ; 284
	i32 32, ; 285
	i32 122, ; 286
	i32 10, ; 287
	i32 25, ; 288
	i32 8, ; 289
	i32 20, ; 290
	i32 108, ; 291
	i32 104, ; 292
	i32 31, ; 293
	i32 76, ; 294
	i32 74, ; 295
	i32 130, ; 296
	i32 89, ; 297
	i32 142, ; 298
	i32 19, ; 299
	i32 77, ; 300
	i32 96, ; 301
	i32 79, ; 302
	i32 14, ; 303
	i32 59, ; 304
	i32 84 ; 305
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 96b6bb65e8736e45180905177aa343f0e1854ea3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
