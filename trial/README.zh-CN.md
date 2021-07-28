中文   | [English](README.md)    

-----

### 更新日志

* v0.1.16
  * 1、增加`SetShowDetailedExceptionMessage`，用于异常时可以显示详细错误信息。
  * 2、initialization中还原`SetExceptionMask`，用于默认屏蔽某些异常。

* v0.1.15

  * 1、修复委托与事件在某些情况下内存未释放。

* v0.1.14

  * 1、删除`TDNType.GetType`方法。
  * 2、导入器增`typeid`属性。
  * 3、委托类型更改为类TMethod数据类型，可直接设置类方法。
  * 4、添加事件支持。

* v0.1.12

  * 1、增加委托类型的支持。

* v0.1.11

  * 1、修复特定情况下的内存泄露。
  * 2、调整DDNRuntime内部枚举类型的实例。
 


