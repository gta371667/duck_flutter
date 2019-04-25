# xview_flutter

A new Flutter package.

# import 
### pubspec.yaml

```yaml
dependencies:
  xview:
    git:
      url: git://github.com/gta371667/duck_flutter.git
      path: xview
```

## 包含ImageRippleView、MyAttrView、MyMaterialView

### MyAttrView用法
```dart
MyAttrView(
	text: "asdad",
	textColor: Colors.white,
	iconMargin: 10,
	padding: 10,
	margin: 5,
	textSize: 20,
	elevation: 5,
	shadowColor: Colors.white,
	backgroundColor: Colors.deepOrange,
	borderColor: Colors.cyan,
	borderWidth: 1,
	imgWidth: 50,
	imgHeight: 50,
	radiusAll: 30,
	imgFileLeft: "assets/images/ic_home1.png",
	imgFileTop: "assets/images/ic_home2.png",
	imgFileRight: "assets/images/ic_home3.png",
	imgFileBottom: "assets/images/ic_home4.png",
	onPressed: () {
	  print("1236666666");
	},
	splashColor: Colors.brown,
	highlightColor: Colors.deepPurpleAccent,
)
```

| xml屬性 | 說明 | 單位 | 備註 |
| --- | --- | --- | --- |
| text | 中間文字 | string |  |
| backgroundColor | 背景色 | Color |  |
| onPressed | 點擊事件 | VoidCallback |  |
| padding | 內部Padding | double |  |
| imgFileLeft | 左image | double | assets/image/ic_home.png |
| imgWidth | image寬 | double |  |
| imgHeight | image高 | double |  |
| imgTint | image繪製顏色 | Color |  |
| borderWidth | 外框線寬度 | double |  |
| borderColor | 外框線顏色 | Color |  |
| radius | 外框圓角 | double |  |
| iconMargin | icon與文字的距離 | double |  |
| elevation | 陰影大小 | double |  |
| shadowColor | 陰影顏色 | Color |  |
| splashColor | 水波紋顏色 | Color |  |
| highlightColor | 點擊時顏色 | Color |  |
| colorBrightness | 點擊時顏色 | Color | Brightness.light、Brightness.dark |

### HeaderView用法
```xml
  <com.duck.widget.HeaderView
      android:layout_width="match_parent"
      android:layout_height="wrap_content"
      app:hd_headerBackground="@color/stroke_default_color"
      app:hd_headerDrawable="@mipmap/ic_launcher"
      app:hd_headerDrawableTint="@color/colorAccent"
      app:hd_headerRightIcon="@drawable/xview_menu"
      app:hd_headerRightIconTint="@color/colorAccent"
      app:hd_headerText="@string/app_name"
      app:hd_headerTextColor="@color/colorPrimary"
      app:hd_header_gravity="leftCenter"
      app:hd_icon_drawable_mHeight="40dp"
      app:hd_icon_drawable_mWidth="40dp"
      app:hd_icon_drawable_mPadding="10dp"
      app:hd_showInsideStatusBar="true"
      />
```
| xml屬性 | 說明 | 單位 |
| --- | --- | --- |
| hd_headerBackground | 背景色 | #ffffff、R.color.red、@drawable/bg_drawer |
| hd_headerDrawable | 左icon | #ffffff、@color/red、@drawable/bg_drawer |
| hd_headerDrawableTint | 左icon渲染色 | #ffffff、@color/red、@drawable/bg_drawer |
| hd_headerRightIcon | 右icon | #ffffff、@color/red、@drawable/bg_drawer |
| hd_headerRightIconTint | 右icon渲染色 | #ffffff、@color/red、@drawable/bg_drawer |
| hd_headerText | 文字 | String、StringRes |
| hd_headerTextColor | 文字 | #ffffff、@color/red |
| hd_header_gravity | 文字gravity | enum |
| hd_icon_drawable_mHeight | icon高度 | dp (預設40dp) |
| hd_icon_drawable_mWidth | icon寬度 | dp (預設40dp) |
| hd_icon_drawable_mPadding | iconPadding | dp (預設5dp) |
| hd_showInsideStatusBar | 是否根據狀態列高度paddingTop | boolean |

### DuckListView用法
包含RecyclerView、SwipeRefreshLayout、封裝BaseRecyclerViewAdapterHelper
```xml
  <com.duck.widget.DuckListView
	android:id="@+id/mDuckRecyclerView2"
	android:layout_width="match_parent"
	android:layout_height="wrap_content"
	app:refreshEnabled="false"
	app:swipeColor="@color/colorAccent"
	/>
```
| xml屬性 | 說明 | 單位 |
| --- | --- | --- |
| swipeColor | SwipeRefreshLayout顏色 | #ffffff、@color/red |
| refreshEnabled | 是否可以下拉刷新 | boolean |

### DuckRecyclerView用法
只包含RecyclerView、封裝BaseRecyclerViewAdapterHelper
```xml
  <com.duck.widget.DuckRecyclerView
	android:id="@+id/mDuckRecyclerView2"
	android:layout_width="match_parent"
	android:layout_height="wrap_content"
	app:nestedScrollingEnabled="false"
	/>
```
| xml屬性 | 說明 | 單位 |
| --- | --- | --- |
| nestedScrollingEnabled | 是否把滾動交給外層 | boolean |

### 整體color、String
```xml
<color name="swipe_default_color">#008577</color>
<color name="swipe_loading_default_color">#000000</color>
<color name="duck_adapter_loading_color">#000000</color>
<color name="duck_adapter_progressBar_color">#008577</color>
<color name="duck_rvView_text_color">#000000</color>
<color name="duck_rvView_progressBar_color">#008577</color>
<color name="duck_text_default_color">#000000</color>
<color name="stroke_default_color">#000000</color>

<string name="str_rv_loading">加载中，请稍后</string>
<string name="str_rv_error">加载失败</string>
<string name="str_rv_no_data">没有数据</string>
<string name="str_rv_no_data_prompt">没有数据了</string>
```

