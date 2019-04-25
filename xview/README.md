# xview

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

### MyAttrView 有上下左右icon的widget
```flutter
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

| 屬性 | 說明 | 單位 | 備註 |
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
| colorBrightness | 水波紋亮度 | Color | Brightness.light、Brightness.dark |

### ImageRippleView 有水波紋的imageView
```flutter
ImageRippleView(
	showRipple: true,
	image: new Image.asset(data.drawableRes),
	radius: 5,
)
```
| 屬性 | 說明 | 單位 | 備註 |
| --- | --- | --- | --- |
| image | 背景色 | Color |  |
| showRipple | 是否顯示水波紋 | boolean | 預設true |
| onPressed | 點擊事件 | VoidCallback |  |
| radius | 圓角 | double |  |


### MyMaterialView 包含margin、padding、點擊事件、水波紋、圓角、外框線
```flutter
MyMaterialView(
	margin: 5,
	padding: 5,
	backgroundColor: Colors.green,
	borderColor: Colors.cyan,
	borderWidth: 1,
	radiusAll: 30,
	onPressed: () {},
	splashColor: Colors.deepPurple,
	child: Text(
		"121313",
		style: TextStyle(color: Colors.white),
	),
),
```
| 屬性 | 說明 | 單位 | 備註 |
| --- | --- | --- | --- |
| child | child | Widget |  |
| backgroundColor | 背景色 | Color |  |
| onPressed | 點擊事件 | GestureTapCallback |  |
| margin | 父margin | double |  |
| padding | 內部Padding | double |  |
| borderWidth | 外框線寬度 | double |  |
| borderColor | 外框線顏色 | Color |  |
| radius | 外框圓角 | double |  |
| elevation | 陰影大小 | double |  |
| shadowColor | 陰影顏色 | Color |  |
| splashColor | 水波紋顏色 | Color |  |
| highlightColor | 點擊時顏色 | Color |  |

