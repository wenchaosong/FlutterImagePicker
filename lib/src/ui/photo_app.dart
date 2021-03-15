import 'package:flutter/material.dart';

import 'package:photo_manager/photo_manager.dart';

import '../../src/entity/options.dart';
import '../../src/provider/config_provider.dart';
import '../../src/provider/i18n_provider.dart';
import '../../src/ui/page/photo_main_page.dart';

class PhotoApp extends StatelessWidget {
  final Options options;
  final I18nProvider provider;
  final List<AssetPathEntity> photoPathList;
  final List<AssetEntity> pickedAssetList;

  const PhotoApp({
    Key key,
    this.options,
    this.provider,
    this.photoPathList,
    this.pickedAssetList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pickerProvider = PhotoPickerProvider(
      provider: provider,
      options: options,
      pickedAssetList: pickedAssetList,
      child: PhotoMainPage(
        onClose: (List<AssetEntity> value) {
          Navigator.pop(context, value);
        },
        options: options,
        photoPathList: photoPathList,
      ),
    );

    return pickerProvider;
  }
}
