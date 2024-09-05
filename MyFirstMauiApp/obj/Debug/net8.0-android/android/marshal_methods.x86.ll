; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [326 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [646 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 242
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 276
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39109920, ; 6: Newtonsoft.Json.dll => 0x254c520 => 193
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 8: System.Threading.Thread => 0x28aa24d => 145
	i32 53857724, ; 9: ca/Microsoft.Maui.Controls.resources => 0x335cdbc => 289
	i32 66541672, ; 10: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 68219467, ; 11: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 12: Microsoft.Maui.Graphics.dll => 0x44bb714 => 192
	i32 82292897, ; 13: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 14: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 260
	i32 113429830, ; 15: zh-HK/Microsoft.Maui.Controls.resources => 0x6c2cd46 => 319
	i32 117431740, ; 16: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 17: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 260
	i32 122350210, ; 18: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 19: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 284
	i32 142721839, ; 20: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 21: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 22: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 23: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 216
	i32 176265551, ; 24: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 25: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 262
	i32 184328833, ; 26: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 27: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 318
	i32 199333315, ; 28: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 319
	i32 205061960, ; 29: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 30: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 214
	i32 220171995, ; 31: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 32: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 236
	i32 230752869, ; 33: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 34: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 35: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 36: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 37: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 219
	i32 276479776, ; 38: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 39: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 238
	i32 280482487, ; 40: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 235
	i32 280992041, ; 41: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 290
	i32 291076382, ; 42: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 43: System.Net.Ping.dll => 0x11d123fd => 69
	i32 318968648, ; 44: Xamarin.AndroidX.Activity.dll => 0x13031348 => 205
	i32 321597661, ; 45: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 46: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 303
	i32 342366114, ; 47: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 237
	i32 347068432, ; 48: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 199
	i32 356389973, ; 49: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 302
	i32 357576608, ; 50: cs/Microsoft.Maui.Controls.resources => 0x15502fa0 => 290
	i32 360082299, ; 51: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 52: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 53: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 54: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 55: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 56: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 57: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 58: _Microsoft.Android.Resource.Designer => 0x17969339 => 322
	i32 403441872, ; 59: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 60: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 314
	i32 441335492, ; 61: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 220
	i32 442565967, ; 62: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 63: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 233
	i32 451504562, ; 64: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 65: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 66: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 67: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 68: System.dll => 0x1bff388e => 164
	i32 476646585, ; 69: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 235
	i32 486930444, ; 70: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 248
	i32 498788369, ; 71: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 72: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 301
	i32 503918385, ; 73: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 295
	i32 504143952, ; 74: Plugin.LocalNotification.dll => 0x1e0ca050 => 194
	i32 513247710, ; 75: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 186
	i32 526420162, ; 76: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527168573, ; 77: hi/Microsoft.Maui.Controls.resources => 0x1f6bf43d => 298
	i32 527452488, ; 78: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 284
	i32 530272170, ; 79: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 80: Microsoft.Extensions.Logging => 0x20216150 => 182
	i32 540030774, ; 81: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 82: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 83: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 84: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 85: Jsr305Binding => 0x213954e7 => 273
	i32 569601784, ; 86: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 271
	i32 577335427, ; 87: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 88: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 309
	i32 597488923, ; 89: CommunityToolkit.Maui => 0x239cf51b => 174
	i32 601371474, ; 90: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 91: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 92: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 93: Xamarin.AndroidX.CustomView => 0x2568904f => 225
	i32 639843206, ; 94: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 231
	i32 643868501, ; 95: System.Net => 0x2660a755 => 81
	i32 662205335, ; 96: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 97: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 267
	i32 666292255, ; 98: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 212
	i32 672442732, ; 99: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 100: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 101: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 289
	i32 690569205, ; 102: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 103: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 286
	i32 693804605, ; 104: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 105: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 106: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 281
	i32 700358131, ; 107: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 108: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 304
	i32 709557578, ; 109: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 292
	i32 720511267, ; 110: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 285
	i32 722857257, ; 111: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 112: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 748832960, ; 113: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 197
	i32 752232764, ; 114: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 115: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 202
	i32 759454413, ; 116: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 117: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 118: System.IO.Compression => 0x2e394f87 => 46
	i32 789151979, ; 119: Microsoft.Extensions.Options => 0x2f0980eb => 185
	i32 790371945, ; 120: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 226
	i32 804715423, ; 121: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 122: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 240
	i32 823281589, ; 123: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 124: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 125: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 126: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 127: Xamarin.AndroidX.Print => 0x3246f6cd => 253
	i32 870878177, ; 128: ar/Microsoft.Maui.Controls.resources => 0x33e88be1 => 288
	i32 873119928, ; 129: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 130: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 131: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 132: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 133: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 134: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 316
	i32 928116545, ; 135: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 276
	i32 952186615, ; 136: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 955402788, ; 137: Newtonsoft.Json => 0x38f24a24 => 193
	i32 956575887, ; 138: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 285
	i32 966729478, ; 139: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 274
	i32 967690846, ; 140: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 237
	i32 975236339, ; 141: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 142: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 143: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 144: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 145: System.Collections.dll => 0x3b2c715c => 12
	i32 993161700, ; 146: zh-Hans/Microsoft.Maui.Controls.resources => 0x3b3271e4 => 320
	i32 994442037, ; 147: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 994547685, ; 148: es/Microsoft.Maui.Controls.resources => 0x3b4797e5 => 294
	i32 1001831731, ; 149: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1004948558, ; 150: MyFirstMauiApp => 0x3be64c4e => 0
	i32 1012816738, ; 151: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 257
	i32 1019214401, ; 152: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 153: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 181
	i32 1029334545, ; 154: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 291
	i32 1031528504, ; 155: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 275
	i32 1035644815, ; 156: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 210
	i32 1036536393, ; 157: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 158: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 159: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 244
	i32 1067306892, ; 160: GoogleGson => 0x3f9dcf8c => 177
	i32 1082857460, ; 161: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 162: Xamarin.Kotlin.StdLib => 0x409e66d8 => 282
	i32 1098259244, ; 163: System => 0x41761b2c => 164
	i32 1121599056, ; 164: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 243
	i32 1127624469, ; 165: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 184
	i32 1149092582, ; 166: Xamarin.AndroidX.Window => 0x447dc2e6 => 270
	i32 1170634674, ; 167: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 168: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 266
	i32 1178241025, ; 169: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 251
	i32 1178797549, ; 170: fi/Microsoft.Maui.Controls.resources => 0x464305ed => 295
	i32 1203215381, ; 171: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 308
	i32 1204270330, ; 172: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 212
	i32 1208641965, ; 173: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1214827643, ; 174: CommunityToolkit.Mvvm => 0x4868cc7b => 176
	i32 1219128291, ; 175: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 176: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 306
	i32 1243150071, ; 177: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 271
	i32 1253011324, ; 178: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1264511973, ; 179: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 261
	i32 1267360935, ; 180: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 265
	i32 1273260888, ; 181: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 217
	i32 1275534314, ; 182: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 286
	i32 1278448581, ; 183: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 209
	i32 1292207520, ; 184: SQLitePCLRaw.core.dll => 0x4d0585a0 => 198
	i32 1293217323, ; 185: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 228
	i32 1309188875, ; 186: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 187: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 270
	i32 1324164729, ; 188: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 189: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 190: System.IO => 0x514d38cd => 57
	i32 1376866003, ; 191: Xamarin.AndroidX.SavedState => 0x52114ed3 => 257
	i32 1379779777, ; 192: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 193: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 194: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 221
	i32 1408764838, ; 195: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 196: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 197: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1434145427, ; 198: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 199: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 274
	i32 1439761251, ; 200: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 201: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 202: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 203: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 204: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461234159, ; 205: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 206: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 207: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 208: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 211
	i32 1470490898, ; 209: Microsoft.Extensions.Primitives => 0x57a5e912 => 186
	i32 1479771757, ; 210: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 211: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 212: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 213: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 258
	i32 1493001747, ; 214: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 298
	i32 1514721132, ; 215: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 293
	i32 1524747670, ; 216: Plugin.LocalNotification => 0x5ae1cd96 => 194
	i32 1536373174, ; 217: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 218: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 219: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 220: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 221: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 313
	i32 1554762148, ; 222: fr/Microsoft.Maui.Controls.resources => 0x5cabc9a4 => 296
	i32 1565862583, ; 223: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 224: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 225: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 226: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1580413037, ; 227: sv/Microsoft.Maui.Controls.resources => 0x5e33306d => 314
	i32 1582372066, ; 228: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 227
	i32 1591080825, ; 229: zh-Hant/Microsoft.Maui.Controls.resources => 0x5ed5f779 => 321
	i32 1592978981, ; 230: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 231: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 275
	i32 1601112923, ; 232: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604451928, ; 233: SQLiteNetExtensions => 0x5fa1fe58 => 196
	i32 1604827217, ; 234: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 235: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 236: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 247
	i32 1622358360, ; 237: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 238: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 269
	i32 1634654947, ; 239: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 175
	i32 1635184631, ; 240: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 231
	i32 1636350590, ; 241: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 224
	i32 1639515021, ; 242: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 243: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 244: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 245: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 246: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 263
	i32 1658251792, ; 247: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 272
	i32 1666713512, ; 248: SQLiteNetExtensions.dll => 0x635807a8 => 196
	i32 1670060433, ; 249: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 219
	i32 1675553242, ; 250: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 251: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 252: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 253: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 254: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 255: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 256: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 283
	i32 1701541528, ; 257: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1711441057, ; 258: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 199
	i32 1720223769, ; 259: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 240
	i32 1726116996, ; 260: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 261: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 262: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 215
	i32 1736233607, ; 263: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 311
	i32 1744735666, ; 264: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 265: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 266: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 267: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 268: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 269: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 270: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 262
	i32 1770582343, ; 271: Microsoft.Extensions.Logging.dll => 0x6988f147 => 182
	i32 1776026572, ; 272: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 273: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 274: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1788241197, ; 275: Xamarin.AndroidX.Fragment => 0x6a96652d => 233
	i32 1808609942, ; 276: Xamarin.AndroidX.Loader => 0x6bcd3296 => 247
	i32 1809966115, ; 277: nb/Microsoft.Maui.Controls.resources => 0x6be1e423 => 306
	i32 1813058853, ; 278: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 282
	i32 1813201214, ; 279: Xamarin.Google.Android.Material => 0x6c13413e => 272
	i32 1818569960, ; 280: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 252
	i32 1818787751, ; 281: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1821794637, ; 282: hu/Microsoft.Maui.Controls.resources => 0x6c96614d => 300
	i32 1824175904, ; 283: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 284: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 285: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 183
	i32 1842015223, ; 286: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 317
	i32 1847515442, ; 287: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 202
	i32 1858542181, ; 288: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 289: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1879696579, ; 290: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 291: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 213
	i32 1888955245, ; 292: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 293: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 294: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 295: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1908813208, ; 296: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 278
	i32 1910275211, ; 297: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 298: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 299: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1960264639, ; 300: ja/Microsoft.Maui.Controls.resources => 0x74d743bf => 303
	i32 1961813231, ; 301: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 259
	i32 1968388702, ; 302: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 178
	i32 1968499395, ; 303: AsyncAwaitBestPractices => 0x7554eac3 => 173
	i32 1983156543, ; 304: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 283
	i32 1985761444, ; 305: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 204
	i32 2011961780, ; 306: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2014344398, ; 307: hr/Microsoft.Maui.Controls.resources => 0x781074ce => 299
	i32 2019465201, ; 308: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 244
	i32 2025202353, ; 309: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 288
	i32 2031763787, ; 310: Xamarin.Android.Glide => 0x791a414b => 201
	i32 2043674646, ; 311: it/Microsoft.Maui.Controls.resources => 0x79d00016 => 302
	i32 2045470958, ; 312: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 313: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 239
	i32 2060060697, ; 314: System.Windows.dll => 0x7aca0819 => 154
	i32 2070888862, ; 315: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 316: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 317: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2103459038, ; 318: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 200
	i32 2127167465, ; 319: System.Console => 0x7ec9ffe9 => 20
	i32 2129483829, ; 320: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 277
	i32 2142473426, ; 321: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 322: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 323: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2150663486, ; 324: ko/Microsoft.Maui.Controls.resources => 0x8030853e => 304
	i32 2159891885, ; 325: Microsoft.Maui => 0x80bd55ad => 190
	i32 2165051842, ; 326: ro/Microsoft.Maui.Controls.resources => 0x810c11c2 => 311
	i32 2181898931, ; 327: Microsoft.Extensions.Options.dll => 0x820d22b3 => 185
	i32 2192057212, ; 328: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 183
	i32 2193016926, ; 329: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 330: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 287
	i32 2201231467, ; 331: System.Net.Http => 0x8334206b => 64
	i32 2217644978, ; 332: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 266
	i32 2222056684, ; 333: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 334: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 248
	i32 2252106437, ; 335: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 336: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 337: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 338: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 179
	i32 2267999099, ; 339: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 203
	i32 2270573516, ; 340: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 296
	i32 2279755925, ; 341: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 255
	i32 2289298199, ; 342: th/Microsoft.Maui.Controls.resources => 0x8873eb17 => 315
	i32 2293034957, ; 343: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 344: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 345: System.Net.Mail => 0x88ffe49e => 66
	i32 2305521784, ; 346: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 347: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 207
	i32 2320631194, ; 348: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2322113089, ; 349: MyFirstMauiApp.dll => 0x8a68a241 => 0
	i32 2340441535, ; 350: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 351: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 352: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 353: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369760409, ; 354: tr/Microsoft.Maui.Controls.resources => 0x8d3fac99 => 316
	i32 2371007202, ; 355: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 178
	i32 2378619854, ; 356: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 357: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2401565422, ; 358: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 359: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 230
	i32 2421380589, ; 360: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2421992093, ; 361: nl/Microsoft.Maui.Controls.resources => 0x905caa9d => 307
	i32 2423080555, ; 362: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 217
	i32 2435356389, ; 363: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 364: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 365: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 366: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 367: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465273461, ; 368: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 197
	i32 2465532216, ; 369: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 220
	i32 2471841756, ; 370: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 371: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 372: Microsoft.Maui.Controls => 0x93dba8a1 => 188
	i32 2483903535, ; 373: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 374: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 375: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 376: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 377: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 242
	i32 2520433370, ; 378: sk/Microsoft.Maui.Controls.resources => 0x963ac2da => 313
	i32 2522472828, ; 379: Xamarin.Android.Glide.dll => 0x9659e17c => 201
	i32 2538310050, ; 380: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2562349572, ; 381: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 382: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 383: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 243
	i32 2581819634, ; 384: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 265
	i32 2585220780, ; 385: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 386: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 387: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2605712449, ; 388: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 287
	i32 2615233544, ; 389: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 234
	i32 2616218305, ; 390: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 184
	i32 2617129537, ; 391: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 392: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 393: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 224
	i32 2624644809, ; 394: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 229
	i32 2627185994, ; 395: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 396: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 397: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 238
	i32 2663391936, ; 398: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 203
	i32 2663698177, ; 399: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 400: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 401: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 402: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 403: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 404: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 405: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 263
	i32 2715334215, ; 406: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 407: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 408: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 409: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 410: Xamarin.AndroidX.Activity => 0xa2e0939b => 205
	i32 2735172069, ; 411: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 412: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 211
	i32 2740948882, ; 413: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 414: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2758225723, ; 415: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 189
	i32 2764765095, ; 416: Microsoft.Maui.dll => 0xa4caf7a7 => 190
	i32 2765824710, ; 417: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 418: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 281
	i32 2778768386, ; 419: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 268
	i32 2779977773, ; 420: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 256
	i32 2788224221, ; 421: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 234
	i32 2801831435, ; 422: Microsoft.Maui.Graphics => 0xa7008e0b => 192
	i32 2802068195, ; 423: uk/Microsoft.Maui.Controls.resources => 0xa7042ae3 => 317
	i32 2803228030, ; 424: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 425: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 294
	i32 2810250172, ; 426: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 221
	i32 2819470561, ; 427: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 428: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 429: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 256
	i32 2824502124, ; 430: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 431: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 307
	i32 2838993487, ; 432: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 245
	i32 2847418871, ; 433: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 277
	i32 2849599387, ; 434: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 435: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 268
	i32 2855708567, ; 436: Xamarin.AndroidX.Transition => 0xaa36a797 => 264
	i32 2857259519, ; 437: el/Microsoft.Maui.Controls.resources => 0xaa4e51ff => 293
	i32 2861098320, ; 438: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 439: Microsoft.Maui.Essentials => 0xaa8a4878 => 191
	i32 2868488919, ; 440: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 175
	i32 2870099610, ; 441: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 206
	i32 2875164099, ; 442: Jsr305Binding.dll => 0xab5f85c3 => 273
	i32 2875220617, ; 443: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2883495834, ; 444: ru/Microsoft.Maui.Controls.resources => 0xabdea79a => 312
	i32 2884993177, ; 445: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 232
	i32 2887636118, ; 446: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 447: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 448: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 449: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 450: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 451: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 452: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 269
	i32 2919462931, ; 453: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 454: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 208
	i32 2936416060, ; 455: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 456: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 457: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 458: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 459: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 460: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 461: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 228
	i32 2987532451, ; 462: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 259
	i32 2996846495, ; 463: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 241
	i32 3016983068, ; 464: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 261
	i32 3023353419, ; 465: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 466: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 236
	i32 3038032645, ; 467: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 322
	i32 3056245963, ; 468: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 258
	i32 3057625584, ; 469: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 249
	i32 3058099980, ; 470: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 280
	i32 3059408633, ; 471: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 472: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 473: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 474: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 300
	i32 3090735792, ; 475: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 476: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 477: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 478: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 479: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 480: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 481: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 482: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 483: GoogleGson.dll => 0xbba64c02 => 177
	i32 3159123045, ; 484: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 485: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 486: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 250
	i32 3192346100, ; 487: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 488: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 489: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 490: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 491: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 227
	i32 3220365878, ; 492: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 493: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3230466174, ; 494: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 278
	i32 3251039220, ; 495: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 496: Xamarin.AndroidX.CardView => 0xc235e84d => 215
	i32 3265493905, ; 497: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 498: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 499: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 500: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 501: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3286872994, ; 502: SQLite-net.dll => 0xc3e9b3a2 => 195
	i32 3290767353, ; 503: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 504: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 505: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3316684772, ; 506: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 507: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 225
	i32 3317144872, ; 508: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 509: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 213
	i32 3345895724, ; 510: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 254
	i32 3346324047, ; 511: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 251
	i32 3358260929, ; 512: System.Text.Json => 0xc82afec1 => 137
	i32 3360279109, ; 513: SQLitePCLRaw.core => 0xc849ca45 => 198
	i32 3362336904, ; 514: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 206
	i32 3362522851, ; 515: Xamarin.AndroidX.Core => 0xc86c06e3 => 222
	i32 3366347497, ; 516: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 517: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 255
	i32 3395150330, ; 518: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 519: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 520: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 226
	i32 3428513518, ; 521: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 180
	i32 3429136800, ; 522: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 523: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 524: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 229
	i32 3445260447, ; 525: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 526: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 187
	i32 3463511458, ; 527: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 299
	i32 3471940407, ; 528: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 529: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 530: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 312
	i32 3485117614, ; 531: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 532: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 533: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 218
	i32 3494395880, ; 534: Xamarin.GooglePlayServices.Location.dll => 0xd0483fe8 => 279
	i32 3509114376, ; 535: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 536: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 537: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 538: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3542658132, ; 539: vi/Microsoft.Maui.Controls.resources => 0xd328ac54 => 318
	i32 3560100363, ; 540: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 541: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3596930546, ; 542: de/Microsoft.Maui.Controls.resources => 0xd664cdf2 => 292
	i32 3597029428, ; 543: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 204
	i32 3598340787, ; 544: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 545: System.Linq.dll => 0xd715a361 => 61
	i32 3623444314, ; 546: da/Microsoft.Maui.Controls.resources => 0xd7f95f5a => 291
	i32 3624195450, ; 547: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 548: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 253
	i32 3633644679, ; 549: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 208
	i32 3638274909, ; 550: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 551: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 239
	i32 3643854240, ; 552: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 250
	i32 3645089577, ; 553: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3647796983, ; 554: pt-BR/Microsoft.Maui.Controls.resources => 0xd96cf6f7 => 309
	i32 3657292374, ; 555: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 179
	i32 3660523487, ; 556: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3662115805, ; 557: he/Microsoft.Maui.Controls.resources => 0xda4773dd => 297
	i32 3672681054, ; 558: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 559: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 214
	i32 3684561358, ; 560: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 218
	i32 3686075795, ; 561: ms/Microsoft.Maui.Controls.resources => 0xdbb50d93 => 305
	i32 3697841164, ; 562: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 321
	i32 3700866549, ; 563: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 564: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 223
	i32 3716563718, ; 565: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 566: Xamarin.AndroidX.Annotation => 0xdda814c6 => 207
	i32 3724971120, ; 567: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 249
	i32 3732100267, ; 568: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 569: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 570: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 571: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3754567612, ; 572: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 200
	i32 3786282454, ; 573: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 216
	i32 3792276235, ; 574: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3793321889, ; 575: AsyncAwaitBestPractices.dll => 0xe2197fa1 => 173
	i32 3800979733, ; 576: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 187
	i32 3802395368, ; 577: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3817368567, ; 578: CommunityToolkit.Maui.dll => 0xe3886bf7 => 174
	i32 3819260425, ; 579: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 580: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 581: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 582: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 181
	i32 3844307129, ; 583: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 584: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 585: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 586: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 587: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3876362041, ; 588: SQLite-net => 0xe70c9739 => 195
	i32 3885497537, ; 589: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 590: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 264
	i32 3888767677, ; 591: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 254
	i32 3889960447, ; 592: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 320
	i32 3896106733, ; 593: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 594: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 222
	i32 3901907137, ; 595: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 596: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 597: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 267
	i32 3928044579, ; 598: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 599: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 600: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 252
	i32 3945713374, ; 601: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 602: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 603: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 210
	i32 3959773229, ; 604: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 241
	i32 3967165417, ; 605: Xamarin.GooglePlayServices.Location => 0xec7623e9 => 279
	i32 3970018735, ; 606: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 280
	i32 3980434154, ; 607: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 315
	i32 3987592930, ; 608: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 297
	i32 4003436829, ; 609: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 610: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 209
	i32 4025784931, ; 611: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 612: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 189
	i32 4054681211, ; 613: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 614: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4070331268, ; 615: id/Microsoft.Maui.Controls.resources => 0xf29c5384 => 301
	i32 4073602200, ; 616: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 617: Microsoft.Maui.Essentials.dll => 0xf40add04 => 191
	i32 4099507663, ; 618: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 619: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 620: Xamarin.AndroidX.Emoji2 => 0xf479582c => 230
	i32 4102112229, ; 621: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 310
	i32 4119206479, ; 622: pl/Microsoft.Maui.Controls.resources => 0xf5861a4f => 308
	i32 4125707920, ; 623: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 305
	i32 4126470640, ; 624: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 180
	i32 4127667938, ; 625: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 626: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 627: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4151237749, ; 628: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 629: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 630: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 631: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 632: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 633: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 246
	i32 4185676441, ; 634: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 635: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 636: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4234116406, ; 637: pt/Microsoft.Maui.Controls.resources => 0xfc5f7d36 => 310
	i32 4256097574, ; 638: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 223
	i32 4258378803, ; 639: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 245
	i32 4260525087, ; 640: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 641: Microsoft.Maui.Controls.dll => 0xfea12dee => 188
	i32 4274623895, ; 642: CommunityToolkit.Mvvm.dll => 0xfec99597 => 176
	i32 4274976490, ; 643: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 644: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 246
	i32 4294763496 ; 645: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 232
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [646 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 242, ; 3
	i32 276, ; 4
	i32 48, ; 5
	i32 193, ; 6
	i32 80, ; 7
	i32 145, ; 8
	i32 289, ; 9
	i32 30, ; 10
	i32 124, ; 11
	i32 192, ; 12
	i32 102, ; 13
	i32 260, ; 14
	i32 319, ; 15
	i32 107, ; 16
	i32 260, ; 17
	i32 139, ; 18
	i32 284, ; 19
	i32 77, ; 20
	i32 124, ; 21
	i32 13, ; 22
	i32 216, ; 23
	i32 132, ; 24
	i32 262, ; 25
	i32 151, ; 26
	i32 318, ; 27
	i32 319, ; 28
	i32 18, ; 29
	i32 214, ; 30
	i32 26, ; 31
	i32 236, ; 32
	i32 1, ; 33
	i32 59, ; 34
	i32 42, ; 35
	i32 91, ; 36
	i32 219, ; 37
	i32 147, ; 38
	i32 238, ; 39
	i32 235, ; 40
	i32 290, ; 41
	i32 54, ; 42
	i32 69, ; 43
	i32 205, ; 44
	i32 83, ; 45
	i32 303, ; 46
	i32 237, ; 47
	i32 199, ; 48
	i32 302, ; 49
	i32 290, ; 50
	i32 131, ; 51
	i32 55, ; 52
	i32 149, ; 53
	i32 74, ; 54
	i32 145, ; 55
	i32 62, ; 56
	i32 146, ; 57
	i32 322, ; 58
	i32 165, ; 59
	i32 314, ; 60
	i32 220, ; 61
	i32 12, ; 62
	i32 233, ; 63
	i32 125, ; 64
	i32 152, ; 65
	i32 113, ; 66
	i32 166, ; 67
	i32 164, ; 68
	i32 235, ; 69
	i32 248, ; 70
	i32 84, ; 71
	i32 301, ; 72
	i32 295, ; 73
	i32 194, ; 74
	i32 186, ; 75
	i32 150, ; 76
	i32 298, ; 77
	i32 284, ; 78
	i32 60, ; 79
	i32 182, ; 80
	i32 51, ; 81
	i32 103, ; 82
	i32 114, ; 83
	i32 40, ; 84
	i32 273, ; 85
	i32 271, ; 86
	i32 120, ; 87
	i32 309, ; 88
	i32 174, ; 89
	i32 52, ; 90
	i32 44, ; 91
	i32 119, ; 92
	i32 225, ; 93
	i32 231, ; 94
	i32 81, ; 95
	i32 136, ; 96
	i32 267, ; 97
	i32 212, ; 98
	i32 8, ; 99
	i32 73, ; 100
	i32 289, ; 101
	i32 155, ; 102
	i32 286, ; 103
	i32 154, ; 104
	i32 92, ; 105
	i32 281, ; 106
	i32 45, ; 107
	i32 304, ; 108
	i32 292, ; 109
	i32 285, ; 110
	i32 109, ; 111
	i32 129, ; 112
	i32 197, ; 113
	i32 25, ; 114
	i32 202, ; 115
	i32 72, ; 116
	i32 55, ; 117
	i32 46, ; 118
	i32 185, ; 119
	i32 226, ; 120
	i32 22, ; 121
	i32 240, ; 122
	i32 86, ; 123
	i32 43, ; 124
	i32 160, ; 125
	i32 71, ; 126
	i32 253, ; 127
	i32 288, ; 128
	i32 3, ; 129
	i32 42, ; 130
	i32 63, ; 131
	i32 16, ; 132
	i32 53, ; 133
	i32 316, ; 134
	i32 276, ; 135
	i32 105, ; 136
	i32 193, ; 137
	i32 285, ; 138
	i32 274, ; 139
	i32 237, ; 140
	i32 34, ; 141
	i32 158, ; 142
	i32 85, ; 143
	i32 32, ; 144
	i32 12, ; 145
	i32 320, ; 146
	i32 51, ; 147
	i32 294, ; 148
	i32 56, ; 149
	i32 0, ; 150
	i32 257, ; 151
	i32 36, ; 152
	i32 181, ; 153
	i32 291, ; 154
	i32 275, ; 155
	i32 210, ; 156
	i32 35, ; 157
	i32 58, ; 158
	i32 244, ; 159
	i32 177, ; 160
	i32 17, ; 161
	i32 282, ; 162
	i32 164, ; 163
	i32 243, ; 164
	i32 184, ; 165
	i32 270, ; 166
	i32 153, ; 167
	i32 266, ; 168
	i32 251, ; 169
	i32 295, ; 170
	i32 308, ; 171
	i32 212, ; 172
	i32 29, ; 173
	i32 176, ; 174
	i32 52, ; 175
	i32 306, ; 176
	i32 271, ; 177
	i32 5, ; 178
	i32 261, ; 179
	i32 265, ; 180
	i32 217, ; 181
	i32 286, ; 182
	i32 209, ; 183
	i32 198, ; 184
	i32 228, ; 185
	i32 85, ; 186
	i32 270, ; 187
	i32 61, ; 188
	i32 112, ; 189
	i32 57, ; 190
	i32 257, ; 191
	i32 99, ; 192
	i32 19, ; 193
	i32 221, ; 194
	i32 111, ; 195
	i32 101, ; 196
	i32 102, ; 197
	i32 104, ; 198
	i32 274, ; 199
	i32 71, ; 200
	i32 38, ; 201
	i32 32, ; 202
	i32 103, ; 203
	i32 73, ; 204
	i32 9, ; 205
	i32 123, ; 206
	i32 46, ; 207
	i32 211, ; 208
	i32 186, ; 209
	i32 9, ; 210
	i32 43, ; 211
	i32 4, ; 212
	i32 258, ; 213
	i32 298, ; 214
	i32 293, ; 215
	i32 194, ; 216
	i32 31, ; 217
	i32 138, ; 218
	i32 92, ; 219
	i32 93, ; 220
	i32 313, ; 221
	i32 296, ; 222
	i32 49, ; 223
	i32 141, ; 224
	i32 112, ; 225
	i32 140, ; 226
	i32 314, ; 227
	i32 227, ; 228
	i32 321, ; 229
	i32 115, ; 230
	i32 275, ; 231
	i32 157, ; 232
	i32 196, ; 233
	i32 76, ; 234
	i32 79, ; 235
	i32 247, ; 236
	i32 37, ; 237
	i32 269, ; 238
	i32 175, ; 239
	i32 231, ; 240
	i32 224, ; 241
	i32 64, ; 242
	i32 138, ; 243
	i32 15, ; 244
	i32 116, ; 245
	i32 263, ; 246
	i32 272, ; 247
	i32 196, ; 248
	i32 219, ; 249
	i32 48, ; 250
	i32 70, ; 251
	i32 80, ; 252
	i32 126, ; 253
	i32 94, ; 254
	i32 121, ; 255
	i32 283, ; 256
	i32 26, ; 257
	i32 199, ; 258
	i32 240, ; 259
	i32 97, ; 260
	i32 28, ; 261
	i32 215, ; 262
	i32 311, ; 263
	i32 149, ; 264
	i32 169, ; 265
	i32 4, ; 266
	i32 98, ; 267
	i32 33, ; 268
	i32 93, ; 269
	i32 262, ; 270
	i32 182, ; 271
	i32 21, ; 272
	i32 41, ; 273
	i32 170, ; 274
	i32 233, ; 275
	i32 247, ; 276
	i32 306, ; 277
	i32 282, ; 278
	i32 272, ; 279
	i32 252, ; 280
	i32 2, ; 281
	i32 300, ; 282
	i32 134, ; 283
	i32 111, ; 284
	i32 183, ; 285
	i32 317, ; 286
	i32 202, ; 287
	i32 58, ; 288
	i32 95, ; 289
	i32 39, ; 290
	i32 213, ; 291
	i32 25, ; 292
	i32 94, ; 293
	i32 89, ; 294
	i32 99, ; 295
	i32 278, ; 296
	i32 10, ; 297
	i32 87, ; 298
	i32 100, ; 299
	i32 303, ; 300
	i32 259, ; 301
	i32 178, ; 302
	i32 173, ; 303
	i32 283, ; 304
	i32 204, ; 305
	i32 7, ; 306
	i32 299, ; 307
	i32 244, ; 308
	i32 288, ; 309
	i32 201, ; 310
	i32 302, ; 311
	i32 88, ; 312
	i32 239, ; 313
	i32 154, ; 314
	i32 33, ; 315
	i32 116, ; 316
	i32 82, ; 317
	i32 200, ; 318
	i32 20, ; 319
	i32 277, ; 320
	i32 11, ; 321
	i32 162, ; 322
	i32 3, ; 323
	i32 304, ; 324
	i32 190, ; 325
	i32 311, ; 326
	i32 185, ; 327
	i32 183, ; 328
	i32 84, ; 329
	i32 287, ; 330
	i32 64, ; 331
	i32 266, ; 332
	i32 143, ; 333
	i32 248, ; 334
	i32 157, ; 335
	i32 41, ; 336
	i32 117, ; 337
	i32 179, ; 338
	i32 203, ; 339
	i32 296, ; 340
	i32 255, ; 341
	i32 315, ; 342
	i32 131, ; 343
	i32 75, ; 344
	i32 66, ; 345
	i32 172, ; 346
	i32 207, ; 347
	i32 143, ; 348
	i32 0, ; 349
	i32 106, ; 350
	i32 151, ; 351
	i32 70, ; 352
	i32 156, ; 353
	i32 316, ; 354
	i32 178, ; 355
	i32 121, ; 356
	i32 127, ; 357
	i32 152, ; 358
	i32 230, ; 359
	i32 141, ; 360
	i32 307, ; 361
	i32 217, ; 362
	i32 20, ; 363
	i32 14, ; 364
	i32 135, ; 365
	i32 75, ; 366
	i32 59, ; 367
	i32 197, ; 368
	i32 220, ; 369
	i32 167, ; 370
	i32 168, ; 371
	i32 188, ; 372
	i32 15, ; 373
	i32 74, ; 374
	i32 6, ; 375
	i32 23, ; 376
	i32 242, ; 377
	i32 313, ; 378
	i32 201, ; 379
	i32 91, ; 380
	i32 1, ; 381
	i32 136, ; 382
	i32 243, ; 383
	i32 265, ; 384
	i32 134, ; 385
	i32 69, ; 386
	i32 146, ; 387
	i32 287, ; 388
	i32 234, ; 389
	i32 184, ; 390
	i32 88, ; 391
	i32 96, ; 392
	i32 224, ; 393
	i32 229, ; 394
	i32 31, ; 395
	i32 45, ; 396
	i32 238, ; 397
	i32 203, ; 398
	i32 109, ; 399
	i32 158, ; 400
	i32 35, ; 401
	i32 22, ; 402
	i32 114, ; 403
	i32 57, ; 404
	i32 263, ; 405
	i32 144, ; 406
	i32 118, ; 407
	i32 120, ; 408
	i32 110, ; 409
	i32 205, ; 410
	i32 139, ; 411
	i32 211, ; 412
	i32 54, ; 413
	i32 105, ; 414
	i32 189, ; 415
	i32 190, ; 416
	i32 133, ; 417
	i32 281, ; 418
	i32 268, ; 419
	i32 256, ; 420
	i32 234, ; 421
	i32 192, ; 422
	i32 317, ; 423
	i32 159, ; 424
	i32 294, ; 425
	i32 221, ; 426
	i32 163, ; 427
	i32 132, ; 428
	i32 256, ; 429
	i32 161, ; 430
	i32 307, ; 431
	i32 245, ; 432
	i32 277, ; 433
	i32 140, ; 434
	i32 268, ; 435
	i32 264, ; 436
	i32 293, ; 437
	i32 169, ; 438
	i32 191, ; 439
	i32 175, ; 440
	i32 206, ; 441
	i32 273, ; 442
	i32 40, ; 443
	i32 312, ; 444
	i32 232, ; 445
	i32 81, ; 446
	i32 56, ; 447
	i32 37, ; 448
	i32 97, ; 449
	i32 166, ; 450
	i32 172, ; 451
	i32 269, ; 452
	i32 82, ; 453
	i32 208, ; 454
	i32 98, ; 455
	i32 30, ; 456
	i32 159, ; 457
	i32 18, ; 458
	i32 127, ; 459
	i32 119, ; 460
	i32 228, ; 461
	i32 259, ; 462
	i32 241, ; 463
	i32 261, ; 464
	i32 165, ; 465
	i32 236, ; 466
	i32 322, ; 467
	i32 258, ; 468
	i32 249, ; 469
	i32 280, ; 470
	i32 170, ; 471
	i32 16, ; 472
	i32 144, ; 473
	i32 300, ; 474
	i32 125, ; 475
	i32 118, ; 476
	i32 38, ; 477
	i32 115, ; 478
	i32 47, ; 479
	i32 142, ; 480
	i32 117, ; 481
	i32 34, ; 482
	i32 177, ; 483
	i32 95, ; 484
	i32 53, ; 485
	i32 250, ; 486
	i32 129, ; 487
	i32 153, ; 488
	i32 24, ; 489
	i32 161, ; 490
	i32 227, ; 491
	i32 148, ; 492
	i32 104, ; 493
	i32 278, ; 494
	i32 89, ; 495
	i32 215, ; 496
	i32 60, ; 497
	i32 142, ; 498
	i32 100, ; 499
	i32 5, ; 500
	i32 13, ; 501
	i32 195, ; 502
	i32 122, ; 503
	i32 135, ; 504
	i32 28, ; 505
	i32 72, ; 506
	i32 225, ; 507
	i32 24, ; 508
	i32 213, ; 509
	i32 254, ; 510
	i32 251, ; 511
	i32 137, ; 512
	i32 198, ; 513
	i32 206, ; 514
	i32 222, ; 515
	i32 168, ; 516
	i32 255, ; 517
	i32 101, ; 518
	i32 123, ; 519
	i32 226, ; 520
	i32 180, ; 521
	i32 163, ; 522
	i32 167, ; 523
	i32 229, ; 524
	i32 39, ; 525
	i32 187, ; 526
	i32 299, ; 527
	i32 17, ; 528
	i32 171, ; 529
	i32 312, ; 530
	i32 137, ; 531
	i32 150, ; 532
	i32 218, ; 533
	i32 279, ; 534
	i32 155, ; 535
	i32 130, ; 536
	i32 19, ; 537
	i32 65, ; 538
	i32 318, ; 539
	i32 147, ; 540
	i32 47, ; 541
	i32 292, ; 542
	i32 204, ; 543
	i32 79, ; 544
	i32 61, ; 545
	i32 291, ; 546
	i32 106, ; 547
	i32 253, ; 548
	i32 208, ; 549
	i32 49, ; 550
	i32 239, ; 551
	i32 250, ; 552
	i32 14, ; 553
	i32 309, ; 554
	i32 179, ; 555
	i32 68, ; 556
	i32 297, ; 557
	i32 171, ; 558
	i32 214, ; 559
	i32 218, ; 560
	i32 305, ; 561
	i32 321, ; 562
	i32 78, ; 563
	i32 223, ; 564
	i32 108, ; 565
	i32 207, ; 566
	i32 249, ; 567
	i32 67, ; 568
	i32 63, ; 569
	i32 27, ; 570
	i32 160, ; 571
	i32 200, ; 572
	i32 216, ; 573
	i32 10, ; 574
	i32 173, ; 575
	i32 187, ; 576
	i32 11, ; 577
	i32 174, ; 578
	i32 78, ; 579
	i32 126, ; 580
	i32 83, ; 581
	i32 181, ; 582
	i32 66, ; 583
	i32 107, ; 584
	i32 65, ; 585
	i32 128, ; 586
	i32 122, ; 587
	i32 195, ; 588
	i32 77, ; 589
	i32 264, ; 590
	i32 254, ; 591
	i32 320, ; 592
	i32 8, ; 593
	i32 222, ; 594
	i32 2, ; 595
	i32 44, ; 596
	i32 267, ; 597
	i32 156, ; 598
	i32 128, ; 599
	i32 252, ; 600
	i32 23, ; 601
	i32 133, ; 602
	i32 210, ; 603
	i32 241, ; 604
	i32 279, ; 605
	i32 280, ; 606
	i32 315, ; 607
	i32 297, ; 608
	i32 29, ; 609
	i32 209, ; 610
	i32 62, ; 611
	i32 189, ; 612
	i32 90, ; 613
	i32 87, ; 614
	i32 301, ; 615
	i32 148, ; 616
	i32 191, ; 617
	i32 36, ; 618
	i32 86, ; 619
	i32 230, ; 620
	i32 310, ; 621
	i32 308, ; 622
	i32 305, ; 623
	i32 180, ; 624
	i32 50, ; 625
	i32 6, ; 626
	i32 90, ; 627
	i32 21, ; 628
	i32 162, ; 629
	i32 96, ; 630
	i32 50, ; 631
	i32 113, ; 632
	i32 246, ; 633
	i32 130, ; 634
	i32 76, ; 635
	i32 27, ; 636
	i32 310, ; 637
	i32 223, ; 638
	i32 245, ; 639
	i32 7, ; 640
	i32 188, ; 641
	i32 176, ; 642
	i32 110, ; 643
	i32 246, ; 644
	i32 232 ; 645
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

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
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
