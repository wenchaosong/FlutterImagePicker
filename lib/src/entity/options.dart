import 'package:flutter/material.dart';
import '../../src/delegate/badge_delegate.dart';
import '../../src/delegate/checkbox_builder_delegate.dart';
import '../../src/delegate/loading_delegate.dart';
import '../../src/delegate/sort_delegate.dart';

/// 自定义前置控件
typedef PhotoPreviousBuilder = Widget Function(BuildContext context);

/// 可配置属性
class Options {
  /// 列数
  final int rowCount;

  /// 最大可选择数目
  final int maxSelected;

  /// 间距
  final double padding;

  /// 横向比例
  final double itemRadio;

  /// 主题颜色
  final Color themeColor;

  /// 间隔颜色
  final Color dividerColor;

  /// 文字颜色
  final Color textColor;

  /// 大小
  final int thumbSize;

  /// 排序规则
  final SortDelegate sortDelegate;

  /// 选中的样式
  final CheckBoxBuilderDelegate checkBoxBuilderDelegate;

  /// 加载中的样式
  final LoadingDelegate loadingDelegate;
  final BadgeDelegate badgeDelegate;

  /// 选择文件类型
  final PickType pickType;

  final PhotoPreviousBuilder previousBuilder;

  const Options({
    this.rowCount,
    this.maxSelected,
    this.padding,
    this.itemRadio,
    this.themeColor,
    this.dividerColor,
    this.textColor,
    this.thumbSize,
    this.sortDelegate,
    this.checkBoxBuilderDelegate,
    this.loadingDelegate,
    this.badgeDelegate,
    this.pickType,
    this.previousBuilder,
  });
}

enum PickType {
  all,
  onlyImage,
  onlyVideo,
}
