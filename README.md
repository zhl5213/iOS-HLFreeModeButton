# iOS-HLFreeModeButton
简单易用的UIButton，只需设置contentMode（类似于UIViewContentMode），即可调整图片image和文件title的布局

只需要简单设置一下属性即可实现
```
 let testButton4 = HLFreeModeButton.init(frame: CGRect.init(x: 0, y: testButton3.frame.maxY + 10, width: 150, height: 150 ))
 testButton4.set(image: UIImage.init(named: "xiaopingguo")!, title: "我的头像",
 titleColr: UIColor.black,contentMargin: 10, HLButtonContentMode.imageTop, for: UIControlState.normal)
```

效果图：

![button效果图](https://github.com/zhl5213/iOS-HLFreeModeButton/blob/master/FreeModeButton%E6%95%88%E6%9E%9C%E5%9B%BE.gif)
