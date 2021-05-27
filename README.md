### 本地文件选择器

[![](https://img.shields.io/pub/v/flutter_img_picker.svg?color=blue)](https://pub.dev/packages/flutter_img_picker)
[![](https://img.shields.io/github/last-commit/wenchaosong/FlutterImagePicker?color=yellow)](https://github.com/wenchaosong/FlutterImagePicker)

在原项目[photo](https://github.com/CaiJingLong/flutter_photo) 基础上修改了升级 2.0 出现的问题

![效果示例](/pic/1.gif)

#### 导入方式

```
dependencies:
    flutter_img_picker: ^0.0.3
```

#### 使用方法

##### Simple use
```
List<AssetEntity> assetList = await FilePicker.pickAsset(context: context);
```

##### More option
```
List<AssetEntity> imgList = await FilePicker.pickAsset(
      // BuildContext requied
      context: context,
      // The following are optional parameters.

      // the title color and bottom color
      themeColor: Colors.green,
      // item padding
      padding: 1.0,
      // divider color
      dividerColor: Colors.grey,
      // the content item radio
      itemRadio: 0.88,
      // max picker image count
      maxSelected: 8,
      // i18n provider ,default is chinese. , you can custom I18nProvider or use ENProvider()
      provider: I18nProvider.chinese,
      // item row count
      rowCount: 5,
      // text color
      textColor: Colors.white,
      // preview thumb size , default is 64
      thumbSize: 150,
      // default is common ,or you make custom delegate to sort your gallery
      sortDelegate: SortDelegate.common,
      // default is DefaultCheckBoxBuilderDelegate ,or you make custom delegate to create checkbox
      checkBoxBuilderDelegate: DefaultCheckBoxBuilderDelegate(
        activeColor: Colors.white,
        unselectedColor: Colors.white,
        checkColor: Colors.blue,
      ),
      // if you want to build custom loading widget,extends LoadingDelegate [see example/lib/main.dart]
      loadingDelegate: this,
      // or custom class extends [BadgeDelegate]
      badgeDelegate: const DefaultBadgeDelegate(),
      // all/image/video
      pickType: type,
      // when [photoPathList] is not null , [pickType] invalid .
      photoPathList: pathList,
    );

```

You can use [photo_manager] package to get `List<AssetPathEntity>` and handle or cache.

This parameter is then passed into the `pickAsset` method, where the incoming photoList is rendered instead of the data in the album.

