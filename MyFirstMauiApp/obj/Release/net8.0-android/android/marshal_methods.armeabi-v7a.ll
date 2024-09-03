; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [145 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [290 x i32] [
	i32 39109920, ; 0: Newtonsoft.Json.dll => 0x254c520 => 53
	i32 42639949, ; 1: System.Threading.Thread => 0x28aa24d => 133
	i32 67008169, ; 2: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 3: Microsoft.Maui.Graphics.dll => 0x44bb714 => 52
	i32 117431740, ; 4: System.Runtime.InteropServices => 0x6ffddbc => 124
	i32 165246403, ; 5: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 64
	i32 182336117, ; 6: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 82
	i32 195452805, ; 7: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 8: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 9: System.ComponentModel => 0xc38ff48 => 96
	i32 220171995, ; 10: System.Diagnostics.Debug => 0xd1f8edb => 98
	i32 230752869, ; 11: Microsoft.CSharp.dll => 0xdc10265 => 89
	i32 231814094, ; 12: System.Globalization => 0xdd133ce => 102
	i32 246610117, ; 13: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 118
	i32 280992041, ; 14: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 317674968, ; 15: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 16: Xamarin.AndroidX.Activity.dll => 0x13031348 => 60
	i32 336156722, ; 17: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 18: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 71
	i32 347068432, ; 19: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 58
	i32 356389973, ; 20: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 379916513, ; 21: System.Threading.Thread.dll => 0x16a510e1 => 133
	i32 385762202, ; 22: System.Memory.dll => 0x16fe439a => 108
	i32 395744057, ; 23: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 435591531, ; 24: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442565967, ; 25: System.Collections => 0x1a61054f => 93
	i32 450948140, ; 26: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 70
	i32 456227837, ; 27: System.Web.HttpUtility.dll => 0x1b317bfd => 135
	i32 459347974, ; 28: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 126
	i32 469710990, ; 29: System.dll => 0x1bff388e => 139
	i32 498788369, ; 30: System.ObjectModel => 0x1dbae811 => 114
	i32 500358224, ; 31: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 32: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 513247710, ; 33: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 46
	i32 539058512, ; 34: Microsoft.Extensions.Logging => 0x20216150 => 43
	i32 545304856, ; 35: System.Runtime.Extensions => 0x2080b118 => 122
	i32 592146354, ; 36: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 597488923, ; 37: CommunityToolkit.Maui => 0x239cf51b => 36
	i32 627609679, ; 38: Xamarin.AndroidX.CustomView => 0x2568904f => 68
	i32 627931235, ; 39: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 672442732, ; 40: System.Collections.Concurrent => 0x2814a96c => 90
	i32 688181140, ; 41: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 690569205, ; 42: System.Xml.Linq.dll => 0x29293ff5 => 136
	i32 706645707, ; 43: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 44: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 722857257, ; 45: System.Runtime.Loader.dll => 0x2b15ed29 => 125
	i32 748832960, ; 46: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 56
	i32 759454413, ; 47: System.Net.Requests => 0x2d445acd => 112
	i32 775507847, ; 48: System.IO.Compression => 0x2e394f87 => 104
	i32 777317022, ; 49: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 50: Microsoft.Extensions.Options => 0x2f0980eb => 45
	i32 823281589, ; 51: System.Private.Uri.dll => 0x311247b5 => 115
	i32 830298997, ; 52: System.IO.Compression.Brotli => 0x317d5b75 => 103
	i32 877678880, ; 53: System.Globalization.dll => 0x34505120 => 102
	i32 904024072, ; 54: System.ComponentModel.Primitives.dll => 0x35e25008 => 94
	i32 926902833, ; 55: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 955402788, ; 56: Newtonsoft.Json => 0x38f24a24 => 53
	i32 967690846, ; 57: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 71
	i32 975874589, ; 58: System.Xml.XDocument => 0x3a2aaa1d => 138
	i32 992768348, ; 59: System.Collections.dll => 0x3b2c715c => 93
	i32 1004948558, ; 60: MyFirstMauiApp => 0x3be64c4e => 88
	i32 1012816738, ; 61: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 81
	i32 1028951442, ; 62: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 42
	i32 1029334545, ; 63: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1035644815, ; 64: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 61
	i32 1044663988, ; 65: System.Linq.Expressions.dll => 0x3e444eb4 => 106
	i32 1052210849, ; 66: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 73
	i32 1082857460, ; 67: System.ComponentModel.TypeConverter => 0x408b17f4 => 95
	i32 1084122840, ; 68: Xamarin.Kotlin.StdLib => 0x409e66d8 => 86
	i32 1098259244, ; 69: System => 0x41761b2c => 139
	i32 1118262833, ; 70: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 71: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 72: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 78
	i32 1203215381, ; 73: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1214827643, ; 74: CommunityToolkit.Mvvm => 0x4868cc7b => 38
	i32 1234928153, ; 75: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1260983243, ; 76: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1292207520, ; 77: SQLitePCLRaw.core.dll => 0x4d0585a0 => 57
	i32 1293217323, ; 78: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 69
	i32 1324164729, ; 79: System.Linq => 0x4eed2679 => 107
	i32 1364015309, ; 80: System.IO => 0x514d38cd => 105
	i32 1373134921, ; 81: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 82: Xamarin.AndroidX.SavedState => 0x52114ed3 => 81
	i32 1379779777, ; 83: System.Resources.ResourceManager => 0x523dc4c1 => 121
	i32 1406073936, ; 84: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 65
	i32 1430672901, ; 85: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1457743152, ; 86: System.Runtime.Extensions.dll => 0x56e36530 => 122
	i32 1461004990, ; 87: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1461234159, ; 88: System.Collections.Immutable.dll => 0x5718a9ef => 91
	i32 1462112819, ; 89: System.IO.Compression.dll => 0x57261233 => 104
	i32 1469204771, ; 90: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 62
	i32 1470490898, ; 91: Microsoft.Extensions.Primitives => 0x57a5e912 => 46
	i32 1479771757, ; 92: System.Collections.Immutable => 0x5833866d => 91
	i32 1480492111, ; 93: System.IO.Compression.Brotli.dll => 0x583e844f => 103
	i32 1493001747, ; 94: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1514721132, ; 95: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1543031311, ; 96: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 131
	i32 1550322496, ; 97: System.Reflection.Extensions.dll => 0x5c680b40 => 119
	i32 1551623176, ; 98: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1604451928, ; 99: SQLiteNetExtensions => 0x5fa1fe58 => 55
	i32 1622152042, ; 100: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 75
	i32 1622358360, ; 101: System.Dynamic.Runtime => 0x60b33958 => 101
	i32 1624863272, ; 102: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 84
	i32 1634654947, ; 103: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 37
	i32 1636350590, ; 104: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 67
	i32 1639515021, ; 105: System.Net.Http.dll => 0x61b9038d => 109
	i32 1639986890, ; 106: System.Text.RegularExpressions => 0x61c036ca => 131
	i32 1657153582, ; 107: System.Runtime => 0x62c6282e => 127
	i32 1658251792, ; 108: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 85
	i32 1666713512, ; 109: SQLiteNetExtensions.dll => 0x635807a8 => 55
	i32 1677501392, ; 110: System.Net.Primitives.dll => 0x63fca3d0 => 111
	i32 1679769178, ; 111: System.Security.Cryptography => 0x641f3e5a => 128
	i32 1701541528, ; 112: System.Diagnostics.Debug.dll => 0x656b7698 => 98
	i32 1711441057, ; 113: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 58
	i32 1726116996, ; 114: System.Reflection.dll => 0x66e27484 => 120
	i32 1729485958, ; 115: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 63
	i32 1736233607, ; 116: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1743415430, ; 117: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1763938596, ; 118: System.Diagnostics.TraceSource.dll => 0x69239124 => 100
	i32 1765942094, ; 119: System.Reflection.Extensions => 0x6942234e => 119
	i32 1766324549, ; 120: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 82
	i32 1770582343, ; 121: Microsoft.Extensions.Logging.dll => 0x6988f147 => 43
	i32 1780572499, ; 122: Mono.Android.Runtime.dll => 0x6a216153 => 143
	i32 1782862114, ; 123: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 124: Xamarin.AndroidX.Fragment => 0x6a96652d => 70
	i32 1793755602, ; 125: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 126: Xamarin.AndroidX.Loader => 0x6bcd3296 => 75
	i32 1813058853, ; 127: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 86
	i32 1813201214, ; 128: Xamarin.Google.Android.Material => 0x6c13413e => 85
	i32 1818569960, ; 129: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 79
	i32 1824175904, ; 130: System.Text.Encoding.Extensions => 0x6cbab720 => 129
	i32 1828688058, ; 131: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 44
	i32 1842015223, ; 132: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1853025655, ; 133: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 134: System.Linq.Expressions => 0x6ec71a65 => 106
	i32 1875935024, ; 135: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1900610850, ; 136: System.Resources.ResourceManager.dll => 0x71490522 => 121
	i32 1910275211, ; 137: System.Collections.NonGeneric.dll => 0x71dc7c8b => 92
	i32 1939592360, ; 138: System.Private.Xml.Linq => 0x739bd4a8 => 116
	i32 1968388702, ; 139: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 39
	i32 1968499395, ; 140: AsyncAwaitBestPractices => 0x7554eac3 => 35
	i32 2003115576, ; 141: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 142: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 73
	i32 2025202353, ; 143: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2045470958, ; 144: System.Private.Xml => 0x79eb68ee => 117
	i32 2055257422, ; 145: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 72
	i32 2066184531, ; 146: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 147: System.Diagnostics.TraceSource => 0x7b6f419e => 100
	i32 2079903147, ; 148: System.Runtime.dll => 0x7bf8cdab => 127
	i32 2090596640, ; 149: System.Numerics.Vectors => 0x7c9bf920 => 113
	i32 2103459038, ; 150: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 59
	i32 2127167465, ; 151: System.Console => 0x7ec9ffe9 => 97
	i32 2159891885, ; 152: Microsoft.Maui => 0x80bd55ad => 50
	i32 2169148018, ; 153: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 154: Microsoft.Extensions.Options.dll => 0x820d22b3 => 45
	i32 2192057212, ; 155: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 44
	i32 2193016926, ; 156: System.ObjectModel.dll => 0x82b6c85e => 114
	i32 2201107256, ; 157: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 87
	i32 2201231467, ; 158: System.Net.Http => 0x8334206b => 109
	i32 2207618523, ; 159: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 160: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 40
	i32 2270573516, ; 161: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 162: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 80
	i32 2298471582, ; 163: System.Net.Mail => 0x88ffe49e => 110
	i32 2303942373, ; 164: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 165: System.Private.CoreLib.dll => 0x896b7878 => 141
	i32 2322113089, ; 166: MyFirstMauiApp.dll => 0x8a68a241 => 88
	i32 2340441535, ; 167: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 123
	i32 2353062107, ; 168: System.Net.Primitives => 0x8c40e0db => 111
	i32 2368005991, ; 169: System.Xml.ReaderWriter.dll => 0x8d24e767 => 137
	i32 2371007202, ; 170: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 39
	i32 2395872292, ; 171: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2401565422, ; 172: System.Web.HttpUtility => 0x8f24faee => 135
	i32 2427813419, ; 173: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 174: System.Console.dll => 0x912896e5 => 97
	i32 2454642406, ; 175: System.Text.Encoding.dll => 0x924edee6 => 130
	i32 2465273461, ; 176: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 56
	i32 2471841756, ; 177: netstandard.dll => 0x93554fdc => 140
	i32 2475788418, ; 178: Java.Interop.dll => 0x93918882 => 142
	i32 2480646305, ; 179: Microsoft.Maui.Controls => 0x93dba8a1 => 48
	i32 2538310050, ; 180: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 118
	i32 2550873716, ; 181: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2562349572, ; 182: Microsoft.CSharp => 0x98ba5a04 => 89
	i32 2585220780, ; 183: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 129
	i32 2593496499, ; 184: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 185: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 87
	i32 2617129537, ; 186: System.Private.Xml.dll => 0x9bfe3a41 => 117
	i32 2620871830, ; 187: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 67
	i32 2626831493, ; 188: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 189: System.Runtime.Loader => 0x9ec4cf01 => 125
	i32 2664396074, ; 190: System.Xml.XDocument.dll => 0x9ecf752a => 138
	i32 2693849962, ; 191: System.IO.dll => 0xa090e36a => 105
	i32 2715334215, ; 192: System.Threading.Tasks.dll => 0xa1d8b647 => 132
	i32 2732626843, ; 193: Xamarin.AndroidX.Activity => 0xa2e0939b => 60
	i32 2737747696, ; 194: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 62
	i32 2752995522, ; 195: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 196: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 49
	i32 2764765095, ; 197: Microsoft.Maui.dll => 0xa4caf7a7 => 50
	i32 2778768386, ; 198: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 83
	i32 2785988530, ; 199: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 200: Microsoft.Maui.Graphics => 0xa7008e0b => 52
	i32 2806116107, ; 201: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2810250172, ; 202: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 65
	i32 2831556043, ; 203: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2853208004, ; 204: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 83
	i32 2861189240, ; 205: Microsoft.Maui.Essentials => 0xaa8a4878 => 51
	i32 2868488919, ; 206: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 37
	i32 2900621748, ; 207: System.Dynamic.Runtime.dll => 0xace3f9b4 => 101
	i32 2901442782, ; 208: System.Reflection => 0xacf080de => 120
	i32 2909740682, ; 209: System.Private.CoreLib => 0xad6f1e8a => 141
	i32 2916838712, ; 210: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 84
	i32 2919462931, ; 211: System.Numerics.Vectors.dll => 0xae037813 => 113
	i32 2959614098, ; 212: System.ComponentModel.dll => 0xb0682092 => 96
	i32 2978675010, ; 213: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 69
	i32 3038032645, ; 214: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3057625584, ; 215: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 76
	i32 3059408633, ; 216: Mono.Android.Runtime => 0xb65adef9 => 143
	i32 3059793426, ; 217: System.ComponentModel.Primitives => 0xb660be12 => 94
	i32 3075834255, ; 218: System.Threading.Tasks => 0xb755818f => 132
	i32 3077302341, ; 219: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3178803400, ; 220: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 77
	i32 3220365878, ; 221: System.Threading => 0xbff2e236 => 134
	i32 3258312781, ; 222: Xamarin.AndroidX.CardView => 0xc235e84d => 63
	i32 3286872994, ; 223: SQLite-net.dll => 0xc3e9b3a2 => 54
	i32 3299363146, ; 224: System.Text.Encoding => 0xc4a8494a => 130
	i32 3305363605, ; 225: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 226: System.Net.Requests.dll => 0xc5b097e4 => 112
	i32 3317135071, ; 227: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 68
	i32 3346324047, ; 228: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 78
	i32 3357674450, ; 229: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3360279109, ; 230: SQLitePCLRaw.core => 0xc849ca45 => 57
	i32 3362522851, ; 231: Xamarin.AndroidX.Core => 0xc86c06e3 => 66
	i32 3366347497, ; 232: Java.Interop => 0xc8a662e9 => 142
	i32 3374999561, ; 233: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 80
	i32 3381016424, ; 234: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 235: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 41
	i32 3430777524, ; 236: netstandard => 0xcc7d82b4 => 140
	i32 3452344032, ; 237: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 47
	i32 3463511458, ; 238: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3471940407, ; 239: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 95
	i32 3476120550, ; 240: Mono.Android => 0xcf3163e6 => 144
	i32 3479583265, ; 241: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3484440000, ; 242: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3509114376, ; 243: System.Xml.Linq => 0xd128d608 => 136
	i32 3580758918, ; 244: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3608519521, ; 245: System.Linq.dll => 0xd715a361 => 107
	i32 3624195450, ; 246: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 123
	i32 3641597786, ; 247: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 72
	i32 3643446276, ; 248: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 249: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 77
	i32 3657292374, ; 250: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 40
	i32 3672681054, ; 251: Mono.Android.dll => 0xdae8aa5e => 144
	i32 3697841164, ; 252: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3724971120, ; 253: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 76
	i32 3748608112, ; 254: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 99
	i32 3754567612, ; 255: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 59
	i32 3786282454, ; 256: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 64
	i32 3792276235, ; 257: System.Collections.NonGeneric => 0xe2098b0b => 92
	i32 3793321889, ; 258: AsyncAwaitBestPractices.dll => 0xe2197fa1 => 35
	i32 3800979733, ; 259: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 47
	i32 3817368567, ; 260: CommunityToolkit.Maui.dll => 0xe3886bf7 => 36
	i32 3823082795, ; 261: System.Security.Cryptography.dll => 0xe3df9d2b => 128
	i32 3841636137, ; 262: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 42
	i32 3844307129, ; 263: System.Net.Mail.dll => 0xe52378b9 => 110
	i32 3849253459, ; 264: System.Runtime.InteropServices.dll => 0xe56ef253 => 124
	i32 3876362041, ; 265: SQLite-net => 0xe70c9739 => 54
	i32 3889960447, ; 266: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 267: System.Collections.Concurrent.dll => 0xe839deed => 90
	i32 3896760992, ; 268: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 66
	i32 3928044579, ; 269: System.Xml.ReaderWriter => 0xea213423 => 137
	i32 3931092270, ; 270: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 79
	i32 3955647286, ; 271: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 61
	i32 3980434154, ; 272: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3987592930, ; 273: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4025784931, ; 274: System.Memory => 0xeff49a63 => 108
	i32 4046471985, ; 275: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 49
	i32 4068434129, ; 276: System.Private.Xml.Linq.dll => 0xf27f60d1 => 116
	i32 4073602200, ; 277: System.Threading.dll => 0xf2ce3c98 => 134
	i32 4094352644, ; 278: Microsoft.Maui.Essentials.dll => 0xf40add04 => 51
	i32 4100113165, ; 279: System.Private.Uri => 0xf462c30d => 115
	i32 4102112229, ; 280: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4125707920, ; 281: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 282: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 41
	i32 4150914736, ; 283: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4181436372, ; 284: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 126
	i32 4182413190, ; 285: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 74
	i32 4213026141, ; 286: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 99
	i32 4271975918, ; 287: Microsoft.Maui.Controls.dll => 0xfea12dee => 48
	i32 4274623895, ; 288: CommunityToolkit.Mvvm.dll => 0xfec99597 => 38
	i32 4292120959 ; 289: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 74
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [290 x i32] [
	i32 53, ; 0
	i32 133, ; 1
	i32 33, ; 2
	i32 52, ; 3
	i32 124, ; 4
	i32 64, ; 5
	i32 82, ; 6
	i32 30, ; 7
	i32 31, ; 8
	i32 96, ; 9
	i32 98, ; 10
	i32 89, ; 11
	i32 102, ; 12
	i32 118, ; 13
	i32 2, ; 14
	i32 30, ; 15
	i32 60, ; 16
	i32 15, ; 17
	i32 71, ; 18
	i32 58, ; 19
	i32 14, ; 20
	i32 133, ; 21
	i32 108, ; 22
	i32 34, ; 23
	i32 26, ; 24
	i32 93, ; 25
	i32 70, ; 26
	i32 135, ; 27
	i32 126, ; 28
	i32 139, ; 29
	i32 114, ; 30
	i32 13, ; 31
	i32 7, ; 32
	i32 46, ; 33
	i32 43, ; 34
	i32 122, ; 35
	i32 21, ; 36
	i32 36, ; 37
	i32 68, ; 38
	i32 19, ; 39
	i32 90, ; 40
	i32 1, ; 41
	i32 136, ; 42
	i32 16, ; 43
	i32 4, ; 44
	i32 125, ; 45
	i32 56, ; 46
	i32 112, ; 47
	i32 104, ; 48
	i32 25, ; 49
	i32 45, ; 50
	i32 115, ; 51
	i32 103, ; 52
	i32 102, ; 53
	i32 94, ; 54
	i32 28, ; 55
	i32 53, ; 56
	i32 71, ; 57
	i32 138, ; 58
	i32 93, ; 59
	i32 88, ; 60
	i32 81, ; 61
	i32 42, ; 62
	i32 3, ; 63
	i32 61, ; 64
	i32 106, ; 65
	i32 73, ; 66
	i32 95, ; 67
	i32 86, ; 68
	i32 139, ; 69
	i32 16, ; 70
	i32 22, ; 71
	i32 78, ; 72
	i32 20, ; 73
	i32 38, ; 74
	i32 18, ; 75
	i32 2, ; 76
	i32 57, ; 77
	i32 69, ; 78
	i32 107, ; 79
	i32 105, ; 80
	i32 32, ; 81
	i32 81, ; 82
	i32 121, ; 83
	i32 65, ; 84
	i32 0, ; 85
	i32 122, ; 86
	i32 6, ; 87
	i32 91, ; 88
	i32 104, ; 89
	i32 62, ; 90
	i32 46, ; 91
	i32 91, ; 92
	i32 103, ; 93
	i32 10, ; 94
	i32 5, ; 95
	i32 131, ; 96
	i32 119, ; 97
	i32 25, ; 98
	i32 55, ; 99
	i32 75, ; 100
	i32 101, ; 101
	i32 84, ; 102
	i32 37, ; 103
	i32 67, ; 104
	i32 109, ; 105
	i32 131, ; 106
	i32 127, ; 107
	i32 85, ; 108
	i32 55, ; 109
	i32 111, ; 110
	i32 128, ; 111
	i32 98, ; 112
	i32 58, ; 113
	i32 120, ; 114
	i32 63, ; 115
	i32 23, ; 116
	i32 1, ; 117
	i32 100, ; 118
	i32 119, ; 119
	i32 82, ; 120
	i32 43, ; 121
	i32 143, ; 122
	i32 17, ; 123
	i32 70, ; 124
	i32 9, ; 125
	i32 75, ; 126
	i32 86, ; 127
	i32 85, ; 128
	i32 79, ; 129
	i32 129, ; 130
	i32 44, ; 131
	i32 29, ; 132
	i32 26, ; 133
	i32 106, ; 134
	i32 8, ; 135
	i32 121, ; 136
	i32 92, ; 137
	i32 116, ; 138
	i32 39, ; 139
	i32 35, ; 140
	i32 5, ; 141
	i32 73, ; 142
	i32 0, ; 143
	i32 117, ; 144
	i32 72, ; 145
	i32 4, ; 146
	i32 100, ; 147
	i32 127, ; 148
	i32 113, ; 149
	i32 59, ; 150
	i32 97, ; 151
	i32 50, ; 152
	i32 12, ; 153
	i32 45, ; 154
	i32 44, ; 155
	i32 114, ; 156
	i32 87, ; 157
	i32 109, ; 158
	i32 14, ; 159
	i32 40, ; 160
	i32 8, ; 161
	i32 80, ; 162
	i32 110, ; 163
	i32 18, ; 164
	i32 141, ; 165
	i32 88, ; 166
	i32 123, ; 167
	i32 111, ; 168
	i32 137, ; 169
	i32 39, ; 170
	i32 13, ; 171
	i32 135, ; 172
	i32 10, ; 173
	i32 97, ; 174
	i32 130, ; 175
	i32 56, ; 176
	i32 140, ; 177
	i32 142, ; 178
	i32 48, ; 179
	i32 118, ; 180
	i32 11, ; 181
	i32 89, ; 182
	i32 129, ; 183
	i32 20, ; 184
	i32 87, ; 185
	i32 117, ; 186
	i32 67, ; 187
	i32 15, ; 188
	i32 125, ; 189
	i32 138, ; 190
	i32 105, ; 191
	i32 132, ; 192
	i32 60, ; 193
	i32 62, ; 194
	i32 21, ; 195
	i32 49, ; 196
	i32 50, ; 197
	i32 83, ; 198
	i32 27, ; 199
	i32 52, ; 200
	i32 6, ; 201
	i32 65, ; 202
	i32 19, ; 203
	i32 83, ; 204
	i32 51, ; 205
	i32 37, ; 206
	i32 101, ; 207
	i32 120, ; 208
	i32 141, ; 209
	i32 84, ; 210
	i32 113, ; 211
	i32 96, ; 212
	i32 69, ; 213
	i32 34, ; 214
	i32 76, ; 215
	i32 143, ; 216
	i32 94, ; 217
	i32 132, ; 218
	i32 12, ; 219
	i32 77, ; 220
	i32 134, ; 221
	i32 63, ; 222
	i32 54, ; 223
	i32 130, ; 224
	i32 7, ; 225
	i32 112, ; 226
	i32 68, ; 227
	i32 78, ; 228
	i32 24, ; 229
	i32 57, ; 230
	i32 66, ; 231
	i32 142, ; 232
	i32 80, ; 233
	i32 3, ; 234
	i32 41, ; 235
	i32 140, ; 236
	i32 47, ; 237
	i32 11, ; 238
	i32 95, ; 239
	i32 144, ; 240
	i32 24, ; 241
	i32 23, ; 242
	i32 136, ; 243
	i32 31, ; 244
	i32 107, ; 245
	i32 123, ; 246
	i32 72, ; 247
	i32 28, ; 248
	i32 77, ; 249
	i32 40, ; 250
	i32 144, ; 251
	i32 33, ; 252
	i32 76, ; 253
	i32 99, ; 254
	i32 59, ; 255
	i32 64, ; 256
	i32 92, ; 257
	i32 35, ; 258
	i32 47, ; 259
	i32 36, ; 260
	i32 128, ; 261
	i32 42, ; 262
	i32 110, ; 263
	i32 124, ; 264
	i32 54, ; 265
	i32 32, ; 266
	i32 90, ; 267
	i32 66, ; 268
	i32 137, ; 269
	i32 79, ; 270
	i32 61, ; 271
	i32 27, ; 272
	i32 9, ; 273
	i32 108, ; 274
	i32 49, ; 275
	i32 116, ; 276
	i32 134, ; 277
	i32 51, ; 278
	i32 115, ; 279
	i32 22, ; 280
	i32 17, ; 281
	i32 41, ; 282
	i32 29, ; 283
	i32 126, ; 284
	i32 74, ; 285
	i32 99, ; 286
	i32 48, ; 287
	i32 38, ; 288
	i32 74 ; 289
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

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
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 96b6bb65e8736e45180905177aa343f0e1854ea3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
