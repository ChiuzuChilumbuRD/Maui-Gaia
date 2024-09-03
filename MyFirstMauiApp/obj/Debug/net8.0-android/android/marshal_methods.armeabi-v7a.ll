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

@assembly_image_cache = dso_local local_unnamed_addr global [321 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [636 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 241
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 275
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39109920, ; 6: Newtonsoft.Json.dll => 0x254c520 => 193
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 8: System.Threading.Thread => 0x28aa24d => 145
	i32 53857724, ; 9: ca/Microsoft.Maui.Controls.resources => 0x335cdbc => 284
	i32 66541672, ; 10: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 68219467, ; 11: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 12: Microsoft.Maui.Graphics.dll => 0x44bb714 => 192
	i32 82292897, ; 13: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 14: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 259
	i32 113429830, ; 15: zh-HK/Microsoft.Maui.Controls.resources => 0x6c2cd46 => 314
	i32 117431740, ; 16: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 17: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 259
	i32 122350210, ; 18: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 19: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 279
	i32 142721839, ; 20: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 21: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 22: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 23: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 215
	i32 176265551, ; 24: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 25: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 261
	i32 184328833, ; 26: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 27: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 313
	i32 199333315, ; 28: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 314
	i32 205061960, ; 29: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 30: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 213
	i32 220171995, ; 31: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 32: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 235
	i32 230752869, ; 33: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 34: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 35: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 36: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 37: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 218
	i32 276479776, ; 38: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 39: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 237
	i32 280482487, ; 40: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 234
	i32 280992041, ; 41: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 285
	i32 291076382, ; 42: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 43: System.Net.Ping.dll => 0x11d123fd => 69
	i32 318968648, ; 44: Xamarin.AndroidX.Activity.dll => 0x13031348 => 204
	i32 321597661, ; 45: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 46: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 298
	i32 342366114, ; 47: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 236
	i32 347068432, ; 48: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 198
	i32 356389973, ; 49: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 297
	i32 357576608, ; 50: cs/Microsoft.Maui.Controls.resources => 0x15502fa0 => 285
	i32 360082299, ; 51: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 52: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 53: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 54: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 55: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 56: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 57: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 58: _Microsoft.Android.Resource.Designer => 0x17969339 => 317
	i32 403441872, ; 59: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 60: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 309
	i32 441335492, ; 61: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 219
	i32 442565967, ; 62: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 63: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 232
	i32 451504562, ; 64: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 65: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 66: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 67: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 68: System.dll => 0x1bff388e => 164
	i32 476646585, ; 69: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 234
	i32 486930444, ; 70: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 247
	i32 498788369, ; 71: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 72: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 296
	i32 503918385, ; 73: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 290
	i32 513247710, ; 74: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 186
	i32 526420162, ; 75: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527168573, ; 76: hi/Microsoft.Maui.Controls.resources => 0x1f6bf43d => 293
	i32 527452488, ; 77: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 279
	i32 530272170, ; 78: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 79: Microsoft.Extensions.Logging => 0x20216150 => 182
	i32 540030774, ; 80: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 81: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 82: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 83: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 84: Jsr305Binding => 0x213954e7 => 272
	i32 569601784, ; 85: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 270
	i32 577335427, ; 86: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 87: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 304
	i32 597488923, ; 88: CommunityToolkit.Maui => 0x239cf51b => 174
	i32 601371474, ; 89: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 90: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 91: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 92: Xamarin.AndroidX.CustomView => 0x2568904f => 224
	i32 639843206, ; 93: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 230
	i32 643868501, ; 94: System.Net => 0x2660a755 => 81
	i32 662205335, ; 95: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 96: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 266
	i32 666292255, ; 97: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 211
	i32 672442732, ; 98: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 99: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 100: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 284
	i32 690569205, ; 101: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 102: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 281
	i32 693804605, ; 103: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 104: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 105: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 276
	i32 700358131, ; 106: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 107: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 299
	i32 709557578, ; 108: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 287
	i32 720511267, ; 109: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 280
	i32 722857257, ; 110: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 111: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 748832960, ; 112: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 196
	i32 752232764, ; 113: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 114: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 201
	i32 759454413, ; 115: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 116: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 117: System.IO.Compression => 0x2e394f87 => 46
	i32 789151979, ; 118: Microsoft.Extensions.Options => 0x2f0980eb => 185
	i32 790371945, ; 119: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 225
	i32 804715423, ; 120: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 121: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 239
	i32 823281589, ; 122: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 123: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 124: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 125: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 126: Xamarin.AndroidX.Print => 0x3246f6cd => 252
	i32 870878177, ; 127: ar/Microsoft.Maui.Controls.resources => 0x33e88be1 => 283
	i32 873119928, ; 128: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 129: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 130: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 131: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 132: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 133: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 311
	i32 928116545, ; 134: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 275
	i32 952186615, ; 135: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 955402788, ; 136: Newtonsoft.Json => 0x38f24a24 => 193
	i32 956575887, ; 137: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 280
	i32 966729478, ; 138: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 273
	i32 967690846, ; 139: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 236
	i32 975236339, ; 140: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 141: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 142: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 143: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 144: System.Collections.dll => 0x3b2c715c => 12
	i32 993161700, ; 145: zh-Hans/Microsoft.Maui.Controls.resources => 0x3b3271e4 => 315
	i32 994442037, ; 146: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 994547685, ; 147: es/Microsoft.Maui.Controls.resources => 0x3b4797e5 => 289
	i32 1001831731, ; 148: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1004948558, ; 149: MyFirstMauiApp => 0x3be64c4e => 0
	i32 1012816738, ; 150: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 256
	i32 1019214401, ; 151: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 152: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 181
	i32 1029334545, ; 153: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 286
	i32 1031528504, ; 154: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 274
	i32 1035644815, ; 155: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 209
	i32 1036536393, ; 156: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 157: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 158: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 243
	i32 1067306892, ; 159: GoogleGson => 0x3f9dcf8c => 177
	i32 1082857460, ; 160: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 161: Xamarin.Kotlin.StdLib => 0x409e66d8 => 277
	i32 1098259244, ; 162: System => 0x41761b2c => 164
	i32 1121599056, ; 163: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 242
	i32 1127624469, ; 164: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 184
	i32 1149092582, ; 165: Xamarin.AndroidX.Window => 0x447dc2e6 => 269
	i32 1170634674, ; 166: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 167: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 265
	i32 1178241025, ; 168: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 250
	i32 1178797549, ; 169: fi/Microsoft.Maui.Controls.resources => 0x464305ed => 290
	i32 1203215381, ; 170: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 303
	i32 1204270330, ; 171: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 211
	i32 1208641965, ; 172: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1214827643, ; 173: CommunityToolkit.Mvvm => 0x4868cc7b => 176
	i32 1219128291, ; 174: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 175: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 301
	i32 1243150071, ; 176: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 270
	i32 1253011324, ; 177: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1264511973, ; 178: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 260
	i32 1267360935, ; 179: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 264
	i32 1273260888, ; 180: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 216
	i32 1275534314, ; 181: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 281
	i32 1278448581, ; 182: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 208
	i32 1292207520, ; 183: SQLitePCLRaw.core.dll => 0x4d0585a0 => 197
	i32 1293217323, ; 184: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 227
	i32 1309188875, ; 185: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 186: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 269
	i32 1324164729, ; 187: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 188: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 189: System.IO => 0x514d38cd => 57
	i32 1376866003, ; 190: Xamarin.AndroidX.SavedState => 0x52114ed3 => 256
	i32 1379779777, ; 191: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 192: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 193: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 220
	i32 1408764838, ; 194: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 195: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 196: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1434145427, ; 197: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 198: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 273
	i32 1439761251, ; 199: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 200: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 201: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 202: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 203: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461234159, ; 204: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 205: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 206: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 207: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 210
	i32 1470490898, ; 208: Microsoft.Extensions.Primitives => 0x57a5e912 => 186
	i32 1479771757, ; 209: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 210: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 211: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 212: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 257
	i32 1493001747, ; 213: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 293
	i32 1514721132, ; 214: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 288
	i32 1536373174, ; 215: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 216: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 217: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 218: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 219: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 308
	i32 1554762148, ; 220: fr/Microsoft.Maui.Controls.resources => 0x5cabc9a4 => 291
	i32 1565862583, ; 221: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 222: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 223: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 224: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1580413037, ; 225: sv/Microsoft.Maui.Controls.resources => 0x5e33306d => 309
	i32 1582372066, ; 226: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 226
	i32 1591080825, ; 227: zh-Hant/Microsoft.Maui.Controls.resources => 0x5ed5f779 => 316
	i32 1592978981, ; 228: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 229: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 274
	i32 1601112923, ; 230: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604451928, ; 231: SQLiteNetExtensions => 0x5fa1fe58 => 195
	i32 1604827217, ; 232: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 233: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 234: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 246
	i32 1622358360, ; 235: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 236: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 268
	i32 1634654947, ; 237: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 175
	i32 1635184631, ; 238: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 230
	i32 1636350590, ; 239: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 223
	i32 1639515021, ; 240: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 241: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 242: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 243: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 244: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 262
	i32 1658251792, ; 245: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 271
	i32 1666713512, ; 246: SQLiteNetExtensions.dll => 0x635807a8 => 195
	i32 1670060433, ; 247: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 218
	i32 1675553242, ; 248: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 249: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 250: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 251: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 252: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 253: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 254: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 278
	i32 1701541528, ; 255: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1711441057, ; 256: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 198
	i32 1720223769, ; 257: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 239
	i32 1726116996, ; 258: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 259: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 260: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 214
	i32 1736233607, ; 261: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 306
	i32 1744735666, ; 262: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 263: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 264: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 265: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 266: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 267: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 268: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 261
	i32 1770582343, ; 269: Microsoft.Extensions.Logging.dll => 0x6988f147 => 182
	i32 1776026572, ; 270: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 271: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 272: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1788241197, ; 273: Xamarin.AndroidX.Fragment => 0x6a96652d => 232
	i32 1808609942, ; 274: Xamarin.AndroidX.Loader => 0x6bcd3296 => 246
	i32 1809966115, ; 275: nb/Microsoft.Maui.Controls.resources => 0x6be1e423 => 301
	i32 1813058853, ; 276: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 277
	i32 1813201214, ; 277: Xamarin.Google.Android.Material => 0x6c13413e => 271
	i32 1818569960, ; 278: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 251
	i32 1818787751, ; 279: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1821794637, ; 280: hu/Microsoft.Maui.Controls.resources => 0x6c96614d => 295
	i32 1824175904, ; 281: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 282: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 283: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 183
	i32 1842015223, ; 284: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 312
	i32 1847515442, ; 285: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 201
	i32 1858542181, ; 286: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 287: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1879696579, ; 288: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 289: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 212
	i32 1888955245, ; 290: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 291: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 292: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 293: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 294: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 295: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 296: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1960264639, ; 297: ja/Microsoft.Maui.Controls.resources => 0x74d743bf => 298
	i32 1961813231, ; 298: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 258
	i32 1968388702, ; 299: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 178
	i32 1968499395, ; 300: AsyncAwaitBestPractices => 0x7554eac3 => 173
	i32 1983156543, ; 301: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 278
	i32 1985761444, ; 302: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 203
	i32 2011961780, ; 303: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2014344398, ; 304: hr/Microsoft.Maui.Controls.resources => 0x781074ce => 294
	i32 2019465201, ; 305: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 243
	i32 2025202353, ; 306: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 283
	i32 2031763787, ; 307: Xamarin.Android.Glide => 0x791a414b => 200
	i32 2043674646, ; 308: it/Microsoft.Maui.Controls.resources => 0x79d00016 => 297
	i32 2045470958, ; 309: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 310: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 238
	i32 2060060697, ; 311: System.Windows.dll => 0x7aca0819 => 154
	i32 2070888862, ; 312: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 313: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 314: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2103459038, ; 315: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 199
	i32 2127167465, ; 316: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 317: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 318: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 319: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2150663486, ; 320: ko/Microsoft.Maui.Controls.resources => 0x8030853e => 299
	i32 2159891885, ; 321: Microsoft.Maui => 0x80bd55ad => 190
	i32 2165051842, ; 322: ro/Microsoft.Maui.Controls.resources => 0x810c11c2 => 306
	i32 2181898931, ; 323: Microsoft.Extensions.Options.dll => 0x820d22b3 => 185
	i32 2192057212, ; 324: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 183
	i32 2193016926, ; 325: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 326: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 282
	i32 2201231467, ; 327: System.Net.Http => 0x8334206b => 64
	i32 2217644978, ; 328: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 265
	i32 2222056684, ; 329: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 330: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 247
	i32 2252106437, ; 331: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 332: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 333: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 334: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 179
	i32 2267999099, ; 335: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 202
	i32 2270573516, ; 336: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 291
	i32 2279755925, ; 337: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 254
	i32 2289298199, ; 338: th/Microsoft.Maui.Controls.resources => 0x8873eb17 => 310
	i32 2293034957, ; 339: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 340: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 341: System.Net.Mail => 0x88ffe49e => 66
	i32 2305521784, ; 342: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 343: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 206
	i32 2320631194, ; 344: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2322113089, ; 345: MyFirstMauiApp.dll => 0x8a68a241 => 0
	i32 2340441535, ; 346: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 347: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 348: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 349: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369760409, ; 350: tr/Microsoft.Maui.Controls.resources => 0x8d3fac99 => 311
	i32 2371007202, ; 351: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 178
	i32 2378619854, ; 352: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 353: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2401565422, ; 354: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 355: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 229
	i32 2421380589, ; 356: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2421992093, ; 357: nl/Microsoft.Maui.Controls.resources => 0x905caa9d => 302
	i32 2423080555, ; 358: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 216
	i32 2435356389, ; 359: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 360: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 361: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 362: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 363: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465273461, ; 364: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 196
	i32 2465532216, ; 365: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 219
	i32 2471841756, ; 366: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 367: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 368: Microsoft.Maui.Controls => 0x93dba8a1 => 188
	i32 2483903535, ; 369: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 370: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 371: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 372: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 373: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 241
	i32 2520433370, ; 374: sk/Microsoft.Maui.Controls.resources => 0x963ac2da => 308
	i32 2522472828, ; 375: Xamarin.Android.Glide.dll => 0x9659e17c => 200
	i32 2538310050, ; 376: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2562349572, ; 377: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 378: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 379: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 242
	i32 2581819634, ; 380: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 264
	i32 2585220780, ; 381: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 382: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 383: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2605712449, ; 384: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 282
	i32 2615233544, ; 385: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 233
	i32 2616218305, ; 386: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 184
	i32 2617129537, ; 387: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 388: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 389: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 223
	i32 2624644809, ; 390: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 228
	i32 2627185994, ; 391: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 392: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 393: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 237
	i32 2663391936, ; 394: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 202
	i32 2663698177, ; 395: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 396: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 397: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 398: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 399: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 400: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 401: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 262
	i32 2715334215, ; 402: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 403: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 404: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 405: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 406: Xamarin.AndroidX.Activity => 0xa2e0939b => 204
	i32 2735172069, ; 407: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 408: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 210
	i32 2740948882, ; 409: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 410: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2758225723, ; 411: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 189
	i32 2764765095, ; 412: Microsoft.Maui.dll => 0xa4caf7a7 => 190
	i32 2765824710, ; 413: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 414: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 276
	i32 2778768386, ; 415: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 267
	i32 2779977773, ; 416: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 255
	i32 2788224221, ; 417: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 233
	i32 2801831435, ; 418: Microsoft.Maui.Graphics => 0xa7008e0b => 192
	i32 2802068195, ; 419: uk/Microsoft.Maui.Controls.resources => 0xa7042ae3 => 312
	i32 2803228030, ; 420: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 421: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 289
	i32 2810250172, ; 422: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 220
	i32 2819470561, ; 423: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 424: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 425: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 255
	i32 2824502124, ; 426: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 427: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 302
	i32 2838993487, ; 428: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 244
	i32 2849599387, ; 429: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 430: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 267
	i32 2855708567, ; 431: Xamarin.AndroidX.Transition => 0xaa36a797 => 263
	i32 2857259519, ; 432: el/Microsoft.Maui.Controls.resources => 0xaa4e51ff => 288
	i32 2861098320, ; 433: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 434: Microsoft.Maui.Essentials => 0xaa8a4878 => 191
	i32 2868488919, ; 435: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 175
	i32 2870099610, ; 436: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 205
	i32 2875164099, ; 437: Jsr305Binding.dll => 0xab5f85c3 => 272
	i32 2875220617, ; 438: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2883495834, ; 439: ru/Microsoft.Maui.Controls.resources => 0xabdea79a => 307
	i32 2884993177, ; 440: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 231
	i32 2887636118, ; 441: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 442: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 443: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 444: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 445: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 446: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 447: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 268
	i32 2919462931, ; 448: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 449: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 207
	i32 2936416060, ; 450: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 451: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 452: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 453: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 454: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 455: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 456: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 227
	i32 2987532451, ; 457: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 258
	i32 2996846495, ; 458: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 240
	i32 3016983068, ; 459: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 260
	i32 3023353419, ; 460: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 461: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 235
	i32 3038032645, ; 462: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 317
	i32 3056245963, ; 463: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 257
	i32 3057625584, ; 464: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 248
	i32 3059408633, ; 465: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 466: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 467: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 468: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 295
	i32 3090735792, ; 469: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 470: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 471: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 472: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 473: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 474: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 475: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 476: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 477: GoogleGson.dll => 0xbba64c02 => 177
	i32 3159123045, ; 478: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 479: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 480: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 249
	i32 3192346100, ; 481: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 482: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 483: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 484: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 485: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 226
	i32 3220365878, ; 486: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 487: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 488: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 489: Xamarin.AndroidX.CardView => 0xc235e84d => 214
	i32 3265493905, ; 490: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 491: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 492: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 493: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 494: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3286872994, ; 495: SQLite-net.dll => 0xc3e9b3a2 => 194
	i32 3290767353, ; 496: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 497: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 498: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3316684772, ; 499: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 500: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 224
	i32 3317144872, ; 501: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 502: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 212
	i32 3345895724, ; 503: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 253
	i32 3346324047, ; 504: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 250
	i32 3358260929, ; 505: System.Text.Json => 0xc82afec1 => 137
	i32 3360279109, ; 506: SQLitePCLRaw.core => 0xc849ca45 => 197
	i32 3362336904, ; 507: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 205
	i32 3362522851, ; 508: Xamarin.AndroidX.Core => 0xc86c06e3 => 221
	i32 3366347497, ; 509: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 510: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 254
	i32 3395150330, ; 511: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 512: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 513: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 225
	i32 3428513518, ; 514: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 180
	i32 3429136800, ; 515: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 516: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 517: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 228
	i32 3445260447, ; 518: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 519: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 187
	i32 3463511458, ; 520: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 294
	i32 3471940407, ; 521: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 522: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 523: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 307
	i32 3485117614, ; 524: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 525: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 526: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 217
	i32 3509114376, ; 527: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 528: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 529: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 530: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3542658132, ; 531: vi/Microsoft.Maui.Controls.resources => 0xd328ac54 => 313
	i32 3560100363, ; 532: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 533: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3596930546, ; 534: de/Microsoft.Maui.Controls.resources => 0xd664cdf2 => 287
	i32 3597029428, ; 535: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 203
	i32 3598340787, ; 536: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 537: System.Linq.dll => 0xd715a361 => 61
	i32 3623444314, ; 538: da/Microsoft.Maui.Controls.resources => 0xd7f95f5a => 286
	i32 3624195450, ; 539: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 540: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 252
	i32 3633644679, ; 541: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 207
	i32 3638274909, ; 542: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 543: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 238
	i32 3643854240, ; 544: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 249
	i32 3645089577, ; 545: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3647796983, ; 546: pt-BR/Microsoft.Maui.Controls.resources => 0xd96cf6f7 => 304
	i32 3657292374, ; 547: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 179
	i32 3660523487, ; 548: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3662115805, ; 549: he/Microsoft.Maui.Controls.resources => 0xda4773dd => 292
	i32 3672681054, ; 550: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 551: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 213
	i32 3684561358, ; 552: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 217
	i32 3686075795, ; 553: ms/Microsoft.Maui.Controls.resources => 0xdbb50d93 => 300
	i32 3697841164, ; 554: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 316
	i32 3700866549, ; 555: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 556: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 222
	i32 3716563718, ; 557: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 558: Xamarin.AndroidX.Annotation => 0xdda814c6 => 206
	i32 3724971120, ; 559: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 248
	i32 3732100267, ; 560: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 561: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 562: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 563: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3754567612, ; 564: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 199
	i32 3786282454, ; 565: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 215
	i32 3792276235, ; 566: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3793321889, ; 567: AsyncAwaitBestPractices.dll => 0xe2197fa1 => 173
	i32 3800979733, ; 568: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 187
	i32 3802395368, ; 569: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3817368567, ; 570: CommunityToolkit.Maui.dll => 0xe3886bf7 => 174
	i32 3819260425, ; 571: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 572: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 573: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 574: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 181
	i32 3844307129, ; 575: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 576: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 577: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 578: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 579: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3876362041, ; 580: SQLite-net => 0xe70c9739 => 194
	i32 3885497537, ; 581: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 582: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 263
	i32 3888767677, ; 583: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 253
	i32 3889960447, ; 584: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 315
	i32 3896106733, ; 585: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 586: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 221
	i32 3901907137, ; 587: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 588: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 589: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 266
	i32 3928044579, ; 590: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 591: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 592: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 251
	i32 3945713374, ; 593: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 594: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 595: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 209
	i32 3959773229, ; 596: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 240
	i32 3980434154, ; 597: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 310
	i32 3987592930, ; 598: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 292
	i32 4003436829, ; 599: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 600: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 208
	i32 4025784931, ; 601: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 602: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 189
	i32 4054681211, ; 603: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 604: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4070331268, ; 605: id/Microsoft.Maui.Controls.resources => 0xf29c5384 => 296
	i32 4073602200, ; 606: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 607: Microsoft.Maui.Essentials.dll => 0xf40add04 => 191
	i32 4099507663, ; 608: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 609: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 610: Xamarin.AndroidX.Emoji2 => 0xf479582c => 229
	i32 4102112229, ; 611: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 305
	i32 4119206479, ; 612: pl/Microsoft.Maui.Controls.resources => 0xf5861a4f => 303
	i32 4125707920, ; 613: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 300
	i32 4126470640, ; 614: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 180
	i32 4127667938, ; 615: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 616: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 617: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4151237749, ; 618: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 619: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 620: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 621: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 622: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 623: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 245
	i32 4185676441, ; 624: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 625: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 626: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4234116406, ; 627: pt/Microsoft.Maui.Controls.resources => 0xfc5f7d36 => 305
	i32 4256097574, ; 628: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 222
	i32 4258378803, ; 629: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 244
	i32 4260525087, ; 630: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 631: Microsoft.Maui.Controls.dll => 0xfea12dee => 188
	i32 4274623895, ; 632: CommunityToolkit.Mvvm.dll => 0xfec99597 => 176
	i32 4274976490, ; 633: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 634: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 245
	i32 4294763496 ; 635: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 231
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [636 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 241, ; 3
	i32 275, ; 4
	i32 48, ; 5
	i32 193, ; 6
	i32 80, ; 7
	i32 145, ; 8
	i32 284, ; 9
	i32 30, ; 10
	i32 124, ; 11
	i32 192, ; 12
	i32 102, ; 13
	i32 259, ; 14
	i32 314, ; 15
	i32 107, ; 16
	i32 259, ; 17
	i32 139, ; 18
	i32 279, ; 19
	i32 77, ; 20
	i32 124, ; 21
	i32 13, ; 22
	i32 215, ; 23
	i32 132, ; 24
	i32 261, ; 25
	i32 151, ; 26
	i32 313, ; 27
	i32 314, ; 28
	i32 18, ; 29
	i32 213, ; 30
	i32 26, ; 31
	i32 235, ; 32
	i32 1, ; 33
	i32 59, ; 34
	i32 42, ; 35
	i32 91, ; 36
	i32 218, ; 37
	i32 147, ; 38
	i32 237, ; 39
	i32 234, ; 40
	i32 285, ; 41
	i32 54, ; 42
	i32 69, ; 43
	i32 204, ; 44
	i32 83, ; 45
	i32 298, ; 46
	i32 236, ; 47
	i32 198, ; 48
	i32 297, ; 49
	i32 285, ; 50
	i32 131, ; 51
	i32 55, ; 52
	i32 149, ; 53
	i32 74, ; 54
	i32 145, ; 55
	i32 62, ; 56
	i32 146, ; 57
	i32 317, ; 58
	i32 165, ; 59
	i32 309, ; 60
	i32 219, ; 61
	i32 12, ; 62
	i32 232, ; 63
	i32 125, ; 64
	i32 152, ; 65
	i32 113, ; 66
	i32 166, ; 67
	i32 164, ; 68
	i32 234, ; 69
	i32 247, ; 70
	i32 84, ; 71
	i32 296, ; 72
	i32 290, ; 73
	i32 186, ; 74
	i32 150, ; 75
	i32 293, ; 76
	i32 279, ; 77
	i32 60, ; 78
	i32 182, ; 79
	i32 51, ; 80
	i32 103, ; 81
	i32 114, ; 82
	i32 40, ; 83
	i32 272, ; 84
	i32 270, ; 85
	i32 120, ; 86
	i32 304, ; 87
	i32 174, ; 88
	i32 52, ; 89
	i32 44, ; 90
	i32 119, ; 91
	i32 224, ; 92
	i32 230, ; 93
	i32 81, ; 94
	i32 136, ; 95
	i32 266, ; 96
	i32 211, ; 97
	i32 8, ; 98
	i32 73, ; 99
	i32 284, ; 100
	i32 155, ; 101
	i32 281, ; 102
	i32 154, ; 103
	i32 92, ; 104
	i32 276, ; 105
	i32 45, ; 106
	i32 299, ; 107
	i32 287, ; 108
	i32 280, ; 109
	i32 109, ; 110
	i32 129, ; 111
	i32 196, ; 112
	i32 25, ; 113
	i32 201, ; 114
	i32 72, ; 115
	i32 55, ; 116
	i32 46, ; 117
	i32 185, ; 118
	i32 225, ; 119
	i32 22, ; 120
	i32 239, ; 121
	i32 86, ; 122
	i32 43, ; 123
	i32 160, ; 124
	i32 71, ; 125
	i32 252, ; 126
	i32 283, ; 127
	i32 3, ; 128
	i32 42, ; 129
	i32 63, ; 130
	i32 16, ; 131
	i32 53, ; 132
	i32 311, ; 133
	i32 275, ; 134
	i32 105, ; 135
	i32 193, ; 136
	i32 280, ; 137
	i32 273, ; 138
	i32 236, ; 139
	i32 34, ; 140
	i32 158, ; 141
	i32 85, ; 142
	i32 32, ; 143
	i32 12, ; 144
	i32 315, ; 145
	i32 51, ; 146
	i32 289, ; 147
	i32 56, ; 148
	i32 0, ; 149
	i32 256, ; 150
	i32 36, ; 151
	i32 181, ; 152
	i32 286, ; 153
	i32 274, ; 154
	i32 209, ; 155
	i32 35, ; 156
	i32 58, ; 157
	i32 243, ; 158
	i32 177, ; 159
	i32 17, ; 160
	i32 277, ; 161
	i32 164, ; 162
	i32 242, ; 163
	i32 184, ; 164
	i32 269, ; 165
	i32 153, ; 166
	i32 265, ; 167
	i32 250, ; 168
	i32 290, ; 169
	i32 303, ; 170
	i32 211, ; 171
	i32 29, ; 172
	i32 176, ; 173
	i32 52, ; 174
	i32 301, ; 175
	i32 270, ; 176
	i32 5, ; 177
	i32 260, ; 178
	i32 264, ; 179
	i32 216, ; 180
	i32 281, ; 181
	i32 208, ; 182
	i32 197, ; 183
	i32 227, ; 184
	i32 85, ; 185
	i32 269, ; 186
	i32 61, ; 187
	i32 112, ; 188
	i32 57, ; 189
	i32 256, ; 190
	i32 99, ; 191
	i32 19, ; 192
	i32 220, ; 193
	i32 111, ; 194
	i32 101, ; 195
	i32 102, ; 196
	i32 104, ; 197
	i32 273, ; 198
	i32 71, ; 199
	i32 38, ; 200
	i32 32, ; 201
	i32 103, ; 202
	i32 73, ; 203
	i32 9, ; 204
	i32 123, ; 205
	i32 46, ; 206
	i32 210, ; 207
	i32 186, ; 208
	i32 9, ; 209
	i32 43, ; 210
	i32 4, ; 211
	i32 257, ; 212
	i32 293, ; 213
	i32 288, ; 214
	i32 31, ; 215
	i32 138, ; 216
	i32 92, ; 217
	i32 93, ; 218
	i32 308, ; 219
	i32 291, ; 220
	i32 49, ; 221
	i32 141, ; 222
	i32 112, ; 223
	i32 140, ; 224
	i32 309, ; 225
	i32 226, ; 226
	i32 316, ; 227
	i32 115, ; 228
	i32 274, ; 229
	i32 157, ; 230
	i32 195, ; 231
	i32 76, ; 232
	i32 79, ; 233
	i32 246, ; 234
	i32 37, ; 235
	i32 268, ; 236
	i32 175, ; 237
	i32 230, ; 238
	i32 223, ; 239
	i32 64, ; 240
	i32 138, ; 241
	i32 15, ; 242
	i32 116, ; 243
	i32 262, ; 244
	i32 271, ; 245
	i32 195, ; 246
	i32 218, ; 247
	i32 48, ; 248
	i32 70, ; 249
	i32 80, ; 250
	i32 126, ; 251
	i32 94, ; 252
	i32 121, ; 253
	i32 278, ; 254
	i32 26, ; 255
	i32 198, ; 256
	i32 239, ; 257
	i32 97, ; 258
	i32 28, ; 259
	i32 214, ; 260
	i32 306, ; 261
	i32 149, ; 262
	i32 169, ; 263
	i32 4, ; 264
	i32 98, ; 265
	i32 33, ; 266
	i32 93, ; 267
	i32 261, ; 268
	i32 182, ; 269
	i32 21, ; 270
	i32 41, ; 271
	i32 170, ; 272
	i32 232, ; 273
	i32 246, ; 274
	i32 301, ; 275
	i32 277, ; 276
	i32 271, ; 277
	i32 251, ; 278
	i32 2, ; 279
	i32 295, ; 280
	i32 134, ; 281
	i32 111, ; 282
	i32 183, ; 283
	i32 312, ; 284
	i32 201, ; 285
	i32 58, ; 286
	i32 95, ; 287
	i32 39, ; 288
	i32 212, ; 289
	i32 25, ; 290
	i32 94, ; 291
	i32 89, ; 292
	i32 99, ; 293
	i32 10, ; 294
	i32 87, ; 295
	i32 100, ; 296
	i32 298, ; 297
	i32 258, ; 298
	i32 178, ; 299
	i32 173, ; 300
	i32 278, ; 301
	i32 203, ; 302
	i32 7, ; 303
	i32 294, ; 304
	i32 243, ; 305
	i32 283, ; 306
	i32 200, ; 307
	i32 297, ; 308
	i32 88, ; 309
	i32 238, ; 310
	i32 154, ; 311
	i32 33, ; 312
	i32 116, ; 313
	i32 82, ; 314
	i32 199, ; 315
	i32 20, ; 316
	i32 11, ; 317
	i32 162, ; 318
	i32 3, ; 319
	i32 299, ; 320
	i32 190, ; 321
	i32 306, ; 322
	i32 185, ; 323
	i32 183, ; 324
	i32 84, ; 325
	i32 282, ; 326
	i32 64, ; 327
	i32 265, ; 328
	i32 143, ; 329
	i32 247, ; 330
	i32 157, ; 331
	i32 41, ; 332
	i32 117, ; 333
	i32 179, ; 334
	i32 202, ; 335
	i32 291, ; 336
	i32 254, ; 337
	i32 310, ; 338
	i32 131, ; 339
	i32 75, ; 340
	i32 66, ; 341
	i32 172, ; 342
	i32 206, ; 343
	i32 143, ; 344
	i32 0, ; 345
	i32 106, ; 346
	i32 151, ; 347
	i32 70, ; 348
	i32 156, ; 349
	i32 311, ; 350
	i32 178, ; 351
	i32 121, ; 352
	i32 127, ; 353
	i32 152, ; 354
	i32 229, ; 355
	i32 141, ; 356
	i32 302, ; 357
	i32 216, ; 358
	i32 20, ; 359
	i32 14, ; 360
	i32 135, ; 361
	i32 75, ; 362
	i32 59, ; 363
	i32 196, ; 364
	i32 219, ; 365
	i32 167, ; 366
	i32 168, ; 367
	i32 188, ; 368
	i32 15, ; 369
	i32 74, ; 370
	i32 6, ; 371
	i32 23, ; 372
	i32 241, ; 373
	i32 308, ; 374
	i32 200, ; 375
	i32 91, ; 376
	i32 1, ; 377
	i32 136, ; 378
	i32 242, ; 379
	i32 264, ; 380
	i32 134, ; 381
	i32 69, ; 382
	i32 146, ; 383
	i32 282, ; 384
	i32 233, ; 385
	i32 184, ; 386
	i32 88, ; 387
	i32 96, ; 388
	i32 223, ; 389
	i32 228, ; 390
	i32 31, ; 391
	i32 45, ; 392
	i32 237, ; 393
	i32 202, ; 394
	i32 109, ; 395
	i32 158, ; 396
	i32 35, ; 397
	i32 22, ; 398
	i32 114, ; 399
	i32 57, ; 400
	i32 262, ; 401
	i32 144, ; 402
	i32 118, ; 403
	i32 120, ; 404
	i32 110, ; 405
	i32 204, ; 406
	i32 139, ; 407
	i32 210, ; 408
	i32 54, ; 409
	i32 105, ; 410
	i32 189, ; 411
	i32 190, ; 412
	i32 133, ; 413
	i32 276, ; 414
	i32 267, ; 415
	i32 255, ; 416
	i32 233, ; 417
	i32 192, ; 418
	i32 312, ; 419
	i32 159, ; 420
	i32 289, ; 421
	i32 220, ; 422
	i32 163, ; 423
	i32 132, ; 424
	i32 255, ; 425
	i32 161, ; 426
	i32 302, ; 427
	i32 244, ; 428
	i32 140, ; 429
	i32 267, ; 430
	i32 263, ; 431
	i32 288, ; 432
	i32 169, ; 433
	i32 191, ; 434
	i32 175, ; 435
	i32 205, ; 436
	i32 272, ; 437
	i32 40, ; 438
	i32 307, ; 439
	i32 231, ; 440
	i32 81, ; 441
	i32 56, ; 442
	i32 37, ; 443
	i32 97, ; 444
	i32 166, ; 445
	i32 172, ; 446
	i32 268, ; 447
	i32 82, ; 448
	i32 207, ; 449
	i32 98, ; 450
	i32 30, ; 451
	i32 159, ; 452
	i32 18, ; 453
	i32 127, ; 454
	i32 119, ; 455
	i32 227, ; 456
	i32 258, ; 457
	i32 240, ; 458
	i32 260, ; 459
	i32 165, ; 460
	i32 235, ; 461
	i32 317, ; 462
	i32 257, ; 463
	i32 248, ; 464
	i32 170, ; 465
	i32 16, ; 466
	i32 144, ; 467
	i32 295, ; 468
	i32 125, ; 469
	i32 118, ; 470
	i32 38, ; 471
	i32 115, ; 472
	i32 47, ; 473
	i32 142, ; 474
	i32 117, ; 475
	i32 34, ; 476
	i32 177, ; 477
	i32 95, ; 478
	i32 53, ; 479
	i32 249, ; 480
	i32 129, ; 481
	i32 153, ; 482
	i32 24, ; 483
	i32 161, ; 484
	i32 226, ; 485
	i32 148, ; 486
	i32 104, ; 487
	i32 89, ; 488
	i32 214, ; 489
	i32 60, ; 490
	i32 142, ; 491
	i32 100, ; 492
	i32 5, ; 493
	i32 13, ; 494
	i32 194, ; 495
	i32 122, ; 496
	i32 135, ; 497
	i32 28, ; 498
	i32 72, ; 499
	i32 224, ; 500
	i32 24, ; 501
	i32 212, ; 502
	i32 253, ; 503
	i32 250, ; 504
	i32 137, ; 505
	i32 197, ; 506
	i32 205, ; 507
	i32 221, ; 508
	i32 168, ; 509
	i32 254, ; 510
	i32 101, ; 511
	i32 123, ; 512
	i32 225, ; 513
	i32 180, ; 514
	i32 163, ; 515
	i32 167, ; 516
	i32 228, ; 517
	i32 39, ; 518
	i32 187, ; 519
	i32 294, ; 520
	i32 17, ; 521
	i32 171, ; 522
	i32 307, ; 523
	i32 137, ; 524
	i32 150, ; 525
	i32 217, ; 526
	i32 155, ; 527
	i32 130, ; 528
	i32 19, ; 529
	i32 65, ; 530
	i32 313, ; 531
	i32 147, ; 532
	i32 47, ; 533
	i32 287, ; 534
	i32 203, ; 535
	i32 79, ; 536
	i32 61, ; 537
	i32 286, ; 538
	i32 106, ; 539
	i32 252, ; 540
	i32 207, ; 541
	i32 49, ; 542
	i32 238, ; 543
	i32 249, ; 544
	i32 14, ; 545
	i32 304, ; 546
	i32 179, ; 547
	i32 68, ; 548
	i32 292, ; 549
	i32 171, ; 550
	i32 213, ; 551
	i32 217, ; 552
	i32 300, ; 553
	i32 316, ; 554
	i32 78, ; 555
	i32 222, ; 556
	i32 108, ; 557
	i32 206, ; 558
	i32 248, ; 559
	i32 67, ; 560
	i32 63, ; 561
	i32 27, ; 562
	i32 160, ; 563
	i32 199, ; 564
	i32 215, ; 565
	i32 10, ; 566
	i32 173, ; 567
	i32 187, ; 568
	i32 11, ; 569
	i32 174, ; 570
	i32 78, ; 571
	i32 126, ; 572
	i32 83, ; 573
	i32 181, ; 574
	i32 66, ; 575
	i32 107, ; 576
	i32 65, ; 577
	i32 128, ; 578
	i32 122, ; 579
	i32 194, ; 580
	i32 77, ; 581
	i32 263, ; 582
	i32 253, ; 583
	i32 315, ; 584
	i32 8, ; 585
	i32 221, ; 586
	i32 2, ; 587
	i32 44, ; 588
	i32 266, ; 589
	i32 156, ; 590
	i32 128, ; 591
	i32 251, ; 592
	i32 23, ; 593
	i32 133, ; 594
	i32 209, ; 595
	i32 240, ; 596
	i32 310, ; 597
	i32 292, ; 598
	i32 29, ; 599
	i32 208, ; 600
	i32 62, ; 601
	i32 189, ; 602
	i32 90, ; 603
	i32 87, ; 604
	i32 296, ; 605
	i32 148, ; 606
	i32 191, ; 607
	i32 36, ; 608
	i32 86, ; 609
	i32 229, ; 610
	i32 305, ; 611
	i32 303, ; 612
	i32 300, ; 613
	i32 180, ; 614
	i32 50, ; 615
	i32 6, ; 616
	i32 90, ; 617
	i32 21, ; 618
	i32 162, ; 619
	i32 96, ; 620
	i32 50, ; 621
	i32 113, ; 622
	i32 245, ; 623
	i32 130, ; 624
	i32 76, ; 625
	i32 27, ; 626
	i32 305, ; 627
	i32 222, ; 628
	i32 244, ; 629
	i32 7, ; 630
	i32 188, ; 631
	i32 176, ; 632
	i32 110, ; 633
	i32 245, ; 634
	i32 231 ; 635
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
