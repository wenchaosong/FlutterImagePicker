### 本地文件选择器

[![Pub Package](https://img.shields.io/pub/v/flutter_img_picker.svg?color=blue)](https://pub.dartlang.org/packages/flutter_img_picker)
[![](https://img.shields.io/github/last-commit/wenchaosong/FlutterImagePicker?color=yellow)](https://github.com/wenchaosong/FlutterImagePicker)

在原项目[photo](https://github.com/CaiJingLong/flutter_photo) 基础上修改了升级 2.0 出现的问题

![效果示例](/pic/image_picker.gif)

#### 导入方式

```
dependencies:
    flutter_img_picker: ^0.0.1
```

#### 使用方法

```
...
// Simple use
List<AssetEntity> assetList = await PhotoPicker.pickAsset(context: context);

// More option
List<AssetEntity> imgList = await PhotoPicker.pickAsset(
      // BuildContext requied
      context: context,
      /// The following are optional parameters.
      themeColor: Colors.green,
      // the title color and bottom color
      padding: 1.0,
      // item padding
      dividerColor: Colors.grey,
      // divider color
      disableColor: Colors.grey.shade300,
      // the check box disable color
      itemRadio: 0.88,
      // the content item radio
      maxSelected: 8,
      // max picker image count
      provider: I18nProvider.chinese,
      // i18n provider ,default is chinese. , you can custom I18nProvider or use ENProvider()
      rowCount: 5,
      // item row count
      textColor: Colors.white,
      // text color
      thumbSize: 150,
      // preview thumb size , default is 64
      sortDelegate: SortDelegate.common,
      // default is common ,or you make custom delegate to sort your gallery
      checkBoxBuilderDelegate: DefaultCheckBoxBuilderDelegate(
        activeColor: Colors.white,
        unselectedColor: Colors.white,
        checkColor: Colors.blue,
      ), // default is DefaultCheckBoxBuilderDelegate ,or you make custom delegate to create checkbox

      loadingDelegate:
          this, // if you want to build custom loading widget,extends LoadingDelegate [see example/lib/main.dart]

      badgeDelegate: const DefaultBadgeDelegate(), /// or custom class extends [BadgeDelegate]

      pickType: type, // all/image/video

      List<AssetPathEntity> photoPathList, /// when [photoPathList] is not null , [pickType] invalid .
    );

```

You can use [photo_manager] package to get `List<AssetPathEntity>` and handle or cache.

This parameter is then passed into the `pickAsset` method, where the incoming photoList is rendered instead of the data in the album.

