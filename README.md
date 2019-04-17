# duia_image

直接从原生平台加载资源图片, 可有效避免flutter和原生 携带重复图片的问题


```
    //用法
    Widget imagew;
    try {
      imagew = await DuiaImage.imageFromPlatform('hello');//通过图片名称从原生平台获取图片
    } on PlatformException {
      imagew = Text('Failed to get platform image.');
    }
```
