//-----------------------------------------------------------//
//                                                           //
//     DDN.Forms.Common                             
//     Delphi .NET Import                                    //
//     Author: ying32                                        //
//     .NET Framework: .NET 4.0                              //
//                                                           //
//-----------------------------------------------------------//

unit DDN.Forms.Common;

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDN.mscorlib;

type

{ enums }

  //-------------namespace: System.ComponentModel----------------
  ///<summary>
  ///  指定可见性属性具有设计时序列化程序。
  ///</summary>
  [DNTypeName('System.ComponentModel.DesignerSerializationVisibility')]
  DNDesignerSerializationVisibility = type Integer;
  DNDesignerSerializationVisibilityHelper = record helper for DNDesignerSerializationVisibility
  public const
    ///<summary>
    ///  代码生成器不生成对象代码。
    ///</summary>
    Hidden = 0;
    ///<summary>
    ///  代码生成器生成代码的对象。
    ///</summary>
    Visible = 1;
    ///<summary>
    ///  代码生成器生成代码的对象的内容，而不是对象本身。
    ///</summary>
    Content = 2;
  end;


  //-------------namespace: System.ComponentModel----------------
  ///<summary>
  ///  指定列表的更改方式。
  ///</summary>
  [DNTypeName('System.ComponentModel.ListChangedType')]
  DNListChangedType = type Integer;
  DNListChangedTypeHelper = record helper for DNListChangedType
  public const
    ///<summary>
    ///  很多列表已更改。
    ///  任何侦听控件应刷新其从列表中的所有数据。
    ///</summary>
    Reset = 0;
    ///<summary>
    ///  添加到列表项。
    ///<see cref="P:System.ComponentModel.ListChangedEventArgs.NewIndex" />
    ///  包含已添加的项的索引。
    ///</summary>
    ItemAdded = 1;
    ///<summary>
    ///  从列表中删除的项。
    ///<see cref="P:System.ComponentModel.ListChangedEventArgs.NewIndex" />
    ///  包含已删除的项的索引。
    ///</summary>
    ItemDeleted = 2;
    ///<summary>
    ///  在列表中移动的项。
    ///<see cref="P:System.ComponentModel.ListChangedEventArgs.OldIndex" />
    ///  包含该项目的先前索引，而 <see cref="P:System.ComponentModel.ListChangedEventArgs.NewIndex" />
    ///  包含项的新索引。
    ///</summary>
    ItemMoved = 3;
    ///<summary>
    ///  在列表中更改的项。
    ///<see cref="P:System.ComponentModel.ListChangedEventArgs.NewIndex" />
    ///  包含已更改的项的索引。
    ///</summary>
    ItemChanged = 4;
    ///<summary>
    ///  一个 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  已添加，这更改了架构。
    ///</summary>
    PropertyDescriptorAdded = 5;
    ///<summary>
    ///  一个 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  已被删除，这更改了架构。
    ///</summary>
    PropertyDescriptorDeleted = 6;
    ///<summary>
    ///  一个 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  已被更改，这更改了架构。
    ///</summary>
    PropertyDescriptorChanged = 7;
  end;


  //-------------namespace: System.ComponentModel----------------
  ///<summary>
  ///  指定排序操作的方向。
  ///</summary>
  [DNTypeName('System.ComponentModel.ListSortDirection')]
  DNListSortDirection = type Integer;
  DNListSortDirectionHelper = record helper for DNListSortDirection
  public const
    ///<summary>
    ///  按升序排序。
    ///</summary>
    Ascending = 0;
    ///<summary>
    ///  按降序排序。
    ///</summary>
    Descending = 1;
  end;


  //-------------namespace: System.ComponentModel----------------
  ///<summary>
  ///  指定用于简单地描述了掩码的文本分析操作的结果的值。
  ///</summary>
  [DNTypeName('System.ComponentModel.MaskedTextResultHint')]
  DNMaskedTextResultHint = type Integer;
  DNMaskedTextResultHintHelper = record helper for DNMaskedTextResultHint
  public const
    ///<summary>
    ///  未知。
    ///  无法确定操作的结果。
    ///</summary>
    Unknown = 0;
    ///<summary>
    ///  成功。
    ///  操作成功，因为为文本、 提示或空格字符是转义的字符。
    ///  有关转义字符的详细信息，请参阅 <see cref="M:System.ComponentModel.MaskedTextProvider.VerifyEscapeChar(System.Char,System.Int32)" />
    ///  方法。
    ///</summary>
    CharacterEscaped = 1;
    ///<summary>
    ///  成功。
    ///  不执行主要操作，因为不需要它的;因此，没有任何副作用被生成。
    ///</summary>
    NoEffect = 2;
    ///<summary>
    ///  成功。
    ///  不执行主要操作，因为不需要但该方法产生负面影响。
    ///  例如， <see cref="Overload:System.ComponentModel.MaskedTextProvider.RemoveAt" />
    ///  方法可以删除在格式化字符串将导致第二个字符的左移赋值的编辑位置。
    ///</summary>
    SideEffect = 3;
    ///<summary>
    ///  成功。
    ///  主操作成功。
    ///</summary>
    Success = 4;
    ///<summary>
    ///  操作未成功。
    ///  指定的位置不在目标字符串中; 的范围内通常它是小于零或更高版本然后目标字符串的长度。
    ///</summary>
    PositionOutOfRange = -55;
    ///<summary>
    ///  操作未成功。
    ///  格式化字符串中的当前位置是原义字符。
    ///</summary>
    NonEditPosition = -54;
    ///<summary>
    ///  操作未成功。
    ///  没有足够可用编辑位置来满足请求。
    ///</summary>
    UnavailableEditPosition = -53;
    ///<summary>
    ///  操作未成功。
    ///  提示字符不是有效的输入，可能是因为 <see cref="P:System.ComponentModel.MaskedTextProvider.AllowPromptAsInput" />
    ///  属性设置为 <see langword="false" />
    ///  。
    ///</summary>
    PromptCharNotAllowed = -52;
    ///<summary>
    ///  操作未成功。
    ///  该程序时遇到了无效的输入的字符。
    ///  有关无效的字符的详细信息，请参阅 <see cref="M:System.ComponentModel.MaskedTextProvider.IsValidInputChar(System.Char)" />
    ///  方法。
    ///</summary>
    InvalidInput = -51;
    ///<summary>
    ///  操作未成功。
    ///  遇到不是有符号的数字的输入的字符。
    ///</summary>
    SignedDigitExpected = -5;
    ///<summary>
    ///  操作未成功。
    ///  输入字符中包含非字母字符。
    ///</summary>
    LetterExpected = -4;
    ///<summary>
    ///  操作未成功。
    ///  遇到不是一个数字的输入的字符。
    ///</summary>
    DigitExpected = -3;
    ///<summary>
    ///  操作未成功。输入字符中包含非字母数字字符。
    ///  。
    ///</summary>
    AlphanumericCharacterExpected = -2;
    ///<summary>
    ///  操作未成功。输入的字符遇到包含非 ASCII 字符集的成员。
    ///</summary>
    AsciiCharacterExpected = -1;
  end;


  //-------------namespace: System.ComponentModel----------------
  ///<summary>
  ///  定义用于指示在属性窗口的选项卡的持久性作用域标识符。
  ///</summary>
  [DNTypeName('System.ComponentModel.PropertyTabScope')]
  DNPropertyTabScope = type Integer;
  DNPropertyTabScopeHelper = record helper for DNPropertyTabScope
  public const
    ///<summary>
    ///  此选项卡添加到属性窗口，并且不能删除。
    ///</summary>
    Static_ = 0;
    ///<summary>
    ///  此选项卡添加到属性窗口，并可以仅将其显式移除由父组件。
    ///</summary>
    Global = 1;
    ///<summary>
    ///  此选项卡是特定于当前的文档。
    ///  此选项卡添加到属性窗口，并删除当前所选的文档发生更改时。
    ///</summary>
    Document = 2;
    ///<summary>
    ///  此选项卡是特定于当前的组件。
    ///  此选项卡添加到当前组件属性窗口，并且不再选择该组件时会被删除。
    ///</summary>
    Component = 3;
  end;


  //-------------namespace: System.Configuration----------------
  ///<summary>
  ///  指定可以设置或重写中包含的属性的配置文件层次结构中的位置 <see cref="T:System.Configuration.ConfigurationSection" />
  ///  对象。
  ///</summary>
  [DNTypeName('System.Configuration.ConfigurationAllowDefinition')]
  DNConfigurationAllowDefinition = type Integer;
  DNConfigurationAllowDefinitionHelper = record helper for DNConfigurationAllowDefinition
  public const
    ///<summary><see cref="T:System.Configuration.ConfigurationSection" />
    ///  可以只能在 Machine.config 文件中定义。
    ///</summary>
    MachineOnly = 0;
    ///<summary><see cref="T:System.Configuration.ConfigurationSection" />
    ///  可以在 Machine.config 文件或出现在与 Machine.config，位于同一目录中但不是在应用程序 Web.config 文件中的计算机级别 Web.config 文件中定义。
    ///</summary>
    MachineToWebRoot = 100;
    ///<summary><see cref="T:System.Configuration.ConfigurationSection" />
    ///  可以定义在 Machine.config 文件与 Machine.config，位于同一目录中找到计算机级别 Web.config 文件或在虚拟目录的根目录，但不是在的虚拟根目录的子目录中找到的顶级应用程序 Web.config 文件。
    ///</summary>
    MachineToApplication = 200;
    ///<summary><see cref="T:System.Configuration.ConfigurationSection" />
    ///  可以在任何位置定义。
    ///</summary>
    Everywhere = 300;
  end;


  //-------------namespace: System.Configuration----------------
  ///<summary>
  ///  指定可以设置或重写中包含的属性的配置文件层次结构中的位置 <see cref="T:System.Configuration.ConfigurationSection" />
  ///  对象。
  ///</summary>
  [DNTypeName('System.Configuration.ConfigurationAllowExeDefinition')]
  DNConfigurationAllowExeDefinition = type Integer;
  DNConfigurationAllowExeDefinitionHelper = record helper for DNConfigurationAllowExeDefinition
  public const
    ///<summary><see cref="T:System.Configuration.ConfigurationSection" />
    ///  可以只能在 Machine.config 文件中定义。
    ///</summary>
    MachineOnly = 0;
    ///<summary><see cref="T:System.Configuration.ConfigurationSection" />
    ///  可以在 Machine.config 文件中或在客户端应用程序目录的 Exe.config 文件中定义。
    ///  这是默认值。
    ///</summary>
    MachineToApplication = 100;
    ///<summary><see cref="T:System.Configuration.ConfigurationSection" />
    ///  可以在 Machine.config 文件中，在客户端应用程序目录中的 Exe.config 文件中或在漫游的用户目录中的 User.config 文件中定义。
    ///</summary>
    MachineToRoamingUser = 200;
    ///<summary><see cref="T:System.Configuration.ConfigurationSection" />
    ///  可以在 Machine.config 文件中，在客户端应用程序目录中，漫游用户目录中，在 User.config 文件中或本地用户目录中的 User.config 文件中的 Exe.config 文件中定义。
    ///</summary>
    MachineToLocalUser = 300;
  end;


  //-------------namespace: System.Configuration----------------
  ///<summary>
  ///  确定哪些属性写出到配置文件。
  ///</summary>
  [DNTypeName('System.Configuration.ConfigurationSaveMode')]
  DNConfigurationSaveMode = type Integer;
  DNConfigurationSaveModeHelper = record helper for DNConfigurationSaveMode
  public const
    ///<summary>
    ///  仅将修改的属性，以写入配置文件中，即使该值是继承的值相同。
    ///</summary>
    Modified = 0;
    ///<summary>
    ///  将导致不同于继承的值写入到配置文件的属性。
    ///</summary>
    Minimal = 1;
    ///<summary>
    ///  将导致所有属性都写入到配置文件。
    ///  这是主要用于创建配置文件的信息或将配置值从一台计算机移动到另一个非常有用。
    ///</summary>
    Full = 2;
  end;


  //-------------namespace: System.Configuration----------------
  ///<summary>
  ///  指定配置元素的配置元素的覆盖行为子目录中。
  ///</summary>
  [DNTypeName('System.Configuration.OverrideMode')]
  DNOverrideMode = type Integer;
  DNOverrideModeHelper = record helper for DNOverrideMode
  public const
    ///<summary>
    ///  如果显式允许由当前的配置元素或组的父元素的子目录中的配置设置将重写元素或组的配置设置。
    ///  使用指定的权限重写 <see langword="OverrideMode" />
    ///  属性。
    ///</summary>
    Inherit = 0;
    ///<summary>
    ///  子目录中的配置设置可以重写元素或组的配置设置。
    ///</summary>
    Allow = 1;
    ///<summary>
    ///  子目录中的配置设置不能重写元素或组的配置设置。
    ///</summary>
    Deny = 2;
  end;


  //-------------namespace: System.Drawing----------------
  ///<summary>
  ///  指定的绘图图面上的内容对齐方式。
  ///</summary>
  [DNTypeName('System.Drawing.ContentAlignment')]
  DNContentAlignment = type Integer;
  DNContentAlignmentHelper = record helper for DNContentAlignment
  public const
    ///<summary>
    ///  内容是在顶部，垂直对齐和水平方向上左对齐。
    ///</summary>
    TopLeft = 1;
    ///<summary>
    ///  内容是在顶部，垂直对齐和水平方向上居中对齐。
    ///</summary>
    TopCenter = 2;
    ///<summary>
    ///  内容是在顶部，垂直对齐和水平方向上右对齐。
    ///</summary>
    TopRight = 4;
    ///<summary>
    ///  内容是在中间，垂直对齐和水平方向上左对齐。
    ///</summary>
    MiddleLeft = 16;
    ///<summary>
    ///  内容是在中间，垂直对齐和水平方向上居中对齐。
    ///</summary>
    MiddleCenter = 32;
    ///<summary>
    ///  内容是在中间，垂直对齐和水平方向上右对齐。
    ///</summary>
    MiddleRight = 64;
    ///<summary>
    ///  内容是在底部，垂直对齐和水平方向上左对齐。
    ///</summary>
    BottomLeft = 256;
    ///<summary>
    ///  内容是在底部，垂直对齐和水平方向上居中对齐。
    ///</summary>
    BottomCenter = 512;
    ///<summary>
    ///  内容是在底部，垂直对齐和水平方向上右对齐。
    ///</summary>
    BottomRight = 1024;
  end;


  //-------------namespace: System.Drawing----------------
  ///<summary>
  ///  确定如何与目标颜色，以生成最终颜色的组合中复制像素操作的源颜色。
  ///</summary>
  [DNTypeName('System.Drawing.CopyPixelOperation')]
  DNCopyPixelOperation = type Integer;
  DNCopyPixelOperationHelper = record helper for DNCopyPixelOperation
  public const
    ///<summary>
    ///  通过使用与物理调色板中索引 0 处关联的颜色填充目标区域。
    ///  （此颜色为黑色，默认的物理调色板。
    ///</summary>
    Blackness = 66;
    ///<summary>
    ///  源和目标颜色组合使用布尔 <see langword="OR" />
    ///  然后逆转运算符和生成的颜色。
    ///</summary>
    NotSourceErase = 1114278;
    ///<summary>
    ///  反转的源区域复制到目标。
    ///</summary>
    NotSourceCopy = 3342344;
    ///<summary>
    ///  目标区域的颜色反转结合使用布尔值的源区域的颜色 <see langword="AND" />
    ///  运算符。
    ///</summary>
    SourceErase = 4457256;
    ///<summary>
    ///  目标区域已逆转。
    ///</summary>
    DestinationInvert = 5570569;
    ///<summary>
    ///  与相结合，目标设备上下文中当前选定的画笔的颜色的颜色的目标使用布尔 <see langword="XOR" />
    ///  运算符。
    ///</summary>
    PatInvert = 5898313;
    ///<summary>
    ///  源和目标区域的颜色组合使用布尔 <see langword="XOR" />
    ///  运算符。
    ///</summary>
    SourceInvert = 6684742;
    ///<summary>
    ///  源和目标区域的颜色组合使用布尔 <see langword="AND" />
    ///  运算符。
    ///</summary>
    SourceAnd = 8913094;
    ///<summary>
    ///  与目标区域的颜色合并反转的源区域的颜色，应使用布尔 <see langword="OR" />
    ///  运算符。
    ///</summary>
    MergePaint = 12255782;
    ///<summary>
    ///  源区域的颜色的目标设备上下文中使用布尔所选定画笔颜色与合并 <see langword="AND" />
    ///  运算符。
    ///</summary>
    MergeCopy = 12583114;
    ///<summary>
    ///  源区域是直接复制到目标区域。
    ///</summary>
    SourceCopy = 13369376;
    ///<summary>
    ///  源和目标区域的颜色组合使用布尔 <see langword="OR" />
    ///  运算符。
    ///</summary>
    SourcePaint = 15597702;
    ///<summary>
    ///  目标设备上下文中当前选定的画笔复制到目标位图。
    ///</summary>
    PatCopy = 15728673;
    ///<summary>
    ///  与使用布尔将反转的源区域的颜色相结合，目标设备上下文中当前选定的画笔的颜色 <see langword="OR" />
    ///  运算符。
    ///  此操作的结果结合使用布尔值的目标区域的颜色 <see langword="OR" />
    ///  运算符。
    ///</summary>
    PatPaint = 16452105;
    ///<summary>
    ///  通过使用与物理调色板中的索引 1 相关联的颜色填充目标区域。
    ///  （此颜色为默认的物理调色板的白色。
    ///</summary>
    Whiteness = 16711778;
    ///<summary>
    ///  包括彼此层叠于您的窗口顶部的 windows 在生成的图像。
    ///  默认情况下，映像将包含您的窗口。
    ///  请注意，这通常不能用于打印设备上下文。
    ///</summary>
    CaptureBlt = 1073741824;
    ///<summary>
    ///  未镜像该位图。
    ///</summary>
    NoMirrorBitmap = -2147483648;
  end;


  //-------------namespace: System.Drawing.Drawing2D----------------
  ///<summary>
  ///  指定如何不同的剪辑区域可以组合。
  ///</summary>
  [DNTypeName('System.Drawing.Drawing2D.CombineMode')]
  DNCombineMode = type Integer;
  DNCombineModeHelper = record helper for DNCombineMode
  public const
    ///<summary>
    ///  另一种将替换为一个剪辑区域。
    ///</summary>
    Replace = 0;
    ///<summary>
    ///  通过采用它们的交集组合两个剪辑区域。
    ///</summary>
    Intersect = 1;
    ///<summary>
    ///  通过采用这两者的 union 组合两个剪辑区域。
    ///</summary>
    Union = 2;
    ///<summary>
    ///  两个剪辑区域是组合采取相应的区域括起，一项或在其他区域中，但不是能同时。
    ///</summary>
    Xor_ = 3;
    ///<summary>
    ///  指定正在从现有的区域中删除的新区域的结果替换为现有区域。
    ///  换言之，从现有区域中排除的新区域。
    ///</summary>
    Exclude = 4;
    ///<summary>
    ///  指定正在从新的区域中删除现有区域的结果替换为现有区域。
    ///  换言之，从新区域中排除现有的区域。
    ///</summary>
    Complement = 5;
  end;


  //-------------namespace: System.Drawing.Drawing2D----------------
  ///<summary>
  ///  指定源颜色与背景色进行组合的方式。
  ///</summary>
  [DNTypeName('System.Drawing.Drawing2D.CompositingMode')]
  DNCompositingMode = type Integer;
  DNCompositingModeHelper = record helper for DNCompositingMode
  public const
    ///<summary>
    ///  指定的一种颜色呈现时，它与混合的背景色。
    ///  Blend 取决于所呈现的颜色的 alpha 分量。
    ///</summary>
    SourceOver = 0;
    ///<summary>
    ///  指定一种颜色呈现时，它将覆盖背景色。
    ///</summary>
    SourceCopy = 1;
  end;


  //-------------namespace: System.Drawing.Drawing2D----------------
  ///<summary>
  ///  指定要在复合期间使用的质量级别。
  ///</summary>
  [DNTypeName('System.Drawing.Drawing2D.CompositingQuality')]
  DNCompositingQuality = type Integer;
  DNCompositingQualityHelper = record helper for DNCompositingQuality
  public const
    ///<summary>
    ///  默认的质量。
    ///</summary>
    Default_ = 0;
    ///<summary>
    ///  高速度、 低质量。
    ///</summary>
    HighSpeed = 1;
    ///<summary>
    ///  高质量、 低速度复合。
    ///</summary>
    HighQuality = 2;
    ///<summary>
    ///  使用灰度校正。
    ///</summary>
    GammaCorrected = 3;
    ///<summary>
    ///  假定线性值。
    ///</summary>
    AssumeLinear = 4;
    ///<summary>
    ///  无效的质量。
    ///</summary>
    Invalid = -1;
  end;


  //-------------namespace: System.Drawing.Drawing2D----------------
  ///<summary>
  ///  指定要评估坐标时使用的系统。
  ///</summary>
  [DNTypeName('System.Drawing.Drawing2D.CoordinateSpace')]
  DNCoordinateSpace = type Integer;
  DNCoordinateSpaceHelper = record helper for DNCoordinateSpace
  public const
    ///<summary>
    ///  指定坐标世界坐标上下文中。
    ///  在建模环境之类的非物理环境中使用世界坐标。
    ///</summary>
    World = 0;
    ///<summary>
    ///  指定坐标在页坐标上下文中。
    ///  通过定义其单元 <see cref="P:System.Drawing.Graphics.PageUnit" />
    ///  属性，并且必须是元素之一 <see cref="T:System.Drawing.GraphicsUnit" />
    ///  枚举。
    ///</summary>
    Page = 1;
    ///<summary>
    ///  指定设备坐标上下文中的坐标。
    ///  在计算机屏幕设备上坐标通常以像素为单位测量。
    ///</summary>
    Device = 2;
  end;


  //-------------namespace: System.Drawing.Drawing2D----------------
  ///<summary>
  ///  指定如何填充封闭路径的内部。
  ///</summary>
  [DNTypeName('System.Drawing.Drawing2D.FillMode')]
  DNFillMode = type Integer;
  DNFillModeHelper = record helper for DNFillMode
  public const
    ///<summary>
    ///  指定备用填充模式。
    ///</summary>
    Alternate = 0;
    ///<summary>
    ///  指定环绕的填充模式。
    ///</summary>
    Winding = 1;
  end;


  //-------------namespace: System.Drawing.Drawing2D----------------
  ///<summary>
  ///  指定是否 （刷新），立即终止图形堆栈中的命令或尽可能快地执行。
  ///</summary>
  [DNTypeName('System.Drawing.Drawing2D.FlushIntention')]
  DNFlushIntention = type Integer;
  DNFlushIntentionHelper = record helper for DNFlushIntention
  public const
    ///<summary>
    ///  指定的所有图形操作堆栈立即刷新。
    ///</summary>
    Flush = 0;
    ///<summary>
    ///  指定在堆栈上的所有图形操作都执行越早越好。
    ///  这会同步图形状态。
    ///</summary>
    Sync = 1;
  end;


  //-------------namespace: System.Drawing.Drawing2D----------------
  ///<summary><see cref="T:System.Drawing.Drawing2D.InterpolationMode" />
  ///  枚举指定的图像是缩放或旋转时使用的算法。
  ///</summary>
  [DNTypeName('System.Drawing.Drawing2D.InterpolationMode')]
  DNInterpolationMode = type Integer;
  DNInterpolationModeHelper = record helper for DNInterpolationMode
  public const
    ///<summary>
    ///  指定默认模式。
    ///</summary>
    Default_ = 0;
    ///<summary>
    ///  指定低质量内插。
    ///</summary>
    Low = 1;
    ///<summary>
    ///  指定高质量内插。
    ///</summary>
    High = 2;
    ///<summary>
    ///  指定双线性内插。
    ///  进行任何预筛选。
    ///  此模式不适用于图像收缩为其原始大小的 50%以下。
    ///</summary>
    Bilinear = 3;
    ///<summary>
    ///  指定两次立方插值。
    ///  进行任何预筛选。
    ///  此模式不适用于图像收缩为其原始大小的 25%以下。
    ///</summary>
    Bicubic = 4;
    ///<summary>
    ///  指定最近邻域内插。
    ///</summary>
    NearestNeighbor = 5;
    ///<summary>
    ///  指定高质量、 双线性内插。
    ///  执行预筛选功能以确保高质量的收缩。
    ///</summary>
    HighQualityBilinear = 6;
    ///<summary>
    ///  指定高质量、 两次立方插值。
    ///  执行预筛选功能以确保高质量的收缩。
    ///  此模式可产生最高的质量转换图像。
    ///</summary>
    HighQualityBicubic = 7;
    ///<summary>
    ///  等效于 <see cref="F:System.Drawing.Drawing2D.QualityMode.Invalid" />
    ///  元素 <see cref="T:System.Drawing.Drawing2D.QualityMode" />
    ///  枚举。
    ///</summary>
    Invalid = -1;
  end;


  //-------------namespace: System.Drawing.Drawing2D----------------
  ///<summary>
  ///  指定矩阵的转换操作的顺序。
  ///</summary>
  [DNTypeName('System.Drawing.Drawing2D.MatrixOrder')]
  DNMatrixOrder = type Integer;
  DNMatrixOrderHelper = record helper for DNMatrixOrder
  public const
    ///<summary>
    ///  在旧操作前将应用新的操作。
    ///</summary>
    Prepend = 0;
    ///<summary>
    ///  在旧操作后将应用新的操作。
    ///</summary>
    Append = 1;
  end;


  //-------------namespace: System.Drawing.Drawing2D----------------
  ///<summary>
  ///  指定在呈现过程中如何偏移像素为单位。
  ///</summary>
  [DNTypeName('System.Drawing.Drawing2D.PixelOffsetMode')]
  DNPixelOffsetMode = type Integer;
  DNPixelOffsetModeHelper = record helper for DNPixelOffsetMode
  public const
    ///<summary>
    ///  指定的默认模式。
    ///</summary>
    Default_ = 0;
    ///<summary>
    ///  指定高速度、 低质量呈现。
    ///</summary>
    HighSpeed = 1;
    ///<summary>
    ///  指定高质量、 低速度呈现。
    ///</summary>
    HighQuality = 2;
    ///<summary>
    ///  指定没有像素偏移量。
    ///</summary>
    None = 3;
    ///<summary>
    ///  指定像素偏移-.5 个单元，表示水平和垂直两个高速抗锯齿的。
    ///</summary>
    Half = 4;
    ///<summary>
    ///  指定无效的模式。
    ///</summary>
    Invalid = -1;
  end;


  //-------------namespace: System.Drawing.Drawing2D----------------
  ///<summary>
  ///  指定是否将平滑 （抗锯齿） 应用于直线、 曲线和已填充区域边缘。
  ///</summary>
  [DNTypeName('System.Drawing.Drawing2D.SmoothingMode')]
  DNSmoothingMode = type Integer;
  DNSmoothingModeHelper = record helper for DNSmoothingMode
  public const
    ///<summary>
    ///  指定未抗锯齿。
    ///</summary>
    Default_ = 0;
    ///<summary>
    ///  指定未抗锯齿。
    ///</summary>
    HighSpeed = 1;
    ///<summary>
    ///  指定消除锯齿的呈现。
    ///</summary>
    HighQuality = 2;
    ///<summary>
    ///  指定未抗锯齿。
    ///</summary>
    None = 3;
    ///<summary>
    ///  指定消除锯齿的呈现。
    ///</summary>
    AntiAlias = 4;
    ///<summary>
    ///  指定无效的模式。
    ///</summary>
    Invalid = -1;
  end;


  //-------------namespace: System.Drawing----------------
  ///<summary>
  ///  指定应用于文本的样式信息。
  ///</summary>
  [DNTypeName('System.Drawing.FontStyle')]
  DNFontStyle = type Integer;
  DNFontStyleHelper = record helper for DNFontStyle
  public const
    ///<summary>
    ///  普通文本。
    ///</summary>
    Regular = 0;
    ///<summary>
    ///  显示为粗体文本。
    ///</summary>
    Bold = 1;
    ///<summary>
    ///  斜体文本。
    ///</summary>
    Italic = 2;
    ///<summary>
    ///  带下划线的文本。
    ///</summary>
    Underline = 4;
    ///<summary>
    ///  有一条线穿过中部的文本。
    ///</summary>
    Strikeout = 8;
  end;


  //-------------namespace: System.Drawing----------------
  ///<summary>
  ///  指定给定的数据的度量值的单位。
  ///</summary>
  [DNTypeName('System.Drawing.GraphicsUnit')]
  DNGraphicsUnit = type Integer;
  DNGraphicsUnitHelper = record helper for DNGraphicsUnit
  public const
    ///<summary>
    ///  世界坐标系单位指定为度量单位。
    ///</summary>
    World = 0;
    ///<summary>
    ///  指定显示设备的度量的单位。
    ///  通常为视频显示器和打印机的 1/100 英寸像素。
    ///</summary>
    Display = 1;
    ///<summary>
    ///  指定设备像素为度量单位。
    ///</summary>
    Pixel = 2;
    ///<summary>
    ///  作为度量单位指定打印机的点 （1/72 英寸）。
    ///</summary>
    Point = 3;
    ///<summary>
    ///  指定的度量单位为英寸。
    ///</summary>
    Inch = 4;
    ///<summary>
    ///  文档单位 （1/300 英寸） 指定为度量单位。
    ///</summary>
    Document = 5;
    ///<summary>
    ///  指定的度量单位为毫米。
    ///</summary>
    Millimeter = 6;
  end;


  //-------------namespace: System.Drawing.Imaging----------------
  ///<summary>
  ///  指定传递给标志参数的标志 <see cref="Overload:System.Drawing.Bitmap.LockBits" />
  ///  方法。
  ///<see cref="Overload:System.Drawing.Bitmap.LockBits" />
  ///  方法锁定图像的一部分，以便您可以读取或写入像素的数据。
  ///</summary>
  [DNTypeName('System.Drawing.Imaging.ImageLockMode')]
  DNImageLockMode = type Integer;
  DNImageLockModeHelper = record helper for DNImageLockMode
  public const
    ///<summary>
    ///  指定图像的一部分被锁定以进行读取。
    ///</summary>
    ReadOnly = 1;
    ///<summary>
    ///  指定图像的一部分被锁定以进行写入。
    ///</summary>
    WriteOnly_ = 2;
    ///<summary>
    ///  指定用于读取或写入锁定的图像的一部分。
    ///</summary>
    ReadWrite = 3;
    ///<summary>
    ///  指定用户分配用于读取或写入像素数据的缓冲区。
    ///  如果设置此标志， <paramref name="flags" />
    ///  参数 <see cref="Overload:System.Drawing.Bitmap.LockBits" />
    ///  方法为提供每年作为输入参数 （可能为输出参数）。
    ///  如果清除此标志，则 <paramref name="flags" />
    ///  参数仅充当输出参数。
    ///</summary>
    UserInputBuffer = 4;
  end;


  //-------------namespace: System.Drawing.Imaging----------------
  ///<summary>
  ///  指定图像中的每个像素的颜色数据格式。
  ///</summary>
  [DNTypeName('System.Drawing.Imaging.PixelFormat')]
  DNPixelFormat = type Integer;
  DNPixelFormatHelper = record helper for DNPixelFormat
  public const
    ///<summary>
    ///  指定没有像素格式。
    ///</summary>
    DontCare = 0;
    ///<summary>
    ///  像素格式未定义。
    ///</summary>
    Undefined = 0;
    ///<summary>
    ///  此枚举的最大值。
    ///</summary>
    Max = 15;
    ///<summary>
    ///  像素数据包含颜色索引值，这意味着这些值是在系统颜色表中，而不是各个颜色值的颜色的索引。
    ///</summary>
    Indexed = 65536;
    ///<summary>
    ///  像素数据包含 GDI 颜色。
    ///</summary>
    Gdi = 131072;
    ///<summary>
    ///  指定的格式是 16 位 / 像素;5 位用于红色、 绿色和蓝色组件。
    ///  不使用剩余的 1 位。
    ///</summary>
    Format16bppRgb555 = 135173;
    ///<summary>
    ///  指定的格式是 16 位 / 像素;5 位用于红色组件、 6 位用于绿色组件和 5 位用于蓝色分量。
    ///</summary>
    Format16bppRgb565 = 135174;
    ///<summary>
    ///  指定的格式是 24 位 / 像素;8 位用于红色、 绿色和蓝色组件。
    ///</summary>
    Format24bppRgb = 137224;
    ///<summary>
    ///  指定的格式是 32 位 / 像素;8 位用于红色、 绿色和蓝色组件。
    ///  不使用剩余的 8 位。
    ///</summary>
    Format32bppRgb = 139273;
    ///<summary>
    ///  指定的像素格式是每像素 1 位，它使用索引的颜色。
    ///  因此，颜色表中它有两种颜色。
    ///</summary>
    Format1bppIndexed = 196865;
    ///<summary>
    ///  指定的格式是 4 位 / 像素，编制索引。
    ///</summary>
    Format4bppIndexed = 197634;
    ///<summary>
    ///  指定的格式是 8 位 / 像素，编制索引。
    ///  因此，颜色表中它有 256 种颜色。
    ///</summary>
    Format8bppIndexed = 198659;
    ///<summary>
    ///  像素数据包含不自左乘的 alpha 值。
    ///</summary>
    Alpha = 262144;
    ///<summary>
    ///  像素格式是 16 位 / 像素。
    ///  颜色信息指定 32768 所属 5 位的红色、 5 位的颜色为绿色、 5 位为蓝色，和 1 的位是 alpha。
    ///</summary>
    Format16bppArgb1555 = 397319;
    ///<summary>
    ///  像素格式包含预乘 alpha 值。
    ///</summary>
    PAlpha = 524288;
    ///<summary>
    ///  指定的格式是 32 位 / 像素;8 位用于 alpha、 红色、 绿色和蓝色组件。
    ///  红色、 绿色和蓝色组件是根据 alpha 分量自左乘。
    ///</summary>
    Format32bppPArgb = 925707;
    ///<summary>
    ///  保留。
    ///</summary>
    Extended = 1048576;
    ///<summary>
    ///  像素格式是 16 位 / 像素。
    ///  颜色信息指定 65536 灰度梯度。
    ///</summary>
    Format16bppGrayScale = 1052676;
    ///<summary>
    ///  指定的格式是 48 位 / 像素;为红色、 绿色和蓝色组件使用 16 位。
    ///</summary>
    Format48bppRgb = 1060876;
    ///<summary>
    ///  指定的格式是每个像素; 64 位alpha、 红色、 绿色和蓝色组件使用 16 位。
    ///  红色、 绿色和蓝色组件进行自左乘的 alpha 分量根据。
    ///</summary>
    Format64bppPArgb = 1851406;
    ///<summary>
    ///  32 位 / 像素默认像素格式。
    ///  此格式指定 24 位颜色深度和一个 8 位 alpha 通道。
    ///</summary>
    Canonical = 2097152;
    ///<summary>
    ///  指定的格式是 32 位 / 像素;8 位用于 alpha、 红色、 绿色和蓝色组件。
    ///</summary>
    Format32bppArgb = 2498570;
    ///<summary>
    ///  指定的格式是每个像素; 64 位alpha、 红色、 绿色和蓝色组件使用 16 位。
    ///</summary>
    Format64bppArgb = 3424269;
  end;


  //-------------namespace: System.Drawing----------------
  ///<summary>
  ///  指定的已知的系统颜色。
  ///</summary>
  [DNTypeName('System.Drawing.KnownColor')]
  DNKnownColor = type Integer;
  DNKnownColorHelper = record helper for DNKnownColor
  public const
    ///<summary>
    ///  系统定义的活动窗口边框的颜色。
    ///</summary>
    ActiveBorder = 1;
    ///<summary>
    ///  系统定义的活动窗口标题栏背景的颜色。
    ///</summary>
    ActiveCaption = 2;
    ///<summary>
    ///  系统定义的活动窗口标题栏中文本的颜色。
    ///</summary>
    ActiveCaptionText = 3;
    ///<summary>
    ///  系统定义应用程序工作区的颜色。
    ///  应用程序工作区是不被文档占据的多个文档视图中的区域。
    ///</summary>
    AppWorkspace = 4;
    ///<summary>
    ///  三维元素的系统定义的表面颜色。
    ///</summary>
    Control = 5;
    ///<summary>
    ///  三维元素系统定义的阴影颜色。
    ///  阴影颜色适用于面向远离的光源的三维元素的部分。
    ///</summary>
    ControlDark = 6;
    ///<summary>
    ///  系统定义的颜色，是一个三维元素的暗阴影颜色。
    ///  暗阴影颜色应用于所最深的颜色的三维元素的部分中。
    ///</summary>
    ControlDarkDark = 7;
    ///<summary>
    ///  系统定义的颜色，是一个三维元素的亮色。
    ///  亮色适用于面向的光源的三维元素的部分。
    ///</summary>
    ControlLight = 8;
    ///<summary>
    ///  三维元素的系统定义的突出显示颜色。
    ///  突出显示颜色应用于所最亮色的三维元素的部分中。
    ///</summary>
    ControlLightLight = 9;
    ///<summary>
    ///  系统定义的三维元素中文本的颜色。
    ///</summary>
    ControlText = 10;
    ///<summary>
    ///  系统定义用作桌面颜色。
    ///</summary>
    Desktop = 11;
    ///<summary>
    ///  系统定义的浅灰色文本颜色。
    ///  列表中处于禁用状态的项将显示为浅灰色文本。
    ///</summary>
    GrayText = 12;
    ///<summary>
    ///  系统定义的选定项的背景颜色。
    ///  这包括所选的菜单项，以及所选的文本。
    ///</summary>
    Highlight = 13;
    ///<summary>
    ///  系统定义的选定项的文本颜色。
    ///</summary>
    HighlightText = 14;
    ///<summary>
    ///  用于指定热跟踪项的系统定义颜色。
    ///  右键单击热跟踪项执行项。
    ///</summary>
    HotTrack = 15;
    ///<summary>
    ///  系统定义非活动窗口边框的颜色。
    ///</summary>
    InactiveBorder = 16;
    ///<summary>
    ///  系统定义的非活动窗口标题栏背景的颜色。
    ///</summary>
    InactiveCaption = 17;
    ///<summary>
    ///  系统定义非活动窗口标题栏中文本的颜色。
    ///</summary>
    InactiveCaptionText = 18;
    ///<summary>
    ///  系统定义的工具提示的背景颜色。
    ///</summary>
    Info = 19;
    ///<summary>
    ///  系统定义的工具提示的文本颜色。
    ///</summary>
    InfoText = 20;
    ///<summary>
    ///  系统定义一个表示菜单背景的颜色。
    ///</summary>
    Menu = 21;
    ///<summary>
    ///  系统定义的一个表示菜单文本颜色。
    ///</summary>
    MenuText = 22;
    ///<summary>
    ///  系统定义的滚动条的背景颜色。
    ///</summary>
    ScrollBar = 23;
    ///<summary>
    ///  系统定义的一个窗口的工作区中的背景颜色。
    ///</summary>
    Window = 24;
    ///<summary>
    ///  系统定义窗口框架的颜色。
    ///</summary>
    WindowFrame = 25;
    ///<summary>
    ///  系统定义的一个窗口的工作区中文本的颜色。
    ///</summary>
    WindowText = 26;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Transparent = 27;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    AliceBlue = 28;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    AntiqueWhite = 29;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Aqua = 30;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Aquamarine = 31;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Azure = 32;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Beige = 33;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Bisque = 34;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Black = 35;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    BlanchedAlmond = 36;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Blue = 37;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    BlueViolet = 38;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Brown = 39;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    BurlyWood = 40;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    CadetBlue = 41;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Chartreuse = 42;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Chocolate = 43;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Coral = 44;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    CornflowerBlue = 45;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Cornsilk = 46;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Crimson = 47;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Cyan = 48;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    DarkBlue = 49;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    DarkCyan = 50;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    DarkGoldenrod = 51;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    DarkGray = 52;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    DarkGreen = 53;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    DarkKhaki = 54;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    DarkMagenta = 55;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    DarkOliveGreen = 56;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    DarkOrange = 57;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    DarkOrchid = 58;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    DarkRed = 59;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    DarkSalmon = 60;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    DarkSeaGreen = 61;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    DarkSlateBlue = 62;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    DarkSlateGray = 63;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    DarkTurquoise = 64;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    DarkViolet = 65;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    DeepPink = 66;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    DeepSkyBlue = 67;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    DimGray = 68;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    DodgerBlue = 69;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Firebrick = 70;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    FloralWhite = 71;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    ForestGreen = 72;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Fuchsia = 73;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Gainsboro = 74;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    GhostWhite = 75;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Gold = 76;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Goldenrod = 77;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Gray = 78;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Green = 79;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    GreenYellow = 80;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Honeydew = 81;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    HotPink = 82;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    IndianRed = 83;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Indigo = 84;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Ivory = 85;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Khaki = 86;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Lavender = 87;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    LavenderBlush = 88;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    LawnGreen = 89;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    LemonChiffon = 90;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    LightBlue = 91;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    LightCoral = 92;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    LightCyan = 93;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    LightGoldenrodYellow = 94;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    LightGray = 95;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    LightGreen = 96;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    LightPink = 97;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    LightSalmon = 98;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    LightSeaGreen = 99;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    LightSkyBlue = 100;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    LightSlateGray = 101;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    LightSteelBlue = 102;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    LightYellow = 103;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Lime = 104;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    LimeGreen = 105;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Linen = 106;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Magenta = 107;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Maroon = 108;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    MediumAquamarine = 109;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    MediumBlue = 110;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    MediumOrchid = 111;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    MediumPurple = 112;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    MediumSeaGreen = 113;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    MediumSlateBlue = 114;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    MediumSpringGreen = 115;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    MediumTurquoise = 116;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    MediumVioletRed = 117;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    MidnightBlue = 118;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    MintCream = 119;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    MistyRose = 120;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Moccasin = 121;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    NavajoWhite = 122;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Navy = 123;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    OldLace = 124;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Olive = 125;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    OliveDrab = 126;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Orange = 127;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    OrangeRed = 128;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Orchid = 129;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    PaleGoldenrod = 130;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    PaleGreen = 131;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    PaleTurquoise = 132;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    PaleVioletRed = 133;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    PapayaWhip = 134;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    PeachPuff = 135;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Peru = 136;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Pink = 137;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Plum = 138;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    PowderBlue = 139;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Purple = 140;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Red = 141;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    RosyBrown = 142;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    RoyalBlue = 143;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    SaddleBrown = 144;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Salmon = 145;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    SandyBrown = 146;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    SeaGreen = 147;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    SeaShell = 148;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Sienna = 149;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Silver = 150;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    SkyBlue = 151;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    SlateBlue = 152;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    SlateGray = 153;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Snow = 154;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    SpringGreen = 155;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    SteelBlue = 156;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Tan = 157;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Teal = 158;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Thistle = 159;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Tomato = 160;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Turquoise = 161;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Violet = 162;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Wheat = 163;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    White = 164;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    WhiteSmoke = 165;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    Yellow = 166;
    ///<summary>
    ///  系统定义的颜色。
    ///</summary>
    YellowGreen = 167;
    ///<summary>
    ///  三维元素的系统定义的表面颜色。
    ///</summary>
    ButtonFace = 168;
    ///<summary>
    ///  系统定义的颜色，是一个三维元素的突出显示颜色。
    ///  此颜色将应用于面向的光源的三维元素的部分。
    ///</summary>
    ButtonHighlight = 169;
    ///<summary>
    ///  系统定义的颜色，是一个三维元素的阴影颜色。
    ///  此颜色将应用于面向远离的光源的三维元素的部分。
    ///</summary>
    ButtonShadow = 170;
    ///<summary>
    ///  系统定义中的活动窗口标题栏的颜色渐变的最小颜色的颜色。
    ///</summary>
    GradientActiveCaption = 171;
    ///<summary>
    ///  系统定义中的非活动窗口标题栏的颜色渐变的最小颜色的颜色。
    ///</summary>
    GradientInactiveCaption = 172;
    ///<summary>
    ///  系统定义的菜单栏背景的颜色。
    ///</summary>
    MenuBar = 173;
    ///<summary>
    ///  用来在像平面菜单显示的菜单时突出显示菜单项的系统定义颜色。
    ///</summary>
    MenuHighlight = 174;
  end;


  //-------------namespace: System.Drawing.Printing----------------
  ///<summary>
  ///  指定打印机的双工设置。
  ///</summary>
  [DNTypeName('System.Drawing.Printing.Duplex')]
  DNDuplex = type Integer;
  DNDuplexHelper = record helper for DNDuplex
  public const
    ///<summary>
    ///  单面打印。
    ///</summary>
    Simplex = 1;
    ///<summary>
    ///  双面垂直打印。
    ///</summary>
    Vertical = 2;
    ///<summary>
    ///  双面水平打印。
    ///</summary>
    Horizontal = 3;
    ///<summary>
    ///  打印机的默认双面打印设置。
    ///</summary>
    Default_ = -1;
  end;


  //-------------namespace: System.Drawing.Printing----------------
  ///<summary>
  ///  指定正在进行的打印操作的类型。
  ///</summary>
  [DNTypeName('System.Drawing.Printing.PrintAction')]
  DNPrintAction = type Integer;
  DNPrintActionHelper = record helper for DNPrintAction
  public const
    ///<summary>
    ///  打印操作打印到文件。
    ///</summary>
    PrintToFile = 0;
    ///<summary>
    ///  打印操作为打印预览。
    ///</summary>
    PrintToPreview = 1;
    ///<summary>
    ///  打印操作打印到打印机。
    ///</summary>
    PrintToPrinter = 2;
  end;


  //-------------namespace: System.Drawing.Printing----------------
  ///<summary>
  ///  指定要打印的文档的一部分。
  ///</summary>
  [DNTypeName('System.Drawing.Printing.PrintRange')]
  DNPrintRange = type Integer;
  DNPrintRangeHelper = record helper for DNPrintRange
  public const
    ///<summary>
    ///  打印所有页面。
    ///</summary>
    AllPages = 0;
    ///<summary>
    ///  打印选定的页。
    ///</summary>
    Selection = 1;
    ///<summary>
    ///  之间的页 <see cref="P:System.Drawing.Printing.PrinterSettings.FromPage" />
    ///  和 <see cref="P:System.Drawing.Printing.PrinterSettings.ToPage" />
    ///  打印。
    ///</summary>
    SomePages = 2;
    ///<summary>
    ///  打印当前显示的页面
    ///</summary>
    CurrentPage = 4194304;
  end;


  //-------------namespace: System.Drawing----------------
  ///<summary>
  ///  指定多少图像的旋转和翻转图像所用于的轴。
  ///</summary>
  [DNTypeName('System.Drawing.RotateFlipType')]
  DNRotateFlipType = type Integer;
  DNRotateFlipTypeHelper = record helper for DNRotateFlipType
  public const
    ///<summary>
    ///  指定后接水平和垂直的 180 度顺时针旋转翻转。
    ///</summary>
    Rotate180FlipXY = 0;
    ///<summary>
    ///  指定没有顺时针旋转和翻转。
    ///</summary>
    RotateNoneFlipNone = 0;
    ///<summary>
    ///  指定不进行翻转顺时针旋转 90 度。
    ///</summary>
    Rotate90FlipNone = 1;
    ///<summary>
    ///  指定后接水平和垂直的 270 度顺时针旋转翻转。
    ///</summary>
    Rotate270FlipXY = 1;
    ///<summary>
    ///  指定不进行翻转 180 度的顺时针旋转。
    ///</summary>
    Rotate180FlipNone = 2;
    ///<summary>
    ///  指定没有顺时针旋转后接水平和垂直翻转。
    ///</summary>
    RotateNoneFlipXY = 2;
    ///<summary>
    ///  指定不进行翻转顺时针旋转 270 度。
    ///</summary>
    Rotate270FlipNone = 3;
    ///<summary>
    ///  指定旋转 90 度顺时针旋转后接水平和垂直翻转。
    ///</summary>
    Rotate90FlipXY = 3;
    ///<summary>
    ///  指定没有跟水平翻转的顺时针旋转。
    ///</summary>
    RotateNoneFlipX = 4;
    ///<summary>
    ///  指定垂直翻转后跟 180 度顺时针旋转。
    ///</summary>
    Rotate180FlipY = 4;
    ///<summary>
    ///  指定后接水平翻转的 90 度的顺时针旋转。
    ///</summary>
    Rotate90FlipX = 5;
    ///<summary>
    ///  指定垂直翻转后跟的 270 度顺时针旋转。
    ///</summary>
    Rotate270FlipY = 5;
    ///<summary>
    ///  指定后接水平翻转的 180 度顺时针旋转。
    ///</summary>
    Rotate180FlipX = 6;
    ///<summary>
    ///  指定垂直翻转后跟没有顺时针旋转。
    ///</summary>
    RotateNoneFlipY = 6;
    ///<summary>
    ///  指定后接水平翻转的 270 度顺时针旋转。
    ///</summary>
    Rotate270FlipX = 7;
    ///<summary>
    ///  指定垂直翻转后跟 90 度顺时针旋转。
    ///</summary>
    Rotate90FlipY = 7;
  end;


  //-------------namespace: System.Drawing----------------
  ///<summary>
  ///  指定相对于其布局矩形的文本字符串的对齐方式。
  ///</summary>
  [DNTypeName('System.Drawing.StringAlignment')]
  DNStringAlignment = type Integer;
  DNStringAlignmentHelper = record helper for DNStringAlignment
  public const
    ///<summary>
    ///  指定文本对齐靠近布局。
    ///  在从左到右布局中，保留近的位置。
    ///  在从右到左布局中，近的位置是右。
    ///</summary>
    Near_ = 0;
    ///<summary>
    ///  指定文本在布局矩形的中心对齐。
    ///</summary>
    Center = 1;
    ///<summary>
    ///  指定文本对齐与相差甚远的布局矩形的来源位置。
    ///  在从左到右布局中，远的位置是右。
    ///  在从右到左布局中，保留远的位置。
    ///</summary>
    Far_ = 2;
  end;


  //-------------namespace: System.Drawing----------------
  ///<summary><see cref="T:System.Drawing.StringDigitSubstitute" />
  ///  枚举指定如何替代根据用户的区域设置或语言字符串中的数字。
  ///</summary>
  [DNTypeName('System.Drawing.StringDigitSubstitute')]
  DNStringDigitSubstitute = type Integer;
  DNStringDigitSubstituteHelper = record helper for DNStringDigitSubstitute
  public const
    ///<summary>
    ///  指定用户定义的替代方案。
    ///</summary>
    User = 0;
    ///<summary>
    ///  指定要禁用替换项。
    ///</summary>
    None = 1;
    ///<summary>
    ///  指定与用户的区域设置的正式国家/地区语言对应的替换数字。
    ///</summary>
    National = 2;
    ///<summary>
    ///  指定与用户的本机脚本相对应的替换数字或语言中，这可能是不同于用户的区域设置的官方国家/地区的语言。
    ///</summary>
    Traditional = 3;
  end;


  //-------------namespace: System.Drawing----------------
  ///<summary>
  ///  指定文本字符串的显示和布局的信息。
  ///</summary>
  [DNTypeName('System.Drawing.StringFormatFlags')]
  DNStringFormatFlags = type Integer;
  DNStringFormatFlagsHelper = record helper for DNStringFormatFlags
  public const
    ///<summary>
    ///  从右到左显示文本。
    ///</summary>
    DirectionRightToLeft = 1;
    ///<summary>
    ///  垂直对齐文本。
    ///</summary>
    DirectionVertical = 2;
    ///<summary>
    ///  允许的字符部分延伸字符串的布局矩形。
    ///  默认情况下，将重新定位字符以避免任何延伸。
    ///</summary>
    FitBlackBox = 4;
    ///<summary>
    ///  控制字符，如从左到右标记并具有代表性的标志符号输出所示。
    ///</summary>
    DisplayFormatControl = 32;
    ///<summary>
    ///  回退到不支持请求的字体中的字符的可选字体处于禁用状态。
    ///  使用缺少符号，通常是一个空的方块的字体显示缺失的任何字符。
    ///</summary>
    NoFontFallback = 1024;
    ///<summary>
    ///  包括每个行的结尾处的尾随空格。
    ///  默认情况下返回的边界矩形 <see cref="Overload:System.Drawing.Graphics.MeasureString" />
    ///  方法不包括每个行的结尾处的空格。
    ///  设置此标志，以包括该空间的度量单位。
    ///</summary>
    MeasureTrailingSpaces = 2048;
    ///<summary>
    ///  文本换行时禁用格式设置的矩形范围内。
    ///  当传递的是点而不是一个矩形，或指定的矩形具有行长度为零，则暗指此标志。
    ///</summary>
    NoWrap = 4096;
    ///<summary>
    ///  只有整个行的布局的格式设置的矩形中。
    ///  默认情况下布局会继续，直到的末尾的文本，或直到没有更多的行由于剪辑，具体取决于第一个可见。
    ///  请注意，默认设置允许最后一行以部分而不是行高度的整数倍的格式设置矩形变暗。
    ///  若要确保显示整行，则指定此值，并小心地将其提供格式化矩形的高度至少为一个行的高度。
    ///</summary>
    LineLimit = 8192;
    ///<summary>
    ///  允许的标志符号和解包换行文本格式设置矩形外伸出部分显示。
    ///  默认情况下将剪切到达边框外的所有文本和字形部分。
    ///</summary>
    NoClip = 16384;
  end;


  //-------------namespace: System.Drawing----------------
  ///<summary>
  ///  指定如何修整字符串不完全适合布局形状中的字符。
  ///</summary>
  [DNTypeName('System.Drawing.StringTrimming')]
  DNStringTrimming = type Integer;
  DNStringTrimmingHelper = record helper for DNStringTrimming
  public const
    ///<summary>
    ///  指定不进行任何修整。
    ///</summary>
    None = 0;
    ///<summary>
    ///  指定将文本修整到最接近的字符。
    ///</summary>
    Character = 1;
    ///<summary>
    ///  指定文本则剪裁为最接近的单词。
    ///</summary>
    Word = 2;
    ///<summary>
    ///  指定将文本修整到最接近的字符，并且在被修整的行的末尾插入一个省略号。
    ///</summary>
    EllipsisCharacter = 3;
    ///<summary>
    ///  指定文本则剪裁为最接近的单词，并在被修整的行的末尾插入一个省略号。
    ///</summary>
    EllipsisWord = 4;
    ///<summary>
    ///  从修整行中删除中心并将其替换为省略号。
    ///  该算法会保留尽可能多的最后一个斜杠分隔的段的可能的行。
    ///</summary>
    EllipsisPath = 5;
  end;


  //-------------namespace: System.Drawing.Text----------------
  ///<summary>
  ///  指定显示的热键前缀与文本相关的类型。
  ///</summary>
  [DNTypeName('System.Drawing.Text.HotkeyPrefix')]
  DNHotkeyPrefix = type Integer;
  DNHotkeyPrefixHelper = record helper for DNHotkeyPrefix
  public const
    ///<summary>
    ///  任何热键的前缀。
    ///</summary>
    None = 0;
    ///<summary>
    ///  显示热键前缀。
    ///</summary>
    Show = 1;
    ///<summary>
    ///  不显示热键前缀。
    ///</summary>
    Hide = 2;
  end;


  //-------------namespace: System.Drawing.Text----------------
  ///<summary>
  ///  指定文本呈现质量。
  ///</summary>
  [DNTypeName('System.Drawing.Text.TextRenderingHint')]
  DNTextRenderingHint = type Integer;
  DNTextRenderingHintHelper = record helper for DNTextRenderingHint
  public const
    ///<summary>
    ///  每个字符使用位图来绘制其标志符号，使用系统默认呈现提示。
    ///  将使用在用户已经选择任何字体平滑显示的设置的系统绘制文本。
    ///</summary>
    SystemDefault = 0;
    ///<summary>
    ///  每个字符使用位图来绘制其标志符号。
    ///  提示用于改善在主干和弯曲字符外观。
    ///</summary>
    SingleBitPerPixelGridFit = 1;
    ///<summary>
    ///  每个字符使用位图来绘制其标志符号。
    ///  不使用提示。
    ///</summary>
    SingleBitPerPixel = 2;
    ///<summary>
    ///  在有提示使用抗锯齿标志符号位图来绘制字符的每个字符。
    ///  得更好的质量由于抗锯齿功能，但在较高的性能开销。
    ///</summary>
    AntiAliasGridFit = 3;
    ///<summary>
    ///  不提示的情况下使用抗锯齿标志符号位图来绘制每个字符。
    ///  由于抗锯齿质量就越好。
    ///  因为关闭了提示，词干宽度之间的差异可能非常明显。
    ///</summary>
    AntiAlias = 4;
    ///<summary>
    ///  每个字符使用位图来绘制其标志符号 ClearType 有提示。
    ///  最高的质量设置。
    ///  用来利用 ClearType 字体功能。
    ///</summary>
    ClearTypeGridFit = 5;
  end;


  //-------------namespace: System----------------
  ///<summary>
  ///  指定 <see cref="T:System.Uri" />
  ///  的各个部分。
  ///</summary>
  [DNTypeName('System.UriComponents')]
  DNUriComponents = type Integer;
  DNUriComponentsHelper = record helper for DNUriComponents
  public const
    ///<summary><see cref="P:System.Uri.Scheme" />
    ///  数据。
    ///</summary>
    Scheme = 1;
    ///<summary><see cref="P:System.Uri.UserInfo" />
    ///  数据。
    ///</summary>
    UserInfo = 2;
    ///<summary><see cref="P:System.Uri.Host" />
    ///  数据。
    ///</summary>
    Host = 4;
    ///<summary><see cref="P:System.Uri.Port" />
    ///  数据。
    ///</summary>
    Port = 8;
    ///<summary><see cref="P:System.Uri.Scheme" />
    ///  、<see cref="P:System.Uri.Host" />
    ///  和 <see cref="P:System.Uri.Port" />
    ///  数据。
    ///</summary>
    SchemeAndServer = 13;
    ///<summary><see cref="P:System.Uri.LocalPath" />
    ///  数据。
    ///</summary>
    Path = 16;
    ///<summary><see cref="P:System.Uri.Query" />
    ///  数据。
    ///</summary>
    Query = 32;
    ///<summary><see cref="P:System.Uri.LocalPath" />
    ///  和 <see cref="P:System.Uri.Query" />
    ///  数据。
    ///  另请参阅：<see cref="P:System.Uri.PathAndQuery" />
    ///  。
    ///</summary>
    PathAndQuery = 48;
    ///<summary><see cref="P:System.Uri.Scheme" />
    ///  、<see cref="P:System.Uri.Host" />
    ///  、<see cref="P:System.Uri.Port" />
    ///  、<see cref="P:System.Uri.LocalPath" />
    ///  和 <see cref="P:System.Uri.Query" />
    ///  数据。
    ///</summary>
    HttpRequestUrl = 61;
    ///<summary><see cref="P:System.Uri.Fragment" />
    ///  数据。
    ///</summary>
    Fragment = 64;
    ///<summary><see cref="P:System.Uri.Scheme" />
    ///  、<see cref="P:System.Uri.UserInfo" />
    ///  、<see cref="P:System.Uri.Host" />
    ///  、<see cref="P:System.Uri.Port" />
    ///  、<see cref="P:System.Uri.LocalPath" />
    ///  、<see cref="P:System.Uri.Query" />
    ///  和 <see cref="P:System.Uri.Fragment" />
    ///  数据。
    ///</summary>
    AbsoluteUri = 127;
    ///<summary><see cref="P:System.Uri.Port" />
    ///  数据。
    ///  如果 <see cref="T:System.Uri" />
    ///  中没有任何端口数据且已将默认端口分配给了 <see cref="P:System.Uri.Scheme" />
    ///  ，则会返回默认端口。
    ///  如果没有任何默认端口，则返回 -1。
    ///</summary>
    StrongPort = 128;
    ///<summary><see cref="P:System.Uri.Host" />
    ///  和 <see cref="P:System.Uri.Port" />
    ///  数据。
    ///  如果在 Uri 中没有任何端口数据且已将默认端口分配给了 <see cref="P:System.Uri.Scheme" />
    ///  ，则会返回默认端口。
    ///  如果没有任何默认端口，则返回 -1。
    ///</summary>
    HostAndPort = 132;
    ///<summary><see cref="P:System.Uri.UserInfo" />
    ///  、<see cref="P:System.Uri.Host" />
    ///  和 <see cref="P:System.Uri.Port" />
    ///  数据。
    ///  如果 <see cref="T:System.Uri" />
    ///  中没有任何端口数据且已将默认端口分配给了 <see cref="P:System.Uri.Scheme" />
    ///  ，则会返回默认端口。
    ///  如果没有任何默认端口，则返回 -1。
    ///</summary>
    StrongAuthority = 134;
    ///<summary><see cref="P:System.Uri.Host" />
    ///  的正常化表格。
    ///</summary>
    NormalizedHost = 256;
    ///<summary>
    ///  指定应包括的分隔符。
    ///</summary>
    KeepDelimiter = 1073741824;
    ///<summary>
    ///  Uri 序列化程序需要的完整的 <see cref="T:System.Uri" />
    ///  上下文。
    ///  该上下文包括 IPv6 作用域。
    ///</summary>
    SerializationInfoString = -2147483648;
  end;


  //-------------namespace: System----------------
  ///<summary>
  ///  控制 URI 信息的转义方式。
  ///</summary>
  [DNTypeName('System.UriFormat')]
  DNUriFormat = type Integer;
  DNUriFormatHelper = record helper for DNUriFormat
  public const
    ///<summary>
    ///  根据 RFC 2396 中的规则执行转义。
    ///</summary>
    UriEscaped = 1;
    ///<summary>
    ///  未执行任何转义。
    ///</summary>
    Unescaped = 2;
    ///<summary>
    ///  仍然在请求 URI 组件中具有保留的含义的字符进行转义。
    ///  所有其他未转义。
    ///  请参阅“备注”。
    ///</summary>
    SafeUnescaped = 3;
  end;


  //-------------namespace: System----------------
  ///<summary>
  ///  定义主机名称类型<see cref="M:System.Uri.CheckHostName(System.String)" />
  ///  方法。
  ///</summary>
  [DNTypeName('System.UriHostNameType')]
  DNUriHostNameType = type Integer;
  DNUriHostNameTypeHelper = record helper for DNUriHostNameType
  public const
    ///<summary>
    ///  未提供主机名的类型。
    ///</summary>
    Unknown = 0;
    ///<summary>
    ///  主机已设置，但无法确定类型。
    ///</summary>
    Basic = 1;
    ///<summary>
    ///  主机名是域名系统 (DNS) 样式主机名。
    ///</summary>
    Dns = 2;
    ///<summary>
    ///  主机名是 Internet 协议 (IP) 版本 4 的主机地址。
    ///</summary>
    IPv4 = 3;
    ///<summary>
    ///  主机名是 Internet 协议 (IP) 版本 6 主机地址。
    ///</summary>
    IPv6 = 4;
  end;


  //-------------namespace: System----------------
  ///<summary>
  ///  定义类型的<see cref="T:System.Uri" />
  ///  s 针对<see cref="M:System.Uri.IsWellFormedUriString(System.String,System.UriKind)" />
  ///  和几个<see cref="Overload:System.Uri.#ctor" />
  ///  方法。
  ///</summary>
  [DNTypeName('System.UriKind')]
  DNUriKind = type Integer;
  DNUriKindHelper = record helper for DNUriKind
  public const
    ///<summary>
    ///  类别的 Uri 是不确定的。
    ///</summary>
    RelativeOrAbsolute = 0;
    ///<summary>
    ///  Uri 是一个绝对 Uri。
    ///</summary>
    Absolute_ = 1;
    ///<summary>
    ///  Uri 是相对的 Uri。
    ///</summary>
    Relative = 2;
  end;


  //-------------namespace: System----------------
  ///<summary>
  ///  定义的 URI 的组成部分<see cref="M:System.Uri.GetLeftPart(System.UriPartial)" />
  ///  方法。
  ///</summary>
  [DNTypeName('System.UriPartial')]
  DNUriPartial = type Integer;
  DNUriPartialHelper = record helper for DNUriPartial
  public const
    ///<summary>
    ///  URI 方案段。
    ///</summary>
    Scheme = 0;
    ///<summary>
    ///  URI 方案和授权段。
    ///</summary>
    Authority = 1;
    ///<summary>
    ///  URI 方案、 颁发机构和路径段。
    ///</summary>
    Path = 2;
    ///<summary>
    ///  方案、 机构、 路径和查询段的 uri。
    ///</summary>
    Query = 3;
  end;




type


{ declares }

  DNComponentCollection = interface; // type: System.ComponentModel.ComponentCollection, namespace: System.ComponentModel
  DNConfigurationLocationCollection = interface; // type: System.Configuration.ConfigurationLocationCollection, namespace: System.Configuration
  DNConfigurationSectionCollection = interface; // type: System.Configuration.ConfigurationSectionCollection, namespace: System.Configuration
  DNConfigurationSectionGroupCollection = interface; // type: System.Configuration.ConfigurationSectionGroupCollection, namespace: System.Configuration
  DNPropertyInformationCollection = interface; // type: System.Configuration.PropertyInformationCollection, namespace: System.Configuration
  DNStringCollection = interface; // type: System.Collections.Specialized.StringCollection, namespace: System.Collections.Specialized
  DNStringEnumerator = interface; // type: System.Collections.Specialized.StringEnumerator, namespace: System.Collections.Specialized
  DNAttributeCollection = interface; // type: System.ComponentModel.AttributeCollection, namespace: System.ComponentModel
  DNComponentEditor = interface; // type: System.ComponentModel.ComponentEditor, namespace: System.ComponentModel
  DNCommandID = interface; // type: System.ComponentModel.Design.CommandID, namespace: System.ComponentModel.Design
  DNITypeResolutionService = interface; // type: System.ComponentModel.Design.ITypeResolutionService, namespace: System.ComponentModel.Design
  DNListSortDescription = interface; // type: System.ComponentModel.ListSortDescription, namespace: System.ComponentModel
  DNListSortDescriptionCollection = interface; // type: System.ComponentModel.ListSortDescriptionCollection, namespace: System.ComponentModel
  DNMaskedTextProvider = interface; // type: System.ComponentModel.MaskedTextProvider, namespace: System.ComponentModel
  DNPropertyDescriptor = interface; // type: System.ComponentModel.PropertyDescriptor, namespace: System.ComponentModel
  DNPropertyDescriptorCollection = interface; // type: System.ComponentModel.PropertyDescriptorCollection, namespace: System.ComponentModel
  DNTypeConverter = interface; // type: System.ComponentModel.TypeConverter, namespace: System.ComponentModel
  DNTypeConverter_StandardValuesCollection = interface; // type: System.ComponentModel.TypeConverter+StandardValuesCollection, namespace: System.ComponentModel
  DNInt32Converter = interface; // type: System.ComponentModel.Int32Converter, namespace: System.ComponentModel
  DNExpandableObjectConverter = interface; // type: System.ComponentModel.ExpandableObjectConverter, namespace: System.ComponentModel
  DNStringConverter = interface; // type: System.ComponentModel.StringConverter, namespace: System.ComponentModel
  DNConfiguration = interface; // type: System.Configuration.Configuration, namespace: System.Configuration
  DNConfigurationSection = interface; // type: System.Configuration.ConfigurationSection, namespace: System.Configuration
  DNAppSettingsSection = interface; // type: System.Configuration.AppSettingsSection, namespace: System.Configuration
  DNConnectionStringsSection = interface; // type: System.Configuration.ConnectionStringsSection, namespace: System.Configuration
  DNConfigurationLockCollection = interface; // type: System.Configuration.ConfigurationLockCollection, namespace: System.Configuration
  DNConfigurationSectionGroup = interface; // type: System.Configuration.ConfigurationSectionGroup, namespace: System.Configuration
  DNConfigurationValidatorBase = interface; // type: System.Configuration.ConfigurationValidatorBase, namespace: System.Configuration
  DNContextInformation = interface; // type: System.Configuration.ContextInformation, namespace: System.Configuration
  DNElementInformation = interface; // type: System.Configuration.ElementInformation, namespace: System.Configuration
  DNConfigurationBuilder = interface; // type: System.Configuration.ConfigurationBuilder, namespace: System.Configuration
  DNProtectedConfigurationProvider = interface; // type: System.Configuration.ProtectedConfigurationProvider, namespace: System.Configuration
  DNSectionInformation = interface; // type: System.Configuration.SectionInformation, namespace: System.Configuration
  DNRegionData = interface; // type: System.Drawing.Drawing2D.RegionData, namespace: System.Drawing.Drawing2D
  DNBitmapData = interface; // type: System.Drawing.Imaging.BitmapData, namespace: System.Drawing.Imaging
  DNColorPalette = interface; // type: System.Drawing.Imaging.ColorPalette, namespace: System.Drawing.Imaging
  DNEncoderParameters = interface; // type: System.Drawing.Imaging.EncoderParameters, namespace: System.Drawing.Imaging
  DNFrameDimension = interface; // type: System.Drawing.Imaging.FrameDimension, namespace: System.Drawing.Imaging
  DNImageAttributes = interface; // type: System.Drawing.Imaging.ImageAttributes, namespace: System.Drawing.Imaging
  DNImageCodecInfo = interface; // type: System.Drawing.Imaging.ImageCodecInfo, namespace: System.Drawing.Imaging
  DNImageFormat = interface; // type: System.Drawing.Imaging.ImageFormat, namespace: System.Drawing.Imaging
  DNPropertyItem = interface; // type: System.Drawing.Imaging.PropertyItem, namespace: System.Drawing.Imaging
  DNMargins = interface; // type: System.Drawing.Printing.Margins, namespace: System.Drawing.Printing
  DNPageSettings = interface; // type: System.Drawing.Printing.PageSettings, namespace: System.Drawing.Printing
  DNPaperSize = interface; // type: System.Drawing.Printing.PaperSize, namespace: System.Drawing.Printing
  DNPaperSource = interface; // type: System.Drawing.Printing.PaperSource, namespace: System.Drawing.Printing
  DNPrintController = interface; // type: System.Drawing.Printing.PrintController, namespace: System.Drawing.Printing
  DNPrinterResolution = interface; // type: System.Drawing.Printing.PrinterResolution, namespace: System.Drawing.Printing
  DNPrinterSettings = interface; // type: System.Drawing.Printing.PrinterSettings, namespace: System.Drawing.Printing
  DNPrinterSettings_PaperSizeCollection = interface; // type: System.Drawing.Printing.PrinterSettings+PaperSizeCollection, namespace: System.Drawing.Printing
  DNPrinterSettings_PaperSourceCollection = interface; // type: System.Drawing.Printing.PrinterSettings+PaperSourceCollection, namespace: System.Drawing.Printing
  DNPrinterSettings_PrinterResolutionCollection = interface; // type: System.Drawing.Printing.PrinterSettings+PrinterResolutionCollection, namespace: System.Drawing.Printing
  DNPrinterSettings_StringCollection = interface; // type: System.Drawing.Printing.PrinterSettings+StringCollection, namespace: System.Drawing.Printing
  DNAddingNewEventArgs = interface; // type: System.ComponentModel.AddingNewEventArgs, namespace: System.ComponentModel
  DNAsyncCompletedEventArgs = interface; // type: System.ComponentModel.AsyncCompletedEventArgs, namespace: System.ComponentModel
  DNCancelEventArgs = interface; // type: System.ComponentModel.CancelEventArgs, namespace: System.ComponentModel
  DNPrintEventArgs = interface; // type: System.Drawing.Printing.PrintEventArgs, namespace: System.Drawing.Printing
  DNQueryPageSettingsEventArgs = interface; // type: System.Drawing.Printing.QueryPageSettingsEventArgs, namespace: System.Drawing.Printing
  DNCollectionChangeEventArgs = interface; // type: System.ComponentModel.CollectionChangeEventArgs, namespace: System.ComponentModel
  DNComponentRenameEventArgs = interface; // type: System.ComponentModel.Design.ComponentRenameEventArgs, namespace: System.ComponentModel.Design
  DNHandledEventArgs = interface; // type: System.ComponentModel.HandledEventArgs, namespace: System.ComponentModel
  DNListChangedEventArgs = interface; // type: System.ComponentModel.ListChangedEventArgs, namespace: System.ComponentModel
  DNProgressChangedEventArgs = interface; // type: System.ComponentModel.ProgressChangedEventArgs, namespace: System.ComponentModel
  DNPrintPageEventArgs = interface; // type: System.Drawing.Printing.PrintPageEventArgs, namespace: System.Drawing.Printing
  DNThreadExceptionEventArgs = interface; // type: System.Threading.ThreadExceptionEventArgs, namespace: System.Threading
  DNIComponent = interface; // type: System.ComponentModel.IComponent, namespace: System.ComponentModel
  DNIContainer = interface; // type: System.ComponentModel.IContainer, namespace: System.ComponentModel
  DNIDeviceContext = interface; // type: System.Drawing.IDeviceContext, namespace: System.Drawing
  DNISite = interface; // type: System.ComponentModel.ISite, namespace: System.ComponentModel
  DNITypeDescriptorContext = interface; // type: System.ComponentModel.ITypeDescriptorContext, namespace: System.ComponentModel
  DNComponent = interface; // type: System.ComponentModel.Component, namespace: System.ComponentModel
  DNPrintDocument = interface; // type: System.Drawing.Printing.PrintDocument, namespace: System.Drawing.Printing
  DNBrush = interface; // type: System.Drawing.Brush, namespace: System.Drawing
  DNGraphicsContainer = interface; // type: System.Drawing.Drawing2D.GraphicsContainer, namespace: System.Drawing.Drawing2D
  DNGraphicsPath = interface; // type: System.Drawing.Drawing2D.GraphicsPath, namespace: System.Drawing.Drawing2D
  DNGraphicsState = interface; // type: System.Drawing.Drawing2D.GraphicsState, namespace: System.Drawing.Drawing2D
  DNMatrix = interface; // type: System.Drawing.Drawing2D.Matrix, namespace: System.Drawing.Drawing2D
  DNFont = interface; // type: System.Drawing.Font, namespace: System.Drawing
  DNFontFamily = interface; // type: System.Drawing.FontFamily, namespace: System.Drawing
  DNGraphics = interface; // type: System.Drawing.Graphics, namespace: System.Drawing
  DNIcon = interface; // type: System.Drawing.Icon, namespace: System.Drawing
  DNImage = interface; // type: System.Drawing.Image, namespace: System.Drawing
  DNBitmap = interface; // type: System.Drawing.Bitmap, namespace: System.Drawing
  DNMetafile = interface; // type: System.Drawing.Imaging.Metafile, namespace: System.Drawing.Imaging
  DNPen = interface; // type: System.Drawing.Pen, namespace: System.Drawing
  DNRegion = interface; // type: System.Drawing.Region, namespace: System.Drawing
  DNStringFormat = interface; // type: System.Drawing.StringFormat, namespace: System.Drawing
  DNStandardOleMarshalObject = interface; // type: System.Runtime.InteropServices.StandardOleMarshalObject, namespace: System.Runtime.InteropServices
  DNFrameworkName = interface; // type: System.Runtime.Versioning.FrameworkName, namespace: System.Runtime.Versioning
  DNUri = interface; // type: System.Uri, namespace: System
  DNCharacterRange = interface; // type: System.Drawing.CharacterRange, namespace: System.Drawing
  DNColor = interface; // type: System.Drawing.Color, namespace: System.Drawing
  DNPoint = interface; // type: System.Drawing.Point, namespace: System.Drawing
  DNPointF = interface; // type: System.Drawing.PointF, namespace: System.Drawing
  DNRectangle = interface; // type: System.Drawing.Rectangle, namespace: System.Drawing
  DNRectangleF = interface; // type: System.Drawing.RectangleF, namespace: System.Drawing
  DNSize = interface; // type: System.Drawing.Size, namespace: System.Drawing
  DNSizeF = interface; // type: System.Drawing.SizeF, namespace: System.Drawing

{ delegates }

  ///<summary>
  ///  表示用来处理 <see cref="E:System.Windows.Forms.BindingSource.AddingNew" />
  ///  事件的方法。
  ///</summary>
  ///  <param name="sender">
  ///  该事件，通常是数据容器或数据绑定集合的源。
  ///</param>
  ///  <param name="e">
  ///  包含事件数据的 <see cref="T:System.ComponentModel.AddingNewEventArgs" />
  ///  。
  ///</param>
  [DNTypeName('System.ComponentModel.AddingNewEventHandler')]
  DNAddingNewEventHandler = procedure(sender: DDN.mscorlib.DNObject; e: DNAddingNewEventArgs) of object;

  ///<summary>
  ///  表示将处理的方法 MethodName<see langword="Completed" />
  ///  事件的异步操作。
  ///</summary>
  ///  <param name="sender">
  ///  事件源。
  ///</param>
  ///  <param name="e">
  ///  包含事件数据的 <see cref="T:System.ComponentModel.AsyncCompletedEventArgs" />
  ///  。
  ///</param>
  [DNTypeName('System.ComponentModel.AsyncCompletedEventHandler')]
  DNAsyncCompletedEventHandler = procedure(sender: DDN.mscorlib.DNObject; e: DNAsyncCompletedEventArgs) of object;

  ///<summary>
  ///  表示用于处理可取消的事件的方法。
  ///</summary>
  ///  <param name="sender">
  ///  事件源。
  ///</param>
  ///  <param name="e">
  ///  包含事件数据的 <see cref="T:System.ComponentModel.CancelEventArgs" />
  ///  。
  ///</param>
  [DNTypeName('System.ComponentModel.CancelEventHandler')]
  DNCancelEventHandler = procedure(sender: DDN.mscorlib.DNObject; e: DNCancelEventArgs) of object;

  ///<summary>
  ///  表示用于处理的方法 <see cref="E:System.Data.DataColumnCollection.CollectionChanged" />
  ///  将元素添加到或从集合中删除元素时引发的事件。
  ///</summary>
  ///  <param name="sender">
  ///  事件源。
  ///</param>
  ///  <param name="e">
  ///  包含事件数据的 <see cref="T:System.ComponentModel.CollectionChangeEventArgs" />
  ///  。
  ///</param>
  [DNTypeName('System.ComponentModel.CollectionChangeEventHandler')]
  DNCollectionChangeEventHandler = procedure(sender: DDN.mscorlib.DNObject; e: DNCollectionChangeEventArgs) of object;

  ///<summary>
  ///  表示用来处理 <see cref="E:System.ComponentModel.Design.IComponentChangeService.ComponentRename" />
  ///  事件的方法。
  ///</summary>
  ///  <param name="sender">
  ///  事件源。
  ///</param>
  ///  <param name="e">
  ///  包含事件数据的 <see cref="T:System.ComponentModel.Design.ComponentRenameEventArgs" />
  ///  。
  ///</param>
  [DNTypeName('System.ComponentModel.Design.ComponentRenameEventHandler')]
  DNComponentRenameEventHandler = procedure(sender: DDN.mscorlib.DNObject; e: DNComponentRenameEventArgs) of object;

  ///<summary>
  ///  表示将处理的方法 <see cref="E:System.ComponentModel.IBindingList.ListChanged" />
  ///  事件 <see cref="T:System.ComponentModel.IBindingList" />
  ///  类。
  ///</summary>
  ///  <param name="sender">
  ///  事件源。
  ///</param>
  ///  <param name="e">
  ///  包含事件数据的 <see cref="T:System.ComponentModel.ListChangedEventArgs" />
  ///  。
  ///</param>
  [DNTypeName('System.ComponentModel.ListChangedEventHandler')]
  DNListChangedEventHandler = procedure(sender: DDN.mscorlib.DNObject; e: DNListChangedEventArgs) of object;

  ///<summary>
  ///  表示将处理 <see cref="T:System.ComponentModel.BackgroundWorker" />
  ///  类的 <see cref="E:System.ComponentModel.BackgroundWorker.ProgressChanged" />
  ///  事件的方法。
  ///  此类不能被继承。
  ///</summary>
  ///  <param name="sender">
  ///  事件源。
  ///</param>
  ///  <param name="e">
  ///  一个 <see cref="T:System.ComponentModel.ProgressChangedEventArgs" />
  ///  包含事件数据。
  ///</param>
  [DNTypeName('System.ComponentModel.ProgressChangedEventHandler')]
  DNProgressChangedEventHandler = procedure(sender: DDN.mscorlib.DNObject; e: DNProgressChangedEventArgs) of object;

  ///<summary>
  ///  提供回调方法，以决定何时 <see cref="Overload:System.Drawing.Graphics.DrawImage" />
  ///  方法应过早地取消执行，并停止绘制图像。
  ///</summary>
  ///  <param name="callbackdata">
  ///  指定的回调方法的数据的内部指针。
  ///  此参数不传递由所有 <see cref="Overload:System.Drawing.Graphics.DrawImage" />
  ///  重载。
  ///  您可以通过检查的值测试它是否存在 <see cref="F:System.IntPtr.Zero" />
  ///  。
  ///</param>
  ///<returns>
  ///  此方法返回 <see langword="true" />
  ///  它决定，如果 <see cref="Overload:System.Drawing.Graphics.DrawImage" />
  ///  方法应提前停止执行。
  ///  否则，返回 <see langword="false" />
  ///  以指示 <see cref="Overload:System.Drawing.Graphics.DrawImage" />
  ///  方法应继续执行。
  ///</returns>
  [DNTypeName('System.Drawing.Graphics+DrawImageAbort')]
  DNGraphics_DrawImageAbort = function(callbackdata: IntPtr): Boolean of object;

  ///<summary>
  ///  提供回调方法，以确定何时 <see cref="M:System.Drawing.Image.GetThumbnailImage(System.Int32,System.Int32,System.Drawing.Image.GetThumbnailImageAbort,System.IntPtr)" />
  ///  方法应过早地取消执行。
  ///</summary>
  ///<returns>
  ///  此方法返回 <see langword="true" />
  ///  它决定，如果 <see cref="M:System.Drawing.Image.GetThumbnailImage(System.Int32,System.Int32,System.Drawing.Image.GetThumbnailImageAbort,System.IntPtr)" />
  ///  方法应提前停止执行; 否则，它将返回 <see langword="false" />
  ///  。
  ///</returns>
  [DNTypeName('System.Drawing.Image+GetThumbnailImageAbort')]
  DNImage_GetThumbnailImageAbort = function: Boolean of object;

  ///<summary>
  ///  表示将处理的方法 <see cref="E:System.Drawing.Printing.PrintDocument.BeginPrint" />
  ///  或 <see cref="E:System.Drawing.Printing.PrintDocument.EndPrint" />
  ///  事件 <see cref="T:System.Drawing.Printing.PrintDocument" />
  ///  。
  ///</summary>
  ///  <param name="sender">
  ///  事件源。
  ///</param>
  ///  <param name="e">
  ///  包含事件数据的 <see cref="T:System.Drawing.Printing.PrintEventArgs" />
  ///  。
  ///</param>
  [DNTypeName('System.Drawing.Printing.PrintEventHandler')]
  DNPrintEventHandler = procedure(sender: DDN.mscorlib.DNObject; e: DNPrintEventArgs) of object;

  ///<summary>
  ///  表示将用来处理 <see cref="E:System.Drawing.Printing.PrintDocument.PrintPage" />
  ///  的 <see cref="T:System.Drawing.Printing.PrintDocument" />
  ///  事件的方法。
  ///</summary>
  ///  <param name="sender">
  ///  事件源。
  ///</param>
  ///  <param name="e">
  ///  包含事件数据的 <see cref="T:System.Drawing.Printing.PrintPageEventArgs" />
  ///  。
  ///</param>
  [DNTypeName('System.Drawing.Printing.PrintPageEventHandler')]
  DNPrintPageEventHandler = procedure(sender: DDN.mscorlib.DNObject; e: DNPrintPageEventArgs) of object;

  ///<summary>
  ///  表示用于处理的方法 <see cref="E:System.Drawing.Printing.PrintDocument.QueryPageSettings" />
  ///  事件 <see cref="T:System.Drawing.Printing.PrintDocument" />
  ///  。
  ///</summary>
  ///  <param name="sender">
  ///  事件源。
  ///</param>
  ///  <param name="e">
  ///  包含事件数据的 <see cref="T:System.Drawing.Printing.QueryPageSettingsEventArgs" />
  ///  。
  ///</param>
  [DNTypeName('System.Drawing.Printing.QueryPageSettingsEventHandler')]
  DNQueryPageSettingsEventHandler = procedure(sender: DDN.mscorlib.DNObject; e: DNQueryPageSettingsEventArgs) of object;

  ///<summary>
  ///  表示将处理的方法 <see cref="E:System.Windows.Forms.Application.ThreadException" />
  ///  事件 <see cref="T:System.Windows.Forms.Application" />
  ///  。
  ///</summary>
  ///  <param name="sender">
  ///  事件源。
  ///</param>
  ///  <param name="e">
  ///  包含事件数据的 <see cref="T:System.Threading.ThreadExceptionEventArgs" />
  ///  。
  ///</param>
  [DNTypeName('System.Threading.ThreadExceptionEventHandler')]
  DNThreadExceptionEventHandler = procedure(sender: DDN.mscorlib.DNObject; e: DNThreadExceptionEventArgs) of object;




{ objects }

  //-------------namespace: System.ComponentModel----------------
  DNComponentCollectionClass = interface(DDN.mscorlib.DNReadOnlyCollectionBaseClass)
  ['{B7818FF0-6370-5A57-989D-24CCCEEE0165}']
  { constructors } 

    ///<summary>
    ///  新实例初始化 <see cref="T:System.ComponentModel.ComponentCollection" />
    ///  类使用的组件指定的数组。
    ///</summary>
    ///  <param name="components">
    ///  一个数组 <see cref="T:System.ComponentModel.IComponent" />
    ///  对象来初始化具有的集合。
    ///</param>
    {class} function init(components: TArray<DNIComponent>): DNComponentCollection;

  end;

  ///<summary>
  ///  为 <see cref="T:System.ComponentModel.IComponent" />
  ///  对象的集合提供只读容器。
  ///</summary>
  [DNTypeName('System.ComponentModel.ComponentCollection')]
  DNComponentCollection = interface(DDN.mscorlib.DNReadOnlyCollectionBase)
  ['{9653003F-5A61-33CB-86E6-1BA38CED5DF8}']
  { getters & setters } 

    function get_Item(name: string): DNIComponent; overload;
    function get_Item(index: Int32): DNIComponent; overload;
    function get_Count: Int32;

  { methods } 

    ///<summary>
    ///  将整个集合复制到一个数组中开始写入指定的数组索引处。
    ///</summary>
    ///  <param name="array"><see cref="T:System.ComponentModel.IComponent" />
    ///  要向集合中复制的对象数组。
    ///</param>
    ///  <param name="index">
    ///  索引 <paramref name="array" />
    ///  哪些将复制到何时开始执行。
    ///</param>
    procedure CopyTo(&array: TArray<DNIComponent>; index: Int32);
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Item[name: string]: DNIComponent read get_Item; default;
    property Item[index: Int32]: DNIComponent read get_Item; default;
    property Count: Int32 read get_Count;
  end;

  TDNComponentCollection = class(TDNGenericImport<DNComponentCollectionClass, DNComponentCollection>) end;

  //-------------namespace: System.Configuration----------------
  DNConfigurationLocationCollectionClass = interface(DDN.mscorlib.DNReadOnlyCollectionBaseClass)
  ['{02D66BE0-53B8-5F61-97E0-50F521AFCE27}']
  end;

  ///<summary>
  ///  包含 <see cref="T:System.Configuration.ConfigurationLocationCollection" />
  ///  对象的集合。
  ///</summary>
  [DNTypeName('System.Configuration.ConfigurationLocationCollection')]
  DNConfigurationLocationCollection = interface(DDN.mscorlib.DNReadOnlyCollectionBase)
  ['{858C9C17-6D2C-3327-B1A3-D06DF578E96A}']
  { getters & setters } 

    function get_Count: Int32;

  { methods } 

    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Count: Int32 read get_Count;
  end;

  TDNConfigurationLocationCollection = class(TDNGenericImport<DNConfigurationLocationCollectionClass, DNConfigurationLocationCollection>) end;

  //-------------namespace: System.Configuration----------------
  DNConfigurationSectionCollectionClass = interface(DNObjectClass)
  ['{A06CC875-686F-5A40-96CF-7F0DBC196F65}']
  end;

  ///<summary>
  ///  表示配置文件中相关章节的集合。
  ///</summary>
  [DNTypeName('System.Configuration.ConfigurationSectionCollection')]
  DNConfigurationSectionCollection = interface(DNObject)
  ['{AAF38C07-72FC-3DC8-8BD1-14A7CAB678ED}']
  { getters & setters } 

    function get_Item(name: string): DNConfigurationSection; overload;
    function get_Item(index: Int32): DNConfigurationSection; overload;
    function get_Count: Int32;

  { methods } 

    ///<summary>
    ///  在序列化过程使用由系统。
    ///</summary>
    ///  <param name="info">
    ///  适用 <see cref="T:System.Runtime.Serialization.SerializationInfo" />
    ///  对象。
    ///</param>
    ///  <param name="context">
    ///  适用 <see cref="T:System.Runtime.Serialization.StreamingContext" />
    ///  对象。
    ///</param>
    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
    ///<summary>
    ///  添加 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象传递给 <see cref="T:System.Configuration.ConfigurationSectionCollection" />
    ///  对象。
    ///</summary>
    ///  <param name="name">
    ///  要添加部分的名称。
    ///</param>
    ///  <param name="section">
    ///  要添加的部分。
    ///</param>
    procedure Add(name: string; section: DNConfigurationSection);
    ///<summary>
    ///  清除此 <see cref="T:System.Configuration.ConfigurationSectionCollection" />
    ///  对象。
    ///</summary>
    procedure Clear;
    ///<summary>
    ///  这会将复制 <see cref="T:System.Configuration.ConfigurationSectionCollection" />
    ///  到一个数组对象。
    ///</summary>
    ///  <param name="array">
    ///  要复制的数组 <see cref="T:System.Configuration.ConfigurationSectionCollection" />
    ///  对象传递给。
    ///</param>
    ///  <param name="index">
    ///  在此处开始将复制的索引位置。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="array" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException">
    ///  长度 <paramref name="array" />
    ///  的值少于 <see cref="P:System.Configuration.ConfigurationSectionCollection.Count" />
    ///  加上 <paramref name="index" />
    ///  。
    ///</exception>
    procedure CopyTo(&array: TArray<DNConfigurationSection>; index: Int32);
    ///<summary>
    ///  获取指定 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  包含在此对象 <see cref="T:System.Configuration.ConfigurationSectionCollection" />
    ///  对象。
    ///</summary>
    ///  <param name="index">
    ///  索引 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  要返回对象。
    ///</param>
    ///<returns><see cref="T:System.Configuration.ConfigurationSection" />
    ///  中指定索引处的对象。
    ///</returns>
    function Get(index: Int32): DNConfigurationSection; overload;
    ///<summary>
    ///  获取指定 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  包含在此对象 <see cref="T:System.Configuration.ConfigurationSectionCollection" />
    ///  对象。
    ///</summary>
    ///  <param name="name">
    ///  名称 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  要返回对象。
    ///</param>
    ///<returns><see cref="T:System.Configuration.ConfigurationSection" />
    ///  具有指定名称的对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="name" />
    ///  为 null 或空字符串 ("")。
    ///</exception>
    function Get(name: string): DNConfigurationSection; overload;
    ///<summary>
    ///  获取指定的键 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  包含在此对象 <see cref="T:System.Configuration.ConfigurationSectionCollection" />
    ///  对象。
    ///</summary>
    ///  <param name="index">
    ///  索引 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  它的键是要返回的对象。
    ///</param>
    ///<returns>
    ///  键 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  中指定索引处的对象。
    ///</returns>
    function GetKey(index: Int32): string;
    ///<summary>
    ///  移除指定 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  从此对象 <see cref="T:System.Configuration.ConfigurationSectionCollection" />
    ///  对象。
    ///</summary>
    ///  <param name="name">
    ///  要删除的段的名称。
    ///</param>
    procedure Remove(name: string);
    ///<summary>
    ///  移除指定 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  从此对象 <see cref="T:System.Configuration.ConfigurationSectionCollection" />
    ///  对象。
    ///</summary>
    ///  <param name="index">
    ///  要删除的部分的索引。
    ///</param>
    procedure RemoveAt(index: Int32);
    ///<summary>
    ///  获取一个枚举器可循环访问此 <see cref="T:System.Configuration.ConfigurationSectionCollection" />
    ///  对象。
    ///</summary>
    ///<returns><see cref="T:System.Collections.IEnumerator" />
    ///  可用于循环访问此 <see cref="T:System.Configuration.ConfigurationSectionCollection" />
    ///  对象。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    procedure OnDeserialization(sender: DDN.mscorlib.DNObject);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Item[name: string]: DNConfigurationSection read get_Item; default;
    property Item[index: Int32]: DNConfigurationSection read get_Item; default;
    ///<summary>
    ///  在此获取节的数目 <see cref="T:System.Configuration.ConfigurationSectionCollection" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  一个整数，表示集合中的节的数目。
    ///</returns>
    property Count: Int32 read get_Count;
  end;

  TDNConfigurationSectionCollection = class(TDNGenericImport<DNConfigurationSectionCollectionClass, DNConfigurationSectionCollection>) end;

  //-------------namespace: System.Configuration----------------
  DNConfigurationSectionGroupCollectionClass = interface(DNObjectClass)
  ['{BA6A542B-5D0E-5A2B-8A28-47FB90389A84}']
  end;

  ///<summary>
  ///  表示 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
  ///  对象集合。
  ///</summary>
  [DNTypeName('System.Configuration.ConfigurationSectionGroupCollection')]
  DNConfigurationSectionGroupCollection = interface(DNObject)
  ['{938631B8-20E6-3C88-8F9C-5CF92BF7B063}']
  { getters & setters } 

    function get_Item(name: string): DNConfigurationSectionGroup; overload;
    function get_Item(index: Int32): DNConfigurationSectionGroup; overload;
    function get_Count: Int32;

  { methods } 

    ///<summary>
    ///  在序列化过程使用由系统。
    ///</summary>
    ///  <param name="info">
    ///  适用 <see cref="T:System.Runtime.Serialization.SerializationInfo" />
    ///  对象。
    ///</param>
    ///  <param name="context">
    ///  适用 <see cref="T:System.Runtime.Serialization.StreamingContext" />
    ///  对象。
    ///</param>
    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
    ///<summary>
    ///  添加 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象传递给此 <see cref="T:System.Configuration.ConfigurationSectionGroupCollection" />
    ///  对象。
    ///</summary>
    ///  <param name="name">
    ///  名称 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  要添加对象。
    ///</param>
    ///  <param name="sectionGroup"><see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  要添加对象。
    ///</param>
    procedure Add(name: string; sectionGroup: DNConfigurationSectionGroup);
    ///<summary>
    ///  清除集合。
    ///</summary>
    procedure Clear;
    ///<summary>
    ///  这会将复制 <see cref="T:System.Configuration.ConfigurationSectionGroupCollection" />
    ///  到一个数组对象。
    ///</summary>
    ///  <param name="array">
    ///  要向其中复制对象的数组。
    ///</param>
    ///  <param name="index">
    ///  在此处开始将复制的索引位置。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="array" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException">
    ///  长度 <paramref name="array" />
    ///  的值少于 <see cref="P:System.Configuration.ConfigurationSectionGroupCollection.Count" />
    ///  加上 <paramref name="index" />
    ///  。
    ///</exception>
    procedure CopyTo(&array: TArray<DNConfigurationSectionGroup>; index: Int32);
    ///<summary>
    ///  获取指定 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  集合中包含的对象。
    ///</summary>
    ///  <param name="index">
    ///  索引 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  要返回对象。
    ///</param>
    ///<returns><see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  中指定索引处的对象。
    ///</returns>
    function Get(index: Int32): DNConfigurationSectionGroup; overload;
    ///<summary>
    ///  获取指定 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  来自集合对象。
    ///</summary>
    ///  <param name="name">
    ///  名称 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  要返回对象。
    ///</param>
    ///<returns><see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  具有指定名称的对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="name" />
    ///  为 null 或空字符串 ("")。
    ///</exception>
    function Get(name: string): DNConfigurationSectionGroup; overload;
    ///<summary>
    ///  获取指定的键 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  包含在此对象 <see cref="T:System.Configuration.ConfigurationSectionGroupCollection" />
    ///  对象。
    ///</summary>
    ///  <param name="index">
    ///  它的键是要返回的节组的索引。
    ///</param>
    ///<returns>
    ///  键 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  中指定索引处的对象。
    ///</returns>
    function GetKey(index: Int32): string;
    ///<summary>
    ///  删除 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象名称指定从此 <see cref="T:System.Configuration.ConfigurationSectionGroupCollection" />
    ///  对象。
    ///</summary>
    ///  <param name="name">
    ///  要删除的节组的名称。
    ///</param>
    procedure Remove(name: string);
    ///<summary>
    ///  删除 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  其索引指定从此对象 <see cref="T:System.Configuration.ConfigurationSectionGroupCollection" />
    ///  对象。
    ///</summary>
    ///  <param name="index">
    ///  要删除的节组的索引。
    ///</param>
    procedure RemoveAt(index: Int32);
    ///<summary>
    ///  获取可循环访问的枚举器 <see cref="T:System.Configuration.ConfigurationSectionGroupCollection" />
    ///  对象。
    ///</summary>
    ///<returns><see cref="T:System.Collections.IEnumerator" />
    ///  可用于循环访问 <see cref="T:System.Configuration.ConfigurationSectionGroupCollection" />
    ///  对象。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    procedure OnDeserialization(sender: DDN.mscorlib.DNObject);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Item[name: string]: DNConfigurationSectionGroup read get_Item; default;
    property Item[index: Int32]: DNConfigurationSectionGroup read get_Item; default;
    ///<summary>
    ///  获取集合中的节组的数目。
    ///</summary>
    ///<returns>
    ///  一个整数，表示集合中的节组的数目。
    ///</returns>
    property Count: Int32 read get_Count;
  end;

  TDNConfigurationSectionGroupCollection = class(TDNGenericImport<DNConfigurationSectionGroupCollectionClass, DNConfigurationSectionGroupCollection>) end;

  //-------------namespace: System.Configuration----------------
  DNPropertyInformationCollectionClass = interface(DNObjectClass)
  ['{D4484712-AE47-5810-9027-E568B0572B00}']
  end;

  ///<summary>
  ///  包含 <see cref="T:System.Configuration.PropertyInformation" />
  ///  对象的集合。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.Configuration.PropertyInformationCollection')]
  DNPropertyInformationCollection = interface(DNObject)
  ['{F88B5872-E250-3285-9FCE-024B9DE86610}']
  { getters & setters } 

    function get_Count: Int32;

  { methods } 

    ///<summary>
    ///  填充 <see cref="T:System.Runtime.Serialization.SerializationInfo" />
    ///  对象序列化所需的数据 <see cref="T:System.Configuration.PropertyInformationCollection" />
    ///  实例。
    ///</summary>
    ///  <param name="info"><see cref="T:System.Runtime.Serialization.SerializationInfo" />
    ///  对象，该对象包含序列化 <see cref="T:System.Configuration.PropertyInformationCollection" />
    ///  实例所需的信息。
    ///</param>
    ///  <param name="context"><see cref="T:System.Runtime.Serialization.StreamingContext" />
    ///  对象，该对象包含与 <see cref="T:System.Configuration.PropertyInformationCollection" />
    ///  实例关联的序列化流的源和目标。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="info" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure GetObjectData(info: DDN.mscorlib.DNSerializationInfo; context: DDN.mscorlib.DNStreamingContext);
    ///<summary>
    ///  获取 <see cref="T:System.Collections.IEnumerator" />
    ///  对象，用于循环访问此 <see cref="T:System.Configuration.PropertyInformationCollection" />
    ///  集合。
    ///</summary>
    ///<returns><see cref="T:System.Collections.IEnumerator" />
    ///  对象，用于循环访问此 <see cref="T:System.Configuration.PropertyInformationCollection" />
    ///  。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    procedure OnDeserialization(sender: DDN.mscorlib.DNObject);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Count: Int32 read get_Count;
  end;

  TDNPropertyInformationCollection = class(TDNGenericImport<DNPropertyInformationCollectionClass, DNPropertyInformationCollection>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNStringCollectionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{1965CB76-8D43-59C0-9731-2E68ADCF2BB8}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNStringCollection;

  end;

  ///<summary>
  ///  表示字符串的集合。
  ///</summary>
  [DNTypeName('System.Collections.Specialized.StringCollection')]
  DNStringCollection = interface(DDN.mscorlib.DNObject)
  ['{CFA0C6EB-5176-38E7-95B7-D13D6677CEED}']
  { getters & setters } 

    function get_Item(index: Int32): string;
    procedure set_Item(index: Int32; value: string);
    function get_Count: Int32;
    function get_IsReadOnly: Boolean;
    function get_IsSynchronized: Boolean;
    function get_SyncRoot: DDN.mscorlib.DNObject;

  { methods } 

    ///<summary>
    ///  将一个字符串添加到末尾 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///</summary>
    ///  <param name="value">
    ///  要添加到结尾的字符串 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///  该值可以为 <see langword="null" />
    ///  。
    ///</param>
    ///<returns>
    ///  从零开始的索引，在该位置插入新元素。
    ///</returns>
    function Add(value: string): Int32;
    ///<summary>
    ///  将字符串数组的元素复制到的末尾 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///</summary>
    ///  <param name="value">
    ///  要将添加到结尾的字符串数组 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///  不能是数组本身 <see langword="null" />
    ///  但它可以包含的元素 <see langword="null" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="value" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure AddRange(value: TArray<string>);
    ///<summary>
    ///  确定指定的字符串是否在 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///</summary>
    ///  <param name="value">
    ///  要在中找到的字符串 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///  该值可以为 <see langword="null" />
    ///  。
    ///</param>
    ///<returns>
    ///  如果在 <see langword="true" />
    ///  中找到 <paramref name="value" />
    ///  ，则为 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function &Contains(value: string): Boolean;
    ///<summary>
    ///  将复制整个 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  到字符串，从目标数组的指定索引处开始的一维数组的值。
    ///</summary>
    ///  <param name="array">
    ///  从复制的元素目标的一维字符串数组 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///<see cref="T:System.Array" />
    ///  必须具有从零开始的索引。
    ///</param>
    ///  <param name="index"><paramref name="array" />
    ///  中从零开始的索引，从此处开始复制。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="array" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index" />
    ///  小于零。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="array" />
    ///  是多维的。
    ///  - 或 -
    ///  源中的元素数目 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  大于从的可用空间 <paramref name="index" />
    ///  目标从头到尾 <paramref name="array" />
    ///  。
    ///</exception><exception cref="T:System.InvalidCastException">
    ///  源类型 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  无法自动转换为目标类型 <paramref name="array" />
    ///  。
    ///</exception>
    procedure CopyTo(&array: TArray<string>; index: Int32);
    ///<summary>
    ///  返回 <see cref="T:System.Collections.Specialized.StringEnumerator" />
    ///  ，它循环访问 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///</summary>
    ///<returns>
    ///  用于 <see cref="T:System.Collections.Specialized.StringEnumerator" />
    ///  的 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///</returns>
    function GetEnumerator: DNStringEnumerator;
    ///<summary>
    ///  搜索指定的字符串，并返回内的第一个匹配项的从零开始索引 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///</summary>
    ///  <param name="value">
    ///  要查找的字符串。
    ///  该值可以为 <see langword="null" />
    ///  。
    ///</param>
    ///<returns>
    ///  第一个匹配项的从零开始索引 <paramref name="value" />
    ///  中 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  , ，如果找到; 否则为-1。
    ///</returns>
    function IndexOf(value: string): Int32;
    ///<summary>
    ///  将字符串插入 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  中指定索引处。
    ///</summary>
    ///  <param name="index">
    ///  从零开始的索引，在此处插入 <paramref name="value" />
    ///  。
    ///</param>
    ///  <param name="value">
    ///  要插入的字符串。
    ///  该值可以为 <see langword="null" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index" />
    ///  小于零。
    ///  - 或 -
    ///  <paramref name="index" />
    ///  大于 <see cref="P:System.Collections.Specialized.StringCollection.Count" />
    ///  。
    ///</exception>
    procedure Insert(index: Int32; value: string);
    ///<summary>
    ///  移除从特定的字符串的第一个匹配项 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///</summary>
    ///  <param name="value">
    ///  要移除的字符串 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///  该值可以为 <see langword="null" />
    ///  。
    ///</param>
    procedure Remove(value: string);
    ///<summary>
    ///  删除指定索引处的字符串 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///</summary>
    ///  <param name="index">
    ///  要删除的字符串的从零开始的索引。
    ///</param>
    ///<exception cref="T:System.ArgumentOutOfRangeException"><paramref name="index" />
    ///  小于零。
    ///  - 或 -
    ///  <paramref name="index" />
    ///  等于或大于 <see cref="P:System.Collections.Specialized.StringCollection.Count" />
    ///  。
    ///</exception>
    procedure RemoveAt(index: Int32);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Item[index: Int32]: string read get_Item write set_Item; default;
    ///<summary>
    ///  获取字符串中包含的数量 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///</summary>
    ///<returns>
    ///  字符串中包含的数量 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  。
    ///</returns>
    property Count: Int32 read get_Count;
    ///<summary>
    ///  获取一个值，该值指示 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  是否为只读。
    ///</summary>
    ///<returns>
    ///  此属性始终返回 <see langword="false" />
    ///  。
    ///</returns>
    property IsReadOnly: Boolean read get_IsReadOnly;
    ///<summary>
    ///  获取一个值，该值指示是否同步对 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  的访问（线程安全）。
    ///</summary>
    ///<returns>
    ///  此属性始终返回 <see langword="false" />
    ///  。
    ///</returns>
    property IsSynchronized: Boolean read get_IsSynchronized;
    ///<summary>
    ///  获取可用于同步对 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  的访问的对象。
    ///</summary>
    ///<returns>
    ///  可用于同步对 <see cref="T:System.Collections.Specialized.StringCollection" />
    ///  的访问的对象。
    ///</returns>
    property SyncRoot: DDN.mscorlib.DNObject read get_SyncRoot;
  end;

  TDNStringCollection = class(TDNGenericImport<DNStringCollectionClass, DNStringCollection>) end;

  //-------------namespace: System.Collections.Specialized----------------
  DNStringEnumeratorClass = interface(DDN.mscorlib.DNObjectClass)
  ['{79BC84CF-8651-5043-9070-69C2FDB3F737}']
  end;

  ///<summary>
  ///  支持对简单迭代 <see cref="T:System.Collections.Specialized.StringCollection" />
  ///  。
  ///</summary>
  [DNTypeName('System.Collections.Specialized.StringEnumerator')]
  DNStringEnumerator = interface(DDN.mscorlib.DNObject)
  ['{60E3B2B8-FF7D-3B3C-A540-E5A0DB767EBA}']
  { getters & setters } 

    function get_Current: string;

  { methods } 

    ///<summary>
    ///  将枚举数推进到集合的下一个元素。
    ///</summary>
    ///<returns>
    ///  如果枚举数已成功地推进到下一个元素，则为 <see langword="true" />
    ///  ；如果枚举数传递到集合的末尾，则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  创建枚举器后，已修改该集合。
    ///</exception>
    function MoveNext: Boolean;
    ///<summary>
    ///  将枚举数设置为其初始位置，该位置位于集合中第一个元素之前。
    ///</summary>
    ///<exception cref="T:System.InvalidOperationException">
    ///  创建枚举器后，已修改该集合。
    ///</exception>
    procedure Reset;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取集合中的当前元素。
    ///</summary>
    ///<returns>
    ///  集合中的当前元素。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  枚举器位于集合中第一个元素之前或最后一个元素之后。
    ///</exception>
    property Current: string read get_Current;
  end;

  TDNStringEnumerator = class(TDNGenericImport<DNStringEnumeratorClass, DNStringEnumerator>) end;

  //-------------namespace: System.ComponentModel----------------
  DNAttributeCollectionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{42F71F61-5B96-51C3-9E6F-72B8B480E2D7}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.ComponentModel.AttributeCollection" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="attributes">
    ///  类型的数组 <see cref="T:System.Attribute" />
    ///  提供此集合的特性。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="attributes" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(attributes: TArray<DDN.mscorlib.DNAttribute>): DNAttributeCollection;

  { static fields getter & setter } 

   function __fakeFieldGet_Empty: DNAttributeCollection;

  { static fields } 

    ///<summary>
    ///  指定可以使用一个空集合，而不是创建一个新。
    ///  此字段为只读。
    ///</summary>
    {class} property Empty: DNAttributeCollection read __fakeFieldGet_Empty;

  { static methods } 

    ///<summary>
    ///  创建一个新 <see cref="T:System.ComponentModel.AttributeCollection" />
    ///  从现有 <see cref="T:System.ComponentModel.AttributeCollection" />
    ///  。
    ///</summary>
    ///  <param name="existing"><see cref="T:System.ComponentModel.AttributeCollection" />
    ///  从中创建副本。
    ///</param>
    ///  <param name="newAttributes">
    ///  类型的数组 <see cref="T:System.Attribute" />
    ///  提供此集合的特性。
    ///  可以为 <see langword="null" />
    ///  。
    ///</param>
    ///<returns>
    ///  一个新 <see cref="T:System.ComponentModel.AttributeCollection" />
    ///  ，它是一份 <paramref name="existing" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="existing" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function FromExisting(existing: DNAttributeCollection; newAttributes: TArray<DDN.mscorlib.DNAttribute>): DNAttributeCollection;

  end;

  ///<summary>
  ///  表示特性的集合。
  ///</summary>
  [DNTypeName('System.ComponentModel.AttributeCollection')]
  DNAttributeCollection = interface(DDN.mscorlib.DNObject)
  ['{4309D526-F739-3BE3-B89C-4F6DDE852C14}']
  { getters & setters } 

    function get_Count: Int32;
    function get_Item(index: Int32): DDN.mscorlib.DNAttribute; overload;
    function get_Item(attributeType: DDN.mscorlib.DNType): DDN.mscorlib.DNAttribute; overload;

  { methods } 

    ///<summary>
    ///  确定该特性集合是否具有指定的属性。
    ///</summary>
    ///  <param name="attribute"><see cref="T:System.Attribute" />
    ///  要在集合中查找。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果集合包含的属性或类型的属性，则默认属性否则为 <see langword="false" />
    ///  。
    ///</returns>
    function &Contains(attribute: DDN.mscorlib.DNAttribute): Boolean; overload;
    ///<summary>
    ///  确定此属性集合是否包含的特性数组中的所有指定的属性。
    ///</summary>
    ///  <param name="attributes">
    ///  类型的数组 <see cref="T:System.Attribute" />
    ///  要在集合中查找。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果集合包含所有属性;否则为 <see langword="false" />
    ///  。
    ///</returns>
    function &Contains(attributes: TArray<DDN.mscorlib.DNAttribute>): Boolean; overload;
    ///<summary>
    ///  获取此集合的枚举器。
    ///</summary>
    ///<returns>
    ///  类型的枚举数 <see cref="T:System.Collections.IEnumerator" />
    ///  。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    ///<summary>
    ///  确定指定的属性是否在集合中的特性相同。
    ///</summary>
    ///  <param name="attribute">
    ///  一个实例 <see cref="T:System.Attribute" />
    ///  要与此集合中的属性进行比较。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果该属性包含在集合内，且具有相同的值为属性集合中的否则为 <see langword="false" />
    ///  。
    ///</returns>
    function Matches(attribute: DDN.mscorlib.DNAttribute): Boolean; overload;
    ///<summary>
    ///  确定指定数组中的属性是否在集合中的特性相同。
    ///</summary>
    ///  <param name="attributes">
    ///  一个数组 <see cref="T:System.CodeDom.MemberAttributes" />
    ///  要与此集合中的属性进行比较。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果数组中的所有属性集合中包含与集合中的具有相同值作为属性否则为 <see langword="false" />
    ///  。
    ///</returns>
    function Matches(attributes: TArray<DDN.mscorlib.DNAttribute>): Boolean; overload;
    ///<summary>
    ///  将集合复制到一个数组中指定索引处开始。
    ///</summary>
    ///  <param name="array">
    ///  要将集合复制到的 <see cref="T:System.Array" />
    ///  。
    ///</param>
    ///  <param name="index">
    ///  从其开始的索引。
    ///</param>
    procedure CopyTo(&array: DDN.mscorlib.DNArray; index: Int32);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取属性的数目。
    ///</summary>
    ///<returns>
    ///  属性数目。
    ///</returns>
    property Count: Int32 read get_Count;
    property Item[index: Int32]: DDN.mscorlib.DNAttribute read get_Item; default;
    property Item[attributeType: DDN.mscorlib.DNType]: DDN.mscorlib.DNAttribute read get_Item; default;
  end;

  TDNAttributeCollection = class(TDNGenericImport<DNAttributeCollectionClass, DNAttributeCollection>) end;

  //-------------namespace: System.ComponentModel----------------
  DNComponentEditorClass = interface(DDN.mscorlib.DNObjectClass)
  ['{E537A632-30BF-5D2C-8CAB-BEFC4D84965A}']
  end;

  ///<summary>
  ///  自定义组件编辑器中提供的基类。
  ///</summary>
  [DNTypeName('System.ComponentModel.ComponentEditor')]
  DNComponentEditor = interface(DDN.mscorlib.DNObject)
  ['{D4E8CF66-09B8-34C3-BD33-B63F1B9C73A8}']
  { methods } 

    ///<summary>
    ///  编辑该组件，并返回一个值，该值指示是否修改了该组件。
    ///</summary>
    ///  <param name="component">
    ///  要编辑的组件。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果修改了该组件;否则为 <see langword="false" />
    ///  。
    ///</returns>
    function EditComponent(component: DDN.mscorlib.DNObject): Boolean; overload;
    ///<summary>
    ///  编辑该组件，并返回一个值，指示组件是否已修改基于给定的上下文。
    ///</summary>
    ///  <param name="context">
    ///  可以使用以获取进一步编辑有关的信息的可选上下文对象。
    ///</param>
    ///  <param name="component">
    ///  要编辑的组件。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果修改了该组件;否则为 <see langword="false" />
    ///  。
    ///</returns>
    function EditComponent(context: DNITypeDescriptorContext; component: DDN.mscorlib.DNObject): Boolean; overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNComponentEditor = class(TDNGenericImport<DNComponentEditorClass, DNComponentEditor>) end;

  //-------------namespace: System.ComponentModel.Design----------------
  DNCommandIDClass = interface(DDN.mscorlib.DNObjectClass)
  ['{6951D44D-DD82-5A49-A1BF-8280AAC913E8}']
  { constructors } 

    ///<summary>
    ///  新实例初始化 <see cref="T:System.ComponentModel.Design.CommandID" />
    ///  类使用指定的菜单组 GUID 和命令 ID 号。
    ///</summary>
    ///  <param name="menuGroup">
    ///  此菜单命令所属的组的 GUID。
    ///</param>
    ///  <param name="commandID">
    ///  此菜单命令的数字标识符。
    ///</param>
    {class} function init(menuGroup: DDN.mscorlib.DNGuid; commandID: Int32): DNCommandID;

  end;

  ///<summary>
  ///  表示一个命令 ID 数字组成的唯一的命令标识符和 GUID 菜单组标识符。
  ///</summary>
  [DNTypeName('System.ComponentModel.Design.CommandID')]
  DNCommandID = interface(DDN.mscorlib.DNObject)
  ['{E60178F7-1512-389F-9CA6-084DF14CF596}']
  { getters & setters } 

    function get_ID: Int32;
    function get_Guid: DDN.mscorlib.DNGuid;

  { methods } 

    ///<summary>
    ///  确定两个 <see cref="T:System.ComponentModel.Design.CommandID" />
    ///  实例是否相等。
    ///</summary>
    ///  <param name="obj">
    ///  要比较的对象。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果指定的对象是否等效于此;否则为 <see langword="false" />
    ///  。
    ///</returns>
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  用作特定类型的哈希函数。
    ///</summary>
    ///<returns>
    ///  当前 <see cref="T:System.Object" />
    ///  的哈希代码。
    ///</returns>
    function GetHashCode: Int32;
    ///<summary>
    ///  返回 <see cref="T:System.String" />
    ///  ，表示当前对象。
    ///</summary>
    ///<returns>
    ///  一个字符串，其中包含命令 ID 信息、 GUID 和整数标识符。
    ///</returns>
    function ToString: string;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取命令数字 id。
    ///</summary>
    ///<returns>
    ///  命令 ID 号。
    ///</returns>
    property ID: Int32 read get_ID;
    ///<summary>
    ///  获取此标识的菜单命令的菜单组的 GUID <see cref="T:System.ComponentModel.Design.CommandID" />
    ///  属于。
    ///</summary>
    ///<returns>
    ///  此命令的命令组的 GUID。
    ///</returns>
    property Guid: DDN.mscorlib.DNGuid read get_Guid;
  end;

  TDNCommandID = class(TDNGenericImport<DNCommandIDClass, DNCommandID>) end;

  //-------------namespace: System.ComponentModel.Design----------------
  ///<summary>
  ///  提供用于按名称检索程序集或类型的接口。
  ///</summary>
  [DNTypeName('System.ComponentModel.Design.ITypeResolutionService')]
  DNITypeResolutionService = interface(DDN.mscorlib.DNObject)
  ['{73DFCF4C-368F-3F73-9308-1EE21A7D4A2F}']
  { methods } 

    ///<summary>
    ///  获取请求的程序集。
    ///</summary>
    ///  <param name="name">
    ///  要检索的程序集的名称。
    ///</param>
    ///<returns>
    ///  请求的程序集的实例或 <see langword="null" />
    ///  如果未设置程序集可以位于。
    ///</returns>
    function GetAssembly(name: DDN.mscorlib.DNAssemblyName): DDN.mscorlib.DNAssembly; overload;
    ///<summary>
    ///  获取请求的程序集。
    ///</summary>
    ///  <param name="name">
    ///  要检索的程序集的名称。
    ///</param>
    ///  <param name="throwOnError"><see langword="true" />
    ///  如果此方法应引发异常，如果该程序集不能定位;否则为 <see langword="false" />
    ///  , ，并且此方法返回 <see langword="null" />
    ///  如果找不到该程序集。
    ///</param>
    ///<returns>
    ///  请求的程序集的实例或 <see langword="null" />
    ///  如果未设置程序集可以位于。
    ///</returns>
    function GetAssembly(name: DDN.mscorlib.DNAssemblyName; throwOnError: Boolean): DDN.mscorlib.DNAssembly; overload;
    ///<summary>
    ///  加载具有指定名称的类型。
    ///</summary>
    ///  <param name="name">
    ///  类型的名称。
    ///  如果类型名称不是用于指示程序集的完全限定的名称，此服务将搜索其内部的一套引用的程序集。
    ///</param>
    ///<returns>
    ///  一个实例 <see cref="T:System.Type" />
    ///  对应于指定的名称，或 <see langword="null" />
    ///  如果找不到任何类型。
    ///</returns>
    function GetType(name: string): DDN.mscorlib.DNType; overload;
    ///<summary>
    ///  加载具有指定名称的类型。
    ///</summary>
    ///  <param name="name">
    ///  类型的名称。
    ///  如果类型名称不是用于指示程序集的完全限定的名称，此服务将搜索其内部的一套引用的程序集。
    ///</param>
    ///  <param name="throwOnError"><see langword="true" />
    ///  如果此方法应引发异常，如果该程序集不能定位;否则为 <see langword="false" />
    ///  , ，并且此方法返回 <see langword="null" />
    ///  如果找不到该程序集。
    ///</param>
    ///<returns>
    ///  一个实例 <see cref="T:System.Type" />
    ///  对应于指定的名称，或 <see langword="null" />
    ///  如果找不到任何类型。
    ///</returns>
    function GetType(name: string; throwOnError: Boolean): DDN.mscorlib.DNType; overload;
    ///<summary>
    ///  加载具有指定名称的类型。
    ///</summary>
    ///  <param name="name">
    ///  类型的名称。
    ///  如果类型名称不是用于指示程序集的完全限定的名称，此服务将搜索其内部的一套引用的程序集。
    ///</param>
    ///  <param name="throwOnError"><see langword="true" />
    ///  如果此方法应引发异常，如果该程序集不能定位;否则为 <see langword="false" />
    ///  , ，并且此方法返回 <see langword="null" />
    ///  如果找不到该程序集。
    ///</param>
    ///  <param name="ignoreCase"><see langword="true" />
    ///  若要在搜索类型; 时忽略大小写否则为 <see langword="false" />
    ///  。
    ///</param>
    ///<returns>
    ///  一个实例 <see cref="T:System.Type" />
    ///  对应于指定的名称，或 <see langword="null" />
    ///  如果找不到任何类型。
    ///</returns>
    function GetType(name: string; throwOnError: Boolean; ignoreCase: Boolean): DDN.mscorlib.DNType; overload;
    ///<summary>
    ///  添加到指定的程序集的引用。
    ///</summary>
    ///  <param name="name"><see cref="T:System.Reflection.AssemblyName" />
    ///  ，该值指示要引用的程序集。
    ///</param>
    procedure ReferenceAssembly(name: DDN.mscorlib.DNAssemblyName);
    ///<summary>
    ///  获取从中加载该程序集文件的路径。
    ///</summary>
    ///  <param name="name">
    ///  程序集的名称。
    ///</param>
    ///<returns>
    ///  从中加载该程序集文件的路径。
    ///</returns>
    function GetPathOfAssembly(name: DDN.mscorlib.DNAssemblyName): string;

  end;

  //-------------namespace: System.ComponentModel----------------
  DNListSortDescriptionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{77660451-75C2-59C7-BA55-698F64DD78C7}']
  { constructors } 

    ///<summary>
    ///  新实例初始化 <see cref="T:System.ComponentModel.ListSortDescription" />
    ///  使用指定的属性说明和方向的类。
    ///</summary>
    ///  <param name="property"><see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  描述数据源排序依据的属性。
    ///</param>
    ///  <param name="direction"><see cref="T:System.ComponentModel.ListSortDescription" />
    ///  值之一。
    ///</param>
    {class} function init(&property: DNPropertyDescriptor; direction: DNListSortDirection): DNListSortDescription;

  end;

  ///<summary>
  ///  提供应用于数据源的排序操作的说明。
  ///</summary>
  [DNTypeName('System.ComponentModel.ListSortDescription')]
  DNListSortDescription = interface(DDN.mscorlib.DNObject)
  ['{410D185F-8C3D-3D0D-A15A-E7162E7F9461}']
  { getters & setters } 

    function get_PropertyDescriptor: DNPropertyDescriptor;
    procedure set_PropertyDescriptor(value: DNPropertyDescriptor);
    function get_SortDirection: DNListSortDirection;
    procedure set_SortDirection(value: DNListSortDirection);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置与此相关的类属性的抽象说明 <see cref="T:System.ComponentModel.ListSortDescription" />
    ///</summary>
    ///<returns>
    ///  与此 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  关联的 <see cref="T:System.ComponentModel.ListSortDescription" />
    ///  。
    ///</returns>
    property PropertyDescriptor: DNPropertyDescriptor read get_PropertyDescriptor write set_PropertyDescriptor;
    ///<summary>
    ///  获取或设置与此关联的排序操作的方向 <see cref="T:System.ComponentModel.ListSortDescription" />
    ///  。
    ///</summary>
    ///<returns><see cref="T:System.ComponentModel.ListSortDirection" />
    ///  值之一。
    ///</returns>
    property SortDirection: DNListSortDirection read get_SortDirection write set_SortDirection;
  end;

  TDNListSortDescription = class(TDNGenericImport<DNListSortDescriptionClass, DNListSortDescription>) end;

  //-------------namespace: System.ComponentModel----------------
  DNListSortDescriptionCollectionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{0030CF45-903F-5B9B-957F-7015CC793160}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.ComponentModel.ListSortDescriptionCollection" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNListSortDescriptionCollection; overload;
    ///<summary>
    ///  初始化的新实例 <see cref="T:System.ComponentModel.ListSortDescriptionCollection" />
    ///  具有指定的数组类 <see cref="T:System.ComponentModel.ListSortDescription" />
    ///  对象。
    ///</summary>
    ///  <param name="sorts">
    ///  数组 <see cref="T:System.ComponentModel.ListSortDescription" />
    ///  要包含在集合中的对象。
    ///</param>
    {class} function init(sorts: TArray<DNListSortDescription>): DNListSortDescriptionCollection; overload;

  end;

  ///<summary>
  ///  表示 <see cref="T:System.ComponentModel.ListSortDescription" />
  ///  对象集合。
  ///</summary>
  [DNTypeName('System.ComponentModel.ListSortDescriptionCollection')]
  DNListSortDescriptionCollection = interface(DDN.mscorlib.DNObject)
  ['{8AFB95D3-33DB-3FCA-BB4B-E7C16857E913}']
  { getters & setters } 

    function get_Item(index: Int32): DNListSortDescription;
    procedure set_Item(index: Int32; value: DNListSortDescription);
    function get_Count: Int32;

  { methods } 

    ///<summary>
    ///  确定如果 <see cref="T:System.ComponentModel.ListSortDescriptionCollection" />
    ///  包含特定值。
    ///</summary>
    ///  <param name="value">
    ///  要在集合中查找的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果 <see cref="T:System.Object" />
    ///  在集合中找到; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function &Contains(value: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  返回集合中的指定项的索引。
    ///</summary>
    ///  <param name="value">
    ///  要在集合中查找的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns>
    ///  如果在列表中找到，则为 <paramref name="value" />
    ///  的索引；否则为 -1。
    ///</returns>
    function IndexOf(value: DDN.mscorlib.DNObject): Int32;
    ///<summary>
    ///  将集合的内容复制到指定的数组，指定的目标数组索引处开始。
    ///</summary>
    ///  <param name="array">
    ///  从集合复制的项目目标数组。
    ///</param>
    ///  <param name="index">
    ///  开始处进行复制的目标数组的索引。
    ///</param>
    procedure CopyTo(&array: DDN.mscorlib.DNArray; index: Int32);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    property Item[index: Int32]: DNListSortDescription read get_Item write set_Item; default;
    ///<summary>
    ///  获取集合中的项数。
    ///</summary>
    ///<returns>
    ///  集合中项的数目。
    ///</returns>
    property Count: Int32 read get_Count;
  end;

  TDNListSortDescriptionCollection = class(TDNGenericImport<DNListSortDescriptionCollectionClass, DNListSortDescriptionCollection>) end;

  //-------------namespace: System.ComponentModel----------------
  DNMaskedTextProviderClass = interface(DDN.mscorlib.DNObjectClass)
  ['{A091335B-7C40-50C7-ABCB-5ECF01303868}']
  { static getter & setter } 

    {class} function get_DefaultPasswordChar: Char;
    {class} function get_InvalidIndex: Int32;

  { constructors } 

    ///<summary>
    ///  新实例初始化 <see cref="T:System.ComponentModel.MaskedTextProvider" />
    ///  类使用指定的掩码。
    ///</summary>
    ///  <param name="mask">
    ///  一个 <see cref="T:System.String" />
    ///  ，表示输入的掩码。
    ///</param>
    {class} function init(mask: string): DNMaskedTextProvider; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.ComponentModel.MaskedTextProvider" />
    ///  类使用指定的掩码和 ASCII 限制值。
    ///</summary>
    ///  <param name="mask">
    ///  一个 <see cref="T:System.String" />
    ///  ，表示输入的掩码。
    ///</param>
    ///  <param name="restrictToAscii"><see langword="true" />
    ///  若要将输入限制为 ASCII 兼容字符;否则为 <see langword="false" />
    ///  以允许整个 Unicode 字符集。
    ///</param>
    {class} function init(mask: string; restrictToAscii: Boolean): DNMaskedTextProvider; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.ComponentModel.MaskedTextProvider" />
    ///  类使用指定的掩码和区域性。
    ///</summary>
    ///  <param name="mask">
    ///  一个 <see cref="T:System.String" />
    ///  ，表示输入的掩码。
    ///</param>
    ///  <param name="culture">
    ///  一个 <see cref="T:System.Globalization.CultureInfo" />
    ///  用于设置区分区域的分隔字符。
    ///</param>
    {class} function init(mask: string; culture: DDN.mscorlib.DNCultureInfo): DNMaskedTextProvider; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.ComponentModel.MaskedTextProvider" />
    ///  类使用指定的掩码、 区域性和 ASCII 限制值。
    ///</summary>
    ///  <param name="mask">
    ///  一个 <see cref="T:System.String" />
    ///  ，表示输入的掩码。
    ///</param>
    ///  <param name="culture">
    ///  一个 <see cref="T:System.Globalization.CultureInfo" />
    ///  用于设置区分区域的分隔字符。
    ///</param>
    ///  <param name="restrictToAscii"><see langword="true" />
    ///  若要将输入限制为 ASCII 兼容字符;否则为 <see langword="false" />
    ///  以允许整个 Unicode 字符集。
    ///</param>
    {class} function init(mask: string; culture: DDN.mscorlib.DNCultureInfo; restrictToAscii: Boolean): DNMaskedTextProvider; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.ComponentModel.MaskedTextProvider" />
    ///  类使用指定的掩码、 密码字符和用法提示值。
    ///</summary>
    ///  <param name="mask">
    ///  一个 <see cref="T:System.String" />
    ///  ，表示输入的掩码。
    ///</param>
    ///  <param name="passwordChar">
    ///  一个 <see cref="T:System.Char" />
    ///  ，将显示为字符输入到密码字符串。
    ///</param>
    ///  <param name="allowPromptAsInput"><see langword="true" />
    ///  若要允许提示字符以输入;否则为 <see langword="false" />
    ///  。
    ///</param>
    {class} function init(mask: string; passwordChar: Char; allowPromptAsInput: Boolean): DNMaskedTextProvider; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.ComponentModel.MaskedTextProvider" />
    ///  类使用指定的掩码、 区域性、 密码字符和用法提示值。
    ///</summary>
    ///  <param name="mask">
    ///  一个 <see cref="T:System.String" />
    ///  ，表示输入的掩码。
    ///</param>
    ///  <param name="culture">
    ///  一个 <see cref="T:System.Globalization.CultureInfo" />
    ///  用于设置区分区域的分隔字符。
    ///</param>
    ///  <param name="passwordChar">
    ///  一个 <see cref="T:System.Char" />
    ///  ，将显示为字符输入到密码字符串。
    ///</param>
    ///  <param name="allowPromptAsInput"><see langword="true" />
    ///  若要允许提示字符以输入;否则为 <see langword="false" />
    ///  。
    ///</param>
    {class} function init(mask: string; culture: DDN.mscorlib.DNCultureInfo; passwordChar: Char; allowPromptAsInput: Boolean): DNMaskedTextProvider; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.ComponentModel.MaskedTextProvider" />
    ///  类使用指定的掩码、 区域性、 用法提示值、 提示字符、 密码字符和 ASCII 限制值。
    ///</summary>
    ///  <param name="mask">
    ///  一个 <see cref="T:System.String" />
    ///  ，表示输入的掩码。
    ///</param>
    ///  <param name="culture">
    ///  一个 <see cref="T:System.Globalization.CultureInfo" />
    ///  用于设置区分区域的分隔字符。
    ///</param>
    ///  <param name="allowPromptAsInput">
    ///  一个 <see cref="T:System.Boolean" />
    ///  值，该值指定是否应为有效的输入字符允许提示字符。
    ///</param>
    ///  <param name="promptChar">
    ///  一个 <see cref="T:System.Char" />
    ///  ，将显示为一个占位符，供用户输入。
    ///</param>
    ///  <param name="passwordChar">
    ///  一个 <see cref="T:System.Char" />
    ///  ，将显示为字符输入到密码字符串。
    ///</param>
    ///  <param name="restrictToAscii"><see langword="true" />
    ///  若要将输入限制为 ASCII 兼容字符;否则为 <see langword="false" />
    ///  以允许整个 Unicode 字符集。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  Mask 参数是 <see langword="null" />
    ///  或 <see cref="F:System.String.Empty" />
    ///  。
    ///  - 或 -
    ///  掩码包含一个或多个非打印字符。
    ///</exception>
    {class} function init(mask: string; culture: DDN.mscorlib.DNCultureInfo; allowPromptAsInput: Boolean; promptChar: Char; passwordChar: Char; restrictToAscii: Boolean): DNMaskedTextProvider; overload;

  { static methods } 

    ///<summary>
    ///  确定是否指定 <see cref="T:System.ComponentModel.MaskedTextResultHint" />
    ///  表示成功还是失败。
    ///</summary>
    ///  <param name="hint">
    ///  一个 <see cref="T:System.ComponentModel.MaskedTextResultHint" />
    ///  通常作为从以前的操作的输出参数获得的值。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果指定 <see cref="T:System.ComponentModel.MaskedTextResultHint" />
    ///  值表示成功完成; 否则为 <see langword="false" />
    ///  如果表示失败。
    ///</returns>
    {class} function GetOperationResultFromHint(hint: DNMaskedTextResultHint): Boolean;
    ///<summary>
    ///  确定指定的字符是否是有效的输入的字符。
    ///</summary>
    ///  <param name="c"><see cref="T:System.Char" />
    ///  要测试其值。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果指定的字符包含一个有效的输入的值;否则为 <see langword="false" />
    ///  。
    ///</returns>
    {class} function IsValidInputChar(c: Char): Boolean;
    ///<summary>
    ///  确定指定的字符是否为有效的掩码字符。
    ///</summary>
    ///  <param name="c"><see cref="T:System.Char" />
    ///  要测试其值。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果指定的字符包含一个有效的掩码值; 如果否则为 <see langword="false" />
    ///  。
    ///</returns>
    {class} function IsValidMaskChar(c: Char): Boolean;
    ///<summary>
    ///  确定指定的字符是否为有效的密码字符。
    ///</summary>
    ///  <param name="c"><see cref="T:System.Char" />
    ///  要测试其值。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果指定的字符包含一个有效的密码值; 如果否则为 <see langword="false" />
    ///  。
    ///</returns>
    {class} function IsValidPasswordChar(c: Char): Boolean;

  { static propertys } 

    ///<summary>
    ///  获取默认的密码使用字符遮盖用户输入。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Char" />
    ///  ，表示默认的密码字符。
    ///</returns>
    {class} property DefaultPasswordChar: Char read get_DefaultPasswordChar;
    ///<summary>
    ///  获取无效索引范围的上限。
    ///</summary>
    ///<returns>
    ///  表示由提供程序实现的最大的无效索引的值。
    ///  例如，如果最小的有效索引为 0，则此属性将返回-1。
    ///</returns>
    {class} property InvalidIndex: Int32 read get_InvalidIndex;
  end;

  ///<summary>
  ///  表示可由任意数量的屏蔽，如支持的控件的掩码分析服务 <see cref="T:System.Windows.Forms.MaskedTextBox" />
  ///  控件。
  ///</summary>
  [DNTypeName('System.ComponentModel.MaskedTextProvider')]
  DNMaskedTextProvider = interface(DDN.mscorlib.DNObject)
  ['{F5811A20-6531-3FFD-B2FB-4024DAA71FE6}']
  { getters & setters } 

    function get_AllowPromptAsInput: Boolean;
    function get_AssignedEditPositionCount: Int32;
    function get_AvailableEditPositionCount: Int32;
    function get_Culture: DDN.mscorlib.DNCultureInfo;
    function get_EditPositionCount: Int32;
    function get_EditPositions: DDN.mscorlib.DNIEnumerator;
    function get_IncludeLiterals: Boolean;
    procedure set_IncludeLiterals(value: Boolean);
    function get_IncludePrompt: Boolean;
    procedure set_IncludePrompt(value: Boolean);
    function get_AsciiOnly: Boolean;
    function get_IsPassword: Boolean;
    procedure set_IsPassword(value: Boolean);
    function get_LastAssignedPosition: Int32;
    function get_Length: Int32;
    function get_Mask: string;
    function get_MaskCompleted: Boolean;
    function get_MaskFull: Boolean;
    function get_PasswordChar: Char;
    procedure set_PasswordChar(value: Char);
    function get_PromptChar: Char;
    procedure set_PromptChar(value: Char);
    function get_ResetOnPrompt: Boolean;
    procedure set_ResetOnPrompt(value: Boolean);
    function get_ResetOnSpace: Boolean;
    procedure set_ResetOnSpace(value: Boolean);
    function get_SkipLiterals: Boolean;
    procedure set_SkipLiterals(value: Boolean);
    function get_Item(index: Int32): Char;

  { methods } 

    ///<summary>
    ///  带格式的字符串的末尾添加指定的输入的字符。
    ///</summary>
    ///  <param name="input">
    ///  一个 <see cref="T:System.Char" />
    ///  要追加到带格式的字符串值。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果输入的字符成功，则添加否则为 <see langword="false" />
    ///  。
    ///</returns>
    function Add(input: Char): Boolean; overload;
    function Add(input: Char; out testPosition: Int32; out resultHint: DNMaskedTextResultHint): Boolean; overload;
    ///<summary>
    ///  在指定的输入字符串中字符都添加到格式的字符串的末尾中。
    ///</summary>
    ///  <param name="input">
    ///  一个 <see cref="T:System.String" />
    ///  包含要追加到带格式的字符串的字符值。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果成功，则添加输入字符串中的所有字符否则为 <see langword="false" />
    ///  以指示是否已添加任何字符。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name=" input" />
    ///  参数是 <see langword="null" />
    ///  。
    ///</exception>
    function Add(input: string): Boolean; overload;
    function Add(input: string; out testPosition: Int32; out resultHint: DNMaskedTextResultHint): Boolean; overload;
    ///<summary>
    ///  清除所有可编辑的输入的字符从格式字符串，用提示字符替换。
    ///</summary>
    procedure Clear; overload;
    procedure Clear(out resultHint: DNMaskedTextResultHint); overload;
    ///<summary>
    ///  返回指定的位置使用指定的搜索方向之后分配可编辑位置的第一个位置。
    ///</summary>
    ///  <param name="position">
    ///  要开始搜索的格式化字符串中从零开始的位置。
    ///</param>
    ///  <param name="direction">
    ///  一个 <see cref="T:System.Boolean" />
    ///  ，该值指示搜索方向; 两个 <see langword="true" />
    ///  向前搜索或 <see langword="false" />
    ///  向后搜索。
    ///</param>
    ///<returns>
    ///  如果成功， <see cref="T:System.Int32" />
    ///  表示的从零开始的位置的第一个分配可编辑位置遇到; 否则为 <see cref="P:System.ComponentModel.MaskedTextProvider.InvalidIndex" />
    ///  。
    ///</returns>
    function FindAssignedEditPositionFrom(position: Int32; direction: Boolean): Int32;
    ///<summary>
    ///  返回分配指定的位置使用指定的搜索方向之间的可编辑位置的第一个位置。
    ///</summary>
    ///  <param name="startPosition">
    ///  格式化字符串中开始搜索的位置从零开始。
    ///</param>
    ///  <param name="endPosition">
    ///  格式化字符串中搜索的结尾处的位置从零开始。
    ///</param>
    ///  <param name="direction">
    ///  一个 <see cref="T:System.Boolean" />
    ///  ，该值指示搜索方向; 两个 <see langword="true" />
    ///  向前搜索或 <see langword="false" />
    ///  向后搜索。
    ///</param>
    ///<returns>
    ///  如果成功， <see cref="T:System.Int32" />
    ///  表示的从零开始的位置的第一个分配可编辑位置遇到; 否则为 <see cref="P:System.ComponentModel.MaskedTextProvider.InvalidIndex" />
    ///  。
    ///</returns>
    function FindAssignedEditPositionInRange(startPosition: Int32; endPosition: Int32; direction: Boolean): Int32;
    ///<summary>
    ///  返回使用指定的搜索方向的指定位置之后的第一个可编辑位置的位置。
    ///</summary>
    ///  <param name="position">
    ///  要开始搜索的格式化字符串中从零开始的位置。
    ///</param>
    ///  <param name="direction">
    ///  一个 <see cref="T:System.Boolean" />
    ///  ，该值指示搜索方向; 两个 <see langword="true" />
    ///  向前搜索或 <see langword="false" />
    ///  向后搜索。
    ///</param>
    ///<returns>
    ///  如果成功， <see cref="T:System.Int32" />
    ///  表示的从零开始的位置的第一个可编辑位置遇到; 否则为 <see cref="P:System.ComponentModel.MaskedTextProvider.InvalidIndex" />
    ///  。
    ///</returns>
    function FindEditPositionFrom(position: Int32; direction: Boolean): Int32;
    ///<summary>
    ///  返回指定的位置使用指定的搜索方向之间的第一个可编辑位置的位置。
    ///</summary>
    ///  <param name="startPosition">
    ///  格式化字符串中开始搜索的位置从零开始。
    ///</param>
    ///  <param name="endPosition">
    ///  格式化字符串中搜索的结尾处的位置从零开始。
    ///</param>
    ///  <param name="direction">
    ///  一个 <see cref="T:System.Boolean" />
    ///  ，该值指示搜索方向; 两个 <see langword="true" />
    ///  向前搜索或 <see langword="false" />
    ///  向后搜索。
    ///</param>
    ///<returns>
    ///  如果成功， <see cref="T:System.Int32" />
    ///  表示的从零开始的位置的第一个可编辑位置遇到; 否则为 <see cref="P:System.ComponentModel.MaskedTextProvider.InvalidIndex" />
    ///  。
    ///</returns>
    function FindEditPositionInRange(startPosition: Int32; endPosition: Int32; direction: Boolean): Int32;
    ///<summary>
    ///  返回使用指定的搜索方向的指定位置之后的第一个非可编辑位置的位置。
    ///</summary>
    ///  <param name="position">
    ///  要开始搜索的格式化字符串中从零开始的位置。
    ///</param>
    ///  <param name="direction">
    ///  一个 <see cref="T:System.Boolean" />
    ///  ，该值指示搜索方向; 两个 <see langword="true" />
    ///  向前搜索或 <see langword="false" />
    ///  向后搜索。
    ///</param>
    ///<returns>
    ///  如果成功， <see cref="T:System.Int32" />
    ///  表示遇到; 第一个文本位置的从零开始的位置否则为 <see cref="P:System.ComponentModel.MaskedTextProvider.InvalidIndex" />
    ///  。
    ///</returns>
    function FindNonEditPositionFrom(position: Int32; direction: Boolean): Int32;
    ///<summary>
    ///  返回指定的位置使用指定的搜索方向之间的第一个非可编辑位置的位置。
    ///</summary>
    ///  <param name="startPosition">
    ///  格式化字符串中开始搜索的位置从零开始。
    ///</param>
    ///  <param name="endPosition">
    ///  格式化字符串中搜索的结尾处的位置从零开始。
    ///</param>
    ///  <param name="direction">
    ///  一个 <see cref="T:System.Boolean" />
    ///  ，该值指示搜索方向; 两个 <see langword="true" />
    ///  向前搜索或 <see langword="false" />
    ///  向后搜索。
    ///</param>
    ///<returns>
    ///  如果成功， <see cref="T:System.Int32" />
    ///  表示遇到; 第一个文本位置的从零开始的位置否则为 <see cref="P:System.ComponentModel.MaskedTextProvider.InvalidIndex" />
    ///  。
    ///</returns>
    function FindNonEditPositionInRange(startPosition: Int32; endPosition: Int32; direction: Boolean): Int32;
    ///<summary>
    ///  使用指定的搜索方向的指定位置之后返回第一个未分配的可编辑位置的位置。
    ///</summary>
    ///  <param name="position">
    ///  要开始搜索的格式化字符串中从零开始的位置。
    ///</param>
    ///  <param name="direction">
    ///  一个 <see cref="T:System.Boolean" />
    ///  ，该值指示搜索方向; 两个 <see langword="true" />
    ///  向前搜索或 <see langword="false" />
    ///  向后搜索。
    ///</param>
    ///<returns>
    ///  如果成功， <see cref="T:System.Int32" />
    ///  表示遇到; 第一个未分配的可编辑位置的从零开始的位置否则为 <see cref="P:System.ComponentModel.MaskedTextProvider.InvalidIndex" />
    ///  。
    ///</returns>
    function FindUnassignedEditPositionFrom(position: Int32; direction: Boolean): Int32;
    ///<summary>
    ///  返回指定的位置使用指定的搜索方向之间未分配的第一个可编辑位置的位置。
    ///</summary>
    ///  <param name="startPosition">
    ///  格式化字符串中开始搜索的位置从零开始。
    ///</param>
    ///  <param name="endPosition">
    ///  格式化字符串中搜索的结尾处的位置从零开始。
    ///</param>
    ///  <param name="direction">
    ///  一个 <see cref="T:System.Boolean" />
    ///  ，该值指示搜索方向; 两个 <see langword="true" />
    ///  向前搜索或 <see langword="false" />
    ///  向后搜索。
    ///</param>
    ///<returns>
    ///  如果成功， <see cref="T:System.Int32" />
    ///  表示遇到; 第一个未分配的可编辑位置的从零开始的位置否则为 <see cref="P:System.ComponentModel.MaskedTextProvider.InvalidIndex" />
    ///  。
    ///</returns>
    function FindUnassignedEditPositionInRange(startPosition: Int32; endPosition: Int32; direction: Boolean): Int32;
    ///<summary>
    ///  格式化字符串中指定的位置处插入指定的字符。
    ///</summary>
    ///  <param name="input">
    ///  要插入的 <see cref="T:System.Char" />
    ///  。
    ///</param>
    ///  <param name="position">
    ///  中要插入的字符的格式化字符串的从零开始的位置。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果插入成功，则否则为 <see langword="false" />
    ///  。
    ///</returns>
    function InsertAt(input: Char; position: Int32): Boolean; overload;
    function InsertAt(input: Char; position: Int32; out testPosition: Int32; out resultHint: DNMaskedTextResultHint): Boolean; overload;
    ///<summary>
    ///  格式化字符串中指定位置处插入指定的字符串。
    ///</summary>
    ///  <param name="input">
    ///  要插入的 <see cref="T:System.String" />
    ///  。
    ///</param>
    ///  <param name="position">
    ///  中要插入的输入的字符串的格式化字符串的从零开始的位置。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果插入成功，则否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="input" />
    ///  参数为 <see langword="null" />
    ///  。
    ///</exception>
    function InsertAt(input: string; position: Int32): Boolean; overload;
    function InsertAt(input: string; position: Int32; out testPosition: Int32; out resultHint: DNMaskedTextResultHint): Boolean; overload;
    ///<summary>
    ///  确定指定的位置是可用于分配。
    ///</summary>
    ///  <param name="position">
    ///  若要测试的掩码中的从零开始位置。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果带格式的字符串中指定的位置是可编辑的和尚未被分配到尚未;否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsAvailablePosition(position: Int32): Boolean;
    ///<summary>
    ///  确定指定的位置是可编辑。
    ///</summary>
    ///  <param name="position">
    ///  若要测试的掩码中的从零开始位置。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果带格式的字符串中指定的位置是可编辑;否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsEditPosition(position: Int32): Boolean;
    ///<summary>
    ///  从带格式的字符串中删除已分配的最后一个字符。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果成功移除了该字符;否则为 <see langword="false" />
    ///  。
    ///</returns>
    function Remove: Boolean; overload;
    function Remove(out testPosition: Int32; out resultHint: DNMaskedTextResultHint): Boolean; overload;
    ///<summary>
    ///  从格式化字符串中移除位于指定位置分配的字符。
    ///</summary>
    ///  <param name="position">
    ///  要删除的分配字符的从零开始的位置。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果成功移除了该字符;否则为 <see langword="false" />
    ///  。
    ///</returns>
    function RemoveAt(position: Int32): Boolean; overload;
    ///<summary>
    ///  移除指定位置从带格式的字符串之间赋值的字符。
    ///</summary>
    ///  <param name="startPosition">
    ///  要移除的第一个分配字符的从零开始的索引。
    ///</param>
    ///  <param name="endPosition">
    ///  要移除的最后一个分配字符的从零开始的索引。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果成功移除了该字符;否则为 <see langword="false" />
    ///  。
    ///</returns>
    function RemoveAt(startPosition: Int32; endPosition: Int32): Boolean; overload;
    function RemoveAt(startPosition: Int32; endPosition: Int32; out testPosition: Int32; out resultHint: DNMaskedTextResultHint): Boolean; overload;
    ///<summary>
    ///  使用指定的字符值替换单个字符达到或超过指定的位置。
    ///</summary>
    ///  <param name="input"><see cref="T:System.Char" />
    ///  替换现有的值的值。
    ///</param>
    ///  <param name="position">
    ///  要搜索的第一个要替换的可编辑字符的从零开始位置。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果成功替换字符;否则为 <see langword="false" />
    ///  。
    ///</returns>
    function Replace(input: Char; position: Int32): Boolean; overload;
    function Replace(input: Char; position: Int32; out testPosition: Int32; out resultHint: DNMaskedTextResultHint): Boolean; overload;
    function Replace(input: Char; startPosition: Int32; endPosition: Int32; out testPosition: Int32; out resultHint: DNMaskedTextResultHint): Boolean; overload;
    ///<summary>
    ///  替换一定范围的可编辑以指定字符串的指定位置开始的字符。
    ///</summary>
    ///  <param name="input"><see cref="T:System.String" />
    ///  用来替换现有的可编辑字符值。
    ///</param>
    ///  <param name="position">
    ///  要搜索的第一个要替换的可编辑字符的从零开始位置。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果已成功替换，所有字符;否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="input" />
    ///  参数为 <see langword="null" />
    ///  。
    ///</exception>
    function Replace(input: string; position: Int32): Boolean; overload;
    function Replace(input: string; position: Int32; out testPosition: Int32; out resultHint: DNMaskedTextResultHint): Boolean; overload;
    function Replace(input: string; startPosition: Int32; endPosition: Int32; out testPosition: Int32; out resultHint: DNMaskedTextResultHint): Boolean; overload;
    ///<summary>
    ///  将带格式的字符串设置为指定的输入字符串。
    ///</summary>
    ///  <param name="input"><see cref="T:System.String" />
    ///  用于设置了格式的字符串值。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果已成功设置的所有字符;否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name=" input" />
    ///  参数是 <see langword="null" />
    ///  。
    ///</exception>
    function &Set(input: string): Boolean; overload;
    function &Set(input: string; out testPosition: Int32; out resultHint: DNMaskedTextResultHint): Boolean; overload;
    ///<summary>
    ///  返回可显示窗体中的带格式的字符串。
    ///</summary>
    ///<returns>
    ///  带格式 <see cref="T:System.String" />
    ///  ，包括提示和掩码原义字符。
    ///</returns>
    function ToDisplayString: string;
    ///<summary>
    ///  返回包含所有已分配的字符值的格式化的字符串。
    ///</summary>
    ///<returns>
    ///  带格式 <see cref="T:System.String" />
    ///  包括所有分配的字符值。
    ///</returns>
    function ToString: string; overload;
    ///<summary>
    ///  返回格式化的字符串，并有选择性地包括密码字符。
    ///</summary>
    ///  <param name="ignorePasswordChar"><see langword="true" />
    ///  若要返回的实际的可编辑字符;否则为 <see langword="false" />
    ///  以指示 <see cref="P:System.ComponentModel.MaskedTextProvider.PasswordChar" />
    ///  属性将会得到遵守。
    ///</param>
    ///<returns>
    ///  带格式 <see cref="T:System.String" />
    ///  包括文本、 提示字符和 （可选） 密码字符。
    ///</returns>
    function ToString(ignorePasswordChar: Boolean): string; overload;
    ///<summary>
    ///  返回一个带格式的字符串的子字符串。
    ///</summary>
    ///  <param name="startPosition">
    ///  格式化字符串中输出的开始处的位置从零开始。
    ///</param>
    ///  <param name="length">
    ///  要返回的字符数。
    ///</param>
    ///<returns>
    ///  如果成功，子字符串的格式化 <see cref="T:System.String" />
    ///  , ，其中包括所有分配的字符值; 否则为 <see cref="F:System.String.Empty" />
    ///  字符串。
    ///</returns>
    function ToString(startPosition: Int32; length: Int32): string; overload;
    ///<summary>
    ///  返回一个格式字符串，有选择性地包括密码字符的子字符串。
    ///</summary>
    ///  <param name="ignorePasswordChar"><see langword="true" />
    ///  若要返回的实际的可编辑字符;否则为 <see langword="false" />
    ///  以指示 <see cref="P:System.ComponentModel.MaskedTextProvider.PasswordChar" />
    ///  属性将会得到遵守。
    ///</param>
    ///  <param name="startPosition">
    ///  格式化字符串中输出的开始处的位置从零开始。
    ///</param>
    ///  <param name="length">
    ///  要返回的字符数。
    ///</param>
    ///<returns>
    ///  如果成功，子字符串的格式化 <see cref="T:System.String" />
    ///  , ，其中包括文本、 提示字符和 （可选） 密码字符; 否则为 <see cref="F:System.String.Empty" />
    ///  字符串。
    ///</returns>
    function ToString(ignorePasswordChar: Boolean; startPosition: Int32; length: Int32): string; overload;
    ///<summary>
    ///  返回格式化的字符串，并有选择性地包括提示和原义字符。
    ///</summary>
    ///  <param name="includePrompt"><see langword="true" />
    ///  若要包括在返回的字符串; 提示字符否则为 <see langword="false" />
    ///  。
    ///</param>
    ///  <param name="includeLiterals"><see langword="true" />
    ///  若要在返回的字符串; 包括原义字符否则为 <see langword="false" />
    ///  。
    ///</param>
    ///<returns>
    ///  带格式 <see cref="T:System.String" />
    ///  ，包含所有分配的字符值，还可以包括原义字符和提示。
    ///</returns>
    function ToString(includePrompt: Boolean; includeLiterals: Boolean): string; overload;
    ///<summary>
    ///  返回子字符串的格式字符串，有选择性地包括提示和原义字符。
    ///</summary>
    ///  <param name="includePrompt"><see langword="true" />
    ///  若要包括在返回的字符串; 提示字符否则为 <see langword="false" />
    ///  。
    ///</param>
    ///  <param name="includeLiterals"><see langword="true" />
    ///  若要在返回的字符串; 包括原义字符否则为 <see langword="false" />
    ///  。
    ///</param>
    ///  <param name="startPosition">
    ///  格式化字符串中输出的开始处的位置从零开始。
    ///</param>
    ///  <param name="length">
    ///  要返回的字符数。
    ///</param>
    ///<returns>
    ///  如果成功，子字符串的格式化 <see cref="T:System.String" />
    ///  , ，其中包括所有分配的字符值，并 （可选） 包括原义字符和提示; 否则为 <see cref="F:System.String.Empty" />
    ///  字符串。
    ///</returns>
    function ToString(includePrompt: Boolean; includeLiterals: Boolean; startPosition: Int32; length: Int32): string; overload;
    ///<summary>
    ///  返回一个格式字符串，有选择性地包括提示、 文字，以及密码字符的子字符串。
    ///</summary>
    ///  <param name="ignorePasswordChar"><see langword="true" />
    ///  若要返回的实际的可编辑字符;否则为 <see langword="false" />
    ///  以指示 <see cref="P:System.ComponentModel.MaskedTextProvider.PasswordChar" />
    ///  属性将会得到遵守。
    ///</param>
    ///  <param name="includePrompt"><see langword="true" />
    ///  若要包括在返回的字符串; 提示字符否则为 <see langword="false" />
    ///  。
    ///</param>
    ///  <param name="includeLiterals"><see langword="true" />
    ///  若要返回原义字符中返回的字符串;否则为 <see langword="false" />
    ///  。
    ///</param>
    ///  <param name="startPosition">
    ///  格式化字符串中输出的开始处的位置从零开始。
    ///</param>
    ///  <param name="length">
    ///  要返回的字符数。
    ///</param>
    ///<returns>
    ///  如果成功，子字符串的格式化 <see cref="T:System.String" />
    ///  , ，其中包括所有分配的字符值，还可以包括文本、 提示字符和密码字符; 否则为 <see cref="F:System.String.Empty" />
    ///  字符串。
    ///</returns>
    function ToString(ignorePasswordChar: Boolean; includePrompt: Boolean; includeLiterals: Boolean; startPosition: Int32; length: Int32): string; overload;
    function VerifyChar(input: Char; position: Int32; out hint: DNMaskedTextResultHint): Boolean;
    ///<summary>
    ///  测试是否在指定的位置将转义指定的字符。
    ///</summary>
    ///  <param name="input"><see cref="T:System.Char" />
    ///  要测试其值。
    ///</param>
    ///  <param name="position">
    ///  若要测试对的输入的字符的掩码中的位置。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果指定的字符将转义在指定的位置;否则为 <see langword="false" />
    ///  。
    ///</returns>
    function VerifyEscapeChar(input: Char; position: Int32): Boolean;
    ///<summary>
    ///  测试是否可以成功设置指定的字符串。
    ///</summary>
    ///  <param name="input"><see cref="T:System.String" />
    ///  要测试其值。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果指定的字符串表示有效的输入;否则为 <see langword="false" />
    ///  。
    ///</returns>
    function VerifyString(input: string): Boolean; overload;
    function VerifyString(input: string; out testPosition: Int32; out resultHint: DNMaskedTextResultHint): Boolean; overload;
    ///<summary>
    ///  创建当前 <see cref="T:System.ComponentModel.MaskedTextProvider" />
    ///  的副本。
    ///</summary>
    ///<returns><see cref="T:System.ComponentModel.MaskedTextProvider" />
    ///  此方法创建的对象强制转换为一个对象。
    ///</returns>
    function Clone: DDN.mscorlib.DNObject;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取一个值，该值指示是否提示字符是否应视为有效的输入字符。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果用户可以输入 <see cref="P:System.ComponentModel.MaskedTextProvider.PromptChar" />
    ///  到控件; 否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="true" />
    ///  。
    ///</returns>
    property AllowPromptAsInput: Boolean read get_AllowPromptAsInput;
    ///<summary>
    ///  获取已成功地分配输入的值的可编辑字符位置数。
    ///</summary>
    ///<returns><see cref="T:System.Int32" />
    ///  包含的输入掩码中已经分配了格式的字符串中的字符值的可编辑的字符位置数。
    ///</returns>
    property AssignedEditPositionCount: Int32 read get_AssignedEditPositionCount;
    ///<summary>
    ///  获取输入掩码中尚未分配输入的值的可编辑字符位置数。
    ///</summary>
    ///<returns><see cref="T:System.Int32" />
    ///  包含的可编辑的字符数的位置尚未赋予一个字符的值。
    ///</returns>
    property AvailableEditPositionCount: Int32 read get_AvailableEditPositionCount;
    ///<summary>
    ///  获取确定可本地化的分隔符和输入掩码中的占位符的值的区域性。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Globalization.CultureInfo" />
    ///  包含输入掩码与关联的区域性信息。
    ///</returns>
    property Culture: DDN.mscorlib.DNCultureInfo read get_Culture;
    ///<summary>
    ///  获取格式化字符串中的可编辑位置数。
    ///</summary>
    ///<returns><see cref="T:System.Int32" />
    ///  包含带格式的字符串中的可编辑位置数。
    ///</returns>
    property EditPositionCount: Int32 read get_EditPositionCount;
    ///<summary>
    ///  在格式化字符串的可编辑位置获取新创建的枚举数。
    ///</summary>
    ///<returns><see cref="T:System.Collections.IEnumerator" />
    ///  带格式的字符串中的可编辑位置支持枚举。
    ///</returns>
    property EditPositions: DDN.mscorlib.DNIEnumerator read get_EditPositions;
    ///<summary>
    ///  获取或设置一个值，该值指示是否应在格式化字符串中包括输入掩码中的原义字符。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果文本包含;否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="true" />
    ///  。
    ///</returns>
    property IncludeLiterals: Boolean read get_IncludeLiterals write set_IncludeLiterals;
    ///<summary>
    ///  获取或设置一个值，该值指示是否 <see cref="P:System.Windows.Forms.MaskedTextBox.PromptChar" />
    ///  用来表示缺少的用户输入时显示带格式的字符串。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果提示字符用于表示，不需要用户输入; 如果提供了的位置否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="true" />
    ///  。
    ///</returns>
    property IncludePrompt: Boolean read get_IncludePrompt write set_IncludePrompt;
    ///<summary>
    ///  获取一个值，该值指示掩码是否接受 ASCII 字符集以外的字符。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果仅接受 ASCII; <see langword="false" />
    ///  如果 <see cref="T:System.ComponentModel.MaskedTextProvider" />
    ///  可以接受任意 Unicode 字符。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property AsciiOnly: Boolean read get_AsciiOnly;
    ///<summary>
    ///  获取或设置一个值，确定是否应将密码保护应用于格式化的字符串。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果输入的字符串视为密码字符串;否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property IsPassword: Boolean read get_IsPassword write set_IsPassword;
    ///<summary>
    ///  获取在掩码中的最右侧的输入字符的已分配给该掩码的索引。
    ///</summary>
    ///<returns>
    ///  如果已经为 mask，分配至少一个输入的字符 <see cref="T:System.Int32" />
    ///  包含索引的最右侧分配位置; 否则为如果尚未分配任何位置， <see cref="P:System.ComponentModel.MaskedTextProvider.InvalidIndex" />
    ///  。
    ///</returns>
    property LastAssignedPosition: Int32 read get_LastAssignedPosition;
    ///<summary>
    ///  获取掩码，不包括任何掩码的长度修饰符字符。
    ///</summary>
    ///<returns><see cref="T:System.Int32" />
    ///  包含在掩码中，不包括修改掩码输入的字符位置数。
    ///</returns>
    property Length: Int32 read get_Length;
    ///<summary>
    ///  获取输入的掩码。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  包含完整掩码。
    ///</returns>
    property Mask: string read get_Mask;
    ///<summary>
    ///  获取一个值，该值指示是否已在格式化字符串中输入所有必需的输入。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果所有的必需输入已输入到掩码;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property MaskCompleted: Boolean read get_MaskCompleted;
    ///<summary>
    ///  获取一个值，该值指示是否已在格式化字符串中输入所有必需和可选的输入。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果所有的必选和可选输入均已输入;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property MaskFull: Boolean read get_MaskFull;
    ///<summary>
    ///  获取或设置要将替换为实际的输入字符的字符。
    ///</summary>
    ///<returns><see cref="T:System.Char" />
    ///  用作密码字符值。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  当设置此属性等同于当前提示字符，则指定的密码字符 <see cref="P:System.ComponentModel.MaskedTextProvider.PromptChar" />
    ///  。
    ///  这两个都需要不同。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  当设置此属性不是有效的密码字符，根据所指定的字符 <see cref="M:System.ComponentModel.MaskedTextProvider.IsValidPasswordChar(System.Char)" />
    ///  方法。
    ///</exception>
    property PasswordChar: Char read get_PasswordChar write set_PasswordChar;
    ///<summary>
    ///  获取或设置用来表示缺少的所有可用的编辑位置的用户输入的字符。
    ///</summary>
    ///<returns>
    ///  用于提示用户进行输入的字符。
    ///  默认为下划线 (_)。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  指定的提示字符时设置此属性等同于当前的密码字符 <see cref="P:System.ComponentModel.MaskedTextProvider.PasswordChar" />
    ///  。
    ///  这两个都需要不同。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  当设置此属性不是有效的密码字符，根据所指定的字符 <see cref="M:System.ComponentModel.MaskedTextProvider.IsValidPasswordChar(System.Char)" />
    ///  方法。
    ///</exception>
    property PromptChar: Char read get_PromptChar write set_PromptChar;
    ///<summary>
    ///  获取或设置一个值，该值确定应如何处理与提示字符匹配的输入字符。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果作为输入的提示字符输入都可能导致在掩码中要重置; 的当前可编辑位置否则为 <see langword="false" />
    ///  指示要作为正常输入字符进行处理的提示字符。
    ///  默认值为 <see langword="true" />
    ///  。
    ///</returns>
    property ResetOnPrompt: Boolean read get_ResetOnPrompt write set_ResetOnPrompt;
    ///<summary>
    ///  获取或设置一个值，该值确定应如何处理空白输入字符。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果空白输入的字符会导致掩码要重置; 中的当前可编辑位置否则为 <see langword="false" />
    ///  以指示它是要作为正常输入字符进行处理。
    ///  默认值为 <see langword="true" />
    ///  。
    ///</returns>
    property ResetOnSpace: Boolean read get_ResetOnSpace write set_ResetOnSpace;
    ///<summary>
    ///  获取或设置一个值，该值指示是否可以通过其相同的值覆盖掩码中的原义字符位置。
    ///</summary>
    ///<returns><see langword="true" />
    ///  若要允许文本，添加回去;否则为 <see langword="false" />
    ///  为不允许用户覆盖原义字符。
    ///  默认值为 <see langword="true" />
    ///  。
    ///</returns>
    property SkipLiterals: Boolean read get_SkipLiterals write set_SkipLiterals;
    property Item[index: Int32]: Char read get_Item; default;
  end;

  TDNMaskedTextProvider = class(TDNGenericImport<DNMaskedTextProviderClass, DNMaskedTextProvider>) end;

  //-------------namespace: System.ComponentModel----------------
  DNPropertyDescriptorClass = interface(DNObjectClass)
  ['{C9622A0A-D78E-5479-95DC-0988298ECD69}']
  end;

  ///<summary>
  ///  提供类的属性的抽象。
  ///</summary>
  [DNTypeName('System.ComponentModel.PropertyDescriptor')]
  DNPropertyDescriptor = interface(DNObject)
  ['{D40E4E6F-4692-3438-B4CC-7E423473B2C1}']
  { getters & setters } 

    function get_ComponentType: DDN.mscorlib.DNType;
    function get_Converter: DNTypeConverter;
    function get_IsLocalizable: Boolean;
    function get_IsReadOnly: Boolean;
    function get_SerializationVisibility: DNDesignerSerializationVisibility;
    function get_PropertyType: DDN.mscorlib.DNType;
    function get_SupportsChangeEvents: Boolean;
    function get_Attributes: DNAttributeCollection;
    function get_Category: string;
    function get_Description: string;
    function get_IsBrowsable: Boolean;
    function get_Name: string;
    function get_DesignTimeOnly: Boolean;
    function get_DisplayName: string;

  { methods } 

    ///<summary>
    ///  支持此属性更改时得到通知其他对象。
    ///</summary>
    ///  <param name="component">
    ///  要添加的处理程序的组件。
    ///</param>
    ///  <param name="handler">
    ///  要作为侦听器添加的委托。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="component" />
    ///  或 <paramref name="handler" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure AddValueChanged(component: DDN.mscorlib.DNObject; handler: DDN.mscorlib.DNEventHandler);
    ///<summary>
    ///  将此与另一个对象以确定它们是否等效进行比较。
    ///</summary>
    ///  <param name="obj">
    ///  要与此比较的对象 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果这些值是等效的;否则为 <see langword="false" />
    ///  。
    ///</returns>
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  返回的默认 <see cref="T:System.ComponentModel.PropertyDescriptorCollection" />
    ///  。
    ///</summary>
    ///<returns>
    ///  属性描述符的集合。
    ///</returns>
    function GetChildProperties: DNPropertyDescriptorCollection; overload;
    ///<summary>
    ///  返回 <see cref="T:System.ComponentModel.PropertyDescriptorCollection" />
    ///  使用指定的特性数组作为筛选器。
    ///</summary>
    ///  <param name="filter">
    ///  要用作筛选器的 <see cref="T:System.Attribute" />
    ///  类型数组。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.ComponentModel.PropertyDescriptorCollection" />
    ///  具有与指定的特性匹配的属性。
    ///</returns>
    function GetChildProperties(filter: TArray<DDN.mscorlib.DNAttribute>): DNPropertyDescriptorCollection; overload;
    ///<summary>
    ///  返回 <see cref="T:System.ComponentModel.PropertyDescriptorCollection" />
    ///  给定对象的。
    ///</summary>
    ///  <param name="instance">
    ///  要为其获取属性的组件。
    ///</param>
    ///<returns>
    ///  具有指定组件的属性的 <see cref="T:System.ComponentModel.PropertyDescriptorCollection" />
    ///  。
    ///</returns>
    function GetChildProperties(instance: DDN.mscorlib.DNObject): DNPropertyDescriptorCollection; overload;
    ///<summary>
    ///  返回 <see cref="T:System.ComponentModel.PropertyDescriptorCollection" />
    ///  给定对象使用指定的特性数组作为筛选器。
    ///</summary>
    ///  <param name="instance">
    ///  要为其获取属性的组件。
    ///</param>
    ///  <param name="filter">
    ///  要用作筛选器的 <see cref="T:System.Attribute" />
    ///  类型数组。
    ///</param>
    ///<returns>
    ///  具有与指定组件的指定属性相匹配的属性的 <see cref="T:System.ComponentModel.PropertyDescriptorCollection" />
    ///  。
    ///</returns>
    function GetChildProperties(instance: DDN.mscorlib.DNObject; filter: TArray<DDN.mscorlib.DNAttribute>): DNPropertyDescriptorCollection; overload;
    ///<summary>
    ///  返回该对象的哈希代码。
    ///</summary>
    ///<returns>
    ///  此对象的哈希代码。
    ///</returns>
    function GetHashCode: Int32;
    ///<summary>
    ///  支持此属性更改时得到通知其他对象。
    ///</summary>
    ///  <param name="component">
    ///  要移除的处理程序的组件。
    ///</param>
    ///  <param name="handler">
    ///  要作为侦听器移除的委托。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="component" />
    ///  或 <paramref name="handler" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure RemoveValueChanged(component: DDN.mscorlib.DNObject; handler: DDN.mscorlib.DNEventHandler);
    ///<summary>
    ///  当在派生类中重写返回是否重置对象更改其值。
    ///</summary>
    ///  <param name="component">
    ///  要测试其重置功能的组件。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果重置组件，更改其值;否则为 <see langword="false" />
    ///  。
    ///</returns>
    function CanResetValue(component: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  获取指定类型的编辑器。
    ///</summary>
    ///  <param name="editorBaseType">
    ///  编辑器，用于区分某个属性支持的多个编辑器的基类型。
    ///</param>
    ///<returns>
    ///  请求的编辑器类型的实例或 <see langword="null" />
    ///  如果找不到一个编辑器。
    ///</returns>
    function GetEditor(editorBaseType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject;
    ///<summary>
    ///  当在派生类中重写，在组件上获取的属性的当前值。
    ///</summary>
    ///  <param name="component">
    ///  若要检索的值的属性具有的组件。
    ///</param>
    ///<returns>
    ///  给定组件属性的值。
    ///</returns>
    function GetValue(component: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject;
    ///<summary>
    ///  当在派生类中重写，将该组件的此属性的值重置为默认值。
    ///</summary>
    ///  <param name="component">
    ///  具有要重置为默认值的属性值的组件。
    ///</param>
    procedure ResetValue(component: DDN.mscorlib.DNObject);
    ///<summary>
    ///  当在派生类中重写为不同的值设置个分量的值。
    ///</summary>
    ///  <param name="component">
    ///  要设置的属性值具有的组件。
    ///</param>
    ///  <param name="value">
    ///  新值。
    ///</param>
    procedure SetValue(component: DDN.mscorlib.DNObject; value: DDN.mscorlib.DNObject);
    ///<summary>
    ///  当在派生类中重写，确定一个值，该值指示是否需要持久保留此属性的值。
    ///</summary>
    ///  <param name="component">
    ///  具有要检查其持久性的属性的组件。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果应保留该属性;否则为 <see langword="false" />
    ///  。
    ///</returns>
    function ShouldSerializeValue(component: DDN.mscorlib.DNObject): Boolean;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  当在派生类中重写，获取此属性绑定到的组件的类型。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Type" />
    ///  ，它表示此属性绑定到的组件的类型。
    ///  当 <see cref="M:System.ComponentModel.PropertyDescriptor.GetValue(System.Object)" />
    ///  或 <see cref="M:System.ComponentModel.PropertyDescriptor.SetValue(System.Object,System.Object)" />
    ///  方法调用中，指定的对象可能是这种类型的实例。
    ///</returns>
    property ComponentType: DDN.mscorlib.DNType read get_ComponentType;
    ///<summary>
    ///  获取此属性的类型转换器。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.ComponentModel.TypeConverter" />
    ///  用于将转换 <see cref="T:System.Type" />
    ///  此属性。
    ///</returns>
    property Converter: DNTypeConverter read get_Converter;
    ///<summary>
    ///  获取一个值，该值指示是否应本地化该属性，根据中的指定 <see cref="T:System.ComponentModel.LocalizableAttribute" />
    ///  。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果该成员标记有 <see cref="T:System.ComponentModel.LocalizableAttribute" />
    ///  设置为 <see langword="true" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsLocalizable: Boolean read get_IsLocalizable;
    ///<summary>
    ///  当在派生类中重写，获取一个值，指示此属性只读的。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果该属性是只读的;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsReadOnly: Boolean read get_IsReadOnly;
    ///<summary>
    ///  获取一个值，该值指示是否应序列化此属性，根据中的指定 <see cref="T:System.ComponentModel.DesignerSerializationVisibilityAttribute" />
    ///  。
    ///</summary>
    ///<returns>
    ///  其中一个 <see cref="T:System.ComponentModel.DesignerSerializationVisibility" />
    ///  枚举值，该值指定是否应序列化此属性。
    ///</returns>
    property SerializationVisibility: DNDesignerSerializationVisibility read get_SerializationVisibility;
    ///<summary>
    ///  当在派生类中重写时获取的属性的类型。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Type" />
    ///  ，表示该属性的类型。
    ///</returns>
    property PropertyType: DDN.mscorlib.DNType read get_PropertyType;
    ///<summary>
    ///  获取一个值，该值指示是否为此属性的值更改通知可能源自外部属性描述符。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果值更改通知可能源自外部属性描述符;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property SupportsChangeEvents: Boolean read get_SupportsChangeEvents;
    ///<summary>
    ///  获取此成员的特性的集合。
    ///</summary>
    ///<returns><see cref="T:System.ComponentModel.AttributeCollection" />
    ///  ，有关此成员或为空集合提供了各种属性，如果在没有特性 <see cref="P:System.ComponentModel.MemberDescriptor.AttributeArray" />
    ///  。
    ///</returns>
    property Attributes: DNAttributeCollection read get_Attributes;
    ///<summary>
    ///  获取该成员所属的类别的名称中指定 <see cref="T:System.ComponentModel.CategoryAttribute" />
    ///  。
    ///</summary>
    ///<returns>
    ///  该成员所属的类别的名称。
    ///  如果没有任何 <see cref="T:System.ComponentModel.CategoryAttribute" />
    ///  , ，类别名称设置为默认类别 <see langword="Misc" />
    ///  。
    ///</returns>
    property Category: string read get_Category;
    ///<summary>
    ///  获取在指定将成员的说明 <see cref="T:System.ComponentModel.DescriptionAttribute" />
    ///  。
    ///</summary>
    ///<returns>
    ///  成员的说明。
    ///  如果没有任何 <see cref="T:System.ComponentModel.DescriptionAttribute" />
    ///  , ，属性值设置为默认情况下，将为空字符串 ("")。
    ///</returns>
    property Description: string read get_Description;
    ///<summary>
    ///  获取一个值，该值指示该成员是否可浏览中指定 <see cref="T:System.ComponentModel.BrowsableAttribute" />
    ///  。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果该成员是可浏览;否则为 <see langword="false" />
    ///  。
    ///  如果没有任何 <see cref="T:System.ComponentModel.BrowsableAttribute" />
    ///  , ，属性值设置为默认值，即 <see langword="true" />
    ///  。
    ///</returns>
    property IsBrowsable: Boolean read get_IsBrowsable;
    ///<summary>
    ///  获取该成员的名称。
    ///</summary>
    ///<returns>
    ///  成员名。
    ///</returns>
    property Name: string read get_Name;
    ///<summary>
    ///  获取是否应仅在设计时，指定在设置此成员 <see cref="T:System.ComponentModel.DesignOnlyAttribute" />
    ///  。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果此成员应设置只能在设计时; <see langword="false" />
    ///  如果成员可以在运行时设置。
    ///</returns>
    property DesignTimeOnly: Boolean read get_DesignTimeOnly;
    ///<summary>
    ///  获取可以在一个窗口，如属性窗口中显示的名称。
    ///</summary>
    ///<returns>
    ///  要显示的成员的名称。
    ///</returns>
    property DisplayName: string read get_DisplayName;
  end;

  TDNPropertyDescriptor = class(TDNGenericImport<DNPropertyDescriptorClass, DNPropertyDescriptor>) end;

  //-------------namespace: System.ComponentModel----------------
  DNPropertyDescriptorCollectionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{400ECE6F-D862-52A4-AA27-E8F48F498369}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.ComponentModel.PropertyDescriptorCollection" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="properties">
    ///  类型的数组 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  提供此集合的属性。
    ///</param>
    {class} function init(properties: TArray<DNPropertyDescriptor>): DNPropertyDescriptorCollection; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.ComponentModel.PropertyDescriptorCollection" />
    ///  类，它是只读的。
    ///</summary>
    ///  <param name="properties">
    ///  类型的数组 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  提供此集合的属性。
    ///</param>
    ///  <param name="readOnly">
    ///  如果 <see langword="true" />
    ///  , ，指定不能修改该集合。
    ///</param>
    {class} function init(properties: TArray<DNPropertyDescriptor>; readOnly: Boolean): DNPropertyDescriptorCollection; overload;

  { static fields getter & setter } 

   function __fakeFieldGet_Empty: DNPropertyDescriptorCollection;

  { static fields } 

    ///<summary>
    ///  指定可以使用而不是创建一个具有任何项的新的空集合。
    ///  这 <see langword="static" />
    ///  字段是只读的。
    ///</summary>
    {class} property Empty: DNPropertyDescriptorCollection read __fakeFieldGet_Empty;

  end;

  ///<summary>
  ///  表示 <see cref="T:System.ComponentModel.PropertyDescriptor" />
  ///  对象集合。
  ///</summary>
  [DNTypeName('System.ComponentModel.PropertyDescriptorCollection')]
  DNPropertyDescriptorCollection = interface(DDN.mscorlib.DNObject)
  ['{36F242F1-65CA-36EB-9970-D7D97E88DA25}']
  { getters & setters } 

    function get_Count: Int32;
    function get_Item(index: Int32): DNPropertyDescriptor; overload;
    function get_Item(name: string): DNPropertyDescriptor; overload;

  { methods } 

    ///<summary>
    ///  将指定的 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  添加到集合。
    ///</summary>
    ///  <param name="value">
    ///  要添加到集合中的 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  。
    ///</param>
    ///<returns>
    ///  索引 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  已添加到集合。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  该集合是只读的。
    ///</exception>
    function Add(value: DNPropertyDescriptor): Int32;
    ///<summary>
    ///  从集合中删除所有 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  对象。
    ///</summary>
    ///<exception cref="T:System.NotSupportedException">
    ///  该集合是只读的。
    ///</exception>
    procedure Clear;
    ///<summary>
    ///  将整个集合复制到数组，从指定的索引号处开始。
    ///</summary>
    ///  <param name="array">
    ///  一个数组 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  对象复制到集合中的元素。
    ///</param>
    ///  <param name="index">
    ///  索引 <paramref name="array" />
    ///  参数开始复制处开始。
    ///</param>
    procedure CopyTo(&array: DDN.mscorlib.DNArray; index: Int32);
    ///<summary>
    ///  返回 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  具有指定名称中使用布尔型来指示是否忽略大小写。
    ///</summary>
    ///  <param name="name">
    ///  名称 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  若要从集合中返回。
    ///</param>
    ///  <param name="ignoreCase"><see langword="true" />
    ///  如果您想要忽略的属性名称; 的大小写否则为 <see langword="false" />
    ///  。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  具有指定名称或 <see langword="null" />
    ///  如果属性不存在。
    ///</returns>
    function Find(name: string; ignoreCase: Boolean): DNPropertyDescriptor;
    ///<summary>
    ///  添加 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  到集合中指定的索引号。
    ///</summary>
    ///  <param name="index">
    ///  在其中添加索引 <paramref name="value" />
    ///  到集合的参数。
    ///</param>
    ///  <param name="value">
    ///  要添加到集合中的 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  。
    ///</param>
    ///<exception cref="T:System.NotSupportedException">
    ///  该集合是只读的。
    ///</exception>
    procedure Insert(index: Int32; value: DNPropertyDescriptor);
    ///<summary>
    ///  删除 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  集合中的指定索引处。
    ///</summary>
    ///  <param name="index">
    ///  索引 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  若要从集合中移除。
    ///</param>
    ///<exception cref="T:System.NotSupportedException">
    ///  该集合是只读的。
    ///</exception>
    procedure RemoveAt(index: Int32);
    ///<summary>
    ///  对此集合的成员使用默认排序，对于此集合，通常为字母顺序排序。
    ///</summary>
    ///<returns>
    ///  一个新 <see cref="T:System.ComponentModel.PropertyDescriptorCollection" />
    ///  ，其中包含已排序 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  对象。
    ///</returns>
    function Sort: DNPropertyDescriptorCollection; overload;
    ///<summary>
    ///  对此集合的成员进行排序。
    ///  指定的顺序是首先应用，然后为此集合，通常为字母顺序的默认排序。
    ///</summary>
    ///  <param name="names">
    ///  一个用于描述的排序顺序的字符串数组 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  此集合中的对象。
    ///</param>
    ///<returns>
    ///  一个新 <see cref="T:System.ComponentModel.PropertyDescriptorCollection" />
    ///  ，其中包含已排序 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  对象。
    ///</returns>
    function Sort(names: TArray<string>): DNPropertyDescriptorCollection; overload;
    ///<summary>
    ///  对此集合的成员进行排序。
    ///  指定的顺序首先应用，然后使用指定的排序 <see cref="T:System.Collections.IComparer" />
    ///  。
    ///</summary>
    ///  <param name="names">
    ///  一个用于描述的排序顺序的字符串数组 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  此集合中的对象。
    ///</param>
    ///  <param name="comparer">
    ///  用于进行排序的比较器 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  此集合中的对象。
    ///</param>
    ///<returns>
    ///  一个新 <see cref="T:System.ComponentModel.PropertyDescriptorCollection" />
    ///  ，其中包含已排序 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  对象。
    ///</returns>
    function Sort(names: TArray<string>; comparer: DDN.mscorlib.DNIComparer): DNPropertyDescriptorCollection; overload;
    ///<summary>
    ///  此集合中，使用指定的成员进行排序 <see cref="T:System.Collections.IComparer" />
    ///  。
    ///</summary>
    ///  <param name="comparer">
    ///  用于进行排序的比较器 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  此集合中的对象。
    ///</param>
    ///<returns>
    ///  一个新 <see cref="T:System.ComponentModel.PropertyDescriptorCollection" />
    ///  ，其中包含已排序 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  对象。
    ///</returns>
    function Sort(comparer: DDN.mscorlib.DNIComparer): DNPropertyDescriptorCollection; overload;
    ///<summary>
    ///  返回集合中是否包含给定 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  。
    ///</summary>
    ///  <param name="value">
    ///  要在集合中查找的 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果集合包含给定 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function &Contains(value: DNPropertyDescriptor): Boolean;
    ///<summary>
    ///  返回的索引给定 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  。
    ///</summary>
    ///  <param name="value"><see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  要返回的索引。
    ///</param>
    ///<returns>
    ///  索引的给定 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  。
    ///</returns>
    function IndexOf(value: DNPropertyDescriptor): Int32;
    ///<summary>
    ///  从集合中移除指定的 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  。
    ///</summary>
    ///  <param name="value">
    ///  要从该集合中移除的 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  。
    ///</param>
    ///<exception cref="T:System.NotSupportedException">
    ///  该集合是只读的。
    ///</exception>
    procedure Remove(value: DNPropertyDescriptor);
    ///<summary>
    ///  返回此类的枚举数。
    ///</summary>
    ///<returns>
    ///  类型的枚举数 <see cref="T:System.Collections.IEnumerator" />
    ///  。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取集合中的属性说明符的数目。
    ///</summary>
    ///<returns>
    ///  集合中的属性说明符的数目。
    ///</returns>
    property Count: Int32 read get_Count;
    property Item[index: Int32]: DNPropertyDescriptor read get_Item; default;
    property Item[name: string]: DNPropertyDescriptor read get_Item; default;
  end;

  TDNPropertyDescriptorCollection = class(TDNGenericImport<DNPropertyDescriptorCollectionClass, DNPropertyDescriptorCollection>) end;

  //-------------namespace: System.ComponentModel----------------
  DNTypeConverterClass = interface(DDN.mscorlib.DNObjectClass)
  ['{8D2BD4DC-2859-5F29-A55C-88C9804C1E73}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.ComponentModel.TypeConverter" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNTypeConverter;

  end;

  ///<summary>
  ///  提供了一种统一的方法将类型的值转换为其他类型，以及用于访问标准值和子属性。
  ///</summary>
  [DNTypeName('System.ComponentModel.TypeConverter')]
  DNTypeConverter = interface(DDN.mscorlib.DNObject)
  ['{75992C48-BF7A-3B44-AC68-A946CFFDB2BF}']
  { methods } 

    ///<summary>
    ///  返回此转换器是否可以将给定类型的对象转换为此转换器的类型。
    ///</summary>
    ///  <param name="sourceType">
    ///  一个 <see cref="T:System.Type" />
    ///  ，它表示您想要将从转换的类型。
    ///</param>
    ///<returns>
    ///  如果该转换器能够执行转换，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function CanConvertFrom(sourceType: DDN.mscorlib.DNType): Boolean; overload;
    ///<summary>
    ///  返回该转换器是否可以使用指定上下文将给定类型的对象转换为此转换器的类型。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="sourceType">
    ///  一个 <see cref="T:System.Type" />
    ///  ，它表示您想要将从转换的类型。
    ///</param>
    ///<returns>
    ///  如果该转换器能够执行转换，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function CanConvertFrom(context: DNITypeDescriptorContext; sourceType: DDN.mscorlib.DNType): Boolean; overload;
    ///<summary>
    ///  返回此转换器是否可以将对象转换为指定的类型。
    ///</summary>
    ///  <param name="destinationType">
    ///  一个 <see cref="T:System.Type" />
    ///  ，表示你希望转换为的类型。
    ///</param>
    ///<returns>
    ///  如果该转换器能够执行转换，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function CanConvertTo(destinationType: DDN.mscorlib.DNType): Boolean; overload;
    ///<summary>
    ///  返回此转换器能否使用指定上下文将对象转换为指定类型。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="destinationType">
    ///  一个 <see cref="T:System.Type" />
    ///  ，表示你希望转换为的类型。
    ///</param>
    ///<returns>
    ///  如果该转换器能够执行转换，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function CanConvertTo(context: DNITypeDescriptorContext; destinationType: DDN.mscorlib.DNType): Boolean; overload;
    ///<summary>
    ///  将给定的值转换为此转换器的类型。
    ///</summary>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertFrom(value: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  使用指定的上下文和区域性信息将给定对象转换为此转换器的类型。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="culture"><see cref="T:System.Globalization.CultureInfo" />
    ///  要用作当前区域性。
    ///</param>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertFrom(context: DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  将给定的字符串转换为此转换器，使用固定区域性的类型。
    ///</summary>
    ///  <param name="text">
    ///  要转换的 <see cref="T:System.String" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的文本。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertFromInvariantString(text: string): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  将给定的字符串转换为此转换器，使用固定区域性和指定的上下文的类型。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="text">
    ///  要转换的 <see cref="T:System.String" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的文本。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertFromInvariantString(context: DNITypeDescriptorContext; text: string): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  将指定的文本转换为一个对象。
    ///</summary>
    ///  <param name="text">
    ///  要转换的对象文本表示。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的文本。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  无法将字符串转换为适当的对象。
    ///</exception>
    function ConvertFromString(text: string): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  将给定的文本转换为一个对象，使用指定的上下文。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="text">
    ///  要转换的 <see cref="T:System.String" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的文本。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertFromString(context: DNITypeDescriptorContext; text: string): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  将给定的文本转换为一个对象，使用指定的上下文和区域性信息。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="culture"><see cref="T:System.Globalization.CultureInfo" />
    ///  。
    ///  如果传递 <see langword="null" />
    ///  ，则采用当前区域性。
    ///</param>
    ///  <param name="text">
    ///  要转换的 <see cref="T:System.String" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的文本。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertFromString(context: DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; text: string): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  将给定的值对象转换为指定的类型使用的参数。
    ///</summary>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///  <param name="destinationType"><see cref="T:System.Type" />
    ///  转换 <paramref name="value" />
    ///  参数。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Object" />
    ///  ，它表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="destinationType" />
    ///  参数为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertTo(value: DDN.mscorlib.DNObject; destinationType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  使用指定的上下文和区域性信息将给定值对象转换为指定的类型。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="culture"><see cref="T:System.Globalization.CultureInfo" />
    ///  。
    ///  如果传递 <see langword="null" />
    ///  ，则采用当前区域性。
    ///</param>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///  <param name="destinationType"><see cref="T:System.Type" />
    ///  转换 <paramref name="value" />
    ///  参数。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Object" />
    ///  ，它表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="destinationType" />
    ///  参数为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertTo(context: DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject; destinationType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  将指定的值转换为区域性不变的字符串表示形式。
    ///</summary>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertToInvariantString(value: DDN.mscorlib.DNObject): string; overload;
    ///<summary>
    ///  将指定的值转换为区域性不变的字符串表示形式，使用指定的上下文。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertToInvariantString(context: DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): string; overload;
    ///<summary>
    ///  将指定的值转换为字符串表示形式。
    ///</summary>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertToString(value: DDN.mscorlib.DNObject): string; overload;
    ///<summary>
    ///  将给定的值转换为字符串表示形式，并使用给定的上下文。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertToString(context: DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): string; overload;
    ///<summary>
    ///  将给定的值转换为字符串表示形式，使用指定的上下文和区域性信息。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="culture"><see cref="T:System.Globalization.CultureInfo" />
    ///  。
    ///  如果传递 <see langword="null" />
    ///  ，则采用当前区域性。
    ///</param>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertToString(context: DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject): string; overload;
    ///<summary>
    ///  重新创建 <see cref="T:System.Object" />
    ///  对象给定的一组属性值。
    ///</summary>
    ///  <param name="propertyValues"><see cref="T:System.Collections.IDictionary" />
    ///  表示新属性值的字典。
    ///</param>
    ///<returns>
    ///  如果表示给定 <see cref="T:System.Collections.IDictionary" />
    ///  ，则为 <see cref="T:System.Object" />
    ///  ，或如果无法创建对象，则为 <see langword="null" />
    ///  。
    ///  此方法始终返回 <see langword="null" />
    ///  。
    ///</returns>
    function CreateInstance(propertyValues: DDN.mscorlib.DNIDictionary): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  给定该对象的一组属性值，使用指定上下文创建与此 <see cref="T:System.ComponentModel.TypeConverter" />
    ///  相关联的类型的实例。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="propertyValues">
    ///  新属性值的 <see cref="T:System.Collections.IDictionary" />
    ///  。
    ///</param>
    ///<returns>
    ///  如果表示给定 <see cref="T:System.Collections.IDictionary" />
    ///  ，则为 <see cref="T:System.Object" />
    ///  ，或如果无法创建对象，则为 <see langword="null" />
    ///  。
    ///  此方法始终返回 <see langword="null" />
    ///  。
    ///</returns>
    function CreateInstance(context: DNITypeDescriptorContext; propertyValues: DDN.mscorlib.DNIDictionary): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  返回更改此对象上的某个值是否要求对调用 <see cref="M:System.ComponentModel.TypeConverter.CreateInstance(System.Collections.IDictionary)" />
    ///  方法来创建一个新值。
    ///</summary>
    ///<returns>
    ///  如果更改此对象上的某属性需要调用 <see langword="true" />
    ///  以创建新值，则为 <see cref="M:System.ComponentModel.TypeConverter.CreateInstance(System.Collections.IDictionary)" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function GetCreateInstanceSupported: Boolean; overload;
    ///<summary>
    ///  返回更改此对象上的某个值是否要求对调用 <see cref="M:System.ComponentModel.TypeConverter.CreateInstance(System.Collections.IDictionary)" />
    ///  若要创建一个新值，使用指定的上下文。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///<returns>
    ///  如果更改此对象上的某属性需要调用 <see langword="true" />
    ///  以创建新值，则为 <see cref="M:System.ComponentModel.TypeConverter.CreateInstance(System.Collections.IDictionary)" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function GetCreateInstanceSupported(context: DNITypeDescriptorContext): Boolean; overload;
    ///<summary>
    ///  返回由值参数指定的数组类型的属性集合。
    ///</summary>
    ///  <param name="value">
    ///  一个 <see cref="T:System.Object" />
    ///  ，它指定要为其获取属性的数组类型。
    ///</param>
    ///<returns>
    ///  具有为此数据类型公开的属性的 <see cref="T:System.ComponentModel.PropertyDescriptorCollection" />
    ///  ，或者，如果没有属性，则为 <see langword="null" />
    ///  。
    ///</returns>
    function GetProperties(value: DDN.mscorlib.DNObject): DNPropertyDescriptorCollection; overload;
    ///<summary>
    ///  使用指定的上下文和特性返回由该值参数指定的数组类型的属性集合。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="value">
    ///  一个 <see cref="T:System.Object" />
    ///  ，它指定要为其获取属性的数组类型。
    ///</param>
    ///  <param name="attributes">
    ///  用作筛选器的 <see cref="T:System.Attribute" />
    ///  类型数组。
    ///</param>
    ///<returns>
    ///  具有为此数据类型公开的属性的 <see cref="T:System.ComponentModel.PropertyDescriptorCollection" />
    ///  ，或者，如果没有属性，则为 <see langword="null" />
    ///  。
    ///</returns>
    function GetProperties(context: DNITypeDescriptorContext; value: DDN.mscorlib.DNObject; attributes: TArray<DDN.mscorlib.DNAttribute>): DNPropertyDescriptorCollection; overload;
    ///<summary>
    ///  返回此对象是否支持属性。
    ///</summary>
    ///<returns>
    ///  如果应调用 <see langword="true" />
    ///  来查找此对象的属性，则为 <see cref="M:System.ComponentModel.TypeConverter.GetProperties(System.Object)" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function GetPropertiesSupported: Boolean; overload;
    ///<summary>
    ///  通过使用指定的上下文，返回此对象是否支持属性。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///<returns>
    ///  如果应调用 <see langword="true" />
    ///  来查找此对象的属性，则为 <see cref="M:System.ComponentModel.TypeConverter.GetProperties(System.Object)" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function GetPropertiesSupported(context: DNITypeDescriptorContext): Boolean; overload;
    ///<summary>
    ///  从适用于此类型转换器的数据类型的默认上下文中返回的标准值的集合。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.ComponentModel.TypeConverter.StandardValuesCollection" />
    ///  包含一组标准的有效的值或 <see langword="null" />
    ///  如果数据类型不支持标准值集。
    ///</returns>
    function GetStandardValues: DDN.mscorlib.DNICollection; overload;
    ///<summary>
    ///  当与格式上下文一起提供时，返回此类型转换器设计用于的数据类型的标准值集合。
    ///</summary>
    ///  <param name="context">
    ///  提供格式上下文的 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，可用来提取有关从中调用此转换器的环境的附加信息。
    ///  此参数或其属性可以为 <see langword="null" />
    ///  。
    ///</param>
    ///<returns>
    ///  包含标准有效值集的 <see cref="T:System.ComponentModel.TypeConverter.StandardValuesCollection" />
    ///  ；如果数据类型不支持标准值集，则为 <see langword="null" />
    ///  。
    ///</returns>
    function GetStandardValues(context: DNITypeDescriptorContext): DNTypeConverter_StandardValuesCollection; overload;
    ///<summary>
    ///  返回从 <see cref="M:System.ComponentModel.TypeConverter.GetStandardValues" />
    ///  返回的标准值的集合是否为独占列表。
    ///</summary>
    ///<returns>
    ///  如果从 <see langword="true" />
    ///  返回的 <see cref="T:System.ComponentModel.TypeConverter.StandardValuesCollection" />
    ///  是可能值的穷举列表，则为 <see cref="M:System.ComponentModel.TypeConverter.GetStandardValues" />
    ///  ；如果还可能有其他值，则为 <see langword="false" />
    ///  。
    ///</returns>
    function GetStandardValuesExclusive: Boolean; overload;
    ///<summary>
    ///  使用指定的上下文返回从 <see cref="M:System.ComponentModel.TypeConverter.GetStandardValues" />
    ///  返回的标准值的集合是否为可能值的独占列表。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///<returns>
    ///  如果从 <see langword="true" />
    ///  返回的 <see cref="T:System.ComponentModel.TypeConverter.StandardValuesCollection" />
    ///  是可能值的穷举列表，则为 <see cref="M:System.ComponentModel.TypeConverter.GetStandardValues" />
    ///  ；如果还可能有其他值，则为 <see langword="false" />
    ///  。
    ///</returns>
    function GetStandardValuesExclusive(context: DNITypeDescriptorContext): Boolean; overload;
    ///<summary>
    ///  返回此对象是否支持可以从列表中选取的标准值集。
    ///</summary>
    ///<returns>
    ///  如果应调用 <see langword="true" />
    ///  来查找对象支持的一组公共值，则为 <see cref="M:System.ComponentModel.TypeConverter.GetStandardValues" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function GetStandardValuesSupported: Boolean; overload;
    ///<summary>
    ///  使用指定的上下文返回此对象是否支持可以从列表中选取的标准值集。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///<returns>
    ///  如果应调用 <see langword="true" />
    ///  来查找对象支持的一组公共值，则为 <see cref="M:System.ComponentModel.TypeConverter.GetStandardValues" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function GetStandardValuesSupported(context: DNITypeDescriptorContext): Boolean; overload;
    ///<summary>
    ///  返回给定的值的对象是否对此类型有效。
    ///</summary>
    ///  <param name="value">
    ///  要测试其有效性的对象。
    ///</param>
    ///<returns>
    ///  如果指定的值对此对象有效，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsValid(value: DDN.mscorlib.DNObject): Boolean; overload;
    ///<summary>
    ///  返回给定的值对象是否对此类型和对指定的上下文有效。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="value">
    ///  要测试其有效性的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns>
    ///  如果指定的值对此对象有效，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsValid(context: DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): Boolean; overload;
    ///<summary>
    ///  返回由值参数，使用指定的上下文中指定的数组的类型的属性的集合。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="value">
    ///  一个 <see cref="T:System.Object" />
    ///  ，它指定要为其获取属性的数组类型。
    ///</param>
    ///<returns>
    ///  具有为此数据类型公开的属性的 <see cref="T:System.ComponentModel.PropertyDescriptorCollection" />
    ///  ，或者，如果没有属性，则为 <see langword="null" />
    ///  。
    ///</returns>
    function GetProperties(context: DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): DNPropertyDescriptorCollection; overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNTypeConverter = class(TDNGenericImport<DNTypeConverterClass, DNTypeConverter>) end;

  //-------------namespace: System.ComponentModel----------------
  DNTypeConverter_StandardValuesCollectionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{6E92DC87-B137-5B6A-A9E1-3D63BC181DEF}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.ComponentModel.TypeConverter.StandardValuesCollection" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="values"><see cref="T:System.Collections.ICollection" />
    ///  ，它表示要放入集合中的对象。
    ///</param>
    {class} function init(values: DDN.mscorlib.DNICollection): DNTypeConverter_StandardValuesCollection;

  end;

  ///<summary>
  ///  表示值的集合。
  ///</summary>
  [DNTypeName('System.ComponentModel.TypeConverter+StandardValuesCollection')]
  DNTypeConverter_StandardValuesCollection = interface(DDN.mscorlib.DNObject)
  ['{1B3A67B8-8364-3317-BA09-4C7600D293ED}']
  { getters & setters } 

    function get_Count: Int32;
    function get_Item(index: Int32): DDN.mscorlib.DNObject;

  { methods } 

    ///<summary>
    ///  将此集合的内容复制到数组。
    ///</summary>
    ///  <param name="array"><see cref="T:System.Array" />
    ///  ，它表示要复制到数组。
    ///</param>
    ///  <param name="index">
    ///  从其开始的索引。
    ///</param>
    procedure CopyTo(&array: DDN.mscorlib.DNArray; index: Int32);
    ///<summary>
    ///  返回该集合的枚举数。
    ///</summary>
    ///<returns>
    ///  类型的枚举数 <see cref="T:System.Collections.IEnumerator" />
    ///  。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取集合中的对象数。
    ///</summary>
    ///<returns>
    ///  集合中的对象数。
    ///</returns>
    property Count: Int32 read get_Count;
    property Item[index: Int32]: DDN.mscorlib.DNObject read get_Item; default;
  end;

  TDNTypeConverter_StandardValuesCollection = class(TDNGenericImport<DNTypeConverter_StandardValuesCollectionClass, DNTypeConverter_StandardValuesCollection>) end;

  //-------------namespace: System.ComponentModel----------------
  DNInt32ConverterClass = interface(DNObjectClass)
  ['{C6CD9AC2-C023-51CF-A4AE-CD6387682389}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.ComponentModel.Int32Converter" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNInt32Converter;

  end;

  ///<summary>
  ///  提供用于在 32 位有符号整数对象与其他表示形式之间实现相互转换的类型转换器。
  ///</summary>
  [DNTypeName('System.ComponentModel.Int32Converter')]
  DNInt32Converter = interface(DNObject)
  ['{C1336F54-F4A4-3620-99D5-61EEF7CB811F}']
  { methods } 

    ///<summary>
    ///  将给定的对象转换为转换器的本机类型。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="culture">
    ///  一个 <see cref="T:System.Globalization.CultureInfo" />
    ///  ，指定用于表示该数字的区域性。
    ///</param>
    ///  <param name="value">
    ///  要转换的对象。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Object" />
    ///  ，它表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.Exception"><paramref name="value" />
    ///  不是有效的值为目标类型。
    ///</exception><exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertFrom(context: DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  确定是否此转换器可以将给定的源类型的对象转换为该转换器的本机类型。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="sourceType">
    ///  一个 <see cref="T:System.Type" />
    ///  表示想要转换的类型。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果该转换器能够执行该操作;否则为 <see langword="false" />
    ///  。
    ///</returns>
    function CanConvertFrom(context: DNITypeDescriptorContext; sourceType: DDN.mscorlib.DNType): Boolean; overload;
    ///<summary>
    ///  将指定的对象转换为另一种类型。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="culture">
    ///  一个 <see cref="T:System.Globalization.CultureInfo" />
    ///  ，指定用于表示该数字的区域性。
    ///</param>
    ///  <param name="value">
    ///  要转换的对象。
    ///</param>
    ///  <param name="destinationType">
    ///  对象要转换为的类型。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Object" />
    ///  ，它表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="destinationType" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertTo(context: DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject; destinationType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  返回一个值，该值指示此转换器是否可以将对象转换为给定的目标类型使用的上下文。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="t">
    ///  一个 <see cref="T:System.Type" />
    ///  ，表示要转换的类型。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果该转换器能够执行该操作;否则为 <see langword="false" />
    ///  。
    ///</returns>
    function CanConvertTo(context: DNITypeDescriptorContext; t: DDN.mscorlib.DNType): Boolean; overload;
    function CanConvertFrom(sourceType: DDN.mscorlib.DNType): Boolean; overload;
    function CanConvertTo(destinationType: DDN.mscorlib.DNType): Boolean; overload;
    function ConvertFrom(value: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
    function ConvertFromInvariantString(text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromInvariantString(context: DNITypeDescriptorContext; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(context: DNITypeDescriptorContext; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertFromString(context: DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; text: string): DDN.mscorlib.DNObject; overload;
    function ConvertTo(value: DDN.mscorlib.DNObject; destinationType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject; overload;
    function ConvertToInvariantString(value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToInvariantString(context: DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(context: DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): string; overload;
    function ConvertToString(context: DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject): string; overload;
    function CreateInstance(propertyValues: DDN.mscorlib.DNIDictionary): DDN.mscorlib.DNObject; overload;
    function CreateInstance(context: DNITypeDescriptorContext; propertyValues: DDN.mscorlib.DNIDictionary): DDN.mscorlib.DNObject; overload;
    function GetCreateInstanceSupported: Boolean; overload;
    function GetCreateInstanceSupported(context: DNITypeDescriptorContext): Boolean; overload;
    function GetProperties(value: DDN.mscorlib.DNObject): DNPropertyDescriptorCollection; overload;
    function GetProperties(context: DNITypeDescriptorContext; value: DDN.mscorlib.DNObject; attributes: TArray<DDN.mscorlib.DNAttribute>): DNPropertyDescriptorCollection; overload;
    function GetPropertiesSupported: Boolean; overload;
    function GetPropertiesSupported(context: DNITypeDescriptorContext): Boolean; overload;
    function GetStandardValues: DDN.mscorlib.DNICollection; overload;
    function GetStandardValues(context: DNITypeDescriptorContext): DNTypeConverter_StandardValuesCollection; overload;
    function GetStandardValuesExclusive: Boolean; overload;
    function GetStandardValuesExclusive(context: DNITypeDescriptorContext): Boolean; overload;
    function GetStandardValuesSupported: Boolean; overload;
    function GetStandardValuesSupported(context: DNITypeDescriptorContext): Boolean; overload;
    function IsValid(value: DDN.mscorlib.DNObject): Boolean; overload;
    function IsValid(context: DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): Boolean; overload;
    function GetProperties(context: DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): DNPropertyDescriptorCollection; overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNInt32Converter = class(TDNGenericImport<DNInt32ConverterClass, DNInt32Converter>) end;

  //-------------namespace: System.ComponentModel----------------
  DNExpandableObjectConverterClass = interface(DNTypeConverterClass)
  ['{77E31976-5482-594A-B472-58E03F8310F5}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.ComponentModel.ExpandableObjectConverter" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNExpandableObjectConverter;

  end;

  ///<summary>
  ///  提供可扩展对象和其他各种表示形式之间来回进行转换的类型转换器。
  ///</summary>
  [DNTypeName('System.ComponentModel.ExpandableObjectConverter')]
  DNExpandableObjectConverter = interface(DNTypeConverter)
  ['{D125D908-FA6D-3DB2-8D73-6ACF0BE79672}']
  { methods } 

    ///<summary>
    ///  获取由值参数指定的对象类型的属性集合。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="value"><see cref="T:System.Object" />
    ///  ，它指定要获取其属性的对象类型。
    ///</param>
    ///  <param name="attributes">
    ///  类型的数组 <see cref="T:System.Attribute" />
    ///  ，将用作筛选器。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.ComponentModel.PropertyDescriptorCollection" />
    ///  与组件公开的属性或 <see langword="null" />
    ///  是否存在任何属性。
    ///</returns>
    function GetProperties(context: DNITypeDescriptorContext; value: DDN.mscorlib.DNObject; attributes: TArray<DDN.mscorlib.DNAttribute>): DNPropertyDescriptorCollection; overload;
    ///<summary>
    ///  获取一个值，该值指示此对象是否支持使用指定的上下文属性。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///<returns><see langword="true" />
    ///  因为 <see cref="M:System.ComponentModel.TypeConverter.GetProperties(System.Object)" />
    ///  应调用来查找此对象的属性。
    ///  此方法从不返回 <see langword="false" />
    ///  。
    ///</returns>
    function GetPropertiesSupported(context: DNITypeDescriptorContext): Boolean; overload;
    ///<summary>
    ///  返回此转换器是否可以将给定类型的对象转换为此转换器的类型。
    ///</summary>
    ///  <param name="sourceType">
    ///  一个 <see cref="T:System.Type" />
    ///  ，它表示您想要将从转换的类型。
    ///</param>
    ///<returns>
    ///  如果该转换器能够执行转换，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function CanConvertFrom(sourceType: DDN.mscorlib.DNType): Boolean; overload;
    ///<summary>
    ///  返回该转换器是否可以使用指定上下文将给定类型的对象转换为此转换器的类型。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="sourceType">
    ///  一个 <see cref="T:System.Type" />
    ///  ，它表示您想要将从转换的类型。
    ///</param>
    ///<returns>
    ///  如果该转换器能够执行转换，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function CanConvertFrom(context: DNITypeDescriptorContext; sourceType: DDN.mscorlib.DNType): Boolean; overload;
    ///<summary>
    ///  返回此转换器是否可以将对象转换为指定的类型。
    ///</summary>
    ///  <param name="destinationType">
    ///  一个 <see cref="T:System.Type" />
    ///  ，表示你希望转换为的类型。
    ///</param>
    ///<returns>
    ///  如果该转换器能够执行转换，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function CanConvertTo(destinationType: DDN.mscorlib.DNType): Boolean; overload;
    ///<summary>
    ///  返回此转换器能否使用指定上下文将对象转换为指定类型。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="destinationType">
    ///  一个 <see cref="T:System.Type" />
    ///  ，表示你希望转换为的类型。
    ///</param>
    ///<returns>
    ///  如果该转换器能够执行转换，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function CanConvertTo(context: DNITypeDescriptorContext; destinationType: DDN.mscorlib.DNType): Boolean; overload;
    ///<summary>
    ///  将给定的值转换为此转换器的类型。
    ///</summary>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertFrom(value: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  使用指定的上下文和区域性信息将给定对象转换为此转换器的类型。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="culture"><see cref="T:System.Globalization.CultureInfo" />
    ///  要用作当前区域性。
    ///</param>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertFrom(context: DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  将给定的字符串转换为此转换器，使用固定区域性的类型。
    ///</summary>
    ///  <param name="text">
    ///  要转换的 <see cref="T:System.String" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的文本。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertFromInvariantString(text: string): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  将给定的字符串转换为此转换器，使用固定区域性和指定的上下文的类型。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="text">
    ///  要转换的 <see cref="T:System.String" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的文本。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertFromInvariantString(context: DNITypeDescriptorContext; text: string): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  将指定的文本转换为一个对象。
    ///</summary>
    ///  <param name="text">
    ///  要转换的对象文本表示。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的文本。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  无法将字符串转换为适当的对象。
    ///</exception>
    function ConvertFromString(text: string): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  将给定的文本转换为一个对象，使用指定的上下文。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="text">
    ///  要转换的 <see cref="T:System.String" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的文本。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertFromString(context: DNITypeDescriptorContext; text: string): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  将给定的文本转换为一个对象，使用指定的上下文和区域性信息。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="culture"><see cref="T:System.Globalization.CultureInfo" />
    ///  。
    ///  如果传递 <see langword="null" />
    ///  ，则采用当前区域性。
    ///</param>
    ///  <param name="text">
    ///  要转换的 <see cref="T:System.String" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的文本。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertFromString(context: DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; text: string): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  将给定的值对象转换为指定的类型使用的参数。
    ///</summary>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///  <param name="destinationType"><see cref="T:System.Type" />
    ///  转换 <paramref name="value" />
    ///  参数。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Object" />
    ///  ，它表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="destinationType" />
    ///  参数为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertTo(value: DDN.mscorlib.DNObject; destinationType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  使用指定的上下文和区域性信息将给定值对象转换为指定的类型。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="culture"><see cref="T:System.Globalization.CultureInfo" />
    ///  。
    ///  如果传递 <see langword="null" />
    ///  ，则采用当前区域性。
    ///</param>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///  <param name="destinationType"><see cref="T:System.Type" />
    ///  转换 <paramref name="value" />
    ///  参数。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Object" />
    ///  ，它表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="destinationType" />
    ///  参数为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertTo(context: DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject; destinationType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  将指定的值转换为区域性不变的字符串表示形式。
    ///</summary>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertToInvariantString(value: DDN.mscorlib.DNObject): string; overload;
    ///<summary>
    ///  将指定的值转换为区域性不变的字符串表示形式，使用指定的上下文。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertToInvariantString(context: DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): string; overload;
    ///<summary>
    ///  将指定的值转换为字符串表示形式。
    ///</summary>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertToString(value: DDN.mscorlib.DNObject): string; overload;
    ///<summary>
    ///  将给定的值转换为字符串表示形式，并使用给定的上下文。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertToString(context: DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): string; overload;
    ///<summary>
    ///  将给定的值转换为字符串表示形式，使用指定的上下文和区域性信息。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="culture"><see cref="T:System.Globalization.CultureInfo" />
    ///  。
    ///  如果传递 <see langword="null" />
    ///  ，则采用当前区域性。
    ///</param>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertToString(context: DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject): string; overload;
    ///<summary>
    ///  重新创建 <see cref="T:System.Object" />
    ///  对象给定的一组属性值。
    ///</summary>
    ///  <param name="propertyValues"><see cref="T:System.Collections.IDictionary" />
    ///  表示新属性值的字典。
    ///</param>
    ///<returns>
    ///  如果表示给定 <see cref="T:System.Collections.IDictionary" />
    ///  ，则为 <see cref="T:System.Object" />
    ///  ，或如果无法创建对象，则为 <see langword="null" />
    ///  。
    ///  此方法始终返回 <see langword="null" />
    ///  。
    ///</returns>
    function CreateInstance(propertyValues: DDN.mscorlib.DNIDictionary): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  给定该对象的一组属性值，使用指定上下文创建与此 <see cref="T:System.ComponentModel.TypeConverter" />
    ///  相关联的类型的实例。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="propertyValues">
    ///  新属性值的 <see cref="T:System.Collections.IDictionary" />
    ///  。
    ///</param>
    ///<returns>
    ///  如果表示给定 <see cref="T:System.Collections.IDictionary" />
    ///  ，则为 <see cref="T:System.Object" />
    ///  ，或如果无法创建对象，则为 <see langword="null" />
    ///  。
    ///  此方法始终返回 <see langword="null" />
    ///  。
    ///</returns>
    function CreateInstance(context: DNITypeDescriptorContext; propertyValues: DDN.mscorlib.DNIDictionary): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  返回更改此对象上的某个值是否要求对调用 <see cref="M:System.ComponentModel.TypeConverter.CreateInstance(System.Collections.IDictionary)" />
    ///  方法来创建一个新值。
    ///</summary>
    ///<returns>
    ///  如果更改此对象上的某属性需要调用 <see langword="true" />
    ///  以创建新值，则为 <see cref="M:System.ComponentModel.TypeConverter.CreateInstance(System.Collections.IDictionary)" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function GetCreateInstanceSupported: Boolean; overload;
    ///<summary>
    ///  返回更改此对象上的某个值是否要求对调用 <see cref="M:System.ComponentModel.TypeConverter.CreateInstance(System.Collections.IDictionary)" />
    ///  若要创建一个新值，使用指定的上下文。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///<returns>
    ///  如果更改此对象上的某属性需要调用 <see langword="true" />
    ///  以创建新值，则为 <see cref="M:System.ComponentModel.TypeConverter.CreateInstance(System.Collections.IDictionary)" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function GetCreateInstanceSupported(context: DNITypeDescriptorContext): Boolean; overload;
    ///<summary>
    ///  返回由值参数指定的数组类型的属性集合。
    ///</summary>
    ///  <param name="value">
    ///  一个 <see cref="T:System.Object" />
    ///  ，它指定要为其获取属性的数组类型。
    ///</param>
    ///<returns>
    ///  具有为此数据类型公开的属性的 <see cref="T:System.ComponentModel.PropertyDescriptorCollection" />
    ///  ，或者，如果没有属性，则为 <see langword="null" />
    ///  。
    ///</returns>
    function GetProperties(value: DDN.mscorlib.DNObject): DNPropertyDescriptorCollection; overload;
    ///<summary>
    ///  返回此对象是否支持属性。
    ///</summary>
    ///<returns>
    ///  如果应调用 <see langword="true" />
    ///  来查找此对象的属性，则为 <see cref="M:System.ComponentModel.TypeConverter.GetProperties(System.Object)" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function GetPropertiesSupported: Boolean; overload;
    ///<summary>
    ///  从适用于此类型转换器的数据类型的默认上下文中返回的标准值的集合。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.ComponentModel.TypeConverter.StandardValuesCollection" />
    ///  包含一组标准的有效的值或 <see langword="null" />
    ///  如果数据类型不支持标准值集。
    ///</returns>
    function GetStandardValues: DDN.mscorlib.DNICollection; overload;
    ///<summary>
    ///  当与格式上下文一起提供时，返回此类型转换器设计用于的数据类型的标准值集合。
    ///</summary>
    ///  <param name="context">
    ///  提供格式上下文的 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，可用来提取有关从中调用此转换器的环境的附加信息。
    ///  此参数或其属性可以为 <see langword="null" />
    ///  。
    ///</param>
    ///<returns>
    ///  包含标准有效值集的 <see cref="T:System.ComponentModel.TypeConverter.StandardValuesCollection" />
    ///  ；如果数据类型不支持标准值集，则为 <see langword="null" />
    ///  。
    ///</returns>
    function GetStandardValues(context: DNITypeDescriptorContext): DNTypeConverter_StandardValuesCollection; overload;
    ///<summary>
    ///  返回从 <see cref="M:System.ComponentModel.TypeConverter.GetStandardValues" />
    ///  返回的标准值的集合是否为独占列表。
    ///</summary>
    ///<returns>
    ///  如果从 <see langword="true" />
    ///  返回的 <see cref="T:System.ComponentModel.TypeConverter.StandardValuesCollection" />
    ///  是可能值的穷举列表，则为 <see cref="M:System.ComponentModel.TypeConverter.GetStandardValues" />
    ///  ；如果还可能有其他值，则为 <see langword="false" />
    ///  。
    ///</returns>
    function GetStandardValuesExclusive: Boolean; overload;
    ///<summary>
    ///  使用指定的上下文返回从 <see cref="M:System.ComponentModel.TypeConverter.GetStandardValues" />
    ///  返回的标准值的集合是否为可能值的独占列表。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///<returns>
    ///  如果从 <see langword="true" />
    ///  返回的 <see cref="T:System.ComponentModel.TypeConverter.StandardValuesCollection" />
    ///  是可能值的穷举列表，则为 <see cref="M:System.ComponentModel.TypeConverter.GetStandardValues" />
    ///  ；如果还可能有其他值，则为 <see langword="false" />
    ///  。
    ///</returns>
    function GetStandardValuesExclusive(context: DNITypeDescriptorContext): Boolean; overload;
    ///<summary>
    ///  返回此对象是否支持可以从列表中选取的标准值集。
    ///</summary>
    ///<returns>
    ///  如果应调用 <see langword="true" />
    ///  来查找对象支持的一组公共值，则为 <see cref="M:System.ComponentModel.TypeConverter.GetStandardValues" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function GetStandardValuesSupported: Boolean; overload;
    ///<summary>
    ///  使用指定的上下文返回此对象是否支持可以从列表中选取的标准值集。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///<returns>
    ///  如果应调用 <see langword="true" />
    ///  来查找对象支持的一组公共值，则为 <see cref="M:System.ComponentModel.TypeConverter.GetStandardValues" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function GetStandardValuesSupported(context: DNITypeDescriptorContext): Boolean; overload;
    ///<summary>
    ///  返回给定的值的对象是否对此类型有效。
    ///</summary>
    ///  <param name="value">
    ///  要测试其有效性的对象。
    ///</param>
    ///<returns>
    ///  如果指定的值对此对象有效，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsValid(value: DDN.mscorlib.DNObject): Boolean; overload;
    ///<summary>
    ///  返回给定的值对象是否对此类型和对指定的上下文有效。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="value">
    ///  要测试其有效性的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns>
    ///  如果指定的值对此对象有效，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsValid(context: DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): Boolean; overload;
    ///<summary>
    ///  返回由值参数，使用指定的上下文中指定的数组的类型的属性的集合。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="value">
    ///  一个 <see cref="T:System.Object" />
    ///  ，它指定要为其获取属性的数组类型。
    ///</param>
    ///<returns>
    ///  具有为此数据类型公开的属性的 <see cref="T:System.ComponentModel.PropertyDescriptorCollection" />
    ///  ，或者，如果没有属性，则为 <see langword="null" />
    ///  。
    ///</returns>
    function GetProperties(context: DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): DNPropertyDescriptorCollection; overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNExpandableObjectConverter = class(TDNGenericImport<DNExpandableObjectConverterClass, DNExpandableObjectConverter>) end;

  //-------------namespace: System.ComponentModel----------------
  DNStringConverterClass = interface(DNTypeConverterClass)
  ['{7266C33F-5423-55C9-96CE-1630712D8112}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.ComponentModel.StringConverter" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNStringConverter;

  end;

  ///<summary>
  ///  提供用于在字符串对象与其他表示形式之间实现相互转换的类型转换器。
  ///</summary>
  [DNTypeName('System.ComponentModel.StringConverter')]
  DNStringConverter = interface(DNTypeConverter)
  ['{DD127DFC-8DDA-35BE-9F32-F9FC6C9185F8}']
  { methods } 

    ///<summary>
    ///  获取一个值，该值指示此转换器是否可以将给定的源类型的对象转换为使用指定的上下文的字符串。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="sourceType">
    ///  一个 <see cref="T:System.Type" />
    ///  ，表示您希望从转换的类型。
    ///</param>
    ///<returns>
    ///  如果该转换器能够执行转换，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function CanConvertFrom(context: DNITypeDescriptorContext; sourceType: DDN.mscorlib.DNType): Boolean; overload;
    ///<summary>
    ///  将指定的值转换为 <see cref="T:System.String" />
    ///  对象。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="culture">
    ///  要使用的 <see cref="T:System.Globalization.CultureInfo" />
    ///  。
    ///</param>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Object" />
    ///  ，它表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  无法执行转换。
    ///</exception>
    function ConvertFrom(context: DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  返回此转换器是否可以将给定类型的对象转换为此转换器的类型。
    ///</summary>
    ///  <param name="sourceType">
    ///  一个 <see cref="T:System.Type" />
    ///  ，它表示您想要将从转换的类型。
    ///</param>
    ///<returns>
    ///  如果该转换器能够执行转换，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function CanConvertFrom(sourceType: DDN.mscorlib.DNType): Boolean; overload;
    ///<summary>
    ///  返回此转换器是否可以将对象转换为指定的类型。
    ///</summary>
    ///  <param name="destinationType">
    ///  一个 <see cref="T:System.Type" />
    ///  ，表示你希望转换为的类型。
    ///</param>
    ///<returns>
    ///  如果该转换器能够执行转换，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function CanConvertTo(destinationType: DDN.mscorlib.DNType): Boolean; overload;
    ///<summary>
    ///  返回此转换器能否使用指定上下文将对象转换为指定类型。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="destinationType">
    ///  一个 <see cref="T:System.Type" />
    ///  ，表示你希望转换为的类型。
    ///</param>
    ///<returns>
    ///  如果该转换器能够执行转换，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function CanConvertTo(context: DNITypeDescriptorContext; destinationType: DDN.mscorlib.DNType): Boolean; overload;
    ///<summary>
    ///  将给定的值转换为此转换器的类型。
    ///</summary>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertFrom(value: DDN.mscorlib.DNObject): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  将给定的字符串转换为此转换器，使用固定区域性的类型。
    ///</summary>
    ///  <param name="text">
    ///  要转换的 <see cref="T:System.String" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的文本。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertFromInvariantString(text: string): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  将给定的字符串转换为此转换器，使用固定区域性和指定的上下文的类型。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="text">
    ///  要转换的 <see cref="T:System.String" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的文本。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertFromInvariantString(context: DNITypeDescriptorContext; text: string): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  将指定的文本转换为一个对象。
    ///</summary>
    ///  <param name="text">
    ///  要转换的对象文本表示。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的文本。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  无法将字符串转换为适当的对象。
    ///</exception>
    function ConvertFromString(text: string): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  将给定的文本转换为一个对象，使用指定的上下文。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="text">
    ///  要转换的 <see cref="T:System.String" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的文本。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertFromString(context: DNITypeDescriptorContext; text: string): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  将给定的文本转换为一个对象，使用指定的上下文和区域性信息。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="culture"><see cref="T:System.Globalization.CultureInfo" />
    ///  。
    ///  如果传递 <see langword="null" />
    ///  ，则采用当前区域性。
    ///</param>
    ///  <param name="text">
    ///  要转换的 <see cref="T:System.String" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的文本。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertFromString(context: DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; text: string): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  将给定的值对象转换为指定的类型使用的参数。
    ///</summary>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///  <param name="destinationType"><see cref="T:System.Type" />
    ///  转换 <paramref name="value" />
    ///  参数。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Object" />
    ///  ，它表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="destinationType" />
    ///  参数为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertTo(value: DDN.mscorlib.DNObject; destinationType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  使用指定的上下文和区域性信息将给定值对象转换为指定的类型。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="culture"><see cref="T:System.Globalization.CultureInfo" />
    ///  。
    ///  如果传递 <see langword="null" />
    ///  ，则采用当前区域性。
    ///</param>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///  <param name="destinationType"><see cref="T:System.Type" />
    ///  转换 <paramref name="value" />
    ///  参数。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Object" />
    ///  ，它表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="destinationType" />
    ///  参数为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertTo(context: DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject; destinationType: DDN.mscorlib.DNType): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  将指定的值转换为区域性不变的字符串表示形式。
    ///</summary>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertToInvariantString(value: DDN.mscorlib.DNObject): string; overload;
    ///<summary>
    ///  将指定的值转换为区域性不变的字符串表示形式，使用指定的上下文。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertToInvariantString(context: DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): string; overload;
    ///<summary>
    ///  将指定的值转换为字符串表示形式。
    ///</summary>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertToString(value: DDN.mscorlib.DNObject): string; overload;
    ///<summary>
    ///  将给定的值转换为字符串表示形式，并使用给定的上下文。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertToString(context: DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): string; overload;
    ///<summary>
    ///  将给定的值转换为字符串表示形式，使用指定的上下文和区域性信息。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="culture"><see cref="T:System.Globalization.CultureInfo" />
    ///  。
    ///  如果传递 <see langword="null" />
    ///  ，则采用当前区域性。
    ///</param>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示转换后的值。
    ///</returns>
    ///<exception cref="T:System.NotSupportedException">
    ///  不能执行转换。
    ///</exception>
    function ConvertToString(context: DNITypeDescriptorContext; culture: DDN.mscorlib.DNCultureInfo; value: DDN.mscorlib.DNObject): string; overload;
    ///<summary>
    ///  重新创建 <see cref="T:System.Object" />
    ///  对象给定的一组属性值。
    ///</summary>
    ///  <param name="propertyValues"><see cref="T:System.Collections.IDictionary" />
    ///  表示新属性值的字典。
    ///</param>
    ///<returns>
    ///  如果表示给定 <see cref="T:System.Collections.IDictionary" />
    ///  ，则为 <see cref="T:System.Object" />
    ///  ，或如果无法创建对象，则为 <see langword="null" />
    ///  。
    ///  此方法始终返回 <see langword="null" />
    ///  。
    ///</returns>
    function CreateInstance(propertyValues: DDN.mscorlib.DNIDictionary): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  给定该对象的一组属性值，使用指定上下文创建与此 <see cref="T:System.ComponentModel.TypeConverter" />
    ///  相关联的类型的实例。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="propertyValues">
    ///  新属性值的 <see cref="T:System.Collections.IDictionary" />
    ///  。
    ///</param>
    ///<returns>
    ///  如果表示给定 <see cref="T:System.Collections.IDictionary" />
    ///  ，则为 <see cref="T:System.Object" />
    ///  ，或如果无法创建对象，则为 <see langword="null" />
    ///  。
    ///  此方法始终返回 <see langword="null" />
    ///  。
    ///</returns>
    function CreateInstance(context: DNITypeDescriptorContext; propertyValues: DDN.mscorlib.DNIDictionary): DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  返回更改此对象上的某个值是否要求对调用 <see cref="M:System.ComponentModel.TypeConverter.CreateInstance(System.Collections.IDictionary)" />
    ///  方法来创建一个新值。
    ///</summary>
    ///<returns>
    ///  如果更改此对象上的某属性需要调用 <see langword="true" />
    ///  以创建新值，则为 <see cref="M:System.ComponentModel.TypeConverter.CreateInstance(System.Collections.IDictionary)" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function GetCreateInstanceSupported: Boolean; overload;
    ///<summary>
    ///  返回更改此对象上的某个值是否要求对调用 <see cref="M:System.ComponentModel.TypeConverter.CreateInstance(System.Collections.IDictionary)" />
    ///  若要创建一个新值，使用指定的上下文。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///<returns>
    ///  如果更改此对象上的某属性需要调用 <see langword="true" />
    ///  以创建新值，则为 <see cref="M:System.ComponentModel.TypeConverter.CreateInstance(System.Collections.IDictionary)" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function GetCreateInstanceSupported(context: DNITypeDescriptorContext): Boolean; overload;
    ///<summary>
    ///  返回由值参数指定的数组类型的属性集合。
    ///</summary>
    ///  <param name="value">
    ///  一个 <see cref="T:System.Object" />
    ///  ，它指定要为其获取属性的数组类型。
    ///</param>
    ///<returns>
    ///  具有为此数据类型公开的属性的 <see cref="T:System.ComponentModel.PropertyDescriptorCollection" />
    ///  ，或者，如果没有属性，则为 <see langword="null" />
    ///  。
    ///</returns>
    function GetProperties(value: DDN.mscorlib.DNObject): DNPropertyDescriptorCollection; overload;
    ///<summary>
    ///  使用指定的上下文和特性返回由该值参数指定的数组类型的属性集合。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="value">
    ///  一个 <see cref="T:System.Object" />
    ///  ，它指定要为其获取属性的数组类型。
    ///</param>
    ///  <param name="attributes">
    ///  用作筛选器的 <see cref="T:System.Attribute" />
    ///  类型数组。
    ///</param>
    ///<returns>
    ///  具有为此数据类型公开的属性的 <see cref="T:System.ComponentModel.PropertyDescriptorCollection" />
    ///  ，或者，如果没有属性，则为 <see langword="null" />
    ///  。
    ///</returns>
    function GetProperties(context: DNITypeDescriptorContext; value: DDN.mscorlib.DNObject; attributes: TArray<DDN.mscorlib.DNAttribute>): DNPropertyDescriptorCollection; overload;
    ///<summary>
    ///  返回此对象是否支持属性。
    ///</summary>
    ///<returns>
    ///  如果应调用 <see langword="true" />
    ///  来查找此对象的属性，则为 <see cref="M:System.ComponentModel.TypeConverter.GetProperties(System.Object)" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function GetPropertiesSupported: Boolean; overload;
    ///<summary>
    ///  通过使用指定的上下文，返回此对象是否支持属性。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///<returns>
    ///  如果应调用 <see langword="true" />
    ///  来查找此对象的属性，则为 <see cref="M:System.ComponentModel.TypeConverter.GetProperties(System.Object)" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function GetPropertiesSupported(context: DNITypeDescriptorContext): Boolean; overload;
    ///<summary>
    ///  从适用于此类型转换器的数据类型的默认上下文中返回的标准值的集合。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.ComponentModel.TypeConverter.StandardValuesCollection" />
    ///  包含一组标准的有效的值或 <see langword="null" />
    ///  如果数据类型不支持标准值集。
    ///</returns>
    function GetStandardValues: DDN.mscorlib.DNICollection; overload;
    ///<summary>
    ///  当与格式上下文一起提供时，返回此类型转换器设计用于的数据类型的标准值集合。
    ///</summary>
    ///  <param name="context">
    ///  提供格式上下文的 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，可用来提取有关从中调用此转换器的环境的附加信息。
    ///  此参数或其属性可以为 <see langword="null" />
    ///  。
    ///</param>
    ///<returns>
    ///  包含标准有效值集的 <see cref="T:System.ComponentModel.TypeConverter.StandardValuesCollection" />
    ///  ；如果数据类型不支持标准值集，则为 <see langword="null" />
    ///  。
    ///</returns>
    function GetStandardValues(context: DNITypeDescriptorContext): DNTypeConverter_StandardValuesCollection; overload;
    ///<summary>
    ///  返回从 <see cref="M:System.ComponentModel.TypeConverter.GetStandardValues" />
    ///  返回的标准值的集合是否为独占列表。
    ///</summary>
    ///<returns>
    ///  如果从 <see langword="true" />
    ///  返回的 <see cref="T:System.ComponentModel.TypeConverter.StandardValuesCollection" />
    ///  是可能值的穷举列表，则为 <see cref="M:System.ComponentModel.TypeConverter.GetStandardValues" />
    ///  ；如果还可能有其他值，则为 <see langword="false" />
    ///  。
    ///</returns>
    function GetStandardValuesExclusive: Boolean; overload;
    ///<summary>
    ///  使用指定的上下文返回从 <see cref="M:System.ComponentModel.TypeConverter.GetStandardValues" />
    ///  返回的标准值的集合是否为可能值的独占列表。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///<returns>
    ///  如果从 <see langword="true" />
    ///  返回的 <see cref="T:System.ComponentModel.TypeConverter.StandardValuesCollection" />
    ///  是可能值的穷举列表，则为 <see cref="M:System.ComponentModel.TypeConverter.GetStandardValues" />
    ///  ；如果还可能有其他值，则为 <see langword="false" />
    ///  。
    ///</returns>
    function GetStandardValuesExclusive(context: DNITypeDescriptorContext): Boolean; overload;
    ///<summary>
    ///  返回此对象是否支持可以从列表中选取的标准值集。
    ///</summary>
    ///<returns>
    ///  如果应调用 <see langword="true" />
    ///  来查找对象支持的一组公共值，则为 <see cref="M:System.ComponentModel.TypeConverter.GetStandardValues" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function GetStandardValuesSupported: Boolean; overload;
    ///<summary>
    ///  使用指定的上下文返回此对象是否支持可以从列表中选取的标准值集。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///<returns>
    ///  如果应调用 <see langword="true" />
    ///  来查找对象支持的一组公共值，则为 <see cref="M:System.ComponentModel.TypeConverter.GetStandardValues" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function GetStandardValuesSupported(context: DNITypeDescriptorContext): Boolean; overload;
    ///<summary>
    ///  返回给定的值的对象是否对此类型有效。
    ///</summary>
    ///  <param name="value">
    ///  要测试其有效性的对象。
    ///</param>
    ///<returns>
    ///  如果指定的值对此对象有效，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsValid(value: DDN.mscorlib.DNObject): Boolean; overload;
    ///<summary>
    ///  返回给定的值对象是否对此类型和对指定的上下文有效。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="value">
    ///  要测试其有效性的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns>
    ///  如果指定的值对此对象有效，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsValid(context: DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): Boolean; overload;
    ///<summary>
    ///  返回由值参数，使用指定的上下文中指定的数组的类型的属性的集合。
    ///</summary>
    ///  <param name="context">
    ///  一个 <see cref="T:System.ComponentModel.ITypeDescriptorContext" />
    ///  ，用于提供格式上下文。
    ///</param>
    ///  <param name="value">
    ///  一个 <see cref="T:System.Object" />
    ///  ，它指定要为其获取属性的数组类型。
    ///</param>
    ///<returns>
    ///  具有为此数据类型公开的属性的 <see cref="T:System.ComponentModel.PropertyDescriptorCollection" />
    ///  ，或者，如果没有属性，则为 <see langword="null" />
    ///  。
    ///</returns>
    function GetProperties(context: DNITypeDescriptorContext; value: DDN.mscorlib.DNObject): DNPropertyDescriptorCollection; overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNStringConverter = class(TDNGenericImport<DNStringConverterClass, DNStringConverter>) end;

  //-------------namespace: System.Configuration----------------
  DNConfigurationClass = interface(DDN.mscorlib.DNObjectClass)
  ['{072F76EE-89FD-550C-9CCD-337EEB048770}']
  end;

  ///<summary>
  ///  表示适用于特定计算机、 应用程序中或资源的配置文件。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.Configuration.Configuration')]
  DNConfiguration = interface(DDN.mscorlib.DNObject)
  ['{147BA60B-D0AD-3CCD-B6E0-0459B8E77A7F}']
  { getters & setters } 

    function get_AppSettings: DNAppSettingsSection;
    function get_ConnectionStrings: DNConnectionStringsSection;
    function get_FilePath: string;
    function get_HasFile: Boolean;
    function get_Locations: DNConfigurationLocationCollection;
    function get_EvaluationContext: DNContextInformation;
    function get_RootSectionGroup: DNConfigurationSectionGroup;
    function get_Sections: DNConfigurationSectionCollection;
    function get_SectionGroups: DNConfigurationSectionGroupCollection;
    function get_NamespaceDeclared: Boolean;
    procedure set_NamespaceDeclared(value: Boolean);
    function get_TargetFramework: DNFrameworkName;
    procedure set_TargetFramework(value: DNFrameworkName);

  { methods } 

    ///<summary>
    ///  返回指定的 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象。
    ///</summary>
    ///  <param name="sectionName">
    ///  指向要返回的部分的路径。
    ///</param>
    ///<returns>
    ///  指定 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象。
    ///</returns>
    function GetSection(sectionName: string): DNConfigurationSection;
    ///<summary>
    ///  获取指定 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象。
    ///</summary>
    ///  <param name="sectionGroupName">
    ///  路径名称 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  返回。
    ///</param>
    ///<returns><see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  指定。
    ///</returns>
    function GetSectionGroup(sectionGroupName: string): DNConfigurationSectionGroup;
    ///<summary>
    ///  包含在此的配置设置写入 <see cref="T:System.Configuration.Configuration" />
    ///  对象传递给当前的 XML 配置文件。
    ///</summary>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  无法为写入配置文件。
    ///  - 或 -
    ///  配置文件已更改。
    ///</exception>
    procedure Save; overload;
    ///<summary>
    ///  包含在此的配置设置写入 <see cref="T:System.Configuration.Configuration" />
    ///  对象传递给当前的 XML 配置文件。
    ///</summary>
    ///  <param name="saveMode">
    ///  一个 <see cref="T:System.Configuration.ConfigurationSaveMode" />
    ///  值，该值确定要保存哪些属性值。
    ///</param>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  无法为写入配置文件。
    ///  - 或 -
    ///  配置文件已更改。
    ///</exception>
    procedure Save(saveMode: DNConfigurationSaveMode); overload;
    ///<summary>
    ///  包含在此的配置设置写入 <see cref="T:System.Configuration.Configuration" />
    ///  对象传递给当前的 XML 配置文件。
    ///</summary>
    ///  <param name="saveMode">
    ///  一个 <see cref="T:System.Configuration.ConfigurationSaveMode" />
    ///  值，该值确定要保存哪些属性值。
    ///</param>
    ///  <param name="forceSaveAll"><see langword="true" />
    ///  若要保存即使未修改的配置;否则为 <see langword="false" />
    ///  。
    ///</param>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  无法为写入配置文件。
    ///  - 或 -
    ///  配置文件已更改。
    ///</exception>
    procedure Save(saveMode: DNConfigurationSaveMode; forceSaveAll: Boolean); overload;
    ///<summary>
    ///  包含在此的配置设置写入 <see cref="T:System.Configuration.Configuration" />
    ///  对象传递给指定的 XML 配置文件。
    ///</summary>
    ///  <param name="filename">
    ///  要保存到该配置文件的路径和文件名称。
    ///</param>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  无法为写入配置文件。
    ///  - 或 -
    ///  配置文件已更改。
    ///</exception>
    procedure SaveAs(filename: string); overload;
    ///<summary>
    ///  包含在此的配置设置写入 <see cref="T:System.Configuration.Configuration" />
    ///  对象传递给指定的 XML 配置文件。
    ///</summary>
    ///  <param name="filename">
    ///  要保存到该配置文件的路径和文件名称。
    ///</param>
    ///  <param name="saveMode">
    ///  一个 <see cref="T:System.Configuration.ConfigurationSaveMode" />
    ///  值，该值确定要保存哪些属性值。
    ///</param>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  无法为写入配置文件。
    ///  - 或 -
    ///  配置文件已更改。
    ///</exception>
    procedure SaveAs(filename: string; saveMode: DNConfigurationSaveMode); overload;
    ///<summary>
    ///  包含在此的配置设置写入 <see cref="T:System.Configuration.Configuration" />
    ///  对象传递给指定的 XML 配置文件。
    ///</summary>
    ///  <param name="filename">
    ///  要保存到该配置文件的路径和文件名称。
    ///</param>
    ///  <param name="saveMode">
    ///  一个 <see cref="T:System.Configuration.ConfigurationSaveMode" />
    ///  值，该值确定要保存哪些属性值。
    ///</param>
    ///  <param name="forceSaveAll"><see langword="true" />
    ///  若要保存即使未修改的配置;否则为 <see langword="false" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="filename" />
    ///  为 null 或空字符串 ("")。
    ///</exception>
    procedure SaveAs(filename: string; saveMode: DNConfigurationSaveMode; forceSaveAll: Boolean); overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取 <see cref="T:System.Configuration.AppSettingsSection" />
    ///  应用于此对象配置节 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</summary>
    ///<returns><see cref="T:System.Configuration.AppSettingsSection" />
    ///  对象，表示 <see langword="appSettings" />
    ///  应用到此配置节 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</returns>
    property AppSettings: DNAppSettingsSection read get_AppSettings;
    ///<summary>
    ///  获取 <see cref="T:System.Configuration.ConnectionStringsSection" />
    ///  应用到此配置节对象 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Configuration.ConnectionStringsSection" />
    ///  对象，表示配置节 <see langword="connectionStrings" />
    ///  应用到此配置节 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</returns>
    property ConnectionStrings: DNConnectionStringsSection read get_ConnectionStrings;
    ///<summary>
    ///  获取由此配置文件的物理路径 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  这表示的配置文件的物理路径 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</returns>
    property FilePath: string read get_FilePath;
    ///<summary>
    ///  获取一个值，该值指示由此所表示的资源是否存在文件 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果没有配置文件;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property HasFile: Boolean read get_HasFile;
    ///<summary>
    ///  获取定义在此位置 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Configuration.ConfigurationLocationCollection" />
    ///  包含在此定义的位置 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</returns>
    property Locations: DNConfigurationLocationCollection read get_Locations;
    ///<summary>
    ///  获取 <see cref="T:System.Configuration.Configuration" />
    ///  对象的 <see cref="T:System.Configuration.ContextInformation" />
    ///  对象。
    ///</summary>
    ///<returns><see cref="T:System.Configuration.ContextInformation" />
    ///  对象 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</returns>
    property EvaluationContext: DNContextInformation read get_EvaluationContext;
    ///<summary>
    ///  获取根 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  此 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  此根节组 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</returns>
    property RootSectionGroup: DNConfigurationSectionGroup read get_RootSectionGroup;
    ///<summary>
    ///  获取此定义的节的集合 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  此定义的节的集合 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</returns>
    property Sections: DNConfigurationSectionCollection read get_Sections;
    ///<summary>
    ///  获取定义此配置节组的集合。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Configuration.ConfigurationSectionGroupCollection" />
    ///  表示为此节组的集合的集合 <see cref="T:System.Configuration.Configuration" />
    ///  对象。
    ///</returns>
    property SectionGroups: DNConfigurationSectionGroupCollection read get_SectionGroups;
    ///<summary>
    ///  获取或设置一个值，指示配置文件是否有 XML 命名空间。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果配置文件的 XML 命名空间;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property NamespaceDeclared: Boolean read get_NamespaceDeclared write set_NamespaceDeclared;
    ///<summary>
    ///  指定.NET Framework 的目标的版本时版本早于当前作为目标。
    ///</summary>
    ///<returns>
    ///  .NET Framework 的目标版本的名称。
    ///  默认值是 <see langword="null" />
    ///  , ，指示当前的版本作为目标。
    ///</returns>
    property TargetFramework: DNFrameworkName read get_TargetFramework write set_TargetFramework;
  end;

  TDNConfiguration = class(TDNGenericImport<DNConfigurationClass, DNConfiguration>) end;

  //-------------namespace: System.Configuration----------------
  DNConfigurationSectionClass = interface(DNObjectClass)
  ['{D8B99D8F-5652-525D-A9C4-AC48087F1730}']
  end;

  ///<summary>
  ///  表示一个配置文件中的一个部分。
  ///</summary>
  [DNTypeName('System.Configuration.ConfigurationSection')]
  DNConfigurationSection = interface(DNObject)
  ['{BF734F72-E579-3EE5-BD86-D9AC7216F6A2}']
  { getters & setters } 

    function get_SectionInformation: DNSectionInformation;
    function get_LockAttributes: DNConfigurationLockCollection;
    function get_LockAllAttributesExcept: DNConfigurationLockCollection;
    function get_LockElements: DNConfigurationLockCollection;
    function get_LockAllElementsExcept: DNConfigurationLockCollection;
    function get_LockItem: Boolean;
    procedure set_LockItem(value: Boolean);
    function get_ElementInformation: DNElementInformation;
    function get_CurrentConfiguration: DNConfiguration;

  { methods } 

    ///<summary>
    ///  获取一个值，该值指示是否 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象是只读的。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象是只读的; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsReadOnly: Boolean;
    ///<summary>
    ///  比较当前 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  实例与指定的对象。
    ///</summary>
    ///  <param name="compareTo">
    ///  要与进行比较的对象。
    ///</param>
    ///<returns><see langword="true" />
    ///  要与进行比较的对象是否等于当前 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  实例; 否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    function Equals(compareTo: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  获取表示当前的唯一值 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  实例。
    ///</summary>
    ///<returns>
    ///  唯一的值，表示当前 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  实例。
    ///</returns>
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取 <see cref="T:System.Configuration.SectionInformation" />
    ///  对象，其中包含的非自定义的信息和功能 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Configuration.SectionInformation" />
    ///  ，其中包含的非自定义的信息和功能 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  。
    ///</returns>
    property SectionInformation: DNSectionInformation read get_SectionInformation;
    ///<summary>
    ///  获取被锁定的特性的集合
    ///</summary>
    ///<returns><see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  被锁定的特性 （属性） 的元素。
    ///</returns>
    property LockAttributes: DNConfigurationLockCollection read get_LockAttributes;
    ///<summary>
    ///  获取被锁定的特性的集合。
    ///</summary>
    ///<returns><see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  被锁定的特性 （属性） 的元素。
    ///</returns>
    property LockAllAttributesExcept: DNConfigurationLockCollection read get_LockAllAttributesExcept;
    ///<summary>
    ///  获取已锁定的元素的集合。
    ///</summary>
    ///<returns><see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  被锁定的元素。
    ///</returns>
    property LockElements: DNConfigurationLockCollection read get_LockElements;
    ///<summary>
    ///  获取已锁定的元素的集合。
    ///</summary>
    ///<returns><see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  被锁定的元素。
    ///</returns>
    property LockAllElementsExcept: DNConfigurationLockCollection read get_LockAllElementsExcept;
    ///<summary>
    ///  获取或设置一个值，该值指示元素是否已锁定。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果该元素被锁定;否则为<see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  元素被锁定在更高版本的配置级别。
    ///</exception>
    property LockItem: Boolean read get_LockItem write set_LockItem;
    ///<summary>
    ///  获取 <see cref="T:System.Configuration.ElementInformation" />
    ///  对象，其中包含的非自定义的信息和功能 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象。
    ///</summary>
    ///<returns><see cref="T:System.Configuration.ElementInformation" />
    ///  ，其中包含的非自定义的信息和功能 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  。
    ///</returns>
    property ElementInformation: DNElementInformation read get_ElementInformation;
    ///<summary>
    ///  获取对顶级 <see cref="T:System.Configuration.Configuration" />
    ///  实例，它表示在配置层次结构的当前 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  实例所属。
    ///</summary>
    ///<returns>
    ///  顶级 <see cref="T:System.Configuration.Configuration" />
    ///  实例当前 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  实例所属。
    ///</returns>
    property CurrentConfiguration: DNConfiguration read get_CurrentConfiguration;
  end;

  TDNConfigurationSection = class(TDNGenericImport<DNConfigurationSectionClass, DNConfigurationSection>) end;

  //-------------namespace: System.Configuration----------------
  DNAppSettingsSectionClass = interface(DNConfigurationSectionClass)
  ['{C1CFBA23-EC59-5177-9A48-75995F96EE28}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Configuration.AppSettingsSection" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNAppSettingsSection;

  end;

  ///<summary>
  ///  提供有关配置系统支持 <see langword="appSettings" />
  ///  配置节。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.Configuration.AppSettingsSection')]
  DNAppSettingsSection = interface(DNConfigurationSection)
  ['{C67D99B0-1A20-32AA-9C43-22087FDDE286}']
  { getters & setters } 

    function get_File: string;
    procedure set_File(value: string);
    function get_SectionInformation: DNSectionInformation;
    function get_LockAttributes: DNConfigurationLockCollection;
    function get_LockAllAttributesExcept: DNConfigurationLockCollection;
    function get_LockElements: DNConfigurationLockCollection;
    function get_LockAllElementsExcept: DNConfigurationLockCollection;
    function get_LockItem: Boolean;
    procedure set_LockItem(value: Boolean);
    function get_ElementInformation: DNElementInformation;
    function get_CurrentConfiguration: DNConfiguration;

  { methods } 

    function IsReadOnly: Boolean;
    function Equals(compareTo: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置提供其他设置或重写中指定的设置的配置文件 <see langword="appSettings" />
    ///  元素。
    ///</summary>
    ///<returns>
    ///  提供其他设置或重写中指定的设置的配置文件 <see langword="appSettings" />
    ///  元素。
    ///</returns>
    property &File: string read get_File write set_File;
    ///<summary>
    ///  获取 <see cref="T:System.Configuration.SectionInformation" />
    ///  对象，其中包含的非自定义的信息和功能 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Configuration.SectionInformation" />
    ///  ，其中包含的非自定义的信息和功能 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  。
    ///</returns>
    property SectionInformation: DNSectionInformation read get_SectionInformation;
    property LockAttributes: DNConfigurationLockCollection read get_LockAttributes;
    property LockAllAttributesExcept: DNConfigurationLockCollection read get_LockAllAttributesExcept;
    property LockElements: DNConfigurationLockCollection read get_LockElements;
    property LockAllElementsExcept: DNConfigurationLockCollection read get_LockAllElementsExcept;
    property LockItem: Boolean read get_LockItem write set_LockItem;
    property ElementInformation: DNElementInformation read get_ElementInformation;
    property CurrentConfiguration: DNConfiguration read get_CurrentConfiguration;
  end;

  TDNAppSettingsSection = class(TDNGenericImport<DNAppSettingsSectionClass, DNAppSettingsSection>) end;

  //-------------namespace: System.Configuration----------------
  DNConnectionStringsSectionClass = interface(DNConfigurationSectionClass)
  ['{A2C5DCAB-F515-522C-9AAA-A5170603BF25}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Configuration.ConnectionStringsSection" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNConnectionStringsSection;

  end;

  ///<summary>
  ///  提供以编程方式访问连接字符串配置文件部分。
  ///</summary>
  [DNTypeName('System.Configuration.ConnectionStringsSection')]
  DNConnectionStringsSection = interface(DNConfigurationSection)
  ['{CD0C6620-E0F0-3293-8450-2EB8B6E7F0B3}']
  { getters & setters } 

    function get_SectionInformation: DNSectionInformation;
    function get_LockAttributes: DNConfigurationLockCollection;
    function get_LockAllAttributesExcept: DNConfigurationLockCollection;
    function get_LockElements: DNConfigurationLockCollection;
    function get_LockAllElementsExcept: DNConfigurationLockCollection;
    function get_LockItem: Boolean;
    procedure set_LockItem(value: Boolean);
    function get_ElementInformation: DNElementInformation;
    function get_CurrentConfiguration: DNConfiguration;

  { methods } 

    function IsReadOnly: Boolean;
    function Equals(compareTo: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取 <see cref="T:System.Configuration.SectionInformation" />
    ///  对象，其中包含的非自定义的信息和功能 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Configuration.SectionInformation" />
    ///  ，其中包含的非自定义的信息和功能 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  。
    ///</returns>
    property SectionInformation: DNSectionInformation read get_SectionInformation;
    property LockAttributes: DNConfigurationLockCollection read get_LockAttributes;
    property LockAllAttributesExcept: DNConfigurationLockCollection read get_LockAllAttributesExcept;
    property LockElements: DNConfigurationLockCollection read get_LockElements;
    property LockAllElementsExcept: DNConfigurationLockCollection read get_LockAllElementsExcept;
    property LockItem: Boolean read get_LockItem write set_LockItem;
    property ElementInformation: DNElementInformation read get_ElementInformation;
    property CurrentConfiguration: DNConfiguration read get_CurrentConfiguration;
  end;

  TDNConnectionStringsSection = class(TDNGenericImport<DNConnectionStringsSectionClass, DNConnectionStringsSection>) end;

  //-------------namespace: System.Configuration----------------
  DNConfigurationLockCollectionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{93E9F554-D478-5288-9DE9-EE15D67B1418}']
  end;

  ///<summary>
  ///  包含锁定的配置对象的集合。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.Configuration.ConfigurationLockCollection')]
  DNConfigurationLockCollection = interface(DDN.mscorlib.DNObject)
  ['{F3E926E9-A2BF-3F5E-B2BF-8191A53E3DB0}']
  { getters & setters } 

    function get_Count: Int32;
    function get_IsSynchronized: Boolean;
    function get_SyncRoot: DDN.mscorlib.DNObject;
    function get_IsModified: Boolean;
    function get_AttributeList: string;
    function get_HasParentElements: Boolean;

  { methods } 

    ///<summary>
    ///  获取 <see cref="T:System.Collections.IEnumerator" />
    ///  对象，用于循环访问此 <see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  集合。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Collections.IEnumerator" />
    ///  对象。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    ///<summary>
    ///  清除集合中的所有配置对象。
    ///</summary>
    procedure Clear;
    ///<summary>
    ///  验证是否已锁定特定的配置对象。
    ///</summary>
    ///  <param name="name">
    ///  要验证的配置对象的名称。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果 <see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  包含指定的配置对象; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function &Contains(name: string): Boolean;
    ///<summary>
    ///  将复制整个 <see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  集合到一维兼容 <see cref="T:System.Array" />
    ///  , ，从目标数组的指定索引处开始。
    ///</summary>
    ///  <param name="array">
    ///  一维 <see cref="T:System.Array" />
    ///  ，它是从复制的元素的目标 <see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  。
    ///<see cref="T:System.Array" />
    ///  必须具有从零开始的索引。
    ///</param>
    ///  <param name="index"><paramref name="array" />
    ///  中从零开始的索引，从此处开始复制。
    ///</param>
    procedure CopyTo(&array: TArray<string>; index: Int32);
    ///<summary>
    ///  通过将其添加到集合中锁定该配置对象。
    ///</summary>
    ///  <param name="name">
    ///  配置对象的名称。
    ///</param>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  发生时 <paramref name="name" />
    ///  与现有的配置对象在集合中不匹配。
    ///</exception>
    procedure Add(name: string);
    ///<summary>
    ///  从集合中移除的配置对象。
    ///</summary>
    ///  <param name="name">
    ///  配置对象的名称。
    ///</param>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  发生时 <paramref name="name" />
    ///  与现有的配置对象在集合中不匹配。
    ///</exception>
    procedure Remove(name: string);
    ///<summary>
    ///  验证特定的配置对象是只读的。
    ///</summary>
    ///  <param name="name">
    ///  要验证的配置对象的名称。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果指定的配置对象中 <see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  集合是只读的; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  指定的配置对象不在集合中。
    ///</exception>
    function IsReadOnly(name: string): Boolean;
    ///<summary>
    ///  锁定一的组基于提供的列表的配置对象。
    ///</summary>
    ///  <param name="attributeList">
    ///  以逗号分隔的字符串。
    ///</param>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  中的某个项时发生 <paramref name="attributeList" />
    ///  参数不是有效的可锁定配置属性。
    ///</exception>
    procedure SetFromList(attributeList: string);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取集合中包含的锁定的配置对象的数目。
    ///</summary>
    ///<returns>
    ///  集合中包含的锁定的配置对象数。
    ///</returns>
    property Count: Int32 read get_Count;
    ///<summary>
    ///  获取一个值，指示集合是否已同步。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果 <see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  集合是同步; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsSynchronized: Boolean read get_IsSynchronized;
    ///<summary>
    ///  获取一个对象，该对象用于同步访问此 <see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  集合。
    ///</summary>
    ///<returns>
    ///  用于同步对此的访问的对象 <see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  集合。
    ///</returns>
    property SyncRoot: DDN.mscorlib.DNObject read get_SyncRoot;
    ///<summary>
    ///  获取一个值，指定是否已修改该集合。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果 <see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  集合已修改; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsModified: Boolean read get_IsModified;
    ///<summary>
    ///  获取集合中包含的配置对象的列表。
    ///</summary>
    ///<returns>
    ///  以逗号分隔的字符串，其中列出了在集合中的锁定配置对象。
    ///</returns>
    property AttributeList: string read get_AttributeList;
    ///<summary>
    ///  获取一个值，指定锁定的对象的集合是否具有父元素。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果 <see cref="T:System.Configuration.ConfigurationLockCollection" />
    ///  集合具有父元素; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property HasParentElements: Boolean read get_HasParentElements;
  end;

  TDNConfigurationLockCollection = class(TDNGenericImport<DNConfigurationLockCollectionClass, DNConfigurationLockCollection>) end;

  //-------------namespace: System.Configuration----------------
  DNConfigurationSectionGroupClass = interface(DDN.mscorlib.DNObjectClass)
  ['{0B422D1B-089D-5A68-BAF7-FCE518EE947A}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNConfigurationSectionGroup;

  end;

  ///<summary>
  ///  表示一组配置文件中的相关章节。
  ///</summary>
  [DNTypeName('System.Configuration.ConfigurationSectionGroup')]
  DNConfigurationSectionGroup = interface(DDN.mscorlib.DNObject)
  ['{43493E08-E461-33E9-9454-68655A5CEBEC}']
  { getters & setters } 

    function get_IsDeclared: Boolean;
    function get_IsDeclarationRequired: Boolean;
    function get_SectionGroupName: string;
    function get_Name: string;
    function get_Type: string;
    procedure set_Type(value: string);
    function get_Sections: DNConfigurationSectionCollection;
    function get_SectionGroups: DNConfigurationSectionGroupCollection;

  { methods } 

    ///<summary>
    ///  强制的声明 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象。
    ///</summary>
    procedure ForceDeclaration; overload;
    ///<summary>
    ///  强制的声明 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象。
    ///</summary>
    ///  <param name="force"><see langword="true" />
    ///  如果 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象必须是写入到该文件; 否则为 <see langword="false" />
    ///  。
    ///</param>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象是根节组。
    ///  - 或 -
    ///<see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象都有一个位置。
    ///</exception>
    procedure ForceDeclaration(force: Boolean); overload;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取一个值，该值指示是否此 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  声明对象。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果此 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  声明; 否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property IsDeclared: Boolean read get_IsDeclared;
    ///<summary>
    ///  获取一个值，该值指示是否此 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象声明是必需的。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果此 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  声明是必选的; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsDeclarationRequired: Boolean read get_IsDeclarationRequired;
    ///<summary>
    ///  获取与此相关的节组名称 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  。
    ///</summary>
    ///<returns>
    ///  此节组名称 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象。
    ///</returns>
    property SectionGroupName: string read get_SectionGroupName;
    ///<summary>
    ///  获取此名称属性 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  Name 属性 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象。
    ///</returns>
    property Name: string read get_Name;
    ///<summary>
    ///  获取或设置此类型 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  这种 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象是根节组。
    ///  - 或 -
    ///<see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象都有一个位置。
    ///</exception><exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  已在另一级别定义的节或组。
    ///</exception>
    property &Type: string read get_Type write set_Type;
    ///<summary>
    ///  获取 <see cref="T:System.Configuration.ConfigurationSectionCollection" />
    ///  对象，其中包含的所有 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象在此 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Configuration.ConfigurationSectionCollection" />
    ///  对象，其中包含所有 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象在此 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象。
    ///</returns>
    property Sections: DNConfigurationSectionCollection read get_Sections;
    ///<summary>
    ///  获取 <see cref="T:System.Configuration.ConfigurationSectionGroupCollection" />
    ///  对象，其中包含所有 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象的子级的这 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Configuration.ConfigurationSectionGroupCollection" />
    ///  对象，其中包含所有 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象的子级的这 <see cref="T:System.Configuration.ConfigurationSectionGroup" />
    ///  对象。
    ///</returns>
    property SectionGroups: DNConfigurationSectionGroupCollection read get_SectionGroups;
  end;

  TDNConfigurationSectionGroup = class(TDNGenericImport<DNConfigurationSectionGroupClass, DNConfigurationSectionGroup>) end;

  //-------------namespace: System.Configuration----------------
  DNConfigurationValidatorBaseClass = interface(DDN.mscorlib.DNObjectClass)
  ['{0E873FC7-70A0-5571-99FE-E7B8FE011407}']
  end;

  ///<summary>
  ///  作为基类的类用于派生验证类，以便可以验证某个对象的值。
  ///</summary>
  [DNTypeName('System.Configuration.ConfigurationValidatorBase')]
  DNConfigurationValidatorBase = interface(DDN.mscorlib.DNObject)
  ['{AAAF2860-120E-393D-8451-49B2A6FEE2FA}']
  { methods } 

    ///<summary>
    ///  确定是否可以根据类型验证对象。
    ///</summary>
    ///  <param name="type">
    ///  对象类型。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果 <paramref name="type" />
    ///  参数值与预期匹配 <see langword="type" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function CanValidate(&type: DDN.mscorlib.DNType): Boolean;
    ///<summary>
    ///  确定某个对象的值是否有效。
    ///</summary>
    ///  <param name="value">
    ///  对象值。
    ///</param>
    procedure Validate(value: DDN.mscorlib.DNObject);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNConfigurationValidatorBase = class(TDNGenericImport<DNConfigurationValidatorBaseClass, DNConfigurationValidatorBase>) end;

  //-------------namespace: System.Configuration----------------
  DNContextInformationClass = interface(DDN.mscorlib.DNObjectClass)
  ['{E31BACA7-1537-5A9D-B671-695BEB4FD0B4}']
  end;

  ///<summary>
  ///  封装与相关联的上下文信息 <see cref="T:System.Configuration.ConfigurationElement" />
  ///  对象。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.Configuration.ContextInformation')]
  DNContextInformation = interface(DDN.mscorlib.DNObject)
  ['{0F5DA8AB-826A-3A3F-B325-C5B11EA1EF86}']
  { getters & setters } 

    function get_HostingContext: DDN.mscorlib.DNObject;
    function get_IsMachineLevel: Boolean;

  { methods } 

    ///<summary>
    ///  提供了一个包含基于指定的节名称的配置节信息的对象。
    ///</summary>
    ///  <param name="sectionName">
    ///  配置部分的名称。
    ///</param>
    ///<returns>
    ///  包含配置中指定的节的对象。
    ///</returns>
    function GetSection(sectionName: string): DDN.mscorlib.DNObject;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取要计算的配置属性的环境的上下文。
    ///</summary>
    ///<returns>
    ///  一个对象，指定要计算的配置属性的环境。
    ///</returns>
    property HostingContext: DDN.mscorlib.DNObject read get_HostingContext;
    ///<summary>
    ///  获取一个值，指定在计算机配置级别是否正在计算配置属性。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果在计算机配置级别; 正在计算配置属性否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsMachineLevel: Boolean read get_IsMachineLevel;
  end;

  TDNContextInformation = class(TDNGenericImport<DNContextInformationClass, DNContextInformation>) end;

  //-------------namespace: System.Configuration----------------
  DNElementInformationClass = interface(DDN.mscorlib.DNObjectClass)
  ['{3E8F35FF-D7E0-597B-B3DE-B81956D05639}']
  end;

  ///<summary>
  ///  包含有关配置中的单个元素的元信息。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.Configuration.ElementInformation')]
  DNElementInformation = interface(DDN.mscorlib.DNObject)
  ['{EE60054D-6B18-3C2E-9F18-A59E71FAB3A1}']
  { getters & setters } 

    function get_Properties: DNPropertyInformationCollection;
    function get_IsPresent: Boolean;
    function get_IsLocked: Boolean;
    function get_IsCollection: Boolean;
    function get_Source: string;
    function get_LineNumber: Int32;
    function get_Type: DDN.mscorlib.DNType;
    function get_Validator: DNConfigurationValidatorBase;
    function get_Errors: DDN.mscorlib.DNICollection;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取 <see cref="T:System.Configuration.PropertyInformationCollection" />
    ///  中关联属性的集合 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Configuration.PropertyInformationCollection" />
    ///  中关联属性的集合 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象。
    ///</returns>
    property Properties: DNPropertyInformationCollection read get_Properties;
    ///<summary>
    ///  获取一个值，该值指示是否关联 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象是在配置文件中。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果关联 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象是在配置文件中; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsPresent: Boolean read get_IsPresent;
    ///<summary>
    ///  获取一个值，该值指示是否关联 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象不能修改。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果关联 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象不能为已修改; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsLocked: Boolean read get_IsLocked;
    ///<summary>
    ///  获取一个值，该值指示是否关联 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象是 <see cref="T:System.Configuration.ConfigurationElementCollection" />
    ///  集合。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果关联 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象是 <see cref="T:System.Configuration.ConfigurationElementCollection" />
    ///  集合; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsCollection: Boolean read get_IsCollection;
    ///<summary>
    ///  获取的源文件位置关联 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  发起的对象。
    ///</summary>
    ///<returns>
    ///  源文件关联 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  发起的对象。
    ///</returns>
    property Source: string read get_Source;
    ///<summary>
    ///  在配置文件中获取的行号其中关联 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  定义对象。
    ///</summary>
    ///<returns>
    ///  在配置中的行号文件的位置关联 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  定义对象。
    ///</returns>
    property LineNumber: Int32 read get_LineNumber;
    ///<summary>
    ///  获取关联的类型 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  关联的类型 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象。
    ///</returns>
    property &Type: DDN.mscorlib.DNType read get_Type;
    ///<summary>
    ///  获取用于验证关联的对象 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  用来验证关联的对象 <see cref="T:System.Configuration.ConfigurationElement" />
    ///  对象。
    ///</returns>
    property Validator: DNConfigurationValidatorBase read get_Validator;
    ///<summary>
    ///  获取有关关联的元素和子元素的错误
    ///</summary>
    ///<returns>
    ///  包含关联的元素和子元素的错误的集合
    ///</returns>
    property Errors: DDN.mscorlib.DNICollection read get_Errors;
  end;

  TDNElementInformation = class(TDNGenericImport<DNElementInformationClass, DNElementInformation>) end;

  //-------------namespace: System.Configuration----------------
  DNConfigurationBuilderClass = interface(DNObjectClass)
  ['{5906E833-2FEF-5A38-A175-E84485C67BAD}']
  end;

  ///<summary>
  ///  表示将由自定义配置生成器实现扩展的基类。
  ///</summary>
  [DNTypeName('System.Configuration.ConfigurationBuilder')]
  DNConfigurationBuilder = interface(DNObject)
  ['{9C22882E-1C30-3E0F-8C7B-0E0548662990}']
  { getters & setters } 

    function get_Name: string;
    function get_Description: string;

  { methods } 

    ///<summary>
    ///  接受配置系统中的 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象，并返回一个修改后的或新的 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象供将来使用。
    ///</summary>
    ///  <param name="configSection">
    ///  要处理的 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  。
    ///</param>
    ///<returns>
    ///  已处理的 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  。
    ///</returns>
    function ProcessConfigurationSection(configSection: DNConfigurationSection): DNConfigurationSection;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取用于在配置过程中引用该提供程序的友好名称。
    ///</summary>
    ///<returns>
    ///  用于在配置过程中引用该提供程序的友好名称。
    ///</returns>
    property Name: string read get_Name;
    ///<summary>
    ///  获取一个简短的友好说明适合显示在管理工具或其他用户界面 (Ui)。
    ///</summary>
    ///<returns>
    ///  简短的易懂描述适用于在管理工具或其他用户界面中显示。
    ///</returns>
    property Description: string read get_Description;
  end;

  TDNConfigurationBuilder = class(TDNGenericImport<DNConfigurationBuilderClass, DNConfigurationBuilder>) end;

  //-------------namespace: System.Configuration----------------
  DNProtectedConfigurationProviderClass = interface(DNObjectClass)
  ['{9B2F60FD-F53D-5A1D-82A0-8541C40C35CC}']
  end;

  ///<summary>
  ///  是用于加密和解密受保护的配置数据创建提供程序的基类。
  ///</summary>
  [DNTypeName('System.Configuration.ProtectedConfigurationProvider')]
  DNProtectedConfigurationProvider = interface(DNObject)
  ['{0DFE9FBE-E232-3F9E-A512-E86559E3C350}']
  { getters & setters } 

    function get_Name: string;
    function get_Description: string;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取用于在配置过程中引用该提供程序的友好名称。
    ///</summary>
    ///<returns>
    ///  用于在配置过程中引用该提供程序的友好名称。
    ///</returns>
    property Name: string read get_Name;
    ///<summary>
    ///  获取一个简短的友好说明适合显示在管理工具或其他用户界面 (Ui)。
    ///</summary>
    ///<returns>
    ///  简短的易懂描述适用于在管理工具或其他用户界面中显示。
    ///</returns>
    property Description: string read get_Description;
  end;

  TDNProtectedConfigurationProvider = class(TDNGenericImport<DNProtectedConfigurationProviderClass, DNProtectedConfigurationProvider>) end;

  //-------------namespace: System.Configuration----------------
  DNSectionInformationClass = interface(DDN.mscorlib.DNObjectClass)
  ['{AFB4D567-349A-5475-8957-A262AF7EB809}']
  end;

  ///<summary>
  ///  包含有关在配置层次结构中的各个部分的元数据。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.Configuration.SectionInformation')]
  DNSectionInformation = interface(DDN.mscorlib.DNObject)
  ['{D1A006C4-4992-37F1-BB5A-CC8D068551AD}']
  { getters & setters } 

    function get_SectionName: string;
    function get_Name: string;
    function get_AllowDefinition: DNConfigurationAllowDefinition;
    procedure set_AllowDefinition(value: DNConfigurationAllowDefinition);
    function get_AllowExeDefinition: DNConfigurationAllowExeDefinition;
    procedure set_AllowExeDefinition(value: DNConfigurationAllowExeDefinition);
    function get_OverrideModeDefault: DNOverrideMode;
    procedure set_OverrideModeDefault(value: DNOverrideMode);
    function get_AllowLocation: Boolean;
    procedure set_AllowLocation(value: Boolean);
    function get_AllowOverride: Boolean;
    procedure set_AllowOverride(value: Boolean);
    function get_OverrideMode: DNOverrideMode;
    procedure set_OverrideMode(value: DNOverrideMode);
    function get_OverrideModeEffective: DNOverrideMode;
    function get_ConfigSource: string;
    procedure set_ConfigSource(value: string);
    function get_InheritInChildApplications: Boolean;
    procedure set_InheritInChildApplications(value: Boolean);
    function get_IsDeclared: Boolean;
    function get_IsDeclarationRequired: Boolean;
    function get_IsLocked: Boolean;
    function get_IsProtected: Boolean;
    function get_ConfigurationBuilder: DNConfigurationBuilder;
    function get_ProtectionProvider: DNProtectedConfigurationProvider;
    function get_RestartOnExternalChanges: Boolean;
    procedure set_RestartOnExternalChanges(value: Boolean);
    function get_RequirePermission: Boolean;
    procedure set_RequirePermission(value: Boolean);
    function get_Type: string;
    procedure set_Type(value: string);
    function get_ForceSave: Boolean;
    procedure set_ForceSave(value: Boolean);

  { methods } 

    ///<summary>
    ///  强制显示在配置文件关联的配置节。
    ///</summary>
    procedure ForceDeclaration; overload;
    ///<summary>
    ///  强制关联的配置节，才会出现在配置文件中，或从配置文件中删除现有的内容。
    ///</summary>
    ///  <param name="force"><see langword="true" />
    ///  如果用配置文件，则应编写的关联部分否则为 <see langword="false" />
    ///  。
    ///</param>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException"><paramref name="force" />
    ///  是 <see langword="true" />
    ///  和关联的节不能导出到子配置文件中，或者未声明。
    ///</exception>
    procedure ForceDeclaration(force: Boolean); overload;
    ///<summary>
    ///  从关联的配置节中删除受保护的配置加密。
    ///</summary>
    procedure UnprotectSection;
    ///<summary>
    ///  获取包含与此对象关联的配置节的配置节。
    ///</summary>
    ///<returns>
    ///  包含的配置节 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  这与该键相关联 <see cref="T:System.Configuration.SectionInformation" />
    ///  对象。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  从父节调用的方法。
    ///</exception>
    function GetParentSection: DNConfigurationSection;
    ///<summary>
    ///  返回一个 XML 节点对象，表示关联的配置节对象。
    ///</summary>
    ///<returns>
    ///  用于此配置节的 XML 表示形式。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此配置对象已被锁定，因此无法编辑。
    ///</exception>
    function GetRawXml: string;
    ///<summary>
    ///  将该对象设置的 XML 表示形式中的配置文件关联的配置节。
    ///</summary>
    ///  <param name="rawXml">
    ///  要使用的 XML。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="rawXml" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure SetRawXml(rawXml: string);
    ///<summary>
    ///  导致关联的配置节，以从其父节继承其所有值。
    ///</summary>
    ///<exception cref="T:System.InvalidOperationException">
    ///  不能在编辑模式下调用此方法。
    ///</exception>
    procedure RevertToParent;
    ///<summary>
    ///  标记用于保护的配置节。
    ///</summary>
    ///  <param name="protectionProvider">
    ///  要使用的保护提供程序的名称。
    ///</param>
    ///<exception cref="T:System.InvalidOperationException"><see cref="P:System.Configuration.SectionInformation.AllowLocation" />
    ///  属性设置为 <see langword="false" />
    ///  。
    ///  - 或 -
    ///  目标部分已是受保护的数据部分。
    ///</exception>
    procedure ProtectSection(protectionProvider: string);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取关联的配置节的名称。
    ///</summary>
    ///<returns>
    ///  关联的名称 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象。
    ///</returns>
    property SectionName: string read get_SectionName;
    ///<summary>
    ///  获取关联的配置节的名称。
    ///</summary>
    ///<returns>
    ///  配置部分完整名称。
    ///</returns>
    property Name: string read get_Name;
    ///<summary>
    ///  获取或设置一个值，指示配置文件层次结构中可以定义关联的配置节的位置。
    ///</summary>
    ///<returns>
    ///  一个值，指示其中在配置文件层次结构关联 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  可以声明对象。
    ///</returns>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  所选的值与一个值，已定义的冲突。
    ///</exception>
    property AllowDefinition: DNConfigurationAllowDefinition read get_AllowDefinition write set_AllowDefinition;
    ///<summary>
    ///  获取或设置一个值，指示关联的配置节可以在配置文件层次结构中声明的位置。
    ///</summary>
    ///<returns>
    ///  一个值，指示其中在配置文件层次结构关联 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象可声明为.exe 文件。
    ///</returns>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  所选的值与一个值，已定义的冲突。
    ///</exception>
    property AllowExeDefinition: DNConfigurationAllowExeDefinition read get_AllowExeDefinition write set_AllowExeDefinition;
    ///<summary>
    ///  获取或设置一个值，指定默认值来重写行为由子配置文件的配置节。
    ///</summary>
    ///<returns><see cref="T:System.Configuration.OverrideMode" />
    ///  枚举值之一。
    ///</returns>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  重写行为是在父配置节中指定的。
    ///</exception>
    property OverrideModeDefault: DNOverrideMode read get_OverrideModeDefault write set_OverrideModeDefault;
    ///<summary>
    ///  获取或设置一个值，该值指示是否允许使用配置部分 <see langword="location" />
    ///  属性。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果 <see langword="location" />
    ///  特性是允许; 否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="true" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  所选的值与一个值，已定义的冲突。
    ///</exception>
    property AllowLocation: Boolean read get_AllowLocation write set_AllowLocation;
    ///<summary>
    ///  获取或设置一个值，该值指示是否可以覆盖关联的配置节由低级别的配置文件。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果可以重写该节。否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property AllowOverride: Boolean read get_AllowOverride write set_AllowOverride;
    ///<summary>
    ///  获取或设置 <see cref="T:System.Configuration.OverrideMode" />
    ///  枚举值，该值指定由子配置文件是否可以重写相关联的配置节。
    ///</summary>
    ///<returns><see cref="T:System.Configuration.OverrideMode" />
    ///  枚举值之一。
    ///</returns>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  尝试同时更改两者 <see cref="P:System.Configuration.SectionInformation.AllowOverride" />
    ///  和 <see cref="P:System.Configuration.SectionInformation.OverrideMode" />
    ///  属性，这出于兼容性原因不受支持。
    ///</exception>
    property OverrideMode: DNOverrideMode read get_OverrideMode write set_OverrideMode;
    ///<summary>
    ///  获取一个配置节，又基于子配置文件是否可以锁定配置节的覆盖行为。
    ///</summary>
    ///<returns><see cref="T:System.Configuration.OverrideMode" />
    ///  枚举值之一。
    ///</returns>
    property OverrideModeEffective: DNOverrideMode read get_OverrideModeEffective;
    ///<summary>
    ///  获取或设置在其中定义关联的配置节，该包含文件的名称，如果存在这样的文件。
    ///</summary>
    ///<returns>
    ///  在其中包含文件的名称关联 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  定义的如果存在这样的文件; 否则为空字符串 ("")。
    ///</returns>
    property ConfigSource: string read get_ConfigSource write set_ConfigSource;
    ///<summary>
    ///  获取或设置一个值，该值指示是否在关联的配置节中指定的设置继承由驻留在相关应用程序的子目录中的应用程序。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果在此指定的设置 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象是由子应用程序继承; 否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="true" />
    ///  。
    ///</returns>
    property InheritInChildApplications: Boolean read get_InheritInChildApplications write set_InheritInChildApplications;
    ///<summary>
    ///  获取一个值，该值指示是否在配置文件中声明关联的配置节。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果此 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  配置文件中声明; 否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="true" />
    ///  。
    ///</returns>
    property IsDeclared: Boolean read get_IsDeclared;
    ///<summary>
    ///  获取一个值，该值指示是否必须在配置文件中声明配置节。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果关联 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象必须是在配置文件中声明; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsDeclarationRequired: Boolean read get_IsDeclarationRequired;
    ///<summary>
    ///  获取一个值，该值指示是否锁定了关联的配置节。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果该节被锁定;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsLocked: Boolean read get_IsLocked;
    ///<summary>
    ///  获取一个值，该值指示是否受到保护关联的配置节。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果此 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  受保护; 否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property IsProtected: Boolean read get_IsProtected;
    ///<summary>
    ///  获取此配置节的 <see cref="T:System.Configuration.ConfigurationBuilder" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  此配置节的 <see cref="T:System.Configuration.ConfigurationBuilder" />
    ///  对象。
    ///</returns>
    property ConfigurationBuilder: DNConfigurationBuilder read get_ConfigurationBuilder;
    ///<summary>
    ///  获取对受保护的配置提供程序关联的配置节。
    ///</summary>
    ///<returns>
    ///  为此保护的配置提供程序 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  对象。
    ///</returns>
    property ProtectionProvider: DNProtectedConfigurationProvider read get_ProtectionProvider;
    ///<summary>
    ///  获取或设置一个值，指定是否包含更改对外部配置文件需要重新启动应用程序。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果文件包含对外部配置更改，需要重新启动应用程序;否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="true" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  所选的值与一个值，已定义的冲突。
    ///</exception>
    property RestartOnExternalChanges: Boolean read get_RestartOnExternalChanges write set_RestartOnExternalChanges;
    ///<summary>
    ///  获取一个值，该值指示是否在关联的配置节要求访问权限。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果 <see langword="requirePermission" />
    ///  属性设置为 <see langword="true" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="true" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  所选的值与一个值，已定义的冲突。
    ///</exception>
    property RequirePermission: Boolean read get_RequirePermission write set_RequirePermission;
    ///<summary>
    ///  获取或设置节的类名称。
    ///</summary>
    ///<returns>
    ///  与此关联的类名称 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  部分。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  所选的值是 <see langword="null" />
    ///  或空字符串 ("")。
    ///</exception><exception cref="T:System.Configuration.ConfigurationErrorsException">
    ///  所选的值与一个值，已定义的冲突。
    ///</exception>
    property &Type: string read get_Type write set_Type;
    ///<summary>
    ///  获取或设置一个值，该值指示是否将保存关联的配置节，即使尚未修改。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果关联 <see cref="T:System.Configuration.ConfigurationSection" />
    ///  将保存对象，即使尚未修改; 否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///  如果配置文件的保存 （即使有不做任何修改），ASP.NET 将重新启动该应用程序。
    ///</returns>
    property ForceSave: Boolean read get_ForceSave write set_ForceSave;
  end;

  TDNSectionInformation = class(TDNGenericImport<DNSectionInformationClass, DNSectionInformation>) end;

  //-------------namespace: System.Drawing.Drawing2D----------------
  DNRegionDataClass = interface(DDN.mscorlib.DNObjectClass)
  ['{702718D6-9F2B-53F3-8F47-63AA1DF7DFD7}']
  end;

  ///<summary>
  ///  封装的数据，后者构成 <see cref="T:System.Drawing.Region" />
  ///  对象。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.Drawing.Drawing2D.RegionData')]
  DNRegionData = interface(DDN.mscorlib.DNObject)
  ['{AFF2E189-33BC-3173-98F4-F6125CAB3B08}']
  { getters & setters } 

    function get_Data: TArray<Byte>;
    procedure set_Data(value: TArray<Byte>);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置一个指定的字节数组 <see cref="T:System.Drawing.Region" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  一个指定的字节数组 <see cref="T:System.Drawing.Region" />
    ///  对象。
    ///</returns>
    property Data: TArray<Byte> read get_Data write set_Data;
  end;

  TDNRegionData = class(TDNGenericImport<DNRegionDataClass, DNRegionData>) end;

  //-------------namespace: System.Drawing.Imaging----------------
  DNBitmapDataClass = interface(DDN.mscorlib.DNObjectClass)
  ['{EE65B648-C66F-50C6-BAF2-C9A54865BD12}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Drawing.Imaging.BitmapData" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNBitmapData;

  end;

  ///<summary>
  ///  指定位图图像的属性。
  ///<see cref="T:System.Drawing.Imaging.BitmapData" />
  ///  类由 <see cref="Overload:System.Drawing.Bitmap.LockBits" />
  ///  和 <see cref="M:System.Drawing.Bitmap.UnlockBits(System.Drawing.Imaging.BitmapData)" />
  ///  方法 <see cref="T:System.Drawing.Bitmap" />
  ///  类。
  ///  不可继承。
  ///</summary>
  [DNTypeName('System.Drawing.Imaging.BitmapData')]
  DNBitmapData = interface(DDN.mscorlib.DNObject)
  ['{3E7E92A8-C78F-3FB2-A197-5AF12F6DBA38}']
  { getters & setters } 

    function get_Width: Int32;
    procedure set_Width(value: Int32);
    function get_Height: Int32;
    procedure set_Height(value: Int32);
    function get_Stride: Int32;
    procedure set_Stride(value: Int32);
    function get_PixelFormat: DNPixelFormat;
    procedure set_PixelFormat(value: DNPixelFormat);
    function get_Scan0: IntPtr;
    procedure set_Scan0(value: IntPtr);
    function get_Reserved: Int32;
    procedure set_Reserved(value: Int32);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置的像素宽度 <see cref="T:System.Drawing.Bitmap" />
    ///  对象。
    ///  这也可以看作是一个扫描行中的像素数。
    ///</summary>
    ///<returns>
    ///  像素宽度 <see cref="T:System.Drawing.Bitmap" />
    ///  对象。
    ///</returns>
    property Width: Int32 read get_Width write set_Width;
    ///<summary>
    ///  获取或设置的像素高度 <see cref="T:System.Drawing.Bitmap" />
    ///  对象。
    ///  也有时称为扫描行数。
    ///</summary>
    ///<returns>
    ///  像素高度 <see cref="T:System.Drawing.Bitmap" />
    ///  对象。
    ///</returns>
    property Height: Int32 read get_Height write set_Height;
    ///<summary>
    ///  获取或设置 stride （也称为扫描宽度） 的宽度 <see cref="T:System.Drawing.Bitmap" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  跨距宽度，以字节为单位的 <see cref="T:System.Drawing.Bitmap" />
    ///  对象。
    ///</returns>
    property Stride: Int32 read get_Stride write set_Stride;
    ///<summary>
    ///  获取或设置的格式中的像素信息 <see cref="T:System.Drawing.Bitmap" />
    ///  返回此对象 <see cref="T:System.Drawing.Imaging.BitmapData" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Imaging.PixelFormat" />
    ///  关联指定格式的像素信息 <see cref="T:System.Drawing.Bitmap" />
    ///  对象。
    ///</returns>
    property PixelFormat: DNPixelFormat read get_PixelFormat write set_PixelFormat;
    ///<summary>
    ///  获取或设置在位图中的第一个像素数据的地址。
    ///  这也可以看作是位图中的第一个扫描行。
    ///</summary>
    ///<returns>
    ///  在位图中的第一个像素数据的地址。
    ///</returns>
    property Scan0: IntPtr read get_Scan0 write set_Scan0;
    ///<summary>
    ///  保留。
    ///  请勿使用。
    ///</summary>
    ///<returns>
    ///  保留。
    ///  请勿使用。
    ///</returns>
    property Reserved: Int32 read get_Reserved write set_Reserved;
  end;

  TDNBitmapData = class(TDNGenericImport<DNBitmapDataClass, DNBitmapData>) end;

  //-------------namespace: System.Drawing.Imaging----------------
  DNColorPaletteClass = interface(DDN.mscorlib.DNObjectClass)
  ['{1D5700A5-F93A-528A-AAEA-8A5C32FB3939}']
  end;

  ///<summary>
  ///  定义一个数组构成的调色板的颜色。
  ///  颜色是 32 位 ARGB 颜色。
  ///  不可继承。
  ///</summary>
  [DNTypeName('System.Drawing.Imaging.ColorPalette')]
  DNColorPalette = interface(DDN.mscorlib.DNObject)
  ['{0CF09C28-25D5-32B7-A65A-CB9710DCD5DB}']
  { getters & setters } 

    function get_Flags: Int32;
    function get_Entries: TArray<DNColor>;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取一个值，指定如何解释在数组中的颜色的颜色信息。
    ///</summary>
    ///<returns>
    ///  下面的标志值是有效的︰
    ///  0x00000001
    ///  数组中的颜色值包含 alpha 信息。
    ///  0x00000002
    ///  数组中的颜色是灰度值。
    ///  0x00000004
    ///  数组中的颜色是半色调值。
    ///</returns>
    property Flags: Int32 read get_Flags;
    ///<summary>
    ///  获取一个数组 <see cref="T:System.Drawing.Color" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  数组 <see cref="T:System.Drawing.Color" />
    ///  结构组成此 <see cref="T:System.Drawing.Imaging.ColorPalette" />
    ///  。
    ///</returns>
    property Entries: TArray<DNColor> read get_Entries;
  end;

  TDNColorPalette = class(TDNGenericImport<DNColorPaletteClass, DNColorPalette>) end;

  //-------------namespace: System.Drawing.Imaging----------------
  DNEncoderParametersClass = interface(DDN.mscorlib.DNObjectClass)
  ['{AB2EF01F-00D9-5693-B2FA-09F4A916F9E6}']
  { constructors } 

    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Imaging.EncoderParameters" />
    ///  类可以包含指定的数量的 <see cref="T:System.Drawing.Imaging.EncoderParameter" />
    ///  对象。
    ///</summary>
    ///  <param name="count">
    ///  一个整数，指定的数 <see cref="T:System.Drawing.Imaging.EncoderParameter" />
    ///  对象 <see cref="T:System.Drawing.Imaging.EncoderParameters" />
    ///  对象可以包含。
    ///</param>
    {class} function init(count: Int32): DNEncoderParameters; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Imaging.EncoderParameters" />
    ///  类可以包含一个 <see cref="T:System.Drawing.Imaging.EncoderParameter" />
    ///  对象。
    ///</summary>
    {class} function init: DNEncoderParameters; overload;

  end;

  ///<summary>
  ///  封装的数组 <see cref="T:System.Drawing.Imaging.EncoderParameter" />
  ///  对象。
  ///</summary>
  [DNTypeName('System.Drawing.Imaging.EncoderParameters')]
  DNEncoderParameters = interface(DDN.mscorlib.DNObject)
  ['{809106FA-A250-36F7-BEB3-4B323D20606C}']
  { methods } 

    ///<summary>
    ///  释放由此 <see cref="T:System.Drawing.Imaging.EncoderParameters" />
    ///  对象使用的所有资源。
    ///</summary>
    procedure Dispose;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNEncoderParameters = class(TDNGenericImport<DNEncoderParametersClass, DNEncoderParameters>) end;

  //-------------namespace: System.Drawing.Imaging----------------
  DNFrameDimensionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{E9C5EB92-BC52-5E9B-9698-1CFAFBCDCA03}']
  { static getter & setter } 

    {class} function get_Time: DNFrameDimension;
    {class} function get_Resolution: DNFrameDimension;
    {class} function get_Page: DNFrameDimension;

  { constructors } 

    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Imaging.FrameDimension" />
    ///  类使用指定 <see langword="Guid" />
    ///  结构。
    ///</summary>
    ///  <param name="guid">
    ///  一个 <see langword="Guid" />
    ///  结构，它包含此 GUID <see cref="T:System.Drawing.Imaging.FrameDimension" />
    ///  对象。
    ///</param>
    {class} function init(guid: DDN.mscorlib.DNGuid): DNFrameDimension;

  { static propertys } 

    ///<summary>
    ///  获取时间维度。
    ///</summary>
    ///<returns>
    ///  时间维度中。
    ///</returns>
    {class} property Time: DNFrameDimension read get_Time;
    ///<summary>
    ///  获取解析维度。
    ///</summary>
    ///<returns>
    ///  分辨率维度。
    ///</returns>
    {class} property Resolution: DNFrameDimension read get_Resolution;
    ///<summary>
    ///  获取页维度。
    ///</summary>
    ///<returns>
    ///  页面维度。
    ///</returns>
    {class} property Page: DNFrameDimension read get_Page;
  end;

  ///<summary>
  ///  提供了获取图像的框架维度的属性。
  ///  不可继承。
  ///</summary>
  [DNTypeName('System.Drawing.Imaging.FrameDimension')]
  DNFrameDimension = interface(DDN.mscorlib.DNObject)
  ['{46DCD9AD-47E5-3ACD-95F1-1D9D21950994}']
  { getters & setters } 

    function get_Guid: DDN.mscorlib.DNGuid;

  { methods } 

    ///<summary>
    ///  返回一个值，该值指示指定的对象是否为 <see cref="T:System.Drawing.Imaging.FrameDimension" />
    ///  等效于此 <see cref="T:System.Drawing.Imaging.FrameDimension" />
    ///  对象。
    ///</summary>
    ///  <param name="o">
    ///  要测试的对象。
    ///</param>
    ///<returns>
    ///  返回 <see langword="true" />
    ///  如果 <paramref name="o" />
    ///  是 <see cref="T:System.Drawing.Imaging.FrameDimension" />
    ///  等效于此 <see cref="T:System.Drawing.Imaging.FrameDimension" />
    ///  对象; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function Equals(o: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  返回此哈希代码 <see cref="T:System.Drawing.Imaging.FrameDimension" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  返回 <see langword="int" />
    ///  该键的哈希代码值 <see cref="T:System.Drawing.Imaging.FrameDimension" />
    ///  对象。
    ///</returns>
    function GetHashCode: Int32;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Imaging.FrameDimension" />
    ///  对象转换为可读的字符串。
    ///</summary>
    ///<returns>
    ///  表示此 <see cref="T:System.Drawing.Imaging.FrameDimension" />
    ///  对象的字符串。
    ///</returns>
    function ToString: string;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取表示此全局唯一标识符 (GUID) <see cref="T:System.Drawing.Imaging.FrameDimension" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  一个 <see langword="Guid" />
    ///  结构，其中包含一个 GUID，表示此 <see cref="T:System.Drawing.Imaging.FrameDimension" />
    ///  对象。
    ///</returns>
    property Guid: DDN.mscorlib.DNGuid read get_Guid;
  end;

  TDNFrameDimension = class(TDNGenericImport<DNFrameDimensionClass, DNFrameDimension>) end;

  //-------------namespace: System.Drawing.Imaging----------------
  DNImageAttributesClass = interface(DDN.mscorlib.DNObjectClass)
  ['{64FD85C9-5B18-5481-8629-5F2381840509}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Drawing.Imaging.ImageAttributes" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNImageAttributes;

  end;

  ///<summary>
  ///  包含有关在呈现时如何操作位图和图元文件颜色的信息。
  ///</summary>
  [DNTypeName('System.Drawing.Imaging.ImageAttributes')]
  DNImageAttributes = interface(DDN.mscorlib.DNObject)
  ['{F8730A05-D36D-3ED8-97B3-A0C36EC3A959}']
  { methods } 

    ///<summary>
    ///  释放由此 <see cref="T:System.Drawing.Imaging.ImageAttributes" />
    ///  对象使用的所有资源。
    ///</summary>
    procedure Dispose;
    ///<summary>
    ///  创建此 <see cref="T:System.Drawing.Imaging.ImageAttributes" />
    ///  对象的一个精确副本。
    ///</summary>
    ///<returns>
    ///  此类创建的 <see cref="T:System.Drawing.Imaging.ImageAttributes" />
    ///  对象，作为一个对象来转换。
    ///</returns>
    function Clone: DDN.mscorlib.DNObject;
    ///<summary>
    ///  为默认类别清除颜色调整矩阵。
    ///</summary>
    procedure ClearColorMatrix;
    ///<summary>
    ///  为默认类别设置阈值（透明范围）。
    ///</summary>
    ///  <param name="threshold">
    ///  指定阈值的实数。
    ///</param>
    procedure SetThreshold(threshold: Single);
    ///<summary>
    ///  为默认类别清除阈值。
    ///</summary>
    procedure ClearThreshold;
    ///<summary>
    ///  为默认类别设置伽玛值。
    ///</summary>
    ///  <param name="gamma">
    ///  灰度校正值。
    ///</param>
    procedure SetGamma(gamma: Single);
    ///<summary>
    ///  为默认类别禁用灰度校正。
    ///</summary>
    procedure ClearGamma;
    ///<summary>
    ///  为默认类别关闭颜色调整。
    ///  可以调用 <see cref="Overload:System.Drawing.Imaging.ImageAttributes.ClearNoOp" />
    ///  方法恢复在调用 <see cref="Overload:System.Drawing.Imaging.ImageAttributes.SetNoOp" />
    ///  方法前已存在的颜色调整设置。
    ///</summary>
    procedure SetNoOp;
    ///<summary>
    ///  清除默认类别的 <see langword="NoOp" />
    ///  设置。
    ///</summary>
    procedure ClearNoOp;
    ///<summary>
    ///  为默认类别设置颜色键。
    ///</summary>
    ///  <param name="colorLow">
    ///  低颜色键值。
    ///</param>
    ///  <param name="colorHigh">
    ///  高颜色键值。
    ///</param>
    procedure SetColorKey(colorLow: DNColor; colorHigh: DNColor);
    ///<summary>
    ///  为默认类别清除颜色键（透明范围）。
    ///</summary>
    procedure ClearColorKey;
    ///<summary>
    ///  为默认类别清除 CMYK（青色-洋红色-黄色-黑色）输出通道设置。
    ///</summary>
    procedure ClearOutputChannel;
    ///<summary>
    ///  为默认类别设置输出通道颜色配置文件。
    ///</summary>
    ///  <param name="colorProfileFilename">
    ///  颜色配置文件的路径名。
    ///  如果颜色配置文件位于 %SystemRoot%\System32\Spool\Drivers\Color 目录中，则该参数可以是该文件的文件名。
    ///  否则，该参数必须是完全限定的路径名。
    ///</param>
    procedure SetOutputChannelColorProfile(colorProfileFilename: string);
    ///<summary>
    ///  为默认类别清除输出通道颜色配置文件设置。
    ///</summary>
    procedure ClearOutputChannelColorProfile;
    ///<summary>
    ///  为默认类别清除颜色重新映射表。
    ///</summary>
    procedure ClearRemapTable;
    ///<summary>
    ///  清除该 <see cref="T:System.Drawing.Imaging.ImageAttributes" />
    ///  对象的画笔颜色重新映射表。
    ///</summary>
    procedure ClearBrushRemapTable;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNImageAttributes = class(TDNGenericImport<DNImageAttributesClass, DNImageAttributes>) end;

  //-------------namespace: System.Drawing.Imaging----------------
  DNImageCodecInfoClass = interface(DDN.mscorlib.DNObjectClass)
  ['{C8865BE7-D8A2-5329-820A-E3B1F73D98DD}']
  { static methods } 

    ///<summary>
    ///  返回的数组 <see cref="T:System.Drawing.Imaging.ImageCodecInfo" />
    ///  对象，其中包含有关内置在 GDI + 的图像解码器的信息。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Imaging.ImageCodecInfo" />
    ///  对象数组。
    ///  每个 <see cref="T:System.Drawing.Imaging.ImageCodecInfo" />
    ///  数组中的对象包含有关某一个内置图像解码器的信息。
    ///</returns>
    {class} function GetImageDecoders: TArray<DNImageCodecInfo>;
    ///<summary>
    ///  返回的数组 <see cref="T:System.Drawing.Imaging.ImageCodecInfo" />
    ///  对象，其中包含有关内置在 GDI + 的图像编码器的信息。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Imaging.ImageCodecInfo" />
    ///  对象数组。
    ///  每个 <see cref="T:System.Drawing.Imaging.ImageCodecInfo" />
    ///  数组中的对象包含有关某一个内置图像编码器的信息。
    ///</returns>
    {class} function GetImageEncoders: TArray<DNImageCodecInfo>;

  end;

  ///<summary><see cref="T:System.Drawing.Imaging.ImageCodecInfo" />
  ///  类提供必要的存储成员和方法来检索有关已安装的图像编码器和解码器 （称为编解码器） 的所有相关信息。
  ///  不可继承。
  ///</summary>
  [DNTypeName('System.Drawing.Imaging.ImageCodecInfo')]
  DNImageCodecInfo = interface(DDN.mscorlib.DNObject)
  ['{537B3612-FB61-3670-ADA4-71FFA9B084A4}']
  { getters & setters } 

    function get_Clsid: DDN.mscorlib.DNGuid;
    procedure set_Clsid(value: DDN.mscorlib.DNGuid);
    function get_FormatID: DDN.mscorlib.DNGuid;
    procedure set_FormatID(value: DDN.mscorlib.DNGuid);
    function get_CodecName: string;
    procedure set_CodecName(value: string);
    function get_DllName: string;
    procedure set_DllName(value: string);
    function get_FormatDescription: string;
    procedure set_FormatDescription(value: string);
    function get_FilenameExtension: string;
    procedure set_FilenameExtension(value: string);
    function get_MimeType: string;
    procedure set_MimeType(value: string);
    function get_Version: Int32;
    procedure set_Version(value: Int32);
    function get_SignaturePatterns: TArray<TArray<Byte>>;
    procedure set_SignaturePatterns(value: TArray<TArray<Byte>>);
    function get_SignatureMasks: TArray<TArray<Byte>>;
    procedure set_SignatureMasks(value: TArray<TArray<Byte>>);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置 <see cref="T:System.Guid" />
    ///  结构，其中包含标识特定的编码解码器的 GUID。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Guid" />
    ///  结构，其中包含标识特定的编码解码器的 GUID。
    ///</returns>
    property Clsid: DDN.mscorlib.DNGuid read get_Clsid write set_Clsid;
    ///<summary>
    ///  获取或设置 <see cref="T:System.Guid" />
    ///  结构，其中包含标识的编解码器格式的 GUID。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Guid" />
    ///  结构，其中包含标识的编解码器格式的 GUID。
    ///</returns>
    property FormatID: DDN.mscorlib.DNGuid read get_FormatID write set_FormatID;
    ///<summary>
    ///  获取或设置一个字符串，包含的编解码器的名称。
    ///</summary>
    ///<returns>
    ///  一个字符串，包含的编解码器的名称。
    ///</returns>
    property CodecName: string read get_CodecName write set_CodecName;
    ///<summary>
    ///  获取或设置字符串，其中包含存放编解码器的 DLL 的路径名称。
    ///  如果编解码器不是在 DLL 中，该指针是 <see langword="null" />
    ///  。
    ///</summary>
    ///<returns>
    ///  一个字符串，其中包含存放编解码器的 DLL 的路径名称。
    ///</returns>
    property DllName: string read get_DllName write set_DllName;
    ///<summary>
    ///  获取或设置一个字符串，描述编解码器的文件格式。
    ///</summary>
    ///<returns>
    ///  一个字符串，描述编解码器的文件格式。
    ///</returns>
    property FormatDescription: string read get_FormatDescription write set_FormatDescription;
    ///<summary>
    ///  获取或设置包含编码解码器中使用的文件扩展名的字符串。
    ///  扩展之间用分号分隔。
    ///</summary>
    ///<returns>
    ///  一个字符串，包含的文件扩展名用于编解码器。
    ///</returns>
    property FilenameExtension: string read get_FilenameExtension write set_FilenameExtension;
    ///<summary>
    ///  获取或设置一个字符串，包含的编解码器的多用途 Internet 邮件扩展 (MIME) 类型。
    ///</summary>
    ///<returns>
    ///  一个字符串，包含的编解码器的多用途 Internet 邮件扩展 (MIME) 类型。
    ///</returns>
    property MimeType: string read get_MimeType write set_MimeType;
    ///<summary>
    ///  获取或设置编解码器的版本号。
    ///</summary>
    ///<returns>
    ///  编解码器的版本号。
    ///</returns>
    property Version: Int32 read get_Version write set_Version;
    ///<summary>
    ///  获取或设置两个字节表示的签名的编解码器的二维数组。
    ///</summary>
    ///<returns>
    ///  两个字节表示的签名的编解码器的二维数组。
    ///</returns>
    property SignaturePatterns: TArray<TArray<Byte>> read get_SignaturePatterns write set_SignaturePatterns;
    ///<summary>
    ///  获取或设置两个二维可以用作筛选器的字节数组。
    ///</summary>
    ///<returns>
    ///  两个二维可以用作筛选器的字节数组。
    ///</returns>
    property SignatureMasks: TArray<TArray<Byte>> read get_SignatureMasks write set_SignatureMasks;
  end;

  TDNImageCodecInfo = class(TDNGenericImport<DNImageCodecInfoClass, DNImageCodecInfo>) end;

  //-------------namespace: System.Drawing.Imaging----------------
  DNImageFormatClass = interface(DDN.mscorlib.DNObjectClass)
  ['{25FC6ED2-3943-578C-9A01-211CB8B0A6F6}']
  { static getter & setter } 

    {class} function get_MemoryBmp: DNImageFormat;
    {class} function get_Bmp: DNImageFormat;
    {class} function get_Emf: DNImageFormat;
    {class} function get_Wmf: DNImageFormat;
    {class} function get_Gif: DNImageFormat;
    {class} function get_Jpeg: DNImageFormat;
    {class} function get_Png: DNImageFormat;
    {class} function get_Tiff: DNImageFormat;
    {class} function get_Exif: DNImageFormat;
    {class} function get_Icon: DNImageFormat;

  { constructors } 

    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  使用指定的类 <see cref="T:System.Guid" />
    ///  结构。
    ///</summary>
    ///  <param name="guid"><see cref="T:System.Guid" />
    ///  结构，它指定特定图像格式。
    ///</param>
    {class} function init(guid: DDN.mscorlib.DNGuid): DNImageFormat;

  { static propertys } 

    ///<summary>
    ///  获取在内存中的位图的格式。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象，它指示在内存中的位图的格式。
    ///</returns>
    {class} property MemoryBmp: DNImageFormat read get_MemoryBmp;
    ///<summary>
    ///  获取位图 (BMP) 图像格式。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象，它指示位图图像格式。
    ///</returns>
    {class} property Bmp: DNImageFormat read get_Bmp;
    ///<summary>
    ///  获取增强型图元文件 (EMF) 图像格式。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象，它指示增强型图元文件图像格式。
    ///</returns>
    {class} property Emf: DNImageFormat read get_Emf;
    ///<summary>
    ///  获取 Windows 图元文件 (WMF) 映像格式。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象，它指示 Windows 图元文件图像格式。
    ///</returns>
    {class} property Wmf: DNImageFormat read get_Wmf;
    ///<summary>
    ///  获取图形交换格式 (GIF) 图像格式。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象，它指示 GIF 图像格式。
    ///</returns>
    {class} property Gif: DNImageFormat read get_Gif;
    ///<summary>
    ///  获取联合图像专家组 (JPEG) 图像格式。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象，它指示 JPEG 图像格式。
    ///</returns>
    {class} property Jpeg: DNImageFormat read get_Jpeg;
    ///<summary>
    ///  获取 W3C 可移植网络图形 (PNG) 图像格式。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象，它指示 PNG 图像格式。
    ///</returns>
    {class} property Png: DNImageFormat read get_Png;
    ///<summary>
    ///  获取标记图像文件格式 (TIFF) 图像格式。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象，它指示 TIFF 图像格式。
    ///</returns>
    {class} property Tiff: DNImageFormat read get_Tiff;
    ///<summary>
    ///  获取可交换图像文件 (Exif) 格式。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象，它指示 Exif 格式。
    ///</returns>
    {class} property Exif: DNImageFormat read get_Exif;
    ///<summary>
    ///  获取 Windows 图标图像格式。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象，它指示 Windows 图标图像格式。
    ///</returns>
    {class} property Icon: DNImageFormat read get_Icon;
  end;

  ///<summary>
  ///  指定图像文件格式。
  ///  不可继承。
  ///</summary>
  [DNTypeName('System.Drawing.Imaging.ImageFormat')]
  DNImageFormat = interface(DDN.mscorlib.DNObject)
  ['{EBB52948-9B23-3FA2-A8D3-F339D076BDA1}']
  { getters & setters } 

    function get_Guid: DDN.mscorlib.DNGuid;

  { methods } 

    ///<summary>
    ///  返回一个值，该值指示指定的对象是否为 <see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象，它等效于此 <see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象。
    ///</summary>
    ///  <param name="o">
    ///  要测试的对象。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果 <paramref name="o" />
    ///  是 <see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象，它等效于此 <see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function Equals(o: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  返回一个表示此对象的哈希代码值。
    ///</summary>
    ///<returns>
    ///  表示此对象哈希代码。
    ///</returns>
    function GetHashCode: Int32;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象转换为可读的字符串。
    ///</summary>
    ///<returns>
    ///  表示此 <see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象的字符串。
    ///</returns>
    function ToString: string;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取 <see cref="T:System.Guid" />
    ///  结构，它表示此 <see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Guid" />
    ///  结构，它表示此 <see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  对象。
    ///</returns>
    property Guid: DDN.mscorlib.DNGuid read get_Guid;
  end;

  TDNImageFormat = class(TDNGenericImport<DNImageFormatClass, DNImageFormat>) end;

  //-------------namespace: System.Drawing.Imaging----------------
  DNPropertyItemClass = interface(DDN.mscorlib.DNObjectClass)
  ['{47C1C0A9-9953-5D4C-A0AD-BD082331D0C9}']
  end;

  ///<summary>
  ///  封装要将图像文件中包含的元数据属性。
  ///  不可继承。
  ///</summary>
  [DNTypeName('System.Drawing.Imaging.PropertyItem')]
  DNPropertyItem = interface(DDN.mscorlib.DNObject)
  ['{8167BE6A-869C-366B-9369-37CA48FFC88C}']
  { getters & setters } 

    function get_Id: Int32;
    procedure set_Id(value: Int32);
    function get_Len: Int32;
    procedure set_Len(value: Int32);
    function get_Type: Int16;
    procedure set_Type(value: Int16);
    function get_Value: TArray<Byte>;
    procedure set_Value(value: TArray<Byte>);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置的属性 ID。
    ///</summary>
    ///<returns>
    ///  一个整数，表示该属性的 ID。
    ///</returns>
    property Id: Int32 read get_Id write set_Id;
    ///<summary>
    ///  获取或设置的长度 （以字节为单位） <see cref="P:System.Drawing.Imaging.PropertyItem.Value" />
    ///  属性。
    ///</summary>
    ///<returns>
    ///  一个整数，表示的长度 （以字节为单位） <see cref="P:System.Drawing.Imaging.PropertyItem.Value" />
    ///  字节数组。
    ///</returns>
    property Len: Int32 read get_Len write set_Len;
    ///<summary>
    ///  获取或设置一个整数，定义中包含的数据类型 <see cref="P:System.Drawing.Imaging.PropertyItem.Value" />
    ///  属性。
    ///</summary>
    ///<returns>
    ///  一个整数，定义中包含的数据类型 <see cref="P:System.Drawing.Imaging.PropertyItem.Value" />
    ///  。
    ///</returns>
    property &Type: Int16 read get_Type write set_Type;
    ///<summary>
    ///  获取或设置属性项的值。
    ///</summary>
    ///<returns>
    ///  一个表示属性项的值的字节数组。
    ///</returns>
    property Value: TArray<Byte> read get_Value write set_Value;
  end;

  TDNPropertyItem = class(TDNGenericImport<DNPropertyItemClass, DNPropertyItem>) end;

  //-------------namespace: System.Drawing.Printing----------------
  DNMarginsClass = interface(DDN.mscorlib.DNObjectClass)
  ['{9C3CF37A-1B86-5A2C-AD1B-1833E79D2D04}']
  { constructors } 

    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Printing.Margins" />
    ///  类 1 英寸宽的边距。
    ///</summary>
    {class} function init: DNMargins; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Printing.Margins" />
    ///  类具有指定左、 右、 顶部、 边距和下边距。
    ///</summary>
    ///  <param name="left">
    ///  左边的距，以百分之一英寸为单位。
    ///</param>
    ///  <param name="right">
    ///  右边距，以百分之一英寸为单位。
    ///</param>
    ///  <param name="top">
    ///  上边距，以百分之一英寸为单位。
    ///</param>
    ///  <param name="bottom">
    ///  下边距，以百分之一英寸。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="left" />
    ///  参数值小于 0。
    ///  - 或 -
    ///  <paramref name="right" />
    ///  参数值小于 0。
    ///  - 或 -
    ///  <paramref name="top" />
    ///  参数值小于 0。
    ///  - 或 -
    ///  <paramref name="bottom" />
    ///  参数值小于 0。
    ///</exception>
    {class} function init(left: Int32; right: Int32; top: Int32; bottom: Int32): DNMargins; overload;

  end;

  ///<summary>
  ///  指定打印页的边距的尺寸。
  ///</summary>
  [DNTypeName('System.Drawing.Printing.Margins')]
  DNMargins = interface(DDN.mscorlib.DNObject)
  ['{E3900763-C225-303C-9673-70085B3ACEEB}']
  { getters & setters } 

    function get_Left: Int32;
    procedure set_Left(value: Int32);
    function get_Right: Int32;
    procedure set_Right(value: Int32);
    function get_Top: Int32;
    procedure set_Top(value: Int32);
    function get_Bottom: Int32;
    procedure set_Bottom(value: Int32);

  { methods } 

    ///<summary>
    ///  检索此对象，逐个成员的副本。
    ///</summary>
    ///<returns>
    ///  此对象的副本。
    ///</returns>
    function Clone: DDN.mscorlib.DNObject;
    ///<summary>
    ///  比较此 <see cref="T:System.Drawing.Printing.Margins" />
    ///  到指定 <see cref="T:System.Object" />
    ///  以确定它们是否具有相同的尺寸。
    ///</summary>
    ///  <param name="obj">
    ///  要进行比较，向其中对象 <see cref="T:System.Drawing.Printing.Margins" />
    ///  。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果指定的对象是 <see cref="T:System.Drawing.Printing.Margins" />
    ///  并具有相同 <see cref="P:System.Drawing.Printing.Margins.Top" />
    ///  , ，<see cref="P:System.Drawing.Printing.Margins.Bottom" />
    ///  , ，<see cref="P:System.Drawing.Printing.Margins.Right" />
    ///  和 <see cref="P:System.Drawing.Printing.Margins.Left" />
    ///  值，则为此 <see cref="T:System.Drawing.Printing.Margins" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  计算并检索基于左、 右、 上边框和下边距宽度的哈希代码。
    ///</summary>
    ///<returns>
    ///  基于左、 右、 上边框和下边距的哈希代码。
    ///</returns>
    function GetHashCode: Int32;
    ///<summary>
    ///  将转换 <see cref="T:System.Drawing.Printing.Margins" />
    ///  为字符串。
    ///</summary>
    ///<returns><see cref="T:System.String" />
    ///  的 <see cref="T:System.Drawing.Printing.Margins" />
    ///  表示形式。
    ///</returns>
    function ToString: string;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取或设置左边的距的宽度，以百分之一英寸。
    ///</summary>
    ///<returns>
    ///  左边的距的宽度，以百分之一英寸。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><see cref="P:System.Drawing.Printing.Margins.Left" />
    ///  属性设置为小于 0 的值。
    ///</exception>
    property Left: Int32 read get_Left write set_Left;
    ///<summary>
    ///  获取或设置右边距的宽度，以百分之一英寸。
    ///</summary>
    ///<returns>
    ///  右边距的宽度，以百分之一英寸。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><see cref="P:System.Drawing.Printing.Margins.Right" />
    ///  属性设置为小于 0 的值。
    ///</exception>
    property Right: Int32 read get_Right write set_Right;
    ///<summary>
    ///  获取或设置上边距宽度，以百分之一英寸。
    ///</summary>
    ///<returns>
    ///  上边距宽度，以百分之一英寸。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><see cref="P:System.Drawing.Printing.Margins.Top" />
    ///  属性设置为小于 0 的值。
    ///</exception>
    property Top: Int32 read get_Top write set_Top;
    ///<summary>
    ///  获取或设置下边距，以百分之一英寸。
    ///</summary>
    ///<returns>
    ///  下边距，以百分之一英寸。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><see cref="P:System.Drawing.Printing.Margins.Bottom" />
    ///  属性设置为小于 0 的值。
    ///</exception>
    property Bottom: Int32 read get_Bottom write set_Bottom;
  end;

  TDNMargins = class(TDNGenericImport<DNMarginsClass, DNMargins>) end;

  //-------------namespace: System.Drawing.Printing----------------
  DNPageSettingsClass = interface(DDN.mscorlib.DNObjectClass)
  ['{1A742101-AB39-5A46-8351-A82BA2415C14}']
  { constructors } 

    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Printing.PageSettings" />
    ///  类使用默认打印机。
    ///</summary>
    {class} function init: DNPageSettings; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Printing.PageSettings" />
    ///  类使用指定的打印机。
    ///</summary>
    ///  <param name="printerSettings"><see cref="T:System.Drawing.Printing.PrinterSettings" />
    ///  ，描述要使用的打印机。
    ///</param>
    {class} function init(printerSettings: DNPrinterSettings): DNPageSettings; overload;

  end;

  ///<summary>
  ///  指定将应用于单个打印页面的设置。
  ///</summary>
  [DNTypeName('System.Drawing.Printing.PageSettings')]
  DNPageSettings = interface(DDN.mscorlib.DNObject)
  ['{AD0BA20F-317B-3261-86E9-488F717D1BA7}']
  { getters & setters } 

    function get_Bounds: DNRectangle;
    function get_Color: Boolean;
    procedure set_Color(value: Boolean);
    function get_HardMarginX: Single;
    function get_HardMarginY: Single;
    function get_Landscape: Boolean;
    procedure set_Landscape(value: Boolean);
    function get_Margins: DNMargins;
    procedure set_Margins(value: DNMargins);
    function get_PaperSize: DNPaperSize;
    procedure set_PaperSize(value: DNPaperSize);
    function get_PaperSource: DNPaperSource;
    procedure set_PaperSource(value: DNPaperSource);
    function get_PrintableArea: DNRectangleF;
    function get_PrinterResolution: DNPrinterResolution;
    procedure set_PrinterResolution(value: DNPrinterResolution);
    function get_PrinterSettings: DNPrinterSettings;
    procedure set_PrinterSettings(value: DNPrinterSettings);

  { methods } 

    ///<summary>
    ///  会创建一份 <see cref="T:System.Drawing.Printing.PageSettings" />
    ///  。
    ///</summary>
    ///<returns>
    ///  该对象的一个副本。
    ///</returns>
    function Clone: DDN.mscorlib.DNObject;
    ///<summary>
    ///  将复制中的相关信息 <see cref="T:System.Drawing.Printing.PageSettings" />
    ///  到指定 <see langword="DEVMODE " />
    ///  结构。
    ///</summary>
    ///  <param name="hdevmode">
    ///  对 Win32 句柄 <see langword="DEVMODE" />
    ///  结构。
    ///</param>
    ///<exception cref="T:System.Drawing.Printing.InvalidPrinterException">
    ///  中指定的打印机 <see cref="P:System.Drawing.Printing.PrinterSettings.PrinterName" />
    ///  属性不存在或未安装的默认打印机。
    ///</exception>
    procedure CopyToHdevmode(hdevmode: IntPtr);
    ///<summary>
    ///  将复制到的相关信息 <see cref="T:System.Drawing.Printing.PageSettings" />
    ///  从指定 <see langword="DEVMODE" />
    ///  结构。
    ///</summary>
    ///  <param name="hdevmode">
    ///  对 Win32 句柄 <see langword="DEVMODE" />
    ///  结构。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  打印机句柄无效。
    ///</exception><exception cref="T:System.Drawing.Printing.InvalidPrinterException">
    ///  中指定的打印机 <see cref="P:System.Drawing.Printing.PrinterSettings.PrinterName" />
    ///  属性不存在或未安装的默认打印机。
    ///</exception>
    procedure SetHdevmode(hdevmode: IntPtr);
    ///<summary>
    ///  将转换 <see cref="T:System.Drawing.Printing.PageSettings" />
    ///  为字符串形式。
    ///</summary>
    ///<returns>
    ///  显示的各种属性设置一个字符串 <see cref="T:System.Drawing.Printing.PageSettings" />
    ///  。
    ///</returns>
    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取页上，考虑到由指定的页面方向的大小 <see cref="P:System.Drawing.Printing.PageSettings.Landscape" />
    ///  属性。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Rectangle" />
    ///  表示长度和宽度，以百分之一英寸的页。
    ///</returns>
    ///<exception cref="T:System.Drawing.Printing.InvalidPrinterException">
    ///  中指定的打印机 <see cref="P:System.Drawing.Printing.PrinterSettings.PrinterName" />
    ///  属性不存在。
    ///</exception>
    property Bounds: DNRectangle read get_Bounds;
    ///<summary>
    ///  获取或设置一个值，该值指示是否应以彩色打印页面。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果应颜色; 在打印的页，否则为 <see langword="false" />
    ///  。
    ///  默认值取决于打印机。
    ///</returns>
    ///<exception cref="T:System.Drawing.Printing.InvalidPrinterException">
    ///  中指定的打印机 <see cref="P:System.Drawing.Printing.PrinterSettings.PrinterName" />
    ///  属性不存在。
    ///</exception>
    property Color: Boolean read get_Color write set_Color;
    ///<summary>
    ///  获取以百分之一英寸，硬距左侧的页上的 x 坐标。
    ///</summary>
    ///<returns>
    ///  X 坐标，以百分之一英寸，左侧的硬页边距。
    ///</returns>
    property HardMarginX: Single read get_HardMarginX;
    ///<summary>
    ///  获取 y 坐标，以百分之一英寸，页顶部的硬边距。
    ///</summary>
    ///<returns>
    ///  Y 坐标，以百分之一英寸，页顶部的硬边距。
    ///</returns>
    property HardMarginY: Single read get_HardMarginY;
    ///<summary>
    ///  获取或设置一个值，该值指示是否在横向或纵向方向打印的页。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果以横向方向; 应打印的页，否则为 <see langword="false" />
    ///  。
    ///  默认值取决于打印机。
    ///</returns>
    ///<exception cref="T:System.Drawing.Printing.InvalidPrinterException">
    ///  中指定的打印机 <see cref="P:System.Drawing.Printing.PrinterSettings.PrinterName" />
    ///  属性不存在。
    ///</exception>
    property Landscape: Boolean read get_Landscape write set_Landscape;
    ///<summary>
    ///  获取或设置此页的边距。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Printing.Margins" />
    ///  表示中百分之一英寸的页的边距。
    ///  默认值为各边的 1 英寸边距。
    ///</returns>
    ///<exception cref="T:System.Drawing.Printing.InvalidPrinterException">
    ///  中指定的打印机 <see cref="P:System.Drawing.Printing.PrinterSettings.PrinterName" />
    ///  属性不存在。
    ///</exception>
    property Margins: DNMargins read get_Margins write set_Margins;
    ///<summary>
    ///  获取或设置页上的纸张大小。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Printing.PaperSize" />
    ///  表示在纸张的大小。
    ///  默认值为打印机的默认纸张大小。
    ///</returns>
    ///<exception cref="T:System.Drawing.Printing.InvalidPrinterException">
    ///  中指定的打印机 <see cref="P:System.Drawing.Printing.PrinterSettings.PrinterName" />
    ///  属性不存在或未安装的默认打印机。
    ///</exception>
    property PaperSize: DNPaperSize read get_PaperSize write set_PaperSize;
    ///<summary>
    ///  获取或设置页的纸张来源;例如，打印机的上层送纸器。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Printing.PaperSource" />
    ///  ，它指定纸张来源。
    ///  默认值为打印机的默认纸张来源。
    ///</returns>
    ///<exception cref="T:System.Drawing.Printing.InvalidPrinterException">
    ///  中指定的打印机 <see cref="P:System.Drawing.Printing.PrinterSettings.PrinterName" />
    ///  属性不存在或未安装的默认打印机。
    ///</exception>
    property PaperSource: DNPaperSource read get_PaperSource write set_PaperSource;
    ///<summary>
    ///  获取打印机页上的可打印区域的边界。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.RectangleF" />
    ///  表示长度和宽度，以百分之一英寸，区域的打印机是否能够在打印。
    ///</returns>
    property PrintableArea: DNRectangleF read get_PrintableArea;
    ///<summary>
    ///  获取或设置页上的打印机分辨率。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Printing.PrinterResolution" />
    ///  ，它指定页上的打印机分辨率。
    ///  默认值为打印机的默认解析。
    ///</returns>
    ///<exception cref="T:System.Drawing.Printing.InvalidPrinterException">
    ///  中指定的打印机 <see cref="P:System.Drawing.Printing.PrinterSettings.PrinterName" />
    ///  属性不存在或未安装的默认打印机。
    ///</exception>
    property PrinterResolution: DNPrinterResolution read get_PrinterResolution write set_PrinterResolution;
    ///<summary>
    ///  获取或设置与页关联的打印机设置。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Printing.PrinterSettings" />
    ///  ，表示与页关联的打印机设置。
    ///</returns>
    property PrinterSettings: DNPrinterSettings read get_PrinterSettings write set_PrinterSettings;
  end;

  TDNPageSettings = class(TDNGenericImport<DNPageSettingsClass, DNPageSettings>) end;

  //-------------namespace: System.Drawing.Printing----------------
  DNPaperSizeClass = interface(DDN.mscorlib.DNObjectClass)
  ['{8EDA3B12-D5E3-5F25-B87F-D32097D3FB96}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Drawing.Printing.PaperSize" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNPaperSize; overload;
    ///<summary>
    ///  初始化 <see cref="T:System.Drawing.Printing.PaperSize" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="name">
    ///  在纸张的名称。
    ///</param>
    ///  <param name="width">
    ///  中百分之一英寸的纸张的宽度。
    ///</param>
    ///  <param name="height">
    ///  中百分之一英寸的纸张的高度。
    ///</param>
    {class} function init(name: string; width: Int32; height: Int32): DNPaperSize; overload;

  end;

  ///<summary>
  ///  指定一张纸的大小。
  ///</summary>
  [DNTypeName('System.Drawing.Printing.PaperSize')]
  DNPaperSize = interface(DDN.mscorlib.DNObject)
  ['{19C1F738-FF0A-34D5-8CA1-0FE5B08906EB}']
  { getters & setters } 

    function get_Height: Int32;
    procedure set_Height(value: Int32);
    function get_PaperName: string;
    procedure set_PaperName(value: string);
    function get_RawKind: Int32;
    procedure set_RawKind(value: Int32);
    function get_Width: Int32;
    procedure set_Width(value: Int32);

  { methods } 

    ///<summary>
    ///  提供以下信息 <see cref="T:System.Drawing.Printing.PaperSize" />
    ///  以字符串形式。
    ///</summary>
    ///<returns>
    ///  一个字符串。
    ///</returns>
    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取或设置在纸张的高度以百分之一英寸。
    ///</summary>
    ///<returns>
    ///  中百分之一英寸的纸张的高度。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><see cref="P:System.Drawing.Printing.PaperSize.Kind" />
    ///  属性未设置为 <see cref="F:System.Drawing.Printing.PaperKind.Custom" />
    ///  。
    ///</exception>
    property Height: Int32 read get_Height write set_Height;
    ///<summary>
    ///  获取或设置的纸张类型的名称。
    ///</summary>
    ///<returns>
    ///  纸张类型的名称。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><see cref="P:System.Drawing.Printing.PaperSize.Kind" />
    ///  属性未设置为 <see cref="F:System.Drawing.Printing.PaperKind.Custom" />
    ///  。
    ///</exception>
    property PaperName: string read get_PaperName write set_PaperName;
    ///<summary>
    ///  获取或设置一个整数，表示之一 <see cref="T:System.Drawing.Printing.PaperSize" />
    ///  值或自定义值。
    ///</summary>
    ///<returns>
    ///  一个整数，表示之一 <see cref="T:System.Drawing.Printing.PaperSize" />
    ///  值或自定义的值。
    ///</returns>
    property RawKind: Int32 read get_RawKind write set_RawKind;
    ///<summary>
    ///  获取或设置在纸张的宽度以百分之一英寸。
    ///</summary>
    ///<returns>
    ///  中百分之一英寸纸张的宽度。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><see cref="P:System.Drawing.Printing.PaperSize.Kind" />
    ///  属性未设置为<see cref="F:System.Drawing.Printing.PaperKind.Custom" />
    ///  。
    ///</exception>
    property Width: Int32 read get_Width write set_Width;
  end;

  TDNPaperSize = class(TDNGenericImport<DNPaperSizeClass, DNPaperSize>) end;

  //-------------namespace: System.Drawing.Printing----------------
  DNPaperSourceClass = interface(DDN.mscorlib.DNObjectClass)
  ['{1E071617-CB4D-5AA8-97E5-B16FCDD4823E}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Drawing.Printing.PaperSource" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNPaperSource;

  end;

  ///<summary>
  ///  指定从中给打印机送纸的送纸器。
  ///</summary>
  [DNTypeName('System.Drawing.Printing.PaperSource')]
  DNPaperSource = interface(DDN.mscorlib.DNObject)
  ['{42181C14-259D-307A-8D1A-B2B952F93DC7}']
  { getters & setters } 

    function get_RawKind: Int32;
    procedure set_RawKind(value: Int32);
    function get_SourceName: string;
    procedure set_SourceName(value: string);

  { methods } 

    ///<summary>
    ///  提供以下信息 <see cref="T:System.Drawing.Printing.PaperSource" />
    ///  以字符串形式。
    ///</summary>
    ///<returns>
    ///  一个字符串。
    ///</returns>
    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取或设置表示之一的整数 <see cref="T:System.Drawing.Printing.PaperSourceKind" />
    ///  值或自定义值。
    ///</summary>
    ///<returns>
    ///  整数值，表示之一 <see cref="T:System.Drawing.Printing.PaperSourceKind" />
    ///  值或自定义值。
    ///</returns>
    property RawKind: Int32 read get_RawKind write set_RawKind;
    ///<summary>
    ///  获取或设置纸张来源的名称。
    ///</summary>
    ///<returns>
    ///  纸张来源的名称。
    ///</returns>
    property SourceName: string read get_SourceName write set_SourceName;
  end;

  TDNPaperSource = class(TDNGenericImport<DNPaperSourceClass, DNPaperSource>) end;

  //-------------namespace: System.Drawing.Printing----------------
  DNPrintControllerClass = interface(DDN.mscorlib.DNObjectClass)
  ['{AF429C9D-CD57-5F4C-96F8-DEE2A5F0DFFD}']
  end;

  ///<summary>
  ///  控制如何打印文档时，从 Windows 窗体应用程序打印时。
  ///</summary>
  [DNTypeName('System.Drawing.Printing.PrintController')]
  DNPrintController = interface(DDN.mscorlib.DNObject)
  ['{1FF59139-A803-31C5-B176-6D24D5A3BF55}']
  { getters & setters } 

    function get_IsPreview: Boolean;

  { methods } 

    ///<summary>
    ///  当在派生类中重写，开始控制序列，该序列确定何时以及如何打印文档。
    ///</summary>
    ///  <param name="document">
    ///  一个 <see cref="T:System.Drawing.Printing.PrintDocument" />
    ///  它表示当前正在打印的文档。
    ///</param>
    ///  <param name="e">
    ///  包含事件数据的 <see cref="T:System.Drawing.Printing.PrintEventArgs" />
    ///  。
    ///</param>
    procedure OnStartPrint(document: DNPrintDocument; e: DNPrintEventArgs);
    ///<summary>
    ///  当在派生类中重写，开始控制序列，该序列确定何时以及如何打印文档的页。
    ///</summary>
    ///  <param name="document">
    ///  一个 <see cref="T:System.Drawing.Printing.PrintDocument" />
    ///  它表示当前正在打印的文档。
    ///</param>
    ///  <param name="e">
    ///  包含事件数据的 <see cref="T:System.Drawing.Printing.PrintPageEventArgs" />
    ///  。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Graphics" />
    ///  表示中的一页 <see cref="T:System.Drawing.Printing.PrintDocument" />
    ///  。
    ///</returns>
    function OnStartPage(document: DNPrintDocument; e: DNPrintPageEventArgs): DNGraphics;
    ///<summary>
    ///  当在派生类中重写，完成控制序列，该序列确定何时以及如何打印文档的页。
    ///</summary>
    ///  <param name="document">
    ///  一个 <see cref="T:System.Drawing.Printing.PrintDocument" />
    ///  它表示当前正在打印的文档。
    ///</param>
    ///  <param name="e">
    ///  包含事件数据的 <see cref="T:System.Drawing.Printing.PrintPageEventArgs" />
    ///  。
    ///</param>
    procedure OnEndPage(document: DNPrintDocument; e: DNPrintPageEventArgs);
    ///<summary>
    ///  当在派生类中重写，完成控制序列，该序列确定何时以及如何打印文档。
    ///</summary>
    ///  <param name="document">
    ///  一个 <see cref="T:System.Drawing.Printing.PrintDocument" />
    ///  它表示当前正在打印的文档。
    ///</param>
    ///  <param name="e">
    ///  包含事件数据的 <see cref="T:System.Drawing.Printing.PrintEventArgs" />
    ///  。
    ///</param>
    procedure OnEndPrint(document: DNPrintDocument; e: DNPrintEventArgs);
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取一个值，该值指示是否 <see cref="T:System.Drawing.Printing.PrintController" />
    ///  用于打印预览。
    ///</summary>
    ///<returns>
    ///  在所有情况下均为 <see langword="false" />
    ///  。
    ///</returns>
    property IsPreview: Boolean read get_IsPreview;
  end;

  TDNPrintController = class(TDNGenericImport<DNPrintControllerClass, DNPrintController>) end;

  //-------------namespace: System.Drawing.Printing----------------
  DNPrinterResolutionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{BE7C6948-F399-5E8D-ABFF-7A901642495B}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Drawing.Printing.PrinterResolution" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNPrinterResolution;

  end;

  ///<summary>
  ///  表示打印机支持的分辨率。
  ///</summary>
  [DNTypeName('System.Drawing.Printing.PrinterResolution')]
  DNPrinterResolution = interface(DDN.mscorlib.DNObject)
  ['{75B45367-ECCC-30F8-86CD-7748B9CC6B7F}']
  { getters & setters } 

    function get_X: Int32;
    procedure set_X(value: Int32);
    function get_Y: Int32;
    procedure set_Y(value: Int32);

  { methods } 

    ///<summary>
    ///  此成员重写 <see cref="M:System.Object.ToString" />
    ///  方法。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，包含有关 <see cref="T:System.Drawing.Printing.PrinterResolution" />
    ///  的信息。
    ///</returns>
    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取以每英寸点数打印机水平分辨率。
    ///</summary>
    ///<returns>
    ///  水平打印机分辨率，以每英寸点数，如果 <see cref="P:System.Drawing.Printing.PrinterResolution.Kind" />
    ///  设置为 <see cref="F:System.Drawing.Printing.PrinterResolutionKind.Custom" />
    ///  ; 否则为 <see langword="dmPrintQuality" />
    ///  值。
    ///</returns>
    property X: Int32 read get_X write set_X;
    ///<summary>
    ///  获取垂直打印机分辨率以每英寸点数。
    ///</summary>
    ///<returns>
    ///  垂直打印机分辨率，以每英寸点数为单位。
    ///</returns>
    property Y: Int32 read get_Y write set_Y;
  end;

  TDNPrinterResolution = class(TDNGenericImport<DNPrinterResolutionClass, DNPrinterResolution>) end;

  //-------------namespace: System.Drawing.Printing----------------
  DNPrinterSettingsClass = interface(DDN.mscorlib.DNObjectClass)
  ['{7676BB00-8FB4-5924-B413-C4DEDEA38DE2}']
  { static getter & setter } 

    {class} function get_InstalledPrinters: DNPrinterSettings_StringCollection;

  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Drawing.Printing.PrinterSettings" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNPrinterSettings;

  { static propertys } 

    ///<summary>
    ///  获取在计算机上安装的所有打印机的名称。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Printing.PrinterSettings.StringCollection" />
    ///  表示计算机上安装的所有打印机的名称。
    ///</returns>
    ///<exception cref="T:System.ComponentModel.Win32Exception">
    ///  无法枚举可用的打印机。
    ///</exception>
    {class} property InstalledPrinters: DNPrinterSettings_StringCollection read get_InstalledPrinters;
  end;

  ///<summary>
  ///  指定有关文档的打印方式，包括打印，从 Windows 窗体应用程序打印时的打印机信息。
  ///</summary>
  [DNTypeName('System.Drawing.Printing.PrinterSettings')]
  DNPrinterSettings = interface(DDN.mscorlib.DNObject)
  ['{5C0D0EE8-9D2A-3308-A024-607A2B3101D6}']
  { getters & setters } 

    function get_CanDuplex: Boolean;
    function get_Copies: Int16;
    procedure set_Copies(value: Int16);
    function get_Collate: Boolean;
    procedure set_Collate(value: Boolean);
    function get_DefaultPageSettings: DNPageSettings;
    function get_Duplex: DNDuplex;
    procedure set_Duplex(value: DNDuplex);
    function get_FromPage: Int32;
    procedure set_FromPage(value: Int32);
    function get_IsDefaultPrinter: Boolean;
    function get_IsPlotter: Boolean;
    function get_IsValid: Boolean;
    function get_LandscapeAngle: Int32;
    function get_MaximumCopies: Int32;
    function get_MaximumPage: Int32;
    procedure set_MaximumPage(value: Int32);
    function get_MinimumPage: Int32;
    procedure set_MinimumPage(value: Int32);
    function get_PrintFileName: string;
    procedure set_PrintFileName(value: string);
    function get_PaperSizes: DNPrinterSettings_PaperSizeCollection;
    function get_PaperSources: DNPrinterSettings_PaperSourceCollection;
    function get_PrintRange: DNPrintRange;
    procedure set_PrintRange(value: DNPrintRange);
    function get_PrintToFile: Boolean;
    procedure set_PrintToFile(value: Boolean);
    function get_PrinterName: string;
    procedure set_PrinterName(value: string);
    function get_PrinterResolutions: DNPrinterSettings_PrinterResolutionCollection;
    function get_SupportsColor: Boolean;
    function get_ToPage: Int32;
    procedure set_ToPage(value: Int32);

  { methods } 

    ///<summary>
    ///  返回一个值，该值的打印机是否支持打印指定的图像格式。
    ///</summary>
    ///  <param name="imageFormat"><see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  打印。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果打印机支持打印指定的图像格式;，否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsDirectPrintingSupported(imageFormat: DNImageFormat): Boolean; overload;
    ///<summary>
    ///  会创建一份 <see cref="T:System.Drawing.Printing.PrinterSettings" />
    ///  。
    ///</summary>
    ///<returns>
    ///  该对象的一个副本。
    ///</returns>
    function Clone: DDN.mscorlib.DNObject;
    ///<summary>
    ///  返回 <see cref="T:System.Drawing.Graphics" />
    ///  ，包含创建时很有帮助的打印机信息 <see cref="T:System.Drawing.Printing.PrintDocument" />
    ///  。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Graphics" />
    ///  包含来自打印机的信息。
    ///</returns>
    ///<exception cref="T:System.Drawing.Printing.InvalidPrinterException">
    ///  中指定的打印机 <see cref="P:System.Drawing.Printing.PrinterSettings.PrinterName" />
    ///  属性不存在。
    ///</exception>
    function CreateMeasurementGraphics: DNGraphics; overload;
    ///<summary>
    ///  返回<see cref="T:System.Drawing.Graphics" />
    ///  包含打印机信息，可以选择指定边距处原点。
    ///</summary>
    ///  <param name="honorOriginAtMargins"><see langword="true" />
    ///  若要指示边距; 处的原点否则为<see langword="false" />
    ///  。
    ///</param>
    ///<returns>
    ///  A <see cref="T:System.Drawing.Graphics" />
    ///  ，包含从的打印机信息<see cref="T:System.Drawing.Printing.PageSettings" />
    ///  。
    ///</returns>
    function CreateMeasurementGraphics(honorOriginAtMargins: Boolean): DNGraphics; overload;
    ///<summary>
    ///  返回 <see cref="T:System.Drawing.Graphics" />
    ///  ，包含具有指定关联的打印机信息 <see cref="T:System.Drawing.Printing.PageSettings" />
    ///  。
    ///</summary>
    ///  <param name="pageSettings"><see cref="T:System.Drawing.Printing.PageSettings" />
    ///  要检索的 graphics 对象。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Graphics" />
    ///  包含打印机信息 <see cref="T:System.Drawing.Printing.PageSettings" />
    ///  。
    ///</returns>
    function CreateMeasurementGraphics(pageSettings: DNPageSettings): DNGraphics; overload;
    ///<summary>
    ///  创建 <see cref="T:System.Drawing.Graphics" />
    ///  与指定的页设置相关联，并选择性地指定边距处原点。
    ///</summary>
    ///  <param name="pageSettings"><see cref="T:System.Drawing.Printing.PageSettings" />
    ///  检索 <see cref="T:System.Drawing.Graphics" />
    ///  对象。
    ///</param>
    ///  <param name="honorOriginAtMargins"><see langword="true" />
    ///  若要指定边距; 处原点否则为 <see langword="false" />
    ///  。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Graphics" />
    ///  包含打印机信息 <see cref="T:System.Drawing.Printing.PageSettings" />
    ///  。
    ///</returns>
    function CreateMeasurementGraphics(pageSettings: DNPageSettings; honorOriginAtMargins: Boolean): DNGraphics; overload;
    ///<summary>
    ///  创建到一个句柄 <see langword="DEVMODE" />
    ///  结构，它对应于打印机设置。
    ///</summary>
    ///<returns>
    ///  句柄 <see langword="DEVMODE" />
    ///  结构。
    ///</returns>
    ///<exception cref="T:System.Drawing.Printing.InvalidPrinterException">
    ///  中指定的打印机 <see cref="P:System.Drawing.Printing.PrinterSettings.PrinterName" />
    ///  属性不存在。
    ///</exception><exception cref="T:System.ComponentModel.Win32Exception">
    ///  无法检索打印机的初始化信息。
    ///</exception>
    function GetHdevmode: IntPtr; overload;
    ///<summary>
    ///  创建到一个句柄 <see langword="DEVMODE" />
    ///  结构，它对应于打印机和通过指定的页设置 <paramref name="pageSettings" />
    ///  参数。
    ///</summary>
    ///  <param name="pageSettings"><see cref="T:System.Drawing.Printing.PageSettings" />
    ///  对象 <see langword="DEVMODE" />
    ///  结构的句柄对应。
    ///</param>
    ///<returns>
    ///  句柄 <see langword="DEVMODE" />
    ///  结构。
    ///</returns>
    ///<exception cref="T:System.Drawing.Printing.InvalidPrinterException">
    ///  中指定的打印机 <see cref="P:System.Drawing.Printing.PrinterSettings.PrinterName" />
    ///  属性不存在。
    ///</exception><exception cref="T:System.ComponentModel.Win32Exception">
    ///  无法检索打印机的初始化信息。
    ///</exception>
    function GetHdevmode(pageSettings: DNPageSettings): IntPtr; overload;
    ///<summary>
    ///  创建到一个句柄 <see langword="DEVNAMES" />
    ///  结构，它对应于打印机设置。
    ///</summary>
    ///<returns>
    ///  句柄 <see langword="DEVNAMES" />
    ///  结构。
    ///</returns>
    function GetHdevnames: IntPtr;
    ///<summary>
    ///  获取一个值，该值的打印机是否支持打印指定的图像文件。
    ///</summary>
    ///  <param name="image">
    ///  要打印的图像。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果打印机支持打印指定的图像;，否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsDirectPrintingSupported(image: DNImage): Boolean; overload;
    ///<summary>
    ///  将给定句柄出来放入相关的信息复制 <see cref="T:System.Drawing.Printing.PrinterSettings" />
    ///  。
    ///</summary>
    ///  <param name="hdevmode">
    ///  对 Win32 句柄 <see langword="DEVMODE" />
    ///  结构。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  打印机句柄无效。
    ///</exception>
    procedure SetHdevmode(hdevmode: IntPtr);
    ///<summary>
    ///  将给定句柄出来放入相关的信息复制 <see cref="T:System.Drawing.Printing.PrinterSettings" />
    ///  。
    ///</summary>
    ///  <param name="hdevnames">
    ///  对 Win32 句柄 <see langword="DEVNAMES" />
    ///  结构。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  打印机句柄无效。
    ///</exception>
    procedure SetHdevnames(hdevnames: IntPtr);
    ///<summary>
    ///  提供以下信息 <see cref="T:System.Drawing.Printing.PrinterSettings" />
    ///  以字符串形式。
    ///</summary>
    ///<returns>
    ///  一个字符串。
    ///</returns>
    function ToString: string;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取一个值，该值指示是否打印机支持双面打印。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果打印机支持双面打印;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property CanDuplex: Boolean read get_CanDuplex;
    ///<summary>
    ///  获取或设置要打印的文档的副本数。
    ///</summary>
    ///<returns>
    ///  要打印的份数。
    ///  默认值为 1。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  值 <see cref="P:System.Drawing.Printing.PrinterSettings.Copies" />
    ///  属性也不可小于零。
    ///</exception>
    property Copies: Int16 read get_Copies write set_Copies;
    ///<summary>
    ///  获取或设置一个值，该值指示是否逐份打印的文档。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果逐份打印的文档否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property Collate: Boolean read get_Collate write set_Collate;
    ///<summary>
    ///  获取默认值为此打印机的页设置。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Printing.PageSettings" />
    ///  ，表示此打印机的默认页设置。
    ///</returns>
    property DefaultPageSettings: DNPageSettings read get_DefaultPageSettings;
    ///<summary>
    ///  获取或设置双面打印的打印机设置。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Printing.Duplex" />
    ///  值之一。
    ///  默认值取决于打印机。
    ///</returns>
    ///<exception cref="T:System.ComponentModel.InvalidEnumArgumentException">
    ///  值 <see cref="P:System.Drawing.Printing.PrinterSettings.Duplex" />
    ///  属性不属于某个 <see cref="T:System.Drawing.Printing.Duplex" />
    ///  值。
    ///</exception>
    property Duplex: DNDuplex read get_Duplex write set_Duplex;
    ///<summary>
    ///  获取或设置要打印的第一页的页码。
    ///</summary>
    ///<returns>
    ///  若要打印的第一页的页码。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><see cref="P:System.Drawing.Printing.PrinterSettings.FromPage" />
    ///  属性的值小于零。
    ///</exception>
    property FromPage: Int32 read get_FromPage write set_FromPage;
    ///<summary>
    ///  获取一个值，该值指示是否 <see cref="P:System.Drawing.Printing.PrinterSettings.PrinterName" />
    ///  属性指定默认打印机，除用户显式设置 <see cref="P:System.Drawing.Printing.PrinterSettings.PrinterName" />
    ///  。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果 <see cref="P:System.Drawing.Printing.PrinterSettings.PrinterName" />
    ///  指定默认打印机; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsDefaultPrinter: Boolean read get_IsDefaultPrinter;
    ///<summary>
    ///  获取一个值，该值指示该打印机是否绘图。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果打印机绘图仪; <see langword="false" />
    ///  如果打印机光栅。
    ///</returns>
    property IsPlotter: Boolean read get_IsPlotter;
    ///<summary>
    ///  获取一个值，该值指示是否 <see cref="P:System.Drawing.Printing.PrinterSettings.PrinterName" />
    ///  属性指定有效的打印机。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果 <see cref="P:System.Drawing.Printing.PrinterSettings.PrinterName" />
    ///  属性指定有效的打印机; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsValid: Boolean read get_IsValid;
    ///<summary>
    ///  获取纵向方向旋转以生成横向方向的角度，以度为单位。
    ///</summary>
    ///<returns>
    ///  角度 （以度为单位，纵向方向旋转以生成横向方向）。
    ///</returns>
    property LandscapeAngle: Int32 read get_LandscapeAngle;
    ///<summary>
    ///  获取最大的打印机使用户能够一次打印的份数。
    ///</summary>
    ///<returns>
    ///  最大打印机使用户能够一次打印的份数。
    ///</returns>
    property MaximumCopies: Int32 read get_MaximumCopies;
    ///<summary>
    ///  获取或设置最大 <see cref="P:System.Drawing.Printing.PrinterSettings.FromPage" />
    ///  或 <see cref="P:System.Drawing.Printing.PrinterSettings.ToPage" />
    ///  可选择在 <see cref="T:System.Windows.Forms.PrintDialog" />
    ///  。
    ///</summary>
    ///<returns>
    ///  最大值 <see cref="P:System.Drawing.Printing.PrinterSettings.FromPage" />
    ///  或 <see cref="P:System.Drawing.Printing.PrinterSettings.ToPage" />
    ///  可选择在 <see cref="T:System.Windows.Forms.PrintDialog" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  值 <see cref="P:System.Drawing.Printing.PrinterSettings.MaximumPage" />
    ///  属性也不可小于零。
    ///</exception>
    property MaximumPage: Int32 read get_MaximumPage write set_MaximumPage;
    ///<summary>
    ///  获取或设置所需的最低 <see cref="P:System.Drawing.Printing.PrinterSettings.FromPage" />
    ///  或 <see cref="P:System.Drawing.Printing.PrinterSettings.ToPage" />
    ///  可选择在 <see cref="T:System.Windows.Forms.PrintDialog" />
    ///  。
    ///</summary>
    ///<returns>
    ///  所需的最低 <see cref="P:System.Drawing.Printing.PrinterSettings.FromPage" />
    ///  或 <see cref="P:System.Drawing.Printing.PrinterSettings.ToPage" />
    ///  可选择在 <see cref="T:System.Windows.Forms.PrintDialog" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  值 <see cref="P:System.Drawing.Printing.PrinterSettings.MinimumPage" />
    ///  属性也不可小于零。
    ///</exception>
    property MinimumPage: Int32 read get_MinimumPage write set_MinimumPage;
    ///<summary>
    ///  获取或设置时打印到文件的文件名。
    ///</summary>
    ///<returns>
    ///  打印到文件时文件名称。
    ///</returns>
    property PrintFileName: string read get_PrintFileName write set_PrintFileName;
    ///<summary>
    ///  获取支持的这台打印机的纸张大小。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Printing.PrinterSettings.PaperSizeCollection" />
    ///  ，表示支持的这台打印机的纸张大小。
    ///</returns>
    property PaperSizes: DNPrinterSettings_PaperSizeCollection read get_PaperSizes;
    ///<summary>
    ///  获取可用打印机的纸张来源纸盒。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Printing.PrinterSettings.PaperSourceCollection" />
    ///  ，它表示位于这台打印机的纸张来源纸盒。
    ///</returns>
    property PaperSources: DNPrinterSettings_PaperSourceCollection read get_PaperSources;
    ///<summary>
    ///  获取或设置用户已指定要打印的页码。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Printing.PrintRange" />
    ///  值之一。
    ///</returns>
    ///<exception cref="T:System.ComponentModel.InvalidEnumArgumentException">
    ///  值 <see cref="P:System.Drawing.Printing.PrinterSettings.PrintRange" />
    ///  属性不属于某个 <see cref="T:System.Drawing.Printing.PrintRange" />
    ///  值。
    ///</exception>
    property PrintRange: DNPrintRange read get_PrintRange write set_PrintRange;
    ///<summary>
    ///  获取或设置一个值，该值指示是否打印输出发送到一个文件而不是一个端口。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果打印输出发送到一个文件;否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property PrintToFile: Boolean read get_PrintToFile write set_PrintToFile;
    ///<summary>
    ///  获取或设置要使用的打印机的名称。
    ///</summary>
    ///<returns>
    ///  要使用的打印机的名称。
    ///</returns>
    property PrinterName: string read get_PrinterName write set_PrinterName;
    ///<summary>
    ///  获取所有支持的这台打印机的解决方法。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Printing.PrinterSettings.PrinterResolutionCollection" />
    ///  ，表示支持的这台打印机的解决方法。
    ///</returns>
    property PrinterResolutions: DNPrinterSettings_PrinterResolutionCollection read get_PrinterResolutions;
    ///<summary>
    ///  获取一个值，该值指示是否此打印机支持彩色打印。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果此打印机支持彩色打印否则为 <see langword="false" />
    ///  。
    ///</returns>
    property SupportsColor: Boolean read get_SupportsColor;
    ///<summary>
    ///  获取或设置要打印的最后一页的数目。
    ///</summary>
    ///<returns>
    ///  若要打印的最后一页的数。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  值 <see cref="P:System.Drawing.Printing.PrinterSettings.ToPage" />
    ///  属性也不可小于零。
    ///</exception>
    property ToPage: Int32 read get_ToPage write set_ToPage;
  end;

  TDNPrinterSettings = class(TDNGenericImport<DNPrinterSettingsClass, DNPrinterSettings>) end;

  //-------------namespace: System.Drawing.Printing----------------
  DNPrinterSettings_PaperSizeCollectionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{D314BDB6-5CFF-5342-9670-44AAC3799605}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Drawing.Printing.PrinterSettings.PaperSizeCollection" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="array"><see cref="T:System.Drawing.Printing.PaperSize" />
    ///  类型的数组。
    ///</param>
    {class} function init(&array: TArray<DNPaperSize>): DNPrinterSettings_PaperSizeCollection;

  end;

  ///<summary>
  ///  包含 <see cref="T:System.Drawing.Printing.PaperSize" />
  ///  对象的集合。
  ///</summary>
  [DNTypeName('System.Drawing.Printing.PrinterSettings+PaperSizeCollection')]
  DNPrinterSettings_PaperSizeCollection = interface(DDN.mscorlib.DNObject)
  ['{F2DC6D91-B2ED-36E4-B5A2-706A808045D2}']
  { getters & setters } 

    function get_Count: Int32;
    function get_Item(index: Int32): DNPaperSize;

  { methods } 

    ///<summary>
    ///  返回一个可循环访问集合的枚举数。
    ///</summary>
    ///<returns>
    ///  用于 <see cref="T:System.Collections.IEnumerator" />
    ///  的 <see cref="T:System.Drawing.Printing.PrinterSettings.PaperSizeCollection" />
    ///  。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    ///<summary>
    ///  将当前的内容复制 <see cref="T:System.Drawing.Printing.PrinterSettings.PaperSizeCollection" />
    ///  到指定的数组，指定索引处开始。
    ///</summary>
    ///  <param name="paperSizes">
    ///  从零开始的数组，用于接收从复制的项 <see cref="T:System.Drawing.Printing.PrinterSettings.PaperSizeCollection" />
    ///  。
    ///</param>
    ///  <param name="index">
    ///  从此处开始复制的项索引。
    ///</param>
    procedure CopyTo(paperSizes: TArray<DNPaperSize>; index: Int32);
    ///<summary>
    ///  添加 <see cref="T:System.Drawing.Printing.PrinterResolution" />
    ///  到集合的末尾。
    ///</summary>
    ///  <param name="paperSize">
    ///  要添加到集合中的 <see cref="T:System.Drawing.Printing.PaperSize" />
    ///  。
    ///</param>
    ///<returns>
    ///  新添加的项的从零开始索引。
    ///</returns>
    function Add(paperSize: DNPaperSize): Int32;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取集合中的不同的纸张大小的数目。
    ///</summary>
    ///<returns>
    ///  集合中的不同的纸张大小的数目。
    ///</returns>
    property Count: Int32 read get_Count;
    property Item[index: Int32]: DNPaperSize read get_Item; default;
  end;

  TDNPrinterSettings_PaperSizeCollection = class(TDNGenericImport<DNPrinterSettings_PaperSizeCollectionClass, DNPrinterSettings_PaperSizeCollection>) end;

  //-------------namespace: System.Drawing.Printing----------------
  DNPrinterSettings_PaperSourceCollectionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{5100E56B-B5DC-5249-B8D7-B0F2B861D340}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Drawing.Printing.PrinterSettings.PaperSourceCollection" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="array"><see cref="T:System.Drawing.Printing.PaperSource" />
    ///  类型的数组。
    ///</param>
    {class} function init(&array: TArray<DNPaperSource>): DNPrinterSettings_PaperSourceCollection;

  end;

  ///<summary>
  ///  包含 <see cref="T:System.Drawing.Printing.PaperSource" />
  ///  对象的集合。
  ///</summary>
  [DNTypeName('System.Drawing.Printing.PrinterSettings+PaperSourceCollection')]
  DNPrinterSettings_PaperSourceCollection = interface(DDN.mscorlib.DNObject)
  ['{0CB10CF3-79E3-3D88-93A5-DD986AFAF5BA}']
  { getters & setters } 

    function get_Count: Int32;
    function get_Item(index: Int32): DNPaperSource;

  { methods } 

    ///<summary>
    ///  返回一个可循环访问集合的枚举数。
    ///</summary>
    ///<returns>
    ///  用于 <see cref="T:System.Collections.IEnumerator" />
    ///  的 <see cref="T:System.Drawing.Printing.PrinterSettings.PaperSourceCollection" />
    ///  。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    ///<summary>
    ///  将当前的内容复制 <see cref="T:System.Drawing.Printing.PrinterSettings.PaperSourceCollection" />
    ///  到指定的数组，指定索引处开始。
    ///</summary>
    ///  <param name="paperSources">
    ///  从零开始的数组，用于接收从复制的项 <see cref="T:System.Drawing.Printing.PrinterSettings.PaperSourceCollection" />
    ///  。
    ///</param>
    ///  <param name="index">
    ///  从此处开始复制的项索引。
    ///</param>
    procedure CopyTo(paperSources: TArray<DNPaperSource>; index: Int32);
    ///<summary>
    ///  添加指定 <see cref="T:System.Drawing.Printing.PaperSource" />
    ///  到末尾 <see cref="T:System.Drawing.Printing.PrinterSettings.PaperSourceCollection" />
    ///  。
    ///</summary>
    ///  <param name="paperSource">
    ///  要添加到集合中的 <see cref="T:System.Drawing.Printing.PaperSource" />
    ///  。
    ///</param>
    ///<returns>
    ///  从零开始的索引位置 <see cref="T:System.Drawing.Printing.PaperSource" />
    ///  已添加。
    ///</returns>
    function Add(paperSource: DNPaperSource): Int32;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取集合中的不同的纸张来源的数目。
    ///</summary>
    ///<returns>
    ///  集合中的不同的纸张来源的数。
    ///</returns>
    property Count: Int32 read get_Count;
    property Item[index: Int32]: DNPaperSource read get_Item; default;
  end;

  TDNPrinterSettings_PaperSourceCollection = class(TDNGenericImport<DNPrinterSettings_PaperSourceCollectionClass, DNPrinterSettings_PaperSourceCollection>) end;

  //-------------namespace: System.Drawing.Printing----------------
  DNPrinterSettings_PrinterResolutionCollectionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{668BC649-4DAA-5E00-AB27-8A362631F6B7}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Drawing.Printing.PrinterSettings.PrinterResolutionCollection" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="array"><see cref="T:System.Drawing.Printing.PrinterResolution" />
    ///  类型的数组。
    ///</param>
    {class} function init(&array: TArray<DNPrinterResolution>): DNPrinterSettings_PrinterResolutionCollection;

  end;

  ///<summary>
  ///  包含 <see cref="T:System.Drawing.Printing.PrinterResolution" />
  ///  对象的集合。
  ///</summary>
  [DNTypeName('System.Drawing.Printing.PrinterSettings+PrinterResolutionCollection')]
  DNPrinterSettings_PrinterResolutionCollection = interface(DDN.mscorlib.DNObject)
  ['{185EA4C4-A9C2-35B6-9219-E54A78482F11}']
  { getters & setters } 

    function get_Count: Int32;
    function get_Item(index: Int32): DNPrinterResolution;

  { methods } 

    ///<summary>
    ///  返回一个可循环访问集合的枚举数。
    ///</summary>
    ///<returns>
    ///  用于 <see cref="T:System.Collections.IEnumerator" />
    ///  的 <see cref="T:System.Drawing.Printing.PrinterSettings.PrinterResolutionCollection" />
    ///  。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    ///<summary>
    ///  将当前的内容复制 <see cref="T:System.Drawing.Printing.PrinterSettings.PrinterResolutionCollection" />
    ///  到指定的数组，指定索引处开始。
    ///</summary>
    ///  <param name="printerResolutions">
    ///  从零开始的数组，用于接收从复制的项 <see cref="T:System.Drawing.Printing.PrinterSettings.PrinterResolutionCollection" />
    ///  。
    ///</param>
    ///  <param name="index">
    ///  从此处开始复制的项索引。
    ///</param>
    procedure CopyTo(printerResolutions: TArray<DNPrinterResolution>; index: Int32);
    ///<summary>
    ///  添加 <see cref="T:System.Drawing.Printing.PrinterResolution" />
    ///  到集合的末尾。
    ///</summary>
    ///  <param name="printerResolution">
    ///  要添加到集合中的 <see cref="T:System.Drawing.Printing.PrinterResolution" />
    ///  。
    ///</param>
    ///<returns>
    ///  新添加的项的从零开始索引。
    ///</returns>
    function Add(printerResolution: DNPrinterResolution): Int32;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取集合中可用的打印机分辨率的数目。
    ///</summary>
    ///<returns>
    ///  集合中的可用打印机分辨率的数目。
    ///</returns>
    property Count: Int32 read get_Count;
    property Item[index: Int32]: DNPrinterResolution read get_Item; default;
  end;

  TDNPrinterSettings_PrinterResolutionCollection = class(TDNGenericImport<DNPrinterSettings_PrinterResolutionCollectionClass, DNPrinterSettings_PrinterResolutionCollection>) end;

  //-------------namespace: System.Drawing.Printing----------------
  DNPrinterSettings_StringCollectionClass = interface(DDN.mscorlib.DNObjectClass)
  ['{77A66E73-7EC6-5C1E-B999-E119E23B82DD}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Drawing.Printing.PrinterSettings.StringCollection" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="array"><see cref="T:System.String" />
    ///  类型的数组。
    ///</param>
    {class} function init(&array: TArray<string>): DNPrinterSettings_StringCollection;

  end;

  ///<summary>
  ///  包含 <see cref="T:System.String" />
  ///  对象的集合。
  ///</summary>
  [DNTypeName('System.Drawing.Printing.PrinterSettings+StringCollection')]
  DNPrinterSettings_StringCollection = interface(DDN.mscorlib.DNObject)
  ['{797C1ACD-B7D5-3449-A800-F41050E30EEC}']
  { getters & setters } 

    function get_Count: Int32;
    function get_Item(index: Int32): string;

  { methods } 

    ///<summary>
    ///  返回一个可循环访问集合的枚举数。
    ///</summary>
    ///<returns>
    ///  用于 <see cref="T:System.Collections.IEnumerator" />
    ///  的 <see cref="T:System.Drawing.Printing.PrinterSettings.StringCollection" />
    ///  。
    ///</returns>
    function GetEnumerator: DDN.mscorlib.DNIEnumerator;
    ///<summary>
    ///  将当前的内容复制 <see cref="T:System.Drawing.Printing.PrinterSettings.PrinterResolutionCollection" />
    ///  到指定的数组，指定索引处开始
    ///</summary>
    ///  <param name="strings">
    ///  从零开始的数组，用于接收从复制的项 <see cref="T:System.Drawing.Printing.PrinterSettings.StringCollection" />
    ///  。
    ///</param>
    ///  <param name="index">
    ///  从此处开始复制的项索引。
    ///</param>
    procedure CopyTo(strings: TArray<string>; index: Int32);
    ///<summary>
    ///  将一个字符串添加到集合的末尾。
    ///</summary>
    ///  <param name="value">
    ///  要添加到集合的字符串。
    ///</param>
    ///<returns>
    ///  新添加的项的从零开始索引。
    ///</returns>
    function Add(value: string): Int32;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取集合中的字符串的数量。
    ///</summary>
    ///<returns>
    ///  集合中的字符串的数量。
    ///</returns>
    property Count: Int32 read get_Count;
    property Item[index: Int32]: string read get_Item; default;
  end;

  TDNPrinterSettings_StringCollection = class(TDNGenericImport<DNPrinterSettings_StringCollectionClass, DNPrinterSettings_StringCollection>) end;

  //-------------namespace: System.ComponentModel----------------
  DNAddingNewEventArgsClass = interface(DDN.mscorlib.DNEventArgsClass)
  ['{7AE474C3-0302-5E0F-A471-6462D78D5EA0}']
  { constructors } 

    ///<summary>
    ///  新实例初始化 <see cref="T:System.ComponentModel.AddingNewEventArgs" />
    ///  类不使用任何参数。
    ///</summary>
    {class} function init: DNAddingNewEventArgs; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.ComponentModel.AddingNewEventArgs" />
    ///  类为新项使用指定的对象。
    ///</summary>
    ///  <param name="newObject"><see cref="T:System.Object" />
    ///  要用作新项的值。
    ///</param>
    {class} function init(newObject: DDN.mscorlib.DNObject): DNAddingNewEventArgs; overload;

  end;

  ///<summary>
  ///  为 <see cref="E:System.Windows.Forms.BindingSource.AddingNew" />
  ///  事件提供数据。
  ///</summary>
  [DNTypeName('System.ComponentModel.AddingNewEventArgs')]
  DNAddingNewEventArgs = interface(DDN.mscorlib.DNEventArgs)
  ['{B0BBCA33-C00B-3613-8B0C-6181D8D8A602}']
  { getters & setters } 

    function get_NewObject: DDN.mscorlib.DNObject;
    procedure set_NewObject(value: DDN.mscorlib.DNObject);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置要添加到绑定列表的对象。
    ///</summary>
    ///<returns><see cref="T:System.Object" />
    ///  要作为新项添加到关联的集合。
    ///</returns>
    property NewObject: DDN.mscorlib.DNObject read get_NewObject write set_NewObject;
  end;

  TDNAddingNewEventArgs = class(TDNGenericImport<DNAddingNewEventArgsClass, DNAddingNewEventArgs>) end;

  //-------------namespace: System.ComponentModel----------------
  DNAsyncCompletedEventArgsClass = interface(DDN.mscorlib.DNEventArgsClass)
  ['{29C3E9DB-2FD7-545F-ABE4-21181334839E}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.ComponentModel.AsyncCompletedEventArgs" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNAsyncCompletedEventArgs; overload;
    ///<summary>
    ///  初始化 <see cref="T:System.ComponentModel.AsyncCompletedEventArgs" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="error">
    ///  异步操作过程中发生任何错误。
    ///</param>
    ///  <param name="cancelled">
    ///  一个值，该值指示是否已取消异步操作。
    ///</param>
    ///  <param name="userState">
    ///  可选的用户提供的状态对象传递给 <see cref="M:System.ComponentModel.BackgroundWorker.RunWorkerAsync(System.Object)" />
    ///  方法。
    ///</param>
    {class} function init(error: DDN.mscorlib.DNException; cancelled: Boolean; userState: DDN.mscorlib.DNObject): DNAsyncCompletedEventArgs; overload;

  end;

  ///<summary>
  ///  将提供数据供 MethodName<see langword="Completed" />
  ///  事件。
  ///</summary>
  [DNTypeName('System.ComponentModel.AsyncCompletedEventArgs')]
  DNAsyncCompletedEventArgs = interface(DDN.mscorlib.DNEventArgs)
  ['{FB7EF278-BA12-30FB-91BD-58C29E1FCE30}']
  { getters & setters } 

    function get_Cancelled: Boolean;
    function get_Error: DDN.mscorlib.DNException;
    function get_UserState: DDN.mscorlib.DNObject;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取一个值，该值指示是否已取消一个异步操作。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果在后台操作已取消;否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property Cancelled: Boolean read get_Cancelled;
    ///<summary>
    ///  获取一个值，该值指示异步操作期间发生的错误。
    ///</summary>
    ///<returns><see cref="T:System.Exception" />
    ///  实例，如果异步操作; 期间发生了错误否则为 <see langword="null" />
    ///  。
    ///</returns>
    property Error: DDN.mscorlib.DNException read get_Error;
    ///<summary>
    ///  获取异步任务的唯一标识符。
    ///</summary>
    ///<returns>
    ///  唯一标识异步任务; 对象引用否则为 <see langword="null" />
    ///  如果不设置任何值。
    ///</returns>
    property UserState: DDN.mscorlib.DNObject read get_UserState;
  end;

  TDNAsyncCompletedEventArgs = class(TDNGenericImport<DNAsyncCompletedEventArgsClass, DNAsyncCompletedEventArgs>) end;

  //-------------namespace: System.ComponentModel----------------
  DNCancelEventArgsClass = interface(DDN.mscorlib.DNEventArgsClass)
  ['{8211894D-5C55-5C18-B669-8A95DF532EB8}']
  { constructors } 

    ///<summary>
    ///  新实例初始化 <see cref="T:System.ComponentModel.CancelEventArgs" />
    ///  类 <see cref="P:System.ComponentModel.CancelEventArgs.Cancel" />
    ///  属性设置为 <see langword="false" />
    ///  。
    ///</summary>
    {class} function init: DNCancelEventArgs; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.ComponentModel.CancelEventArgs" />
    ///  类 <see cref="P:System.ComponentModel.CancelEventArgs.Cancel" />
    ///  属性设置为给定的值。
    ///</summary>
    ///  <param name="cancel"><see langword="true" />
    ///  若要取消事件;否则为 <see langword="false" />
    ///  。
    ///</param>
    {class} function init(cancel: Boolean): DNCancelEventArgs; overload;

  end;

  ///<summary>
  ///  为可取消的事件提供数据。
  ///</summary>
  [DNTypeName('System.ComponentModel.CancelEventArgs')]
  DNCancelEventArgs = interface(DDN.mscorlib.DNEventArgs)
  ['{FBD7DB18-1E00-3218-9BBE-23C28E3296EC}']
  { getters & setters } 

    function get_Cancel: Boolean;
    procedure set_Cancel(value: Boolean);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置一个值，该值指示是否应取消事件。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果应取消事件;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property Cancel: Boolean read get_Cancel write set_Cancel;
  end;

  TDNCancelEventArgs = class(TDNGenericImport<DNCancelEventArgsClass, DNCancelEventArgs>) end;

  //-------------namespace: System.Drawing.Printing----------------
  DNPrintEventArgsClass = interface(DNCancelEventArgsClass)
  ['{DD88D947-6F22-569B-9601-6073DB817CC1}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Drawing.Printing.PrintEventArgs" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNPrintEventArgs;

  end;

  ///<summary>
  ///  提供有关 <see cref="E:System.Drawing.Printing.PrintDocument.BeginPrint" />
  ///  和 <see cref="E:System.Drawing.Printing.PrintDocument.EndPrint" />
  ///  事件的数据。
  ///</summary>
  [DNTypeName('System.Drawing.Printing.PrintEventArgs')]
  DNPrintEventArgs = interface(DNCancelEventArgs)
  ['{740149A2-C310-3A38-90EC-D84638581A00}']
  { getters & setters } 

    function get_PrintAction: DNPrintAction;
    function get_Cancel: Boolean;
    procedure set_Cancel(value: Boolean);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  在所有情况下均返回 <see cref="F:System.Drawing.Printing.PrintAction.PrintToFile" />
    ///  。
    ///</summary>
    ///<returns>
    ///  在所有情况下均为 <see cref="F:System.Drawing.Printing.PrintAction.PrintToFile" />
    ///  。
    ///</returns>
    property PrintAction: DNPrintAction read get_PrintAction;
    property Cancel: Boolean read get_Cancel write set_Cancel;
  end;

  TDNPrintEventArgs = class(TDNGenericImport<DNPrintEventArgsClass, DNPrintEventArgs>) end;

  //-------------namespace: System.Drawing.Printing----------------
  DNQueryPageSettingsEventArgsClass = interface(DNPrintEventArgsClass)
  ['{40D2D17D-329D-5469-85F9-313B929E506A}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Drawing.Printing.QueryPageSettingsEventArgs" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="pageSettings">
    ///  要打印页的页设置。
    ///</param>
    {class} function init(pageSettings: DNPageSettings): DNQueryPageSettingsEventArgs;

  end;

  ///<summary>
  ///  为 <see cref="E:System.Drawing.Printing.PrintDocument.QueryPageSettings" />
  ///  事件提供数据。
  ///</summary>
  [DNTypeName('System.Drawing.Printing.QueryPageSettingsEventArgs')]
  DNQueryPageSettingsEventArgs = interface(DNPrintEventArgs)
  ['{89C40DE8-7377-3FD3-B574-143C6A9E7BB0}']
  { getters & setters } 

    function get_PageSettings: DNPageSettings;
    procedure set_PageSettings(value: DNPageSettings);
    function get_PrintAction: DNPrintAction;
    function get_Cancel: Boolean;
    procedure set_Cancel(value: Boolean);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置要打印页的页设置。
    ///</summary>
    ///<returns>
    ///  要打印页的页设置。
    ///</returns>
    property PageSettings: DNPageSettings read get_PageSettings write set_PageSettings;
    ///<summary>
    ///  在所有情况下均返回 <see cref="F:System.Drawing.Printing.PrintAction.PrintToFile" />
    ///  。
    ///</summary>
    ///<returns>
    ///  在所有情况下均为 <see cref="F:System.Drawing.Printing.PrintAction.PrintToFile" />
    ///  。
    ///</returns>
    property PrintAction: DNPrintAction read get_PrintAction;
    property Cancel: Boolean read get_Cancel write set_Cancel;
  end;

  TDNQueryPageSettingsEventArgs = class(TDNGenericImport<DNQueryPageSettingsEventArgsClass, DNQueryPageSettingsEventArgs>) end;

  //-------------namespace: System.ComponentModel----------------
  DNCollectionChangeEventArgsClass = interface(DDN.mscorlib.DNEventArgsClass)
  ['{8357C1F2-3E89-5864-8DDF-A18A399F0DA0}']
  end;

  ///<summary>
  ///  为 <see cref="E:System.Data.DataColumnCollection.CollectionChanged" />
  ///  事件提供数据。
  ///</summary>
  [DNTypeName('System.ComponentModel.CollectionChangeEventArgs')]
  DNCollectionChangeEventArgs = interface(DDN.mscorlib.DNEventArgs)
  ['{A3BE1873-8DD5-3F22-8BE0-BCFC56A6F5BC}']
  { getters & setters } 

    function get_Element: DDN.mscorlib.DNObject;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取与更改集合的实例。
    ///</summary>
    ///<returns><see cref="T:System.Object" />
    ///  ，表示进行更改后，该集合的实例或 <see langword="null" />
    ///  如果刷新集合。
    ///</returns>
    property Element: DDN.mscorlib.DNObject read get_Element;
  end;

  TDNCollectionChangeEventArgs = class(TDNGenericImport<DNCollectionChangeEventArgsClass, DNCollectionChangeEventArgs>) end;

  //-------------namespace: System.ComponentModel.Design----------------
  DNComponentRenameEventArgsClass = interface(DDN.mscorlib.DNEventArgsClass)
  ['{049045D2-7367-54C1-9021-E9F8CF1F65A4}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.ComponentModel.Design.ComponentRenameEventArgs" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="component">
    ///  要重命名的组件。
    ///</param>
    ///  <param name="oldName">
    ///  组件的旧名称。
    ///</param>
    ///  <param name="newName">
    ///  组件的新名称。
    ///</param>
    {class} function init(component: DDN.mscorlib.DNObject; oldName: string; newName: string): DNComponentRenameEventArgs;

  end;

  ///<summary>
  ///  为 <see cref="E:System.ComponentModel.Design.IComponentChangeService.ComponentRename" />
  ///  事件提供数据。
  ///</summary>
  [DNTypeName('System.ComponentModel.Design.ComponentRenameEventArgs')]
  DNComponentRenameEventArgs = interface(DDN.mscorlib.DNEventArgs)
  ['{F41E1B27-1C7C-3620-9662-BF72882E3F7E}']
  { getters & setters } 

    function get_Component: DDN.mscorlib.DNObject;
    function get_OldName: string;
    function get_NewName: string;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取正在重命名的组件。
    ///</summary>
    ///<returns>
    ///  正在重命名该组件。
    ///</returns>
    property Component: DDN.mscorlib.DNObject read get_Component;
    ///<summary>
    ///  获取重命名事件之前的组件的名称。
    ///</summary>
    ///<returns>
    ///  以前的组件名称。
    ///</returns>
    property OldName: string read get_OldName;
    ///<summary>
    ///  重命名事件之后获取组件的名称。
    ///</summary>
    ///<returns>
    ///  重命名事件后组件的名称。
    ///</returns>
    property NewName: string read get_NewName;
  end;

  TDNComponentRenameEventArgs = class(TDNGenericImport<DNComponentRenameEventArgsClass, DNComponentRenameEventArgs>) end;

  //-------------namespace: System.ComponentModel----------------
  DNHandledEventArgsClass = interface(DDN.mscorlib.DNEventArgsClass)
  ['{5EA8651F-6698-5CBA-A2A3-2A5549CBF893}']
  { constructors } 

    ///<summary>
    ///  新实例初始化 <see cref="T:System.ComponentModel.HandledEventArgs" />
    ///  类，具有默认值 <see cref="P:System.ComponentModel.HandledEventArgs.Handled" />
    ///  属性值为 <see langword="false" />
    ///  。
    ///</summary>
    {class} function init: DNHandledEventArgs; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.ComponentModel.HandledEventArgs" />
    ///  类，具有指定的默认值为 <see cref="P:System.ComponentModel.HandledEventArgs.Handled" />
    ///  属性。
    ///</summary>
    ///  <param name="defaultHandledValue">
    ///  默认值为 <see cref="P:System.ComponentModel.HandledEventArgs.Handled" />
    ///  属性。
    ///</param>
    {class} function init(defaultHandledValue: Boolean): DNHandledEventArgs; overload;

  end;

  ///<summary>
  ///  可以在事件处理程序中完全处理的事件提供数据。
  ///</summary>
  [DNTypeName('System.ComponentModel.HandledEventArgs')]
  DNHandledEventArgs = interface(DDN.mscorlib.DNEventArgs)
  ['{709AF0DE-B3C9-31DB-9FCB-15C48D5F548F}']
  { getters & setters } 

    function get_Handled: Boolean;
    procedure set_Handled(value: Boolean);

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置一个值，指示事件处理程序是否已完全处理该事件或系统是否应继续它自己的处理。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果事件已完全处理;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property Handled: Boolean read get_Handled write set_Handled;
  end;

  TDNHandledEventArgs = class(TDNGenericImport<DNHandledEventArgsClass, DNHandledEventArgs>) end;

  //-------------namespace: System.ComponentModel----------------
  DNListChangedEventArgsClass = interface(DDN.mscorlib.DNEventArgsClass)
  ['{2CB56579-6023-53C8-9532-2ED3C07398A1}']
  { constructors } 

    ///<summary>
    ///  初始化的新实例 <see cref="T:System.ComponentModel.ListChangedEventArgs" />
    ///  类在给定的更改的类型和受影响的项的索引。
    ///</summary>
    ///  <param name="listChangedType">
    ///  一个 <see cref="T:System.ComponentModel.ListChangedType" />
    ///  值，该值指示的更改的类型。
    ///</param>
    ///  <param name="newIndex">
    ///  已添加、 更改或删除的项的索引。
    ///</param>
    {class} function init(listChangedType: DNListChangedType; newIndex: Int32): DNListChangedEventArgs; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.ComponentModel.ListChangedEventArgs" />
    ///  给定的更改，受影响的项目的索引类型的类和一个 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  描述受影响的项目。
    ///</summary>
    ///  <param name="listChangedType">
    ///  一个 <see cref="T:System.ComponentModel.ListChangedType" />
    ///  值，该值指示的更改的类型。
    ///</param>
    ///  <param name="newIndex">
    ///  添加或更改的项的索引。
    ///</param>
    ///  <param name="propDesc"><see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  描述项。
    ///</param>
    {class} function init(listChangedType: DNListChangedType; newIndex: Int32; propDesc: DNPropertyDescriptor): DNListChangedEventArgs; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.ComponentModel.ListChangedEventArgs" />
    ///  给定的更改类型的类和 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  受影响。
    ///</summary>
    ///  <param name="listChangedType">
    ///  一个 <see cref="T:System.ComponentModel.ListChangedType" />
    ///  值，该值指示的更改的类型。
    ///</param>
    ///  <param name="propDesc"><see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  添加、 删除或更改。
    ///</param>
    {class} function init(listChangedType: DNListChangedType; propDesc: DNPropertyDescriptor): DNListChangedEventArgs; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.ComponentModel.ListChangedEventArgs" />
    ///  给定的更改的类型和旧的和新的项的索引已移动的类。
    ///</summary>
    ///  <param name="listChangedType">
    ///  一个 <see cref="T:System.ComponentModel.ListChangedType" />
    ///  值，该值指示的更改的类型。
    ///</param>
    ///  <param name="newIndex">
    ///  已移动的项的新索引。
    ///</param>
    ///  <param name="oldIndex">
    ///  已移动的项旧索引。
    ///</param>
    {class} function init(listChangedType: DNListChangedType; newIndex: Int32; oldIndex: Int32): DNListChangedEventArgs; overload;

  end;

  ///<summary>
  ///  为 <see cref="E:System.ComponentModel.IBindingList.ListChanged" />
  ///  事件提供数据。
  ///</summary>
  [DNTypeName('System.ComponentModel.ListChangedEventArgs')]
  DNListChangedEventArgs = interface(DDN.mscorlib.DNEventArgs)
  ['{C7AAB3F1-E25D-36A2-B1BC-9082B8E2E07B}']
  { getters & setters } 

    function get_ListChangedType: DNListChangedType;
    function get_NewIndex: Int32;
    function get_OldIndex: Int32;
    function get_PropertyDescriptor: DNPropertyDescriptor;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取更改的类型。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.ComponentModel.ListChangedType" />
    ///  值，该值指示的更改的类型。
    ///</returns>
    property ListChangedType: DNListChangedType read get_ListChangedType;
    ///<summary>
    ///  获取受此更改影响的项的索引。
    ///</summary>
    ///<returns>
    ///  此更改受影响的索引。
    ///</returns>
    property NewIndex: Int32 read get_NewIndex;
    ///<summary>
    ///  获取已被移动的项的旧索引。
    ///</summary>
    ///<returns>
    ///  旧的已移动的项的索引。
    ///</returns>
    property OldIndex: Int32 read get_OldIndex;
    ///<summary>
    ///  获取 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  添加、 更改或删除。
    ///</summary>
    ///<returns><see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  受此更改影响。
    ///</returns>
    property PropertyDescriptor: DNPropertyDescriptor read get_PropertyDescriptor;
  end;

  TDNListChangedEventArgs = class(TDNGenericImport<DNListChangedEventArgsClass, DNListChangedEventArgs>) end;

  //-------------namespace: System.ComponentModel----------------
  DNProgressChangedEventArgsClass = interface(DDN.mscorlib.DNEventArgsClass)
  ['{554C6787-77E7-550B-ABF4-384941770769}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.ComponentModel.ProgressChangedEventArgs" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="progressPercentage">
    ///  已完成的异步任务的百分比。
    ///</param>
    ///  <param name="userState">
    ///  唯一的用户状态。
    ///</param>
    {class} function init(progressPercentage: Int32; userState: DDN.mscorlib.DNObject): DNProgressChangedEventArgs;

  end;

  ///<summary>
  ///  为 <see cref="E:System.ComponentModel.BackgroundWorker.ProgressChanged" />
  ///  事件提供数据。
  ///</summary>
  [DNTypeName('System.ComponentModel.ProgressChangedEventArgs')]
  DNProgressChangedEventArgs = interface(DDN.mscorlib.DNEventArgs)
  ['{4BD125C8-1FDE-337C-9B5B-787C41620812}']
  { getters & setters } 

    function get_ProgressPercentage: Int32;
    function get_UserState: DDN.mscorlib.DNObject;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取异步任务进度百分比。
    ///</summary>
    ///<returns>
    ///  指示异步任务进度的百分比值。
    ///</returns>
    property ProgressPercentage: Int32 read get_ProgressPercentage;
    ///<summary>
    ///  获取唯一的用户状态。
    ///</summary>
    ///<returns>
    ///  一个唯一 <see cref="T:System.Object" />
    ///  ，该值指示用户状态。
    ///</returns>
    property UserState: DDN.mscorlib.DNObject read get_UserState;
  end;

  TDNProgressChangedEventArgs = class(TDNGenericImport<DNProgressChangedEventArgsClass, DNProgressChangedEventArgs>) end;

  //-------------namespace: System.Drawing.Printing----------------
  DNPrintPageEventArgsClass = interface(DDN.mscorlib.DNEventArgsClass)
  ['{FAEE24EA-1B7E-5DA1-AE8A-791352369941}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Drawing.Printing.PrintPageEventArgs" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="graphics"><see cref="T:System.Drawing.Graphics" />
    ///  用于绘制该项。
    ///</param>
    ///  <param name="marginBounds">
    ///  边距之间的区域。
    ///</param>
    ///  <param name="pageBounds">
    ///  在纸张的整个区域。
    ///</param>
    ///  <param name="pageSettings"><see cref="T:System.Drawing.Printing.PageSettings" />
    ///  页。
    ///</param>
    {class} function init(graphics: DNGraphics; marginBounds: DNRectangle; pageBounds: DNRectangle; pageSettings: DNPageSettings): DNPrintPageEventArgs;

  end;

  ///<summary>
  ///  为 <see cref="E:System.Drawing.Printing.PrintDocument.PrintPage" />
  ///  事件提供数据。
  ///</summary>
  [DNTypeName('System.Drawing.Printing.PrintPageEventArgs')]
  DNPrintPageEventArgs = interface(DDN.mscorlib.DNEventArgs)
  ['{2A5D8F32-812E-3C94-9263-51BCC040C47C}']
  { getters & setters } 

    function get_Cancel: Boolean;
    procedure set_Cancel(value: Boolean);
    function get_Graphics: DNGraphics;
    function get_HasMorePages: Boolean;
    procedure set_HasMorePages(value: Boolean);
    function get_MarginBounds: DNRectangle;
    function get_PageBounds: DNRectangle;
    function get_PageSettings: DNPageSettings;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置一个值，该值指示是否应取消打印作业。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果应取消打印作业;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property Cancel: Boolean read get_Cancel write set_Cancel;
    ///<summary>
    ///  获取 <see cref="T:System.Drawing.Graphics" />
    ///  用来绘制页。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Graphics" />
    ///  用来绘制页。
    ///</returns>
    property Graphics: DNGraphics read get_Graphics;
    ///<summary>
    ///  获取或设置一个值，该值指示是否应打印附加页。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果应打印附加页;，否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property HasMorePages: Boolean read get_HasMorePages write set_HasMorePages;
    ///<summary>
    ///  获取表示边距内页面的部分的矩形区域。
    ///</summary>
    ///<returns>
    ///  矩形区域，以百分之一英寸，它表示边距以内页面的部分。
    ///</returns>
    property MarginBounds: DNRectangle read get_MarginBounds;
    ///<summary>
    ///  获取表示页上的总区域的矩形区域。
    ///</summary>
    ///<returns>
    ///  表示页上的总区域的矩形区域。
    ///</returns>
    property PageBounds: DNRectangle read get_PageBounds;
    ///<summary>
    ///  获取当前页的页设置。
    ///</summary>
    ///<returns>
    ///  当前页的页设置。
    ///</returns>
    property PageSettings: DNPageSettings read get_PageSettings;
  end;

  TDNPrintPageEventArgs = class(TDNGenericImport<DNPrintPageEventArgsClass, DNPrintPageEventArgs>) end;

  //-------------namespace: System.Threading----------------
  DNThreadExceptionEventArgsClass = interface(DDN.mscorlib.DNEventArgsClass)
  ['{1761A90C-F7A4-518A-97A4-A81843352850}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Threading.ThreadExceptionEventArgs" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="t">
    ///  已发生的 <see cref="T:System.Exception" />
    ///  。
    ///</param>
    {class} function init(t: DDN.mscorlib.DNException): DNThreadExceptionEventArgs;

  end;

  ///<summary>
  ///  为 <see cref="E:System.Windows.Forms.Application.ThreadException" />
  ///  事件提供数据。
  ///</summary>
  [DNTypeName('System.Threading.ThreadExceptionEventArgs')]
  DNThreadExceptionEventArgs = interface(DDN.mscorlib.DNEventArgs)
  ['{5D24D2B3-D7A7-358C-9FDF-AC6C9C135A50}']
  { getters & setters } 

    function get_Exception: DDN.mscorlib.DNException;

  { methods } 

    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取 <see cref="T:System.Exception" />
    ///  发生。
    ///</summary>
    ///<returns>
    ///  已发生的 <see cref="T:System.Exception" />
    ///  。
    ///</returns>
    property Exception: DDN.mscorlib.DNException read get_Exception;
  end;

  TDNThreadExceptionEventArgs = class(TDNGenericImport<DNThreadExceptionEventArgsClass, DNThreadExceptionEventArgs>) end;

  //-------------namespace: System.ComponentModel----------------
  ///<summary>
  ///  提供全部组件所需的功能。
  ///</summary>
  [DNTypeName('System.ComponentModel.IComponent')]
  DNIComponent = interface(DDN.mscorlib.DNIDisposable)
  ['{B86E59F2-F1E2-389D-B5F1-C55307C8106E}']
  { getters & setters } 

    function get_Site: DNISite;
    procedure set_Site(value: DNISite);

  { events } 

    procedure add_Disposed(value: DDN.mscorlib.DNEventHandler);
    procedure remove_Disposed(value: DDN.mscorlib.DNEventHandler);

  { propertys } 

    ///<summary>
    ///  获取或设置与 <see cref="T:System.ComponentModel.ISite" />
    ///  关联的 <see cref="T:System.ComponentModel.IComponent" />
    ///  。
    ///</summary>
    ///<returns><see cref="T:System.ComponentModel.ISite" />
    ///  与组件; 关联的对象或 <see langword="null" />
    ///  , ，如果组件不具有一个站点。
    ///</returns>
    property Site: DNISite read get_Site write set_Site;
  end;

  //-------------namespace: System.ComponentModel----------------
  ///<summary>
  ///  提供容器的功能。
  ///  容器是在逻辑上包含零个或多个组件的对象。
  ///</summary>
  [DNTypeName('System.ComponentModel.IContainer')]
  DNIContainer = interface(DDN.mscorlib.DNIDisposable)
  ['{61D9C50C-4AAD-3539-AF82-4F36C19D77C8}']
  { getters & setters } 

    function get_Components: DNComponentCollection;

  { methods } 

    ///<summary>
    ///  添加指定 <see cref="T:System.ComponentModel.IComponent" />
    ///  到 <see cref="T:System.ComponentModel.IContainer" />
    ///  列表的末尾。
    ///</summary>
    ///  <param name="component">
    ///  要添加的 <see cref="T:System.ComponentModel.IComponent" />
    ///  。
    ///</param>
    procedure Add(component: DNIComponent); overload;
    ///<summary>
    ///  添加指定 <see cref="T:System.ComponentModel.IComponent" />
    ///  到 <see cref="T:System.ComponentModel.IContainer" />
    ///  末尾的列表中，并将一个名称分配给该组件。
    ///</summary>
    ///  <param name="component">
    ///  要添加的 <see cref="T:System.ComponentModel.IComponent" />
    ///  。
    ///</param>
    ///  <param name="name">
    ///  要将分配给该组件的唯一的、 不区分大小写名称。
    ///  - 或 -
    ///<see langword="null" />
    ///  保留未命名的组件。
    ///</param>
    procedure Add(component: DNIComponent; name: string); overload;
    ///<summary>
    ///  中删除来自组件 <see cref="T:System.ComponentModel.IContainer" />
    ///  。
    ///</summary>
    ///  <param name="component">
    ///  要移除的 <see cref="T:System.ComponentModel.IComponent" />
    ///  。
    ///</param>
    procedure Remove(component: DNIComponent);

  { propertys } 

    ///<summary>
    ///  获取所有组件中 <see cref="T:System.ComponentModel.IContainer" />
    ///  。
    ///</summary>
    ///<returns>
    ///  一套 <see cref="T:System.ComponentModel.IComponent" />
    ///  代表中的所有组件的对象， <see cref="T:System.ComponentModel.IContainer" />
    ///  。
    ///</returns>
    property Components: DNComponentCollection read get_Components;
  end;

  //-------------namespace: System.Drawing----------------
  ///<summary>
  ///  定义用于获取和释放现有的 Windows 设备上下文句柄的方法。
  ///</summary>
  [DNTypeName('System.Drawing.IDeviceContext')]
  DNIDeviceContext = interface(DDN.mscorlib.DNIDisposable)
  ['{3B0820CC-0BAB-3225-A135-975CF1F66BA5}']
  { methods } 

    ///<summary>
    ///  返回到 Windows 的设备上下文的句柄。
    ///</summary>
    ///<returns><see cref="T:System.IntPtr" />
    ///  表示设备上下文句柄。
    ///</returns>
    function GetHdc: IntPtr;
    ///<summary>
    ///  释放 Windows 设备上下文句的柄。
    ///</summary>
    procedure ReleaseHdc;

  end;

  //-------------namespace: System.ComponentModel----------------
  ///<summary>
  ///  提供站点所需的功能。
  ///</summary>
  [DNTypeName('System.ComponentModel.ISite')]
  DNISite = interface(DDN.mscorlib.DNIServiceProvider)
  ['{C4E1006A-9D98-3E96-A07E-921725135C28}']
  { getters & setters } 

    function get_Component: DNIComponent;
    function get_Container: DNIContainer;
    function get_DesignMode: Boolean;
    function get_Name: string;
    procedure set_Name(value: string);

  { propertys } 

    ///<summary>
    ///  获取与关联的组件 <see cref="T:System.ComponentModel.ISite" />
    ///  时由类实现。
    ///</summary>
    ///<returns><see cref="T:System.ComponentModel.IComponent" />
    ///  与关联实例 <see cref="T:System.ComponentModel.ISite" />
    ///  。
    ///</returns>
    property Component: DNIComponent read get_Component;
    ///<summary>
    ///  获取 <see cref="T:System.ComponentModel.IContainer" />
    ///  与关联 <see cref="T:System.ComponentModel.ISite" />
    ///  时由类实现。
    ///</summary>
    ///<returns><see cref="T:System.ComponentModel.IContainer" />
    ///  与关联实例 <see cref="T:System.ComponentModel.ISite" />
    ///  。
    ///</returns>
    property Container: DNIContainer read get_Container;
    ///<summary>
    ///  确定组件是否在设计模式下时由类实现。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果该组件是在设计模式下;否则为 <see langword="false" />
    ///  。
    ///</returns>
    property DesignMode: Boolean read get_DesignMode;
    ///<summary>
    ///  获取或设置与关联的组件的名称 <see cref="T:System.ComponentModel.ISite" />
    ///  时由类实现。
    ///</summary>
    ///<returns>
    ///  与关联的组件的名称 <see cref="T:System.ComponentModel.ISite" />
    ///  ; 或 <see langword="null" />
    ///  , ，如果没有名称分配给该组件。
    ///</returns>
    property Name: string read get_Name write set_Name;
  end;

  //-------------namespace: System.ComponentModel----------------
  ///<summary>
  ///  提供有关组件，如其容器和属性描述符的上下文信息。
  ///</summary>
  [DNTypeName('System.ComponentModel.ITypeDescriptorContext')]
  DNITypeDescriptorContext = interface(DDN.mscorlib.DNIServiceProvider)
  ['{5CBAE170-8759-3B8A-B919-E12FB86AD1F3}']
  { getters & setters } 

    function get_Container: DNIContainer;
    function get_Instance: DDN.mscorlib.DNObject;
    function get_PropertyDescriptor: DNPropertyDescriptor;

  { methods } 

    ///<summary>
    ///  引发 <see cref="E:System.ComponentModel.Design.IComponentChangeService.ComponentChanging" />
    ///  事件。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果可以更改此对象;否则为 <see langword="false" />
    ///  。
    ///</returns>
    function OnComponentChanging: Boolean;
    ///<summary>
    ///  引发 <see cref="E:System.ComponentModel.Design.IComponentChangeService.ComponentChanged" />
    ///  事件。
    ///</summary>
    procedure OnComponentChanged;

  { propertys } 

    ///<summary>
    ///  获取表示此容器 <see cref="T:System.ComponentModel.TypeDescriptor" />
    ///  请求。
    ///</summary>
    ///<returns><see cref="T:System.ComponentModel.IContainer" />
    ///  使用此对象集合 <see cref="T:System.ComponentModel.TypeDescriptor" />
    ///  ; 否则为 <see langword="null" />
    ///  如果任何容器或者 <see cref="T:System.ComponentModel.TypeDescriptor" />
    ///  不使用外部对象。
    ///</returns>
    property Container: DNIContainer read get_Container;
    ///<summary>
    ///  获取与此类型说明符请求相关联的对象。
    ///</summary>
    ///<returns>
    ///  在调用该方法的对象 <see cref="T:System.ComponentModel.TypeDescriptor" />
    ///  ; 否则为 <see langword="null" />
    ///  如果没有任何对象执行了调用。
    ///</returns>
    property Instance: DDN.mscorlib.DNObject read get_Instance;
    ///<summary>
    ///  获取 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  给定的上下文项与该键相关联。
    ///</summary>
    ///<returns><see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  项; 否则为描述给定的上下文 <see langword="null" />
    ///  是否存在任何 <see cref="T:System.ComponentModel.PropertyDescriptor" />
    ///  执行了调用。
    ///</returns>
    property PropertyDescriptor: DNPropertyDescriptor read get_PropertyDescriptor;
  end;

  //-------------namespace: System.ComponentModel----------------
  DNComponentClass = interface(DDN.mscorlib.DNMarshalByRefObjectClass)
  ['{019C75F7-CEFA-5E62-8973-E3534E7E1A4A}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.ComponentModel.Component" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNComponent;

  end;

  ///<summary>
  ///  提供的基实现 <see cref="T:System.ComponentModel.IComponent" />
  ///  接口并启用应用程序之间共享的对象。
  ///</summary>
  [DNTypeName('System.ComponentModel.Component')]
  DNComponent = interface(DDN.mscorlib.DNMarshalByRefObject)
  ['{B3B21824-D0F3-3815-847F-228660E2A20E}']
  { getters & setters } 

    function get_Site: DNISite;
    procedure set_Site(value: DNISite);
    function get_Container: DNIContainer;

  { events } 

    procedure add_Disposed(value: DDN.mscorlib.DNEventHandler);
    procedure remove_Disposed(value: DDN.mscorlib.DNEventHandler);

  { methods } 

    ///<summary>
    ///  释放由 <see cref="T:System.ComponentModel.Component" />
    ///  使用的所有资源。
    ///</summary>
    procedure Dispose;
    ///<summary>
    ///  返回 <see cref="T:System.String" />
    ///  包含名称的 <see cref="T:System.ComponentModel.Component" />
    ///  , ，如果有的话。
    ///  不应重写此方法。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  包含名称的 <see cref="T:System.ComponentModel.Component" />
    ///  , (如果有） 或 <see langword="null" />
    ///  如果 <see cref="T:System.ComponentModel.Component" />
    ///  是未命名。
    ///</returns>
    function ToString: string;
    function GetLifetimeService: DDN.mscorlib.DNObject;
    function InitializeLifetimeService: DDN.mscorlib.DNObject;
    function CreateObjRef(requestedType: DDN.mscorlib.DNType): DDN.mscorlib.DNObjRef;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取或设置 <see cref="T:System.ComponentModel.ISite" />
    ///  的 <see cref="T:System.ComponentModel.Component" />
    ///  。
    ///</summary>
    ///<returns><see cref="T:System.ComponentModel.ISite" />
    ///  与关联 <see cref="T:System.ComponentModel.Component" />
    ///  , ，或 <see langword="null" />
    ///  如果 <see cref="T:System.ComponentModel.Component" />
    ///  不封装在 <see cref="T:System.ComponentModel.IContainer" />
    ///  , 、 <see cref="T:System.ComponentModel.Component" />
    ///  没有 <see cref="T:System.ComponentModel.ISite" />
    ///  与之关联，或 <see cref="T:System.ComponentModel.Component" />
    ///  也会从其 <see cref="T:System.ComponentModel.IContainer" />
    ///  。
    ///</returns>
    property Site: DNISite read get_Site write set_Site;
    ///<summary>
    ///  获取 <see cref="T:System.ComponentModel.IContainer" />
    ///  ，其中包含 <see cref="T:System.ComponentModel.Component" />
    ///  。
    ///</summary>
    ///<returns><see cref="T:System.ComponentModel.IContainer" />
    ///  ，其中包含 <see cref="T:System.ComponentModel.Component" />
    ///  , (如果有） 或 <see langword="null" />
    ///  如果 <see cref="T:System.ComponentModel.Component" />
    ///  不封装在 <see cref="T:System.ComponentModel.IContainer" />
    ///  。
    ///</returns>
    property Container: DNIContainer read get_Container;
  end;

  TDNComponent = class(TDNGenericImport<DNComponentClass, DNComponent>) end;

  //-------------namespace: System.Drawing.Printing----------------
  DNPrintDocumentClass = interface(DNComponentClass)
  ['{34BD3BB6-F9F1-504E-B7D3-3DB900132744}']
  { constructors } 

    ///<summary>
    ///  初始化 <see cref="T:System.Drawing.Printing.PrintDocument" />
    ///  类的新实例。
    ///</summary>
    {class} function init: DNPrintDocument;

  end;

  ///<summary>
  ///  从 Windows 窗体应用程序打印时，定义一种可重用的可发送到打印机上的对象。
  ///</summary>
  [DNTypeName('System.Drawing.Printing.PrintDocument')]
  DNPrintDocument = interface(DNComponent)
  ['{9501869F-5E2A-35B6-8588-737438CB7BC8}']
  { getters & setters } 

    function get_DefaultPageSettings: DNPageSettings;
    procedure set_DefaultPageSettings(value: DNPageSettings);
    function get_DocumentName: string;
    procedure set_DocumentName(value: string);
    function get_OriginAtMargins: Boolean;
    procedure set_OriginAtMargins(value: Boolean);
    function get_PrintController: DNPrintController;
    procedure set_PrintController(value: DNPrintController);
    function get_PrinterSettings: DNPrinterSettings;
    procedure set_PrinterSettings(value: DNPrinterSettings);
    function get_Site: DNISite;
    procedure set_Site(value: DNISite);
    function get_Container: DNIContainer;

  { events } 

    procedure add_BeginPrint(value: DNPrintEventHandler);
    procedure remove_BeginPrint(value: DNPrintEventHandler);
    procedure add_EndPrint(value: DNPrintEventHandler);
    procedure remove_EndPrint(value: DNPrintEventHandler);
    procedure add_PrintPage(value: DNPrintPageEventHandler);
    procedure remove_PrintPage(value: DNPrintPageEventHandler);
    procedure add_QueryPageSettings(value: DNQueryPageSettingsEventHandler);
    procedure remove_QueryPageSettings(value: DNQueryPageSettingsEventHandler);
    procedure add_Disposed(value: DDN.mscorlib.DNEventHandler);
    procedure remove_Disposed(value: DDN.mscorlib.DNEventHandler);

  { methods } 

    ///<summary>
    ///  开始文档的打印进程。
    ///</summary>
    ///<exception cref="T:System.Drawing.Printing.InvalidPrinterException">
    ///  中指定的打印机 <see cref="P:System.Drawing.Printing.PrinterSettings.PrinterName" />
    ///  属性不存在。
    ///</exception>
    procedure Print;
    ///<summary>
    ///  以字符串形式提供有关打印文档的信息。
    ///</summary>
    ///<returns>
    ///  一个字符串。
    ///</returns>
    function ToString: string;
    procedure Dispose;
    function GetLifetimeService: DDN.mscorlib.DNObject;
    function InitializeLifetimeService: DDN.mscorlib.DNObject;
    function CreateObjRef(requestedType: DDN.mscorlib.DNType): DDN.mscorlib.DNObjRef;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取或设置用作要打印的所有页的默认设置的页设置。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Printing.PageSettings" />
    ///  ，它指定文档的默认页设置。
    ///</returns>
    property DefaultPageSettings: DNPageSettings read get_DefaultPageSettings write set_DefaultPageSettings;
    ///<summary>
    ///  获取或设置打印文档时要显示的文档名称（例如，在打印状态对话框或打印机队列中）。
    ///</summary>
    ///<returns>
    ///  打印文档时要显示的文档名。
    ///  默认为“文档”。
    ///</returns>
    property DocumentName: string read get_DocumentName write set_DocumentName;
    ///<summary>
    ///  获取或设置一个值，该值指示与页关联的图形对象的位置是位于用户指定边距内，还是位于该页可打印区域的左上角。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果图形原点起始于页边距; <see langword="false" />
    ///  如果图形原点位于可打印的页面的左上角。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property OriginAtMargins: Boolean read get_OriginAtMargins write set_OriginAtMargins;
    ///<summary>
    ///  获取或设置指导打印进程的打印控制器。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Printing.PrintController" />
    ///  指导打印进程。
    ///  默认值为的新实例 <see cref="T:System.Windows.Forms.PrintControllerWithStatusDialog" />
    ///  类。
    ///</returns>
    property PrintController: DNPrintController read get_PrintController write set_PrintController;
    ///<summary>
    ///  获取或设置对文档进行打印的打印机。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Printing.PrinterSettings" />
    ///  ，它指定在何处以及如何打印文档。
    ///  默认值是 <see cref="T:System.Drawing.Printing.PrinterSettings" />
    ///  其属性值设为其默认值。
    ///</returns>
    property PrinterSettings: DNPrinterSettings read get_PrinterSettings write set_PrinterSettings;
    property Site: DNISite read get_Site write set_Site;
    property Container: DNIContainer read get_Container;
  end;

  TDNPrintDocument = class(TDNGenericImport<DNPrintDocumentClass, DNPrintDocument>) end;

  //-------------namespace: System.Drawing----------------
  DNBrushClass = interface(DDN.mscorlib.DNMarshalByRefObjectClass)
  ['{629CBCB4-595B-51D5-8891-446B38F904D4}']
  end;

  ///<summary>
  ///  定义用来填充的如矩形、 椭圆、 饼、 多边形和路径的图形形状的内部对象。
  ///</summary>
  [DNTypeName('System.Drawing.Brush')]
  DNBrush = interface(DDN.mscorlib.DNMarshalByRefObject)
  ['{60C4596A-1199-3E69-B581-7E1C9CDE9B1A}']
  { methods } 

    ///<summary>
    ///  释放由此 <see cref="T:System.Drawing.Brush" />
    ///  对象使用的所有资源。
    ///</summary>
    procedure Dispose;
    ///<summary>
    ///  当在派生类中重写时创建的一个精确副本 <see cref="T:System.Drawing.Brush" />
    ///  。
    ///</summary>
    ///<returns>
    ///  此方法创建的新 <see cref="T:System.Drawing.Brush" />
    ///  。
    ///</returns>
    function Clone: DDN.mscorlib.DNObject;
    function GetLifetimeService: DDN.mscorlib.DNObject;
    function InitializeLifetimeService: DDN.mscorlib.DNObject;
    function CreateObjRef(requestedType: DDN.mscorlib.DNType): DDN.mscorlib.DNObjRef;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNBrush = class(TDNGenericImport<DNBrushClass, DNBrush>) end;

  //-------------namespace: System.Drawing.Drawing2D----------------
  DNGraphicsContainerClass = interface(DDN.mscorlib.DNMarshalByRefObjectClass)
  ['{98368B9B-4EED-5BC8-971A-17292A7F5E67}']
  end;

  ///<summary>
  ///  表示图形容器的内部数据。
  ///  保存的状态时使用此类 <see cref="T:System.Drawing.Graphics" />
  ///  对象使用 <see cref="M:System.Drawing.Graphics.BeginContainer" />
  ///  和 <see cref="M:System.Drawing.Graphics.EndContainer(System.Drawing.Drawing2D.GraphicsContainer)" />
  ///  方法。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.Drawing.Drawing2D.GraphicsContainer')]
  DNGraphicsContainer = interface(DDN.mscorlib.DNMarshalByRefObject)
  ['{59F0647C-2277-3516-9AF1-9B27E963FAC5}']
  { methods } 

    function GetLifetimeService: DDN.mscorlib.DNObject;
    function InitializeLifetimeService: DDN.mscorlib.DNObject;
    function CreateObjRef(requestedType: DDN.mscorlib.DNType): DDN.mscorlib.DNObjRef;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNGraphicsContainer = class(TDNGenericImport<DNGraphicsContainerClass, DNGraphicsContainer>) end;

  //-------------namespace: System.Drawing.Drawing2D----------------
  DNGraphicsPathClass = interface(DDN.mscorlib.DNMarshalByRefObjectClass)
  ['{14B290CE-ECCD-59E2-A69C-E477F26C5DA5}']
  { constructors } 

    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  类 <see cref="P:System.Drawing.Drawing2D.GraphicsPath.FillMode" />
    ///  值 <see cref="F:System.Drawing.Drawing2D.FillMode.Alternate" />
    ///  。
    ///</summary>
    {class} function init: DNGraphicsPath; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  类与指定 <see cref="T:System.Drawing.Drawing2D.FillMode" />
    ///  枚举。
    ///</summary>
    ///  <param name="fillMode"><see cref="T:System.Drawing.Drawing2D.FillMode" />
    ///  枚举，它确定了此内部 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  进行填充。
    ///</param>
    {class} function init(fillMode: DNFillMode): DNGraphicsPath; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  用指定的数组 <see cref="T:System.Drawing.Drawing2D.PathPointType" />
    ///  和 <see cref="T:System.Drawing.PointF" />
    ///  数组。
    ///</summary>
    ///  <param name="pts">
    ///  一个数组 <see cref="T:System.Drawing.PointF" />
    ///  定义构成这点的坐标的结构 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</param>
    ///  <param name="types">
    ///  一个数组 <see cref="T:System.Drawing.Drawing2D.PathPointType" />
    ///  枚举元素，指定的类型中每个相应点 <paramref name="pts" />
    ///  数组。
    ///</param>
    {class} function init(pts: TArray<DNPointF>; types: TArray<Byte>): DNGraphicsPath; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  用指定的数组 <see cref="T:System.Drawing.Drawing2D.PathPointType" />
    ///  和 <see cref="T:System.Drawing.PointF" />
    ///  数组以及指定 <see cref="T:System.Drawing.Drawing2D.FillMode" />
    ///  枚举元素。
    ///</summary>
    ///  <param name="pts">
    ///  一个数组 <see cref="T:System.Drawing.PointF" />
    ///  定义构成这点的坐标的结构 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</param>
    ///  <param name="types">
    ///  一个数组 <see cref="T:System.Drawing.Drawing2D.PathPointType" />
    ///  枚举元素，指定的类型中每个相应点 <paramref name="pts" />
    ///  数组。
    ///</param>
    ///  <param name="fillMode">
    ///  一个 <see cref="T:System.Drawing.Drawing2D.FillMode" />
    ///  枚举，用于指定如何在此形状的内部 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  进行填充。
    ///</param>
    {class} function init(pts: TArray<DNPointF>; types: TArray<Byte>; fillMode: DNFillMode): DNGraphicsPath; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  类与指定 <see cref="T:System.Drawing.Drawing2D.PathPointType" />
    ///  和 <see cref="T:System.Drawing.Point" />
    ///  数组。
    ///</summary>
    ///  <param name="pts">
    ///  一个数组 <see cref="T:System.Drawing.Point" />
    ///  定义构成这点的坐标的结构 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</param>
    ///  <param name="types">
    ///  一个数组 <see cref="T:System.Drawing.Drawing2D.PathPointType" />
    ///  枚举元素，指定的类型中每个相应点 <paramref name="pts" />
    ///  数组。
    ///</param>
    {class} function init(pts: TArray<DNPoint>; types: TArray<Byte>): DNGraphicsPath; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  类与指定 <see cref="T:System.Drawing.Drawing2D.PathPointType" />
    ///  和 <see cref="T:System.Drawing.Point" />
    ///  数组以及指定 <see cref="T:System.Drawing.Drawing2D.FillMode" />
    ///  枚举元素。
    ///</summary>
    ///  <param name="pts">
    ///  一个数组 <see cref="T:System.Drawing.Point" />
    ///  定义构成这点的坐标的结构 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</param>
    ///  <param name="types">
    ///  一个数组 <see cref="T:System.Drawing.Drawing2D.PathPointType" />
    ///  枚举元素，指定的类型中每个相应点 <paramref name="pts" />
    ///  数组。
    ///</param>
    ///  <param name="fillMode">
    ///  一个 <see cref="T:System.Drawing.Drawing2D.FillMode" />
    ///  枚举，用于指定如何在此形状的内部 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  进行填充。
    ///</param>
    {class} function init(pts: TArray<DNPoint>; types: TArray<Byte>; fillMode: DNFillMode): DNGraphicsPath; overload;

  end;

  ///<summary>
  ///  表示一系列连接的直线和曲线。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.Drawing.Drawing2D.GraphicsPath')]
  DNGraphicsPath = interface(DDN.mscorlib.DNMarshalByRefObject)
  ['{5C410D7F-42A1-329D-83AE-05AA8D2623B4}']
  { getters & setters } 

    function get_FillMode: DNFillMode;
    procedure set_FillMode(value: DNFillMode);
    function get_PointCount: Int32;
    function get_PathTypes: TArray<Byte>;
    function get_PathPoints: TArray<DNPointF>;

  { methods } 

    ///<summary>
    ///  为此路径添加一个矩形。
    ///</summary>
    ///  <param name="rect">
    ///  一个 <see cref="T:System.Drawing.Rectangle" />
    ///  ，它表示要添加的矩形。
    ///</param>
    procedure AddRectangle(rect: DNRectangle); overload;
    ///<summary>
    ///  创建此路径的一个精确副本。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  此方法创建的、 强制转换为一个对象。
    ///</returns>
    function Clone: DDN.mscorlib.DNObject;
    ///<summary>
    ///  释放此 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  使用的所有资源。
    ///</summary>
    procedure Dispose;
    ///<summary>
    ///  清空 <see cref="P:System.Drawing.Drawing2D.GraphicsPath.PathPoints" />
    ///  和 <see cref="P:System.Drawing.Drawing2D.GraphicsPath.PathTypes" />
    ///  数组和设置 <see cref="T:System.Drawing.Drawing2D.FillMode" />
    ///  到 <see cref="F:System.Drawing.Drawing2D.FillMode.Alternate" />
    ///  。
    ///</summary>
    procedure Reset;
    ///<summary>
    ///  开始一个新图形而不关闭当前图形。
    ///  所有后续的点添加到的路径添加到此新的图形。
    ///</summary>
    procedure StartFigure;
    ///<summary>
    ///  关闭当前图形并开始新的图形。
    ///  如果当前图包含一系列连接的直线和曲线，该方法通过从终结点的一条线连接到的起始点关闭循环。
    ///</summary>
    procedure CloseFigure;
    ///<summary>
    ///  关闭所有打开的数字，在此路径，并开始一个新图形。
    ///  通过将行从其终结点连接到其起始点，则关闭每个打开的图形。
    ///</summary>
    procedure CloseAllFigures;
    ///<summary>
    ///  对此设置标记 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</summary>
    procedure SetMarkers;
    ///<summary>
    ///  清除此路径中的所有标记。
    ///</summary>
    procedure ClearMarkers;
    ///<summary>
    ///  中的点的顺序反转 <see cref="P:System.Drawing.Drawing2D.GraphicsPath.PathPoints" />
    ///  此数组 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</summary>
    procedure Reverse;
    ///<summary>
    ///  获取最后一个点以 <see cref="P:System.Drawing.Drawing2D.GraphicsPath.PathPoints" />
    ///  此数组 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.PointF" />
    ///  ，表示在此的最后一个点 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</returns>
    function GetLastPoint: DNPointF;
    ///<summary>
    ///  指示指定的点是否包含在此 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</summary>
    ///  <param name="x">
    ///  要测试的点的 X 坐标。
    ///</param>
    ///  <param name="y">
    ///  要测试的点的 Y 坐标。
    ///</param>
    ///<returns>
    ///  此方法返回 <see langword="true" />
    ///  如果指定的点包含在此 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(x: Single; y: Single): Boolean; overload;
    ///<summary>
    ///  指示指定的点是否包含在此 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</summary>
    ///  <param name="point">
    ///  一个 <see cref="T:System.Drawing.PointF" />
    ///  ，表示要测试的点。
    ///</param>
    ///<returns>
    ///  此方法返回 <see langword="true" />
    ///  如果指定的点包含在此 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(point: DNPointF): Boolean; overload;
    ///<summary>
    ///  指示指定的点是否包含在此 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  中指定的可见剪辑区域 <see cref="T:System.Drawing.Graphics" />
    ///  。
    ///</summary>
    ///  <param name="x">
    ///  要测试的点的 X 坐标。
    ///</param>
    ///  <param name="y">
    ///  要测试的点的 Y 坐标。
    ///</param>
    ///  <param name="graphics"><see cref="T:System.Drawing.Graphics" />
    ///  要测试可见性。
    ///</param>
    ///<returns>
    ///  此方法返回 <see langword="true" />
    ///  如果指定的点包含在此 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(x: Single; y: Single; graphics: DNGraphics): Boolean; overload;
    ///<summary>
    ///  指示指定的点是否包含在此 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</summary>
    ///  <param name="pt">
    ///  一个 <see cref="T:System.Drawing.PointF" />
    ///  ，表示要测试的点。
    ///</param>
    ///  <param name="graphics"><see cref="T:System.Drawing.Graphics" />
    ///  要测试可见性。
    ///</param>
    ///<returns>
    ///  此方法返回 <see langword="true" />
    ///  指定的点是否包含在此; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(pt: DNPointF; graphics: DNGraphics): Boolean; overload;
    ///<summary>
    ///  指示指定的点是否包含在此 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</summary>
    ///  <param name="x">
    ///  要测试的点的 X 坐标。
    ///</param>
    ///  <param name="y">
    ///  要测试的点的 Y 坐标。
    ///</param>
    ///<returns>
    ///  此方法返回 <see langword="true" />
    ///  如果指定的点包含在此 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(x: Int32; y: Int32): Boolean; overload;
    ///<summary>
    ///  指示指定的点是否包含在此 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</summary>
    ///  <param name="point">
    ///  一个 <see cref="T:System.Drawing.Point" />
    ///  ，表示要测试的点。
    ///</param>
    ///<returns>
    ///  此方法返回 <see langword="true" />
    ///  如果指定的点包含在此 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(point: DNPoint): Boolean; overload;
    ///<summary>
    ///  指示指定的点是否包含在此 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  , ，使用指定 <see cref="T:System.Drawing.Graphics" />
    ///  。
    ///</summary>
    ///  <param name="x">
    ///  要测试的点的 X 坐标。
    ///</param>
    ///  <param name="y">
    ///  要测试的点的 Y 坐标。
    ///</param>
    ///  <param name="graphics"><see cref="T:System.Drawing.Graphics" />
    ///  要测试可见性。
    ///</param>
    ///<returns>
    ///  此方法返回 <see langword="true" />
    ///  如果指定的点包含在此 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(x: Int32; y: Int32; graphics: DNGraphics): Boolean; overload;
    ///<summary>
    ///  指示指定的点是否包含在此 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</summary>
    ///  <param name="pt">
    ///  一个 <see cref="T:System.Drawing.Point" />
    ///  ，表示要测试的点。
    ///</param>
    ///  <param name="graphics"><see cref="T:System.Drawing.Graphics" />
    ///  要测试可见性。
    ///</param>
    ///<returns>
    ///  此方法返回 <see langword="true" />
    ///  如果指定的点包含在此 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(pt: DNPoint; graphics: DNGraphics): Boolean; overload;
    ///<summary>
    ///  指示是否指定的点包含在 （下） 此大纲 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  绘制并用指定 <see cref="T:System.Drawing.Pen" />
    ///  。
    ///</summary>
    ///  <param name="x">
    ///  要测试的点的 X 坐标。
    ///</param>
    ///  <param name="y">
    ///  要测试的点的 Y 坐标。
    ///</param>
    ///  <param name="pen">
    ///  要测试的 <see cref="T:System.Drawing.Pen" />
    ///  。
    ///</param>
    ///<returns>
    ///  此方法返回 <see langword="true" />
    ///  如果指定的点包含在此大纲 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  绘制并用指定 <see cref="T:System.Drawing.Pen" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsOutlineVisible(x: Single; y: Single; pen: DNPen): Boolean; overload;
    ///<summary>
    ///  指示是否指定的点包含在 （下） 此大纲 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  绘制并用指定 <see cref="T:System.Drawing.Pen" />
    ///  。
    ///</summary>
    ///  <param name="point">
    ///  一个 <see cref="T:System.Drawing.PointF" />
    ///  ，它指定要测试的位置。
    ///</param>
    ///  <param name="pen">
    ///  要测试的 <see cref="T:System.Drawing.Pen" />
    ///  。
    ///</param>
    ///<returns>
    ///  此方法返回 <see langword="true" />
    ///  如果指定的点包含在此大纲 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  绘制并用指定 <see cref="T:System.Drawing.Pen" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsOutlineVisible(point: DNPointF; pen: DNPen): Boolean; overload;
    ///<summary>
    ///  指示是否指定的点包含在 （下） 此大纲 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  绘制并用指定 <see cref="T:System.Drawing.Pen" />
    ///  并使用指定 <see cref="T:System.Drawing.Graphics" />
    ///  。
    ///</summary>
    ///  <param name="x">
    ///  要测试的点的 X 坐标。
    ///</param>
    ///  <param name="y">
    ///  要测试的点的 Y 坐标。
    ///</param>
    ///  <param name="pen">
    ///  要测试的 <see cref="T:System.Drawing.Pen" />
    ///  。
    ///</param>
    ///  <param name="graphics"><see cref="T:System.Drawing.Graphics" />
    ///  要测试可见性。
    ///</param>
    ///<returns>
    ///  此方法返回 <see langword="true" />
    ///  如果指定的点包含在 （下） 此大纲 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  绘制具有指定 <see cref="T:System.Drawing.Pen" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsOutlineVisible(x: Single; y: Single; pen: DNPen; graphics: DNGraphics): Boolean; overload;
    ///<summary>
    ///  指示是否指定的点包含在 （下） 此大纲 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  绘制并用指定 <see cref="T:System.Drawing.Pen" />
    ///  并使用指定 <see cref="T:System.Drawing.Graphics" />
    ///  。
    ///</summary>
    ///  <param name="pt">
    ///  一个 <see cref="T:System.Drawing.PointF" />
    ///  ，它指定要测试的位置。
    ///</param>
    ///  <param name="pen">
    ///  要测试的 <see cref="T:System.Drawing.Pen" />
    ///  。
    ///</param>
    ///  <param name="graphics"><see cref="T:System.Drawing.Graphics" />
    ///  要测试可见性。
    ///</param>
    ///<returns>
    ///  此方法返回 <see langword="true" />
    ///  如果指定的点包含在 （下） 此大纲 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  绘制具有指定 <see cref="T:System.Drawing.Pen" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsOutlineVisible(pt: DNPointF; pen: DNPen; graphics: DNGraphics): Boolean; overload;
    ///<summary>
    ///  指示是否指定的点包含在 （下） 此大纲 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  绘制并用指定 <see cref="T:System.Drawing.Pen" />
    ///  。
    ///</summary>
    ///  <param name="x">
    ///  要测试的点的 X 坐标。
    ///</param>
    ///  <param name="y">
    ///  要测试的点的 Y 坐标。
    ///</param>
    ///  <param name="pen">
    ///  要测试的 <see cref="T:System.Drawing.Pen" />
    ///  。
    ///</param>
    ///<returns>
    ///  此方法返回 <see langword="true" />
    ///  如果指定的点包含在此大纲 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  绘制并用指定 <see cref="T:System.Drawing.Pen" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsOutlineVisible(x: Int32; y: Int32; pen: DNPen): Boolean; overload;
    ///<summary>
    ///  指示是否指定的点包含在 （下） 此大纲 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  绘制并用指定 <see cref="T:System.Drawing.Pen" />
    ///  。
    ///</summary>
    ///  <param name="point">
    ///  一个 <see cref="T:System.Drawing.Point" />
    ///  ，它指定要测试的位置。
    ///</param>
    ///  <param name="pen">
    ///  要测试的 <see cref="T:System.Drawing.Pen" />
    ///  。
    ///</param>
    ///<returns>
    ///  此方法返回 <see langword="true" />
    ///  如果指定的点包含在此大纲 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  绘制并用指定 <see cref="T:System.Drawing.Pen" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsOutlineVisible(point: DNPoint; pen: DNPen): Boolean; overload;
    ///<summary>
    ///  指示是否指定的点包含在 （下） 此大纲 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  绘制并用指定 <see cref="T:System.Drawing.Pen" />
    ///  并使用指定 <see cref="T:System.Drawing.Graphics" />
    ///  。
    ///</summary>
    ///  <param name="x">
    ///  要测试的点的 X 坐标。
    ///</param>
    ///  <param name="y">
    ///  要测试的点的 Y 坐标。
    ///</param>
    ///  <param name="pen">
    ///  要测试的 <see cref="T:System.Drawing.Pen" />
    ///  。
    ///</param>
    ///  <param name="graphics"><see cref="T:System.Drawing.Graphics" />
    ///  要测试可见性。
    ///</param>
    ///<returns>
    ///  此方法返回 <see langword="true" />
    ///  如果指定的点包含在此大纲 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  绘制具有指定 <see cref="T:System.Drawing.Pen" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsOutlineVisible(x: Int32; y: Int32; pen: DNPen; graphics: DNGraphics): Boolean; overload;
    ///<summary>
    ///  指示是否指定的点包含在 （下） 此大纲 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  绘制并用指定 <see cref="T:System.Drawing.Pen" />
    ///  并使用指定 <see cref="T:System.Drawing.Graphics" />
    ///  。
    ///</summary>
    ///  <param name="pt">
    ///  一个 <see cref="T:System.Drawing.Point" />
    ///  ，它指定要测试的位置。
    ///</param>
    ///  <param name="pen">
    ///  要测试的 <see cref="T:System.Drawing.Pen" />
    ///  。
    ///</param>
    ///  <param name="graphics"><see cref="T:System.Drawing.Graphics" />
    ///  要测试可见性。
    ///</param>
    ///<returns>
    ///  此方法返回 <see langword="true" />
    ///  如果指定的点包含在此大纲 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  绘制具有指定 <see cref="T:System.Drawing.Pen" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsOutlineVisible(pt: DNPoint; pen: DNPen; graphics: DNGraphics): Boolean; overload;
    ///<summary>
    ///  将一条线段追加到此 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</summary>
    ///  <param name="pt1">
    ///  一个 <see cref="T:System.Drawing.PointF" />
    ///  表示行的起始点。
    ///</param>
    ///  <param name="pt2">
    ///  一个 <see cref="T:System.Drawing.PointF" />
    ///  ，表示行的终结点。
    ///</param>
    procedure AddLine(pt1: DNPointF; pt2: DNPointF); overload;
    ///<summary>
    ///  将一条线段追加到此 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</summary>
    ///  <param name="x1">
    ///  直线起始点 x 坐标。
    ///</param>
    ///  <param name="y1">
    ///  直线起始点的 y 坐标。
    ///</param>
    ///  <param name="x2">
    ///  直线终点的 x 坐标。
    ///</param>
    ///  <param name="y2">
    ///  直线终点的 y 坐标。
    ///</param>
    procedure AddLine(x1: Single; y1: Single; x2: Single; y2: Single); overload;
    ///<summary>
    ///  将一系列连接的直线段追加到末尾 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</summary>
    ///  <param name="points">
    ///  一个数组 <see cref="T:System.Drawing.PointF" />
    ///  这些结构表示要定义要添加的直线线段的点。
    ///</param>
    procedure AddLines(points: TArray<DNPointF>); overload;
    ///<summary>
    ///  将一条线段追加到此 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</summary>
    ///  <param name="pt1">
    ///  一个 <see cref="T:System.Drawing.Point" />
    ///  表示行的起始点。
    ///</param>
    ///  <param name="pt2">
    ///  一个 <see cref="T:System.Drawing.Point" />
    ///  ，表示行的终结点。
    ///</param>
    procedure AddLine(pt1: DNPoint; pt2: DNPoint); overload;
    ///<summary>
    ///  向当前图形中追加一条线段。
    ///</summary>
    ///  <param name="x1">
    ///  直线起始点 x 坐标。
    ///</param>
    ///  <param name="y1">
    ///  直线起始点的 y 坐标。
    ///</param>
    ///  <param name="x2">
    ///  直线终点的 x 坐标。
    ///</param>
    ///  <param name="y2">
    ///  直线终点的 y 坐标。
    ///</param>
    procedure AddLine(x1: Int32; y1: Int32; x2: Int32; y2: Int32); overload;
    ///<summary>
    ///  将一系列连接的直线段追加到末尾 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</summary>
    ///  <param name="points">
    ///  一个数组 <see cref="T:System.Drawing.Point" />
    ///  这些结构表示要定义要添加的直线线段的点。
    ///</param>
    procedure AddLines(points: TArray<DNPoint>); overload;
    ///<summary>
    ///  将椭圆弧追加到当前图。
    ///</summary>
    ///  <param name="rect">
    ///  一个 <see cref="T:System.Drawing.RectangleF" />
    ///  表示从中提取弧线的椭圆的矩形边界。
    ///</param>
    ///  <param name="startAngle">
    ///  以度为单位从 x 轴沿顺时针方向度量弧线的起始角度。
    ///</param>
    ///  <param name="sweepAngle">
    ///  之间的角度 <paramref name="startAngle" />
    ///  和弧线的结束。
    ///</param>
    procedure AddArc(rect: DNRectangleF; startAngle: Single; sweepAngle: Single); overload;
    ///<summary>
    ///  将椭圆弧追加到当前图。
    ///</summary>
    ///  <param name="x">
    ///  定义从中提取弧线的椭圆的矩形区域的左上角 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  定义从中提取弧线的椭圆的矩形区域的左上角 y 坐标。
    ///</param>
    ///  <param name="width">
    ///  定义从中提取弧线的椭圆的矩形区域的宽度。
    ///</param>
    ///  <param name="height">
    ///  定义从中提取弧线的椭圆的矩形区域的高度。
    ///</param>
    ///  <param name="startAngle">
    ///  以度为单位从 x 轴沿顺时针方向度量弧线的起始角度。
    ///</param>
    ///  <param name="sweepAngle">
    ///  之间的角度 <paramref name="startAngle" />
    ///  和弧线的结束。
    ///</param>
    procedure AddArc(x: Single; y: Single; width: Single; height: Single; startAngle: Single; sweepAngle: Single); overload;
    ///<summary>
    ///  将椭圆弧追加到当前图。
    ///</summary>
    ///  <param name="rect">
    ///  一个 <see cref="T:System.Drawing.Rectangle" />
    ///  表示从中提取弧线的椭圆的矩形边界。
    ///</param>
    ///  <param name="startAngle">
    ///  以度为单位从 x 轴沿顺时针方向度量弧线的起始角度。
    ///</param>
    ///  <param name="sweepAngle">
    ///  之间的角度 <paramref name="startAngle" />
    ///  和弧线的结束。
    ///</param>
    procedure AddArc(rect: DNRectangle; startAngle: Single; sweepAngle: Single); overload;
    ///<summary>
    ///  将椭圆弧追加到当前图。
    ///</summary>
    ///  <param name="x">
    ///  定义从中提取弧线的椭圆的矩形区域的左上角 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  定义从中提取弧线的椭圆的矩形区域的左上角 y 坐标。
    ///</param>
    ///  <param name="width">
    ///  定义从中提取弧线的椭圆的矩形区域的宽度。
    ///</param>
    ///  <param name="height">
    ///  定义从中提取弧线的椭圆的矩形区域的高度。
    ///</param>
    ///  <param name="startAngle">
    ///  以度为单位从 x 轴沿顺时针方向度量弧线的起始角度。
    ///</param>
    ///  <param name="sweepAngle">
    ///  之间的角度 <paramref name="startAngle" />
    ///  和弧线的结束。
    ///</param>
    procedure AddArc(x: Int32; y: Int32; width: Int32; height: Int32; startAngle: Single; sweepAngle: Single); overload;
    ///<summary>
    ///  将三次方贝塞尔曲线添加到当前图。
    ///</summary>
    ///  <param name="pt1">
    ///  一个 <see cref="T:System.Drawing.PointF" />
    ///  它表示曲线的起始点。
    ///</param>
    ///  <param name="pt2">
    ///  一个 <see cref="T:System.Drawing.PointF" />
    ///  它表示曲线的第一个控制点。
    ///</param>
    ///  <param name="pt3">
    ///  一个 <see cref="T:System.Drawing.PointF" />
    ///  它表示曲线的第二个控制点。
    ///</param>
    ///  <param name="pt4">
    ///  一个 <see cref="T:System.Drawing.PointF" />
    ///  ，它表示曲线的终结点。
    ///</param>
    procedure AddBezier(pt1: DNPointF; pt2: DNPointF; pt3: DNPointF; pt4: DNPointF); overload;
    ///<summary>
    ///  将三次方贝塞尔曲线添加到当前图。
    ///</summary>
    ///  <param name="x1">
    ///  曲线起始点的 X 坐标。
    ///</param>
    ///  <param name="y1">
    ///  曲线起始点的 Y 坐标。
    ///</param>
    ///  <param name="x2">
    ///  曲线的第一个控制点的 x 坐标。
    ///</param>
    ///  <param name="y2">
    ///  曲线的第一个控制点的 y 坐标。
    ///</param>
    ///  <param name="x3">
    ///  曲线的第二个控制点的 x 坐标。
    ///</param>
    ///  <param name="y3">
    ///  曲线的第二个控制点的 y 坐标。
    ///</param>
    ///  <param name="x4">
    ///  曲线的终结点的 x 坐标。
    ///</param>
    ///  <param name="y4">
    ///  曲线的终结点的 y 坐标。
    ///</param>
    procedure AddBezier(x1: Single; y1: Single; x2: Single; y2: Single; x3: Single; y3: Single; x4: Single; y4: Single); overload;
    ///<summary>
    ///  将连接三次方贝塞尔曲线的序列添加到当前图。
    ///</summary>
    ///  <param name="points">
    ///  一个数组 <see cref="T:System.Drawing.PointF" />
    ///  这些结构表示定义曲线的点。
    ///</param>
    procedure AddBeziers(points: TArray<DNPointF>); overload;
    ///<summary>
    ///  将三次方贝塞尔曲线添加到当前图。
    ///</summary>
    ///  <param name="pt1">
    ///  一个 <see cref="T:System.Drawing.Point" />
    ///  它表示曲线的起始点。
    ///</param>
    ///  <param name="pt2">
    ///  一个 <see cref="T:System.Drawing.Point" />
    ///  它表示曲线的第一个控制点。
    ///</param>
    ///  <param name="pt3">
    ///  一个 <see cref="T:System.Drawing.Point" />
    ///  它表示曲线的第二个控制点。
    ///</param>
    ///  <param name="pt4">
    ///  一个 <see cref="T:System.Drawing.Point" />
    ///  ，它表示曲线的终结点。
    ///</param>
    procedure AddBezier(pt1: DNPoint; pt2: DNPoint; pt3: DNPoint; pt4: DNPoint); overload;
    ///<summary>
    ///  将三次方贝塞尔曲线添加到当前图。
    ///</summary>
    ///  <param name="x1">
    ///  曲线起始点的 X 坐标。
    ///</param>
    ///  <param name="y1">
    ///  曲线起始点的 Y 坐标。
    ///</param>
    ///  <param name="x2">
    ///  曲线的第一个控制点的 x 坐标。
    ///</param>
    ///  <param name="y2">
    ///  曲线的第一个控制点的 y 坐标。
    ///</param>
    ///  <param name="x3">
    ///  曲线的第二个控制点的 x 坐标。
    ///</param>
    ///  <param name="y3">
    ///  曲线的第二个控制点的 y 坐标。
    ///</param>
    ///  <param name="x4">
    ///  曲线的终结点的 x 坐标。
    ///</param>
    ///  <param name="y4">
    ///  曲线的终结点的 y 坐标。
    ///</param>
    procedure AddBezier(x1: Int32; y1: Int32; x2: Int32; y2: Int32; x3: Int32; y3: Int32; x4: Int32; y4: Int32); overload;
    ///<summary>
    ///  将连接三次方贝塞尔曲线的序列添加到当前图。
    ///</summary>
    ///  <param name="points">
    ///  一个数组 <see cref="T:System.Drawing.Point" />
    ///  这些结构表示定义曲线的点。
    ///</param>
    procedure AddBeziers(points: TArray<DNPoint>); overload;
    ///<summary>
    ///  向当前图形的样条曲线。
    ///  使用基数样条曲线是因为曲线经过每个点数组中。
    ///</summary>
    ///  <param name="points">
    ///  一个数组 <see cref="T:System.Drawing.PointF" />
    ///  这些结构表示定义曲线的点。
    ///</param>
    procedure AddCurve(points: TArray<DNPointF>); overload;
    ///<summary>
    ///  向当前图形的样条曲线。
    ///</summary>
    ///  <param name="points">
    ///  一个数组 <see cref="T:System.Drawing.PointF" />
    ///  这些结构表示定义曲线的点。
    ///</param>
    ///  <param name="tension">
    ///  一个值，指定该曲线控制点间弯曲的量。
    ///  大于 1 的值将产生不可预知的结果。
    ///</param>
    procedure AddCurve(points: TArray<DNPointF>; tension: Single); overload;
    ///<summary>
    ///  向当前图形的样条曲线。
    ///</summary>
    ///  <param name="points">
    ///  一个数组 <see cref="T:System.Drawing.PointF" />
    ///  这些结构表示定义曲线的点。
    ///</param>
    ///  <param name="offset">
    ///  中的元素的索引 <paramref name="points" />
    ///  用作在曲线中的第一个点的数组。
    ///</param>
    ///  <param name="numberOfSegments">
    ///  用于绘制曲线的段的数目。
    ///  可以将一个段看作一条连接两个点。
    ///</param>
    ///  <param name="tension">
    ///  一个值，指定该曲线控制点间弯曲的量。
    ///  大于 1 的值将产生不可预知的结果。
    ///</param>
    procedure AddCurve(points: TArray<DNPointF>; offset: Int32; numberOfSegments: Int32; tension: Single); overload;
    ///<summary>
    ///  向当前图形的样条曲线。
    ///  使用基数样条曲线是因为曲线经过每个点数组中。
    ///</summary>
    ///  <param name="points">
    ///  一个数组 <see cref="T:System.Drawing.Point" />
    ///  这些结构表示定义曲线的点。
    ///</param>
    procedure AddCurve(points: TArray<DNPoint>); overload;
    ///<summary>
    ///  向当前图形的样条曲线。
    ///</summary>
    ///  <param name="points">
    ///  一个数组 <see cref="T:System.Drawing.Point" />
    ///  这些结构表示定义曲线的点。
    ///</param>
    ///  <param name="tension">
    ///  一个值，指定该曲线控制点间弯曲的量。
    ///  大于 1 的值将产生不可预知的结果。
    ///</param>
    procedure AddCurve(points: TArray<DNPoint>; tension: Single); overload;
    ///<summary>
    ///  向当前图形的样条曲线。
    ///</summary>
    ///  <param name="points">
    ///  一个数组 <see cref="T:System.Drawing.Point" />
    ///  这些结构表示定义曲线的点。
    ///</param>
    ///  <param name="offset">
    ///  中的元素的索引 <paramref name="points" />
    ///  用作在曲线中的第一个点的数组。
    ///</param>
    ///  <param name="numberOfSegments">
    ///  一个值，指定该曲线控制点间弯曲的量。
    ///  大于 1 的值将产生不可预知的结果。
    ///</param>
    ///  <param name="tension">
    ///  一个值，指定该曲线控制点间弯曲的量。
    ///  大于 1 的值将产生不可预知的结果。
    ///</param>
    procedure AddCurve(points: TArray<DNPoint>; offset: Int32; numberOfSegments: Int32; tension: Single); overload;
    ///<summary>
    ///  将闭合的曲线添加到此路径。
    ///  使用基数样条曲线是因为曲线经过每个点数组中。
    ///</summary>
    ///  <param name="points">
    ///  一个数组 <see cref="T:System.Drawing.PointF" />
    ///  这些结构表示定义曲线的点。
    ///</param>
    procedure AddClosedCurve(points: TArray<DNPointF>); overload;
    ///<summary>
    ///  将闭合的曲线添加到此路径。
    ///  使用基数样条曲线是因为曲线经过每个点数组中。
    ///</summary>
    ///  <param name="points">
    ///  一个数组 <see cref="T:System.Drawing.PointF" />
    ///  这些结构表示定义曲线的点。
    ///</param>
    ///  <param name="tension">
    ///  介于 0 和 1 指定曲线弯曲 0 表示最小弯曲 （清晰角），1 表示平滑曲线的点之间的量之间的值。
    ///</param>
    procedure AddClosedCurve(points: TArray<DNPointF>; tension: Single); overload;
    ///<summary>
    ///  将闭合的曲线添加到此路径。
    ///  使用基数样条曲线是因为曲线经过每个点数组中。
    ///</summary>
    ///  <param name="points">
    ///  一个数组 <see cref="T:System.Drawing.Point" />
    ///  这些结构表示定义曲线的点。
    ///</param>
    procedure AddClosedCurve(points: TArray<DNPoint>); overload;
    ///<summary>
    ///  将闭合的曲线添加到此路径。
    ///  使用基数样条曲线是因为曲线经过每个点数组中。
    ///</summary>
    ///  <param name="points">
    ///  一个数组 <see cref="T:System.Drawing.Point" />
    ///  这些结构表示定义曲线的点。
    ///</param>
    ///  <param name="tension">
    ///  介于 0 和 1 指定曲线弯曲 0 表示最小弯曲 （清晰角），1 表示平滑曲线的点之间的量之间的值。
    ///</param>
    procedure AddClosedCurve(points: TArray<DNPoint>; tension: Single); overload;
    ///<summary>
    ///  为此路径添加一个矩形。
    ///</summary>
    ///  <param name="rect">
    ///  一个 <see cref="T:System.Drawing.RectangleF" />
    ///  ，它表示要添加的矩形。
    ///</param>
    procedure AddRectangle(rect: DNRectangleF); overload;
    ///<summary>
    ///  将一系列矩形添加到此路径。
    ///</summary>
    ///  <param name="rects">
    ///  一个数组 <see cref="T:System.Drawing.RectangleF" />
    ///  这些结构表示要添加的矩形。
    ///</param>
    procedure AddRectangles(rects: TArray<DNRectangleF>); overload;
    ///<summary>
    ///  将一系列矩形添加到此路径。
    ///</summary>
    ///  <param name="rects">
    ///  一个数组 <see cref="T:System.Drawing.Rectangle" />
    ///  这些结构表示要添加的矩形。
    ///</param>
    procedure AddRectangles(rects: TArray<DNRectangle>); overload;
    ///<summary>
    ///  向当前路径中添加一个椭圆。
    ///</summary>
    ///  <param name="rect">
    ///  一个 <see cref="T:System.Drawing.RectangleF" />
    ///  ，它表示定义椭圆的边框。
    ///</param>
    procedure AddEllipse(rect: DNRectangleF); overload;
    ///<summary>
    ///  向当前路径中添加一个椭圆。
    ///</summary>
    ///  <param name="x">
    ///  定义椭圆的边框的左上角的 X 坐标。
    ///</param>
    ///  <param name="y">
    ///  定义椭圆的边框的左上角 y 坐标。
    ///</param>
    ///  <param name="width">
    ///  定义椭圆的边框的宽度。
    ///</param>
    ///  <param name="height">
    ///  定义椭圆的边框的高度。
    ///</param>
    procedure AddEllipse(x: Single; y: Single; width: Single; height: Single); overload;
    ///<summary>
    ///  向当前路径中添加一个椭圆。
    ///</summary>
    ///  <param name="rect">
    ///  一个 <see cref="T:System.Drawing.Rectangle" />
    ///  ，它表示定义椭圆的边框。
    ///</param>
    procedure AddEllipse(rect: DNRectangle); overload;
    ///<summary>
    ///  向当前路径中添加一个椭圆。
    ///</summary>
    ///  <param name="x">
    ///  定义椭圆的边框的左上角的 X 坐标。
    ///</param>
    ///  <param name="y">
    ///  定义椭圆的边框的左上角的 Y 坐标。
    ///</param>
    ///  <param name="width">
    ///  定义椭圆的边框的宽度。
    ///</param>
    ///  <param name="height">
    ///  定义椭圆的边框的高度。
    ///</param>
    procedure AddEllipse(x: Int32; y: Int32; width: Int32; height: Int32); overload;
    ///<summary>
    ///  将饼图形状的轮廓添加到此路径。
    ///</summary>
    ///  <param name="rect">
    ///  一个 <see cref="T:System.Drawing.Rectangle" />
    ///  ，它表示定义从中绘制饼图的椭圆的边框。
    ///</param>
    ///  <param name="startAngle">
    ///  以度为单位从 x 轴沿顺时针方向度量扇形区的起始角度。
    ///</param>
    ///  <param name="sweepAngle">
    ///  之间的角度 <paramref name="startAngle" />
    ///  和扇形区，以从顺时针旋转度为单位的结束 <paramref name="startAngle" />
    ///  。
    ///</param>
    procedure AddPie(rect: DNRectangle; startAngle: Single; sweepAngle: Single); overload;
    ///<summary>
    ///  将饼图形状的轮廓添加到此路径。
    ///</summary>
    ///  <param name="x">
    ///  定义从中绘制饼图的椭圆的边框的左上角 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  定义从中绘制饼图的椭圆的边框的左上角 y 坐标。
    ///</param>
    ///  <param name="width">
    ///  定义从中绘制饼图的椭圆的边框的宽度。
    ///</param>
    ///  <param name="height">
    ///  定义从中绘制饼图的椭圆的边框的高度。
    ///</param>
    ///  <param name="startAngle">
    ///  以度为单位从 x 轴沿顺时针方向度量扇形区的起始角度。
    ///</param>
    ///  <param name="sweepAngle">
    ///  之间的角度 <paramref name="startAngle" />
    ///  饼图部分，以从顺时针旋转度为单位的末尾 <paramref name="startAngle" />
    ///  。
    ///</param>
    procedure AddPie(x: Single; y: Single; width: Single; height: Single; startAngle: Single; sweepAngle: Single); overload;
    ///<summary>
    ///  将饼图形状的轮廓添加到此路径。
    ///</summary>
    ///  <param name="x">
    ///  定义从中绘制饼图的椭圆的边框的左上角 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  定义从中绘制饼图的椭圆的边框的左上角 y 坐标。
    ///</param>
    ///  <param name="width">
    ///  定义从中绘制饼图的椭圆的边框的宽度。
    ///</param>
    ///  <param name="height">
    ///  定义从中绘制饼图的椭圆的边框的高度。
    ///</param>
    ///  <param name="startAngle">
    ///  以度为单位从 x 轴沿顺时针方向度量扇形区的起始角度。
    ///</param>
    ///  <param name="sweepAngle">
    ///  之间的角度 <paramref name="startAngle" />
    ///  饼图部分，以从顺时针旋转度为单位的末尾 <paramref name="startAngle" />
    ///  。
    ///</param>
    procedure AddPie(x: Int32; y: Int32; width: Int32; height: Int32; startAngle: Single; sweepAngle: Single); overload;
    ///<summary>
    ///  将多边形添加到此路径。
    ///</summary>
    ///  <param name="points">
    ///  一个数组 <see cref="T:System.Drawing.PointF" />
    ///  定义要添加的多边形的结构。
    ///</param>
    procedure AddPolygon(points: TArray<DNPointF>); overload;
    ///<summary>
    ///  将多边形添加到此路径。
    ///</summary>
    ///  <param name="points">
    ///  一个数组 <see cref="T:System.Drawing.Point" />
    ///  定义要添加的多边形的结构。
    ///</param>
    procedure AddPolygon(points: TArray<DNPoint>); overload;
    ///<summary>
    ///  指定将追加 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  到此路径。
    ///</summary>
    ///  <param name="addingPath">
    ///  要添加的 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</param>
    ///  <param name="connect">
    ///  一个布尔值，指定第一张图中添加的路径是否为此路径中的最后一个图形的一部分。
    ///  值为 <see langword="true" />
    ///  指定 （如果可能） 添加的路径中的第一个图形是此路径中的最后一个图形的一部分。
    ///  值为 <see langword="false" />
    ///  指定添加的路径中的第一个图形是独立于此路径中的最后一个图形。
    ///</param>
    procedure AddPath(addingPath: DNGraphicsPath; connect: Boolean);
    ///<summary>
    ///  将文本字符串添加到此路径。
    ///</summary>
    ///  <param name="s">
    ///  要添加的 <see cref="T:System.String" />
    ///  。
    ///</param>
    ///  <param name="family">
    ///  一个 <see cref="T:System.Drawing.FontFamily" />
    ///  ，它表示与绘制测试的字体名称。
    ///</param>
    ///  <param name="style">
    ///  一个 <see cref="T:System.Drawing.FontStyle" />
    ///  枚举，它表示文本 （粗体、 斜体，等等） 的样式信息。
    ///  这必须转换为整数 （请参阅本节后面的示例代码）。
    ///</param>
    ///  <param name="emSize">
    ///  限定字符的 em 方形框的高度。
    ///</param>
    ///  <param name="origin">
    ///  一个 <see cref="T:System.Drawing.PointF" />
    ///  ，表示文本的开始位置的点。
    ///</param>
    ///  <param name="format">
    ///  一个 <see cref="T:System.Drawing.StringFormat" />
    ///  ，它指定文本格式设置信息，如行距和对齐方式。
    ///</param>
    procedure AddString(s: string; family: DNFontFamily; style: Int32; emSize: Single; origin: DNPointF; format: DNStringFormat); overload;
    ///<summary>
    ///  将文本字符串添加到此路径。
    ///</summary>
    ///  <param name="s">
    ///  要添加的 <see cref="T:System.String" />
    ///  。
    ///</param>
    ///  <param name="family">
    ///  一个 <see cref="T:System.Drawing.FontFamily" />
    ///  ，它表示与绘制测试的字体名称。
    ///</param>
    ///  <param name="style">
    ///  一个 <see cref="T:System.Drawing.FontStyle" />
    ///  枚举，它表示文本 （粗体、 斜体，等等） 的样式信息。
    ///  这必须转换为整数 （请参阅本节后面的示例代码）。
    ///</param>
    ///  <param name="emSize">
    ///  限定字符的 em 方形框的高度。
    ///</param>
    ///  <param name="origin">
    ///  一个 <see cref="T:System.Drawing.Point" />
    ///  ，表示文本的开始位置的点。
    ///</param>
    ///  <param name="format">
    ///  一个 <see cref="T:System.Drawing.StringFormat" />
    ///  ，它指定文本格式设置信息，如行距和对齐方式。
    ///</param>
    procedure AddString(s: string; family: DNFontFamily; style: Int32; emSize: Single; origin: DNPoint; format: DNStringFormat); overload;
    ///<summary>
    ///  将文本字符串添加到此路径。
    ///</summary>
    ///  <param name="s">
    ///  要添加的 <see cref="T:System.String" />
    ///  。
    ///</param>
    ///  <param name="family">
    ///  一个 <see cref="T:System.Drawing.FontFamily" />
    ///  ，它表示与绘制测试的字体名称。
    ///</param>
    ///  <param name="style">
    ///  一个 <see cref="T:System.Drawing.FontStyle" />
    ///  枚举，它表示文本 （粗体、 斜体，等等） 的样式信息。
    ///  这必须转换为整数 （请参阅本节后面的示例代码）。
    ///</param>
    ///  <param name="emSize">
    ///  限定字符的 em 方形框的高度。
    ///</param>
    ///  <param name="layoutRect">
    ///  一个 <see cref="T:System.Drawing.RectangleF" />
    ///  表示限定文本的矩形。
    ///</param>
    ///  <param name="format">
    ///  一个 <see cref="T:System.Drawing.StringFormat" />
    ///  ，它指定文本格式设置信息，如行距和对齐方式。
    ///</param>
    procedure AddString(s: string; family: DNFontFamily; style: Int32; emSize: Single; layoutRect: DNRectangleF; format: DNStringFormat); overload;
    ///<summary>
    ///  将文本字符串添加到此路径。
    ///</summary>
    ///  <param name="s">
    ///  要添加的 <see cref="T:System.String" />
    ///  。
    ///</param>
    ///  <param name="family">
    ///  一个 <see cref="T:System.Drawing.FontFamily" />
    ///  ，它表示与绘制测试的字体名称。
    ///</param>
    ///  <param name="style">
    ///  一个 <see cref="T:System.Drawing.FontStyle" />
    ///  枚举，它表示文本 （粗体、 斜体，等等） 的样式信息。
    ///  这必须转换为整数 （请参阅本节后面的示例代码）。
    ///</param>
    ///  <param name="emSize">
    ///  限定字符的 em 方形框的高度。
    ///</param>
    ///  <param name="layoutRect">
    ///  一个 <see cref="T:System.Drawing.Rectangle" />
    ///  表示限定文本的矩形。
    ///</param>
    ///  <param name="format">
    ///  一个 <see cref="T:System.Drawing.StringFormat" />
    ///  ，它指定文本格式设置信息，如行距和对齐方式。
    ///</param>
    procedure AddString(s: string; family: DNFontFamily; style: Int32; emSize: Single; layoutRect: DNRectangle; format: DNStringFormat); overload;
    ///<summary>
    ///  一个转换矩阵应用到此 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</summary>
    ///  <param name="matrix">
    ///  一个 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  ，它表示要应用的转换。
    ///</param>
    procedure Transform(matrix: DNMatrix);
    ///<summary>
    ///  返回限定此矩形 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.RectangleF" />
    ///  表示限定此矩形 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</returns>
    function GetBounds: DNRectangleF; overload;
    ///<summary>
    ///  返回限定此矩形 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  时转换该路径指定 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  。
    ///</summary>
    ///  <param name="matrix"><see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  ，它指定要应用于此路径，在计算的边框之前的转换。
    ///  此路径不永久转换;仅在计算的边框的过程使用转换。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.RectangleF" />
    ///  表示限定此矩形 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</returns>
    function GetBounds(matrix: DNMatrix): DNRectangleF; overload;
    ///<summary>
    ///  返回限定此矩形 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  时转换的当前路径由指定 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  和与指定位置绘制 <see cref="T:System.Drawing.Pen" />
    ///  。
    ///</summary>
    ///  <param name="matrix"><see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  ，它指定要应用于此路径，在计算的边框之前的转换。
    ///  此路径不永久转换;仅在计算的边框的过程使用转换。
    ///</param>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  用来绘制 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.RectangleF" />
    ///  表示限定此矩形 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</returns>
    function GetBounds(matrix: DNMatrix; pen: DNPen): DNRectangleF; overload;
    ///<summary>
    ///  将此路径中的每个曲线转换为一系列连接的直线线段。
    ///</summary>
    procedure Flatten; overload;
    ///<summary>
    ///  应用指定的转换，然后将转换在此每条曲线 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  到一系列连接的直线线段。
    ///</summary>
    ///  <param name="matrix">
    ///  一个 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  进行变换这 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  平面化前。
    ///</param>
    procedure Flatten(matrix: DNMatrix); overload;
    ///<summary>
    ///  将转换在此每条曲线 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  到一系列连接的直线线段。
    ///</summary>
    ///  <param name="matrix">
    ///  一个 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  进行变换这 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  平面化前。
    ///</param>
    ///  <param name="flatness">
    ///  指定该曲线与其平展的近似值之间的最大允许的错误。
    ///  默认值为 0.25 的值。
    ///  减少平滑度值将增加的近似中的直线线段数量。
    ///</param>
    procedure Flatten(matrix: DNMatrix; flatness: Single); overload;
    ///<summary>
    ///  向路径添加附加的轮廓。
    ///</summary>
    ///  <param name="pen">
    ///  一个 <see cref="T:System.Drawing.Pen" />
    ///  ，它指定之间的路径的原始轮廓和此方法创建的新轮廓的宽度。
    ///</param>
    procedure Widen(pen: DNPen); overload;
    ///<summary>
    ///  添加到附加轮廓 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</summary>
    ///  <param name="pen">
    ///  一个 <see cref="T:System.Drawing.Pen" />
    ///  ，它指定之间的路径的原始轮廓和此方法创建的新轮廓的宽度。
    ///</param>
    ///  <param name="matrix">
    ///  一个 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  ，它指定一个转换，以便在扩大转换之前应用到该路径。
    ///</param>
    procedure Widen(pen: DNPen; matrix: DNMatrix); overload;
    ///<summary>
    ///  替换此 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  ，用包含用指定的钢笔绘制此路径时，将填入的区域曲线。
    ///</summary>
    ///  <param name="pen">
    ///  一个 <see cref="T:System.Drawing.Pen" />
    ///  ，它指定之间的路径的原始轮廓和此方法创建的新轮廓的宽度。
    ///</param>
    ///  <param name="matrix">
    ///  一个 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  ，它指定一个转换，以便在扩大转换之前应用到该路径。
    ///</param>
    ///  <param name="flatness">
    ///  该值指定曲线展平。
    ///</param>
    procedure Widen(pen: DNPen; matrix: DNMatrix; flatness: Single); overload;
    ///<summary>
    ///  应用 warp 转换，由一个矩形和一个平行四边形，到此定义 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</summary>
    ///  <param name="destPoints">
    ///  一个数组 <see cref="T:System.Drawing.PointF" />
    ///  定义一个平行四边形的定义的矩形的结构 <paramref name="srcRect" />
    ///  转换。
    ///  该数组可以包含三个或四个元素。
    ///  如果数组包含三个元素，平行四边形的右下角所隐含的前三个点。
    ///</param>
    ///  <param name="srcRect">
    ///  一个 <see cref="T:System.Drawing.RectangleF" />
    ///  表示传递给定义的平行四边形的矩形的转换 <paramref name="destPoints" />
    ///  。
    ///</param>
    procedure Warp(destPoints: TArray<DNPointF>; srcRect: DNRectangleF); overload;
    ///<summary>
    ///  应用 warp 转换，由一个矩形和一个平行四边形，到此定义 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</summary>
    ///  <param name="destPoints">
    ///  一个数组 <see cref="T:System.Drawing.PointF" />
    ///  定义一个平行四边形的定义的矩形的结构 <paramref name="srcRect" />
    ///  转换。
    ///  该数组可以包含三个或四个元素。
    ///  如果数组包含三个元素，平行四边形的右下角所隐含的前三个点。
    ///</param>
    ///  <param name="srcRect">
    ///  一个 <see cref="T:System.Drawing.RectangleF" />
    ///  表示传递给定义的平行四边形的矩形的转换 <paramref name="destPoints" />
    ///  。
    ///</param>
    ///  <param name="matrix">
    ///  一个 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  ，它指定要应用于路径的几何变换。
    ///</param>
    procedure Warp(destPoints: TArray<DNPointF>; srcRect: DNRectangleF; matrix: DNMatrix); overload;
    function GetLifetimeService: DDN.mscorlib.DNObject;
    function InitializeLifetimeService: DDN.mscorlib.DNObject;
    function CreateObjRef(requestedType: DDN.mscorlib.DNType): DDN.mscorlib.DNObjRef;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置 <see cref="T:System.Drawing.Drawing2D.FillMode" />
    ///  枚举，它确定如何在此形状的内部 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  进行填充。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Drawing2D.FillMode" />
    ///  枚举，用于指定如何在此形状的内部 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  进行填充。
    ///</returns>
    property FillMode: DNFillMode read get_FillMode write set_FillMode;
    ///<summary>
    ///  获取中的元素数 <see cref="P:System.Drawing.Drawing2D.GraphicsPath.PathPoints" />
    ///  或 <see cref="P:System.Drawing.Drawing2D.GraphicsPath.PathTypes" />
    ///  数组。
    ///</summary>
    ///<returns>
    ///  一个整数，指定中的元素数 <see cref="P:System.Drawing.Drawing2D.GraphicsPath.PathPoints" />
    ///  或 <see cref="P:System.Drawing.Drawing2D.GraphicsPath.PathTypes" />
    ///  数组。
    ///</returns>
    property PointCount: Int32 read get_PointCount;
    ///<summary>
    ///  获取类型中的相应点 <see cref="P:System.Drawing.Drawing2D.GraphicsPath.PathPoints" />
    ///  数组。
    ///</summary>
    ///<returns>
    ///  在路径中指定相应的点的类型的字节数组。
    ///</returns>
    property PathTypes: TArray<Byte> read get_PathTypes;
    ///<summary>
    ///  获取路径中的点。
    ///</summary>
    ///<returns>
    ///  一个数组 <see cref="T:System.Drawing.PointF" />
    ///  表示路径的对象。
    ///</returns>
    property PathPoints: TArray<DNPointF> read get_PathPoints;
  end;

  TDNGraphicsPath = class(TDNGenericImport<DNGraphicsPathClass, DNGraphicsPath>) end;

  //-------------namespace: System.Drawing.Drawing2D----------------
  DNGraphicsStateClass = interface(DDN.mscorlib.DNMarshalByRefObjectClass)
  ['{E333BB85-84A5-5579-B326-3FCA6BB060EC}']
  end;

  ///<summary>
  ///  表示状态的 <see cref="T:System.Drawing.Graphics" />
  ///  对象。
  ///  此对象将返回通过调用 <see cref="M:System.Drawing.Graphics.Save" />
  ///  方法。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.Drawing.Drawing2D.GraphicsState')]
  DNGraphicsState = interface(DDN.mscorlib.DNMarshalByRefObject)
  ['{8A98BC4E-E202-3891-AF68-E1F545AC82CE}']
  { methods } 

    function GetLifetimeService: DDN.mscorlib.DNObject;
    function InitializeLifetimeService: DDN.mscorlib.DNObject;
    function CreateObjRef(requestedType: DDN.mscorlib.DNType): DDN.mscorlib.DNObjRef;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNGraphicsState = class(TDNGenericImport<DNGraphicsStateClass, DNGraphicsState>) end;

  //-------------namespace: System.Drawing.Drawing2D----------------
  DNMatrixClass = interface(DDN.mscorlib.DNMarshalByRefObjectClass)
  ['{F48E5EE0-BFA5-5ED3-A983-09F1FEE84FB5}']
  { constructors } 

    ///<summary>
    ///  将 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  类的一个新实例初始化为单位矩阵。
    ///</summary>
    {class} function init: DNMatrix; overload;
    ///<summary>
    ///  使用指定的元素初始化 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="m11">
    ///  新的 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  的第一行和第一列中的值。
    ///</param>
    ///  <param name="m12">
    ///  新的 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  的第一行和第二列中的值。
    ///</param>
    ///  <param name="m21">
    ///  新的 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  的第二行和第一列中的值。
    ///</param>
    ///  <param name="m22">
    ///  新的 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  的第二行和第二列中的值。
    ///</param>
    ///  <param name="dx">
    ///  新的 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  的第三行和第一列中的值。
    ///</param>
    ///  <param name="dy">
    ///  新的 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  的第三行和第二列中的值。
    ///</param>
    {class} function init(m11: Single; m12: Single; m21: Single; m22: Single; dx: Single; dy: Single): DNMatrix; overload;
    ///<summary>
    ///  将 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  类的一个新实例初始化为指定矩形和点数组定义的几何变换。
    ///</summary>
    ///  <param name="rect">
    ///  表示将变换的矩形的 <see cref="T:System.Drawing.RectangleF" />
    ///  结构。
    ///</param>
    ///  <param name="plgpts">
    ///  一个由三个 <see cref="T:System.Drawing.PointF" />
    ///  结构构成的数组，该数组表示矩形的左上角、右上角和左下角将变换为的平行四边形的三个点。
    ///  平行四边形的右下角的位置可从前三个角的位置导出。
    ///</param>
    {class} function init(rect: DNRectangleF; plgpts: TArray<DNPointF>): DNMatrix; overload;
    ///<summary>
    ///  将 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  类的一个新实例初始化为指定矩形和点数组定义的几何变换。
    ///</summary>
    ///  <param name="rect">
    ///  表示将变换的矩形的 <see cref="T:System.Drawing.Rectangle" />
    ///  结构。
    ///</param>
    ///  <param name="plgpts">
    ///  一个由三个 <see cref="T:System.Drawing.Point" />
    ///  结构构成的数组，该数组表示矩形的左上角、右上角和左下角将变换为的平行四边形的三个点。
    ///  平行四边形的右下角的位置可从前三个角的位置导出。
    ///</param>
    {class} function init(rect: DNRectangle; plgpts: TArray<DNPoint>): DNMatrix; overload;

  end;

  ///<summary>
  ///  封装表示几何变换的 3x3 仿射矩阵。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.Drawing.Drawing2D.Matrix')]
  DNMatrix = interface(DDN.mscorlib.DNMarshalByRefObject)
  ['{8DE19850-6042-39C0-AA35-BE31D935886B}']
  { getters & setters } 

    function get_Elements: TArray<Single>;
    function get_OffsetX: Single;
    function get_OffsetY: Single;
    function get_IsInvertible: Boolean;
    function get_IsIdentity: Boolean;

  { methods } 

    ///<summary>
    ///  重置此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  得到单位矩阵的元素。
    ///</summary>
    procedure Reset;
    ///<summary>
    ///  对指定的点数组应用此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  所表示的几何变换。
    ///</summary>
    ///  <param name="pts">
    ///  一个 <see cref="T:System.Drawing.PointF" />
    ///  结构的数组，它表示要变换的点。
    ///</param>
    procedure TransformPoints(pts: TArray<DNPointF>); overload;
    ///<summary>
    ///  对指定的点数组应用此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  所表示的几何变换。
    ///</summary>
    ///  <param name="pts">
    ///  一个 <see cref="T:System.Drawing.Point" />
    ///  结构的数组，它表示要变换的点。
    ///</param>
    procedure TransformPoints(pts: TArray<DNPoint>); overload;
    ///<summary>
    ///  释放此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  使用的所有资源。
    ///</summary>
    procedure Dispose;
    ///<summary>
    ///  测试指定的对象是否是 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  以及是否与此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  相同。
    ///</summary>
    ///  <param name="obj">
    ///  要测试的对象。
    ///</param>
    ///<returns>
    ///  如果 <paramref name="obj" />
    ///  是等同于此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  的指定 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  ，则该方法返回 <see langword="true" />
    ///  ；否则返回 <see langword="false" />
    ///  。
    ///</returns>
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  返回哈希代码。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  的哈希代码。
    ///</returns>
    function GetHashCode: Int32;
    ///<summary>
    ///  创建此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  的一个精确副本。
    ///</summary>
    ///<returns>
    ///  此方法创建的 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  。
    ///</returns>
    function Clone: DNMatrix;
    ///<summary>
    ///  通过预先计算指定的 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  ，将此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  与 <paramref name="matrix" />
    ///  参数中指定的矩阵相乘。
    ///</summary>
    ///  <param name="matrix"><see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  ，此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  将与之相乘。
    ///</param>
    procedure Multiply(matrix: DNMatrix); overload;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  与 <paramref name="matrix" />
    ///  参数中指定的矩阵相乘，而且采用 <paramref name="order" />
    ///  参数中指定的顺序。
    ///</summary>
    ///  <param name="matrix"><see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  ，此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  将与之相乘。
    ///</param>
    ///  <param name="order"><see cref="T:System.Drawing.Drawing2D.MatrixOrder" />
    ///  ，表示乘法的顺序。
    ///</param>
    procedure Multiply(matrix: DNMatrix; order: DNMatrixOrder); overload;
    ///<summary>
    ///  通过预先计算转换向量，将指定的转换向量（<paramref name="offsetX" />
    ///  和 <paramref name="offsetY" />
    ///  ）应用到此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  。
    ///</summary>
    ///  <param name="offsetX">
    ///  x 值，通过它转换此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  。
    ///</param>
    ///  <param name="offsetY">
    ///  y 值，通过它转换此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  。
    ///</param>
    procedure Translate(offsetX: Single; offsetY: Single); overload;
    ///<summary>
    ///  按指定的顺序，将指定的转换向量应用到此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  。
    ///</summary>
    ///  <param name="offsetX">
    ///  x 值，通过它转换此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  。
    ///</param>
    ///  <param name="offsetY">
    ///  y 值，通过它转换此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  。
    ///</param>
    ///  <param name="order">
    ///  一个 <see cref="T:System.Drawing.Drawing2D.MatrixOrder" />
    ///  ，指定将转换应用到此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  所采用的顺序（追加或预先计算）。
    ///</param>
    procedure Translate(offsetX: Single; offsetY: Single; order: DNMatrixOrder); overload;
    ///<summary>
    ///  通过预先计算比例向量，将指定的比例向量应用到此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  。
    ///</summary>
    ///  <param name="scaleX">
    ///  此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  在 X 轴方向缩放的值。
    ///</param>
    ///  <param name="scaleY">
    ///  此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  在 Y 轴方向缩放的值。
    ///</param>
    procedure Scale(scaleX: Single; scaleY: Single); overload;
    ///<summary>
    ///  使用指定的顺序，将指定的比例向量（<paramref name="scaleX" />
    ///  和 <paramref name="scaleY" />
    ///  ）应用到此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  。
    ///</summary>
    ///  <param name="scaleX">
    ///  此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  在 X 轴方向缩放的值。
    ///</param>
    ///  <param name="scaleY">
    ///  此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  在 Y 轴方向缩放的值。
    ///</param>
    ///  <param name="order">
    ///  一个 <see cref="T:System.Drawing.Drawing2D.MatrixOrder" />
    ///  ，指定应用比例向量到此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  的顺序（追加或预先计算）。
    ///</param>
    procedure Scale(scaleX: Single; scaleY: Single; order: DNMatrixOrder); overload;
    ///<summary>
    ///  预先计算此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  ，沿原点并按指定角度顺时针旋转。
    ///</summary>
    ///  <param name="angle">
    ///  旋转的角度（单位：度）。
    ///</param>
    procedure Rotate(angle: Single); overload;
    ///<summary>
    ///  按照 <paramref name="angle" />
    ///  参数中指定的顺时针旋转量，对此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  沿原点（X 和 Y 坐标为零处）旋转。
    ///</summary>
    ///  <param name="angle">
    ///  旋转角度（范围）（单位：度）。
    ///</param>
    ///  <param name="order">
    ///  一个 <see cref="T:System.Drawing.Drawing2D.MatrixOrder" />
    ///  ，它指定旋转此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  时所采用的顺序（追加或预先计算）。
    ///</param>
    procedure Rotate(angle: Single; order: DNMatrixOrder); overload;
    ///<summary>
    ///  沿 <paramref name="point" />
    ///  参数中指定的点并通过预先计算该旋转，来顺时针旋转此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  。
    ///</summary>
    ///  <param name="angle">
    ///  旋转角度（范围）（单位：度）。
    ///</param>
    ///  <param name="point">
    ///  一个 <see cref="T:System.Drawing.PointF" />
    ///  ，表示旋转中心。
    ///</param>
    procedure RotateAt(angle: Single; point: DNPointF); overload;
    ///<summary>
    ///  按指定的顺序，沿指定点顺时针旋转该 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  。
    ///</summary>
    ///  <param name="angle">
    ///  旋转的角度（单位：度）。
    ///</param>
    ///  <param name="point">
    ///  一个 <see cref="T:System.Drawing.PointF" />
    ///  ，表示旋转中心。
    ///</param>
    ///  <param name="order">
    ///  一个 <see cref="T:System.Drawing.Drawing2D.MatrixOrder" />
    ///  ，它指定旋转的顺序（追加或预先计算）。
    ///</param>
    procedure RotateAt(angle: Single; point: DNPointF; order: DNMatrixOrder); overload;
    ///<summary>
    ///  通过预先计算切变变换，将指定的切变向量应用到此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  。
    ///</summary>
    ///  <param name="shearX">
    ///  水平切变因子。
    ///</param>
    ///  <param name="shearY">
    ///  垂直切变因子。
    ///</param>
    procedure Shear(shearX: Single; shearY: Single); overload;
    ///<summary>
    ///  按指定的顺序，将指定的切变向量应用到此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  。
    ///</summary>
    ///  <param name="shearX">
    ///  水平切变因子。
    ///</param>
    ///  <param name="shearY">
    ///  垂直切变因子。
    ///</param>
    ///  <param name="order">
    ///  一个 <see cref="T:System.Drawing.Drawing2D.MatrixOrder" />
    ///  ，指定应用切变所采用的顺序（追加或预先计算）。
    ///</param>
    procedure Shear(shearX: Single; shearY: Single; order: DNMatrixOrder); overload;
    ///<summary>
    ///  如果此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  是可逆转的，则进行逆转。
    ///</summary>
    procedure Invert;
    ///<summary>
    ///  将数组中的每个矢量与矩阵相乘。
    ///  该矩阵的转换元素（第三行）被忽略。
    ///</summary>
    ///  <param name="pts">
    ///  一个 <see cref="T:System.Drawing.Point" />
    ///  结构的数组，它表示要变换的点。
    ///</param>
    procedure TransformVectors(pts: TArray<DNPointF>); overload;
    ///<summary>
    ///  将数组中的每个矢量与矩阵相乘。
    ///  该矩阵的转换元素（第三行）被忽略。
    ///</summary>
    ///  <param name="pts">
    ///  一个 <see cref="T:System.Drawing.Point" />
    ///  结构的数组，它表示要变换的点。
    ///</param>
    procedure VectorTransformPoints(pts: TArray<DNPoint>);
    ///<summary>
    ///  只将该 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  的缩放和旋转成分应用到指定的点数组。
    ///</summary>
    ///  <param name="pts">
    ///  一个 <see cref="T:System.Drawing.Point" />
    ///  结构的数组，它表示要变换的点。
    ///</param>
    procedure TransformVectors(pts: TArray<DNPoint>); overload;
    function GetLifetimeService: DDN.mscorlib.DNObject;
    function InitializeLifetimeService: DDN.mscorlib.DNObject;
    function CreateObjRef(requestedType: DDN.mscorlib.DNType): DDN.mscorlib.DNObjRef;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取一个浮点值数组，它表示该 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  的元素。
    ///</summary>
    ///<returns>
    ///  一个浮点值数组，它表示该 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  的元素。
    ///</returns>
    property Elements: TArray<Single> read get_Elements;
    ///<summary>
    ///  获取此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  的 x 转换值（dx 值，或第三行、第一列中的元素）。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  的 x 转换值。
    ///</returns>
    property OffsetX: Single read get_OffsetX;
    ///<summary>
    ///  获取此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  的 y 转换值（dy 值，或第三行、第二列中的元素）。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  的 y 转换值。
    ///</returns>
    property OffsetY: Single read get_OffsetY;
    ///<summary>
    ///  获取一个值，该值指示此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  是否可逆转。
    ///</summary>
    ///<returns>
    ///  如果该 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  是可逆转的，则该属性为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsInvertible: Boolean read get_IsInvertible;
    ///<summary>
    ///  获取一个值，该值指示此 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  是否是单位矩阵。
    ///</summary>
    ///<returns>
    ///  如果该 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  是标识，则该属性为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsIdentity: Boolean read get_IsIdentity;
  end;

  TDNMatrix = class(TDNGenericImport<DNMatrixClass, DNMatrix>) end;

  //-------------namespace: System.Drawing----------------
  DNFontClass = interface(DDN.mscorlib.DNMarshalByRefObjectClass)
  ['{F89AC109-B6DF-5073-9E9F-EBB7614B5634}']
  { constructors } 

    ///<summary>
    ///  初始化新 <see cref="T:System.Drawing.Font" />
    ///  ，它使用指定的现有 <see cref="T:System.Drawing.Font" />
    ///  和 <see cref="T:System.Drawing.FontStyle" />
    ///  枚举。
    ///</summary>
    ///  <param name="prototype">
    ///  从中创建新 <see cref="T:System.Drawing.Font" />
    ///  的现有 <see cref="T:System.Drawing.Font" />
    ///  。
    ///</param>
    ///  <param name="newStyle">
    ///  应用于新 <see cref="T:System.Drawing.Font" />
    ///  的 <see cref="T:System.Drawing.FontStyle" />
    ///  。
    ///  可以用 <see langword="OR" />
    ///  运算符将 <see cref="T:System.Drawing.FontStyle" />
    ///  枚举的多个值组合起来。
    ///</param>
    {class} function init(prototype: DNFont; newStyle: DNFontStyle): DNFont; overload;
    ///<summary>
    ///  使用指定的大小、样式和单位初始化新的 <see cref="T:System.Drawing.Font" />
    ///  。
    ///</summary>
    ///  <param name="family">
    ///  新 <see cref="T:System.Drawing.Font" />
    ///  的 <see cref="T:System.Drawing.FontFamily" />
    ///  。
    ///</param>
    ///  <param name="emSize">
    ///  新字体的全身大小（采用 <paramref name="unit" />
    ///  参数指定的单位）。
    ///</param>
    ///  <param name="style">
    ///  新字体的 <see cref="T:System.Drawing.FontStyle" />
    ///  。
    ///</param>
    ///  <param name="unit">
    ///  新字体的 <see cref="T:System.Drawing.GraphicsUnit" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="emSize" />
    ///  是小于或等于 0，计算结果为无穷大，或者不是有效的数字。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="family" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(family: DNFontFamily; emSize: Single; style: DNFontStyle; &unit: DNGraphicsUnit): DNFont; overload;
    ///<summary>
    ///  使用指定的大小、样式、单位和字符集初始化新的 <see cref="T:System.Drawing.Font" />
    ///  。
    ///</summary>
    ///  <param name="family">
    ///  新 <see cref="T:System.Drawing.Font" />
    ///  的 <see cref="T:System.Drawing.FontFamily" />
    ///  。
    ///</param>
    ///  <param name="emSize">
    ///  新字体的全身大小（采用 <paramref name="unit" />
    ///  参数指定的单位）。
    ///</param>
    ///  <param name="style">
    ///  新字体的 <see cref="T:System.Drawing.FontStyle" />
    ///  。
    ///</param>
    ///  <param name="unit">
    ///  新字体的 <see cref="T:System.Drawing.GraphicsUnit" />
    ///  。
    ///</param>
    ///  <param name="gdiCharSet">
    ///  一个 <see cref="T:System.Byte" />
    ///  ，它指定
    ///  用于新字体的 GDI 字符集。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="emSize" />
    ///  是小于或等于 0，计算结果为无穷大，或者不是有效的数字。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="family" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(family: DNFontFamily; emSize: Single; style: DNFontStyle; &unit: DNGraphicsUnit; gdiCharSet: Byte): DNFont; overload;
    ///<summary>
    ///  使用指定的大小、样式、单位和字符集初始化新的 <see cref="T:System.Drawing.Font" />
    ///  。
    ///</summary>
    ///  <param name="family">
    ///  新 <see cref="T:System.Drawing.Font" />
    ///  的 <see cref="T:System.Drawing.FontFamily" />
    ///  。
    ///</param>
    ///  <param name="emSize">
    ///  新字体的全身大小（采用 <paramref name="unit" />
    ///  参数指定的单位）。
    ///</param>
    ///  <param name="style">
    ///  新字体的 <see cref="T:System.Drawing.FontStyle" />
    ///  。
    ///</param>
    ///  <param name="unit">
    ///  新字体的 <see cref="T:System.Drawing.GraphicsUnit" />
    ///  。
    ///</param>
    ///  <param name="gdiCharSet">
    ///  一个 <see cref="T:System.Byte" />
    ///  ，它指定
    ///  用于此字体的 GDI 字符集。
    ///</param>
    ///  <param name="gdiVerticalFont">
    ///  一个布尔值，该值指示新字体是否从 GDI 垂直字体派生。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="emSize" />
    ///  是小于或等于 0，计算结果为无穷大，或者不是有效的数字。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="family" />
    ///  为 <see langword="null " />
    ///</exception>
    {class} function init(family: DNFontFamily; emSize: Single; style: DNFontStyle; &unit: DNGraphicsUnit; gdiCharSet: Byte; gdiVerticalFont: Boolean): DNFont; overload;
    ///<summary>
    ///  使用指定的大小、样式、单位和字符集初始化新的 <see cref="T:System.Drawing.Font" />
    ///  。
    ///</summary>
    ///  <param name="familyName">
    ///  新 <see cref="T:System.Drawing.Font" />
    ///  的 <see cref="T:System.Drawing.FontFamily" />
    ///  的字符串表示形式。
    ///</param>
    ///  <param name="emSize">
    ///  新字体的全身大小（采用 <paramref name="unit" />
    ///  参数指定的单位）。
    ///</param>
    ///  <param name="style">
    ///  新字体的 <see cref="T:System.Drawing.FontStyle" />
    ///  。
    ///</param>
    ///  <param name="unit">
    ///  新字体的 <see cref="T:System.Drawing.GraphicsUnit" />
    ///  。
    ///</param>
    ///  <param name="gdiCharSet">
    ///  一个 <see cref="T:System.Byte" />
    ///  ，它指定用于此字体的 GDI 字符集。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="emSize" />
    ///  是小于或等于 0，计算结果为无穷大，或者不是有效的数字。
    ///</exception>
    {class} function init(familyName: string; emSize: Single; style: DNFontStyle; &unit: DNGraphicsUnit; gdiCharSet: Byte): DNFont; overload;
    ///<summary>
    ///  使用指定的大小、样式、单位和字符集初始化新 <see cref="T:System.Drawing.Font" />
    ///  。
    ///</summary>
    ///  <param name="familyName">
    ///  新 <see cref="T:System.Drawing.Font" />
    ///  的 <see cref="T:System.Drawing.FontFamily" />
    ///  的字符串表示形式。
    ///</param>
    ///  <param name="emSize">
    ///  新字体的全身大小（采用 <paramref name="unit" />
    ///  参数指定的单位）。
    ///</param>
    ///  <param name="style">
    ///  新字体的 <see cref="T:System.Drawing.FontStyle" />
    ///  。
    ///</param>
    ///  <param name="unit">
    ///  新字体的 <see cref="T:System.Drawing.GraphicsUnit" />
    ///  。
    ///</param>
    ///  <param name="gdiCharSet">
    ///  一个 <see cref="T:System.Byte" />
    ///  ，它指定用于此字体的 GDI 字符集。
    ///</param>
    ///  <param name="gdiVerticalFont">
    ///  一个布尔值，该值指示新 <see cref="T:System.Drawing.Font" />
    ///  是否从 GDI 垂直字体派生。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="emSize" />
    ///  是小于或等于 0，计算结果为无穷大，或者不是有效的数字。
    ///</exception>
    {class} function init(familyName: string; emSize: Single; style: DNFontStyle; &unit: DNGraphicsUnit; gdiCharSet: Byte; gdiVerticalFont: Boolean): DNFont; overload;
    ///<summary>
    ///  使用指定的大小和样式初始化新 <see cref="T:System.Drawing.Font" />
    ///  。
    ///</summary>
    ///  <param name="family">
    ///  新 <see cref="T:System.Drawing.Font" />
    ///  的 <see cref="T:System.Drawing.FontFamily" />
    ///  。
    ///</param>
    ///  <param name="emSize">
    ///  新字体的全身大小（以磅为单位）。
    ///</param>
    ///  <param name="style">
    ///  新字体的 <see cref="T:System.Drawing.FontStyle" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="emSize" />
    ///  是小于或等于 0，计算结果为无穷大，或者不是有效的数字。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="family" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(family: DNFontFamily; emSize: Single; style: DNFontStyle): DNFont; overload;
    ///<summary>
    ///  使用指定的大小和单位初始化新的 <see cref="T:System.Drawing.Font" />
    ///  。
    ///  将此样式设置为 <see cref="F:System.Drawing.FontStyle.Regular" />
    ///  。
    ///</summary>
    ///  <param name="family">
    ///  新 <see cref="T:System.Drawing.Font" />
    ///  的 <see cref="T:System.Drawing.FontFamily" />
    ///  。
    ///</param>
    ///  <param name="emSize">
    ///  新字体的全身大小（采用 <paramref name="unit" />
    ///  参数指定的单位）。
    ///</param>
    ///  <param name="unit">
    ///  新字体的 <see cref="T:System.Drawing.GraphicsUnit" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="family" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="emSize" />
    ///  是小于或等于 0，计算结果为无穷大，或者不是有效的数字。
    ///</exception>
    {class} function init(family: DNFontFamily; emSize: Single; &unit: DNGraphicsUnit): DNFont; overload;
    ///<summary>
    ///  使用指定的大小初始化新 <see cref="T:System.Drawing.Font" />
    ///  。
    ///</summary>
    ///  <param name="family">
    ///  新 <see cref="T:System.Drawing.Font" />
    ///  的 <see cref="T:System.Drawing.FontFamily" />
    ///  。
    ///</param>
    ///  <param name="emSize">
    ///  新字体的全身大小（以磅为单位）。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="emSize" />
    ///  是小于或等于 0，计算结果为无穷大，或者不是有效的数字。
    ///</exception>
    {class} function init(family: DNFontFamily; emSize: Single): DNFont; overload;
    ///<summary>
    ///  使用指定的大小、样式和单位初始化新的 <see cref="T:System.Drawing.Font" />
    ///  。
    ///</summary>
    ///  <param name="familyName">
    ///  新 <see cref="T:System.Drawing.Font" />
    ///  的 <see cref="T:System.Drawing.FontFamily" />
    ///  的字符串表示形式。
    ///</param>
    ///  <param name="emSize">
    ///  新字体的全身大小（采用 <paramref name="unit" />
    ///  参数指定的单位）。
    ///</param>
    ///  <param name="style">
    ///  新字体的 <see cref="T:System.Drawing.FontStyle" />
    ///  。
    ///</param>
    ///  <param name="unit">
    ///  新字体的 <see cref="T:System.Drawing.GraphicsUnit" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="emSize" />
    ///  是小于或等于 0，计算结果为无限大或者不是有效的数字。
    ///</exception>
    {class} function init(familyName: string; emSize: Single; style: DNFontStyle; &unit: DNGraphicsUnit): DNFont; overload;
    ///<summary>
    ///  使用指定的大小和样式初始化新 <see cref="T:System.Drawing.Font" />
    ///  。
    ///</summary>
    ///  <param name="familyName">
    ///  新 <see cref="T:System.Drawing.Font" />
    ///  的 <see cref="T:System.Drawing.FontFamily" />
    ///  的字符串表示形式。
    ///</param>
    ///  <param name="emSize">
    ///  新字体的全身大小（以磅为单位）。
    ///</param>
    ///  <param name="style">
    ///  新字体的 <see cref="T:System.Drawing.FontStyle" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="emSize" />
    ///  是小于或等于 0，计算结果为无穷大，或者不是有效的数字。
    ///</exception>
    {class} function init(familyName: string; emSize: Single; style: DNFontStyle): DNFont; overload;
    ///<summary>
    ///  使用指定的大小和单位初始化新的 <see cref="T:System.Drawing.Font" />
    ///  。
    ///  样式设置为 <see cref="F:System.Drawing.FontStyle.Regular" />
    ///  。
    ///</summary>
    ///  <param name="familyName">
    ///  新 <see cref="T:System.Drawing.Font" />
    ///  的 <see cref="T:System.Drawing.FontFamily" />
    ///  的字符串表示形式。
    ///</param>
    ///  <param name="emSize">
    ///  新字体的全身大小（采用 <paramref name="unit" />
    ///  参数指定的单位）。
    ///</param>
    ///  <param name="unit">
    ///  新字体的 <see cref="T:System.Drawing.GraphicsUnit" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="emSize" />
    ///  是小于或等于 0，计算结果为无穷大，或者不是有效的数字。
    ///</exception>
    {class} function init(familyName: string; emSize: Single; &unit: DNGraphicsUnit): DNFont; overload;
    ///<summary>
    ///  使用指定的大小初始化新 <see cref="T:System.Drawing.Font" />
    ///  。
    ///</summary>
    ///  <param name="familyName">
    ///  新 <see cref="T:System.Drawing.Font" />
    ///  的 <see cref="T:System.Drawing.FontFamily" />
    ///  的字符串表示形式。
    ///</param>
    ///  <param name="emSize">
    ///  新字体的全身大小（以磅为单位）。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="emSize" />
    ///  是小于或等于 0，计算结果为无限大或者不是有效的数字。
    ///</exception>
    {class} function init(familyName: string; emSize: Single): DNFont; overload;

  { static methods } 

    ///<summary>
    ///  从指定的 Windows 句柄创建一个 <see cref="T:System.Drawing.Font" />
    ///  。
    ///</summary>
    ///  <param name="hfont">
    ///  GDI 字体的 Windows 句柄。
    ///</param>
    ///<returns>
    ///  此方法创建的 <see cref="T:System.Drawing.Font" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="hfont" />
    ///  指向一个对象，它不 TrueType 字体。
    ///</exception>
    {class} function FromHfont(hfont: IntPtr): DNFont;
    ///<summary>
    ///  从指定的 GDI 逻辑字体 (LOGFONT) 结构创建一个 <see cref="T:System.Drawing.Font" />
    ///  。
    ///</summary>
    ///  <param name="lf">
    ///  一个 <see cref="T:System.Object" />
    ///  ，它表示从中创建 <see cref="T:System.Drawing.Font" />
    ///  的 GDI <see langword="LOGFONT" />
    ///  结构。
    ///</param>
    ///  <param name="hdc">
    ///  包含有关 <paramref name="lf" />
    ///  结构的其他信息的设备上下文的句柄。
    ///</param>
    ///<returns>
    ///  此方法创建的 <see cref="T:System.Drawing.Font" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  不，该字体为 TrueType 字体。
    ///</exception>
    {class} function FromLogFont(lf: DDN.mscorlib.DNObject; hdc: IntPtr): DNFont; overload;
    ///<summary>
    ///  从指定的 GDI 逻辑字体 (LOGFONT) 结构创建一个 <see cref="T:System.Drawing.Font" />
    ///  。
    ///</summary>
    ///  <param name="lf">
    ///  一个 <see cref="T:System.Object" />
    ///  ，它表示从中创建 <see cref="T:System.Drawing.Font" />
    ///  的 GDI <see langword="LOGFONT" />
    ///  结构。
    ///</param>
    ///<returns>
    ///  此方法创建的 <see cref="T:System.Drawing.Font" />
    ///  。
    ///</returns>
    {class} function FromLogFont(lf: DDN.mscorlib.DNObject): DNFont; overload;
    ///<summary>
    ///  从设备上下文的指定 Windows 句柄创建 <see cref="T:System.Drawing.Font" />
    ///  。
    ///</summary>
    ///  <param name="hdc">
    ///  设备上下文的句柄。
    ///</param>
    ///<returns>
    ///  此方法创建的 <see cref="T:System.Drawing.Font" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  指定的设备上下文的字体不 TrueType 字体。
    ///</exception>
    {class} function FromHdc(hdc: IntPtr): DNFont;

  end;

  ///<summary>
  ///  定义特定的文本格式，包括字体、字号和样式特性。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.Drawing.Font')]
  DNFont = interface(DDN.mscorlib.DNMarshalByRefObject)
  ['{091B628B-3473-38BF-9A98-4F9DB4FB61F8}']
  { getters & setters } 

    function get_FontFamily: DNFontFamily;
    function get_Bold: Boolean;
    function get_GdiCharSet: Byte;
    function get_GdiVerticalFont: Boolean;
    function get_Italic: Boolean;
    function get_Name: string;
    function get_OriginalFontName: string;
    function get_Strikeout: Boolean;
    function get_Underline: Boolean;
    function get_Style: DNFontStyle;
    function get_Size: Single;
    function get_SizeInPoints: Single;
    function get_Unit: DNGraphicsUnit;
    function get_Height: Int32;
    function get_IsSystemFont: Boolean;
    function get_SystemFontName: string;

  { methods } 

    ///<summary>
    ///  从此 <see cref="T:System.Drawing.Font" />
    ///  创建一个 GDI 逻辑字体 (LOGFONT) 结构。
    ///</summary>
    ///  <param name="logFont">
    ///  一个 <see cref="T:System.Object" />
    ///  ，它表示此方法创建的 <see langword="LOGFONT" />
    ///  结构。
    ///</param>
    procedure ToLogFont(logFont: DDN.mscorlib.DNObject); overload;
    ///<summary>
    ///  从此 <see cref="T:System.Drawing.Font" />
    ///  创建一个 GDI 逻辑字体 (LOGFONT) 结构。
    ///</summary>
    ///  <param name="logFont">
    ///  一个 <see cref="T:System.Object" />
    ///  ，它表示此方法创建的 <see langword="LOGFONT" />
    ///  结构。
    ///</param>
    ///  <param name="graphics">
    ///  一个 <see cref="T:System.Drawing.Graphics" />
    ///  ，它提供 <see langword="LOGFONT" />
    ///  结构的其他信息。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="graphics" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure ToLogFont(logFont: DDN.mscorlib.DNObject; graphics: DNGraphics); overload;
    ///<summary>
    ///  返回此 <see cref="T:System.Drawing.Font" />
    ///  的句柄。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.Font" />
    ///  的 Windows 句柄。
    ///</returns>
    ///<exception cref="T:System.ComponentModel.Win32Exception">
    ///  该操作不成功。
    ///</exception>
    function ToHfont: IntPtr;
    ///<summary>
    ///  创建此 <see cref="T:System.Drawing.Font" />
    ///  的一个精确副本。
    ///</summary>
    ///<returns>
    ///  此方法创建的、强制转换为 <see cref="T:System.Object" />
    ///  的 <see cref="T:System.Drawing.Font" />
    ///  。
    ///</returns>
    function Clone: DDN.mscorlib.DNObject;
    ///<summary>
    ///  释放此 <see cref="T:System.Drawing.Font" />
    ///  使用的所有资源。
    ///</summary>
    procedure Dispose;
    ///<summary>
    ///  指示指定对象是否为 <see cref="T:System.Drawing.Font" />
    ///  ，以及是否具有与此 <see cref="T:System.Drawing.Font" />
    ///  相同的 <see cref="P:System.Drawing.Font.FontFamily" />
    ///  、<see cref="P:System.Drawing.Font.GdiVerticalFont" />
    ///  、<see cref="P:System.Drawing.Font.GdiCharSet" />
    ///  、<see cref="P:System.Drawing.Font.Style" />
    ///  、<see cref="P:System.Drawing.Font.Size" />
    ///  和 <see cref="P:System.Drawing.Font.Unit" />
    ///  属性值。
    ///</summary>
    ///  <param name="obj">
    ///  要测试的对象。
    ///</param>
    ///<returns>
    ///  如果 <paramref name="obj" />
    ///  参数为 <see cref="T:System.Drawing.Font" />
    ///  并且具有与此 <see cref="T:System.Drawing.Font" />
    ///  相同的 <see cref="P:System.Drawing.Font.FontFamily" />
    ///  、<see cref="P:System.Drawing.Font.GdiVerticalFont" />
    ///  、<see cref="P:System.Drawing.Font.GdiCharSet" />
    ///  、<see cref="P:System.Drawing.Font.Style" />
    ///  、<see cref="P:System.Drawing.Font.Size" />
    ///  和 <see cref="P:System.Drawing.Font.Unit" />
    ///  属性值，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  获取此 <see cref="T:System.Drawing.Font" />
    ///  的哈希代码。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.Font" />
    ///  的哈希代码。
    ///</returns>
    function GetHashCode: Int32;
    ///<summary>
    ///  返回此 <see cref="T:System.Drawing.Font" />
    ///  可读的字符串表示形式。
    ///</summary>
    ///<returns>
    ///  表示此 <see cref="T:System.Drawing.Font" />
    ///  的字符串。
    ///</returns>
    function ToString: string;
    ///<summary>
    ///  采用指定的 <see cref="T:System.Drawing.Graphics" />
    ///  的当前单位，返回此字体的行距。
    ///</summary>
    ///  <param name="graphics">
    ///  一个 <see cref="T:System.Drawing.Graphics" />
    ///  对象，它存储显示设备的垂直分辨率（每英寸点数）、页面单位和页面比例设置。
    ///</param>
    ///<returns>
    ///  此字体的行距（以像素为单位）。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="graphics" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    function GetHeight(graphics: DNGraphics): Single; overload;
    ///<summary>
    ///  返回此字体的行距（以像素为单位）。
    ///</summary>
    ///<returns>
    ///  此字体的行距（以像素为单位）。
    ///</returns>
    function GetHeight: Single; overload;
    ///<summary>
    ///  当用指定的垂直分辨率绘制到设备时，返回此 <see cref="T:System.Drawing.Font" />
    ///  的高度（以像素为单位）。
    ///</summary>
    ///  <param name="dpi">
    ///  用于计算字体高度的垂直分辨率，以每英寸的点数为单位。
    ///</param>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.Font" />
    ///  的高度（以像素为单位）。
    ///</returns>
    function GetHeight(dpi: Single): Single; overload;
    function GetLifetimeService: DDN.mscorlib.DNObject;
    function InitializeLifetimeService: DDN.mscorlib.DNObject;
    function CreateObjRef(requestedType: DDN.mscorlib.DNType): DDN.mscorlib.DNObjRef;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取与此 <see cref="T:System.Drawing.FontFamily" />
    ///  关联的 <see cref="T:System.Drawing.Font" />
    ///  。
    ///</summary>
    ///<returns>
    ///  与此 <see cref="T:System.Drawing.FontFamily" />
    ///  关联的 <see cref="T:System.Drawing.Font" />
    ///  。
    ///</returns>
    property FontFamily: DNFontFamily read get_FontFamily;
    ///<summary>
    ///  获取一个值，该值指示此 <see cref="T:System.Drawing.Font" />
    ///  是否为粗体。
    ///</summary>
    ///<returns>
    ///  如果此 <see cref="T:System.Drawing.Font" />
    ///  为粗体，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    property Bold: Boolean read get_Bold;
    ///<summary>
    ///  获取一个字节值，该值指定此 <see cref="T:System.Drawing.Font" />
    ///  使用的 GDI 字符集。
    ///</summary>
    ///<returns>
    ///  一个字节值，该值指定此 GDI 使用的 <see cref="T:System.Drawing.Font" />
    ///  字符集。
    ///  默认值为 1。
    ///</returns>
    property GdiCharSet: Byte read get_GdiCharSet;
    ///<summary>
    ///  获取一个布尔值，该值指示此 <see cref="T:System.Drawing.Font" />
    ///  是否从 GDI 垂直字体派生。
    ///</summary>
    ///<returns>
    ///  如果此 <see cref="T:System.Drawing.Font" />
    ///  是从 GDI 垂直字体派生的，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    property GdiVerticalFont: Boolean read get_GdiVerticalFont;
    ///<summary>
    ///  获取一个值，该值指示此字体是否已应用斜体样式。
    ///</summary>
    ///<returns><see langword="true" />
    ///  表明此字体已应用斜体样式；否则为 <see langword="false" />
    ///  。
    ///</returns>
    property Italic: Boolean read get_Italic;
    ///<summary>
    ///  获取此 <see cref="T:System.Drawing.Font" />
    ///  的字体名称。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.Font" />
    ///  的字体名称的字符串表示形式。
    ///</returns>
    property Name: string read get_Name;
    ///<summary>
    ///  获取最初指定的字体的名称。
    ///</summary>
    ///<returns>
    ///  表示最初指定的字体的名称的字符串。
    ///</returns>
    property OriginalFontName: string read get_OriginalFontName;
    ///<summary>
    ///  获取一个值，该值指示此 <see cref="T:System.Drawing.Font" />
    ///  是否指定贯穿字体的横线。
    ///</summary>
    ///<returns>
    ///  如果有一条横线贯穿此 <see cref="T:System.Drawing.Font" />
    ///  ，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    property Strikeout: Boolean read get_Strikeout;
    ///<summary>
    ///  获取一个值，该值指示此 <see cref="T:System.Drawing.Font" />
    ///  是否有下划线。
    ///</summary>
    ///<returns>
    ///  如果此 <see cref="T:System.Drawing.Font" />
    ///  有下划线，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    property Underline: Boolean read get_Underline;
    ///<summary>
    ///  获取此 <see cref="T:System.Drawing.Font" />
    ///  的样式信息。
    ///</summary>
    ///<returns>
    ///  包含此 <see cref="T:System.Drawing.Font" />
    ///  的样式信息的 <see cref="T:System.Drawing.FontStyle" />
    ///  枚举。
    ///</returns>
    property Style: DNFontStyle read get_Style;
    ///<summary>
    ///  获取此 <see cref="T:System.Drawing.Font" />
    ///  的全身大小，单位采用 <see cref="P:System.Drawing.Font.Unit" />
    ///  属性指定的单位。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.Font" />
    ///  的全身大小。
    ///</returns>
    property Size: Single read get_Size;
    ///<summary>
    ///  获取此 <see cref="T:System.Drawing.Font" />
    ///  的全身大小（以点为单位）。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.Font" />
    ///  的全身大小（以点为单位）。
    ///</returns>
    property SizeInPoints: Single read get_SizeInPoints;
    ///<summary>
    ///  获取此 <see cref="T:System.Drawing.Font" />
    ///  的度量单位。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.GraphicsUnit" />
    ///  ，它表示此 <see cref="T:System.Drawing.Font" />
    ///  的度量单位。
    ///</returns>
    property &Unit: DNGraphicsUnit read get_Unit;
    ///<summary>
    ///  获取此字体的行距。
    ///</summary>
    ///<returns>
    ///  此字体的行距（以像素为单位）。
    ///</returns>
    property Height: Int32 read get_Height;
    ///<summary>
    ///  获取一个值，该值表示此字体是否是 <see cref="T:System.Drawing.SystemFonts" />
    ///  的一个成员。
    ///</summary>
    ///<returns>
    ///  如果此字体是 <see cref="T:System.Drawing.SystemFonts" />
    ///  的一个成员，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///  默认值为 <see langword="false" />
    ///  。
    ///</returns>
    property IsSystemFont: Boolean read get_IsSystemFont;
    ///<summary>
    ///  如果 <see cref="P:System.Drawing.Font.IsSystemFont" />
    ///  属性返回 <see langword="true" />
    ///  ，则获取系统字体的名称。
    ///</summary>
    ///<returns>
    ///  如果 <see cref="P:System.Drawing.Font.IsSystemFont" />
    ///  返回 <see langword="true" />
    ///  ，则为系统字体的名称；否则为一个空字符串 ("")。
    ///</returns>
    property SystemFontName: string read get_SystemFontName;
  end;

  TDNFont = class(TDNGenericImport<DNFontClass, DNFont>) end;

  //-------------namespace: System.Drawing----------------
  DNFontFamilyClass = interface(DDN.mscorlib.DNMarshalByRefObjectClass)
  ['{8ACB9960-8FA2-5EB0-98A5-806C8FF6BA78}']
  { static getter & setter } 

    {class} function get_Families: TArray<DNFontFamily>;
    {class} function get_GenericSansSerif: DNFontFamily;
    {class} function get_GenericSerif: DNFontFamily;
    {class} function get_GenericMonospace: DNFontFamily;

  { constructors } 

    ///<summary>
    ///  用指定的名称初始化新 <see cref="T:System.Drawing.FontFamily" />
    ///  。
    ///</summary>
    ///  <param name="name">
    ///  新 <see cref="T:System.Drawing.FontFamily" />
    ///  的名称。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="name" />
    ///  为空字符串 ("")。
    ///  - 或 -
    ///  <paramref name="name" />
    ///  指定运行该应用程序的计算机未安装的字体。
    ///  - 或 -
    ///  <paramref name="name" />
    ///  指定不是 TrueType 字体的字体。
    ///</exception>
    {class} function init(name: string): DNFontFamily; overload;

  { static methods } 

    ///<summary>
    ///  返回一个数组，该数组包含指定的图形上下文可用的所有 <see cref="T:System.Drawing.FontFamily" />
    ///  对象。
    ///</summary>
    ///  <param name="graphics">
    ///  从其返回 <see cref="T:System.Drawing.FontFamily" />
    ///  对象的 <see cref="T:System.Drawing.Graphics" />
    ///  对象。
    ///</param>
    ///<returns>
    ///  指定的 <see cref="T:System.Drawing.Graphics" />
    ///  对象可用的 <see cref="T:System.Drawing.FontFamily" />
    ///  对象的数组。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="graphics " />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function GetFamilies(graphics: DNGraphics): TArray<DNFontFamily>;

  { static propertys } 

    ///<summary>
    ///  返回一个数组，该数组包含与当前图形上下文相关的所有 <see cref="T:System.Drawing.FontFamily" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  与当前图形上下文相关的 <see cref="T:System.Drawing.FontFamily" />
    ///  对象的数组。
    ///</returns>
    {class} property Families: TArray<DNFontFamily> read get_Families;
    ///<summary>
    ///  获取一般 sans serif <see cref="T:System.Drawing.FontFamily" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  表示一般 sans serif 字体的 <see cref="T:System.Drawing.FontFamily" />
    ///  对象。
    ///</returns>
    {class} property GenericSansSerif: DNFontFamily read get_GenericSansSerif;
    ///<summary>
    ///  获取一般 serif <see cref="T:System.Drawing.FontFamily" />
    ///  。
    ///</summary>
    ///<returns>
    ///  表示一般 serif 字体的 <see cref="T:System.Drawing.FontFamily" />
    ///  。
    ///</returns>
    {class} property GenericSerif: DNFontFamily read get_GenericSerif;
    ///<summary>
    ///  获取一般 monospace <see cref="T:System.Drawing.FontFamily" />
    ///  。
    ///</summary>
    ///<returns>
    ///  表示一般 monospace 字体的 <see cref="T:System.Drawing.FontFamily" />
    ///  。
    ///</returns>
    {class} property GenericMonospace: DNFontFamily read get_GenericMonospace;
  end;

  ///<summary>
  ///  定义有着相似的基本设计但在形式上有某些差异的一组字样。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.Drawing.FontFamily')]
  DNFontFamily = interface(DDN.mscorlib.DNMarshalByRefObject)
  ['{FE31F082-2955-34AC-8BA8-9BC7BF319D78}']
  { getters & setters } 

    function get_Name: string;

  { methods } 

    ///<summary>
    ///  指示指定的 <see cref="T:System.Drawing.FontStyle" />
    ///  枚举是否可用。
    ///</summary>
    ///  <param name="style">
    ///  要测试的 <see cref="T:System.Drawing.FontStyle" />
    ///  。
    ///</param>
    ///<returns>
    ///  如果指定的 <see cref="T:System.Drawing.FontStyle" />
    ///  可用，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsStyleAvailable(style: DNFontStyle): Boolean;
    ///<summary>
    ///  获取指定样式的 em 方形的高度，采用字体设计单位。
    ///</summary>
    ///  <param name="style">
    ///  为其获取全身高度的 <see cref="T:System.Drawing.FontStyle" />
    ///  。
    ///</param>
    ///<returns>
    ///  em 方形的高度。
    ///</returns>
    function GetEmHeight(style: DNFontStyle): Int32;
    ///<summary>
    ///  返回指定样式的 <see cref="T:System.Drawing.FontFamily" />
    ///  的行距，采用设计单位。
    ///  行距是两个连续文本行的基线之间的垂直距离。
    ///</summary>
    ///  <param name="style">
    ///  要应用的 <see cref="T:System.Drawing.FontStyle" />
    ///  。
    ///</param>
    ///<returns>
    ///  两行相邻文本之间的距离。
    ///</returns>
    function GetLineSpacing(style: DNFontStyle): Int32;
    ///<summary>
    ///  指示指定的对象是否为 <see cref="T:System.Drawing.FontFamily" />
    ///  以及是否与此 <see cref="T:System.Drawing.FontFamily" />
    ///  相等。
    ///</summary>
    ///  <param name="obj">
    ///  要测试的对象。
    ///</param>
    ///<returns>
    ///  如果 <paramref name="obj" />
    ///  为 <see cref="T:System.Drawing.FontFamily" />
    ///  且与此 <see cref="T:System.Drawing.FontFamily" />
    ///  相等，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  获取此 <see cref="T:System.Drawing.FontFamily" />
    ///  的哈希代码。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.FontFamily" />
    ///  的哈希代码。
    ///</returns>
    function GetHashCode: Int32;
    ///<summary>
    ///  释放此 <see cref="T:System.Drawing.FontFamily" />
    ///  使用的所有资源。
    ///</summary>
    procedure Dispose;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.FontFamily" />
    ///  转换为可读的字符串表示形式。
    ///</summary>
    ///<returns>
    ///  表示此 <see cref="T:System.Drawing.FontFamily" />
    ///  的字符串。
    ///</returns>
    function ToString: string;
    ///<summary>
    ///  用指定的语言返回此 <see cref="T:System.Drawing.FontFamily" />
    ///  的名称。
    ///</summary>
    ///  <param name="language">
    ///  返回此名称所用的语言。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，它用指定的语言表示此 <see cref="T:System.Drawing.FontFamily" />
    ///  的名称。
    ///</returns>
    function GetName(language: Int32): string;
    ///<summary>
    ///  返回指定样式的 <see cref="T:System.Drawing.FontFamily" />
    ///  的单元格上升，采用设计单位。
    ///</summary>
    ///  <param name="style"><see cref="T:System.Drawing.FontStyle" />
    ///  ，它包含字体的样式信息。
    ///</param>
    ///<returns>
    ///  使用了指定的 <see cref="T:System.Drawing.FontStyle" />
    ///  的此 <see cref="T:System.Drawing.FontFamily" />
    ///  的单元格上升。
    ///</returns>
    function GetCellAscent(style: DNFontStyle): Int32;
    ///<summary>
    ///  返回指定样式的 <see cref="T:System.Drawing.FontFamily" />
    ///  的单元格下降，采用设计单位。
    ///</summary>
    ///  <param name="style"><see cref="T:System.Drawing.FontStyle" />
    ///  ，它包含字体的样式信息。
    ///</param>
    ///<returns>
    ///  使用了指定的 <see cref="T:System.Drawing.FontStyle" />
    ///  的此 <see cref="T:System.Drawing.FontFamily" />
    ///  的单元格下降度量。
    ///</returns>
    function GetCellDescent(style: DNFontStyle): Int32;
    function GetLifetimeService: DDN.mscorlib.DNObject;
    function InitializeLifetimeService: DDN.mscorlib.DNObject;
    function CreateObjRef(requestedType: DDN.mscorlib.DNType): DDN.mscorlib.DNObjRef;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取此 <see cref="T:System.Drawing.FontFamily" />
    ///  的名称。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，表示此 <see cref="T:System.Drawing.FontFamily" />
    ///  的名称。
    ///</returns>
    property Name: string read get_Name;
  end;

  TDNFontFamily = class(TDNGenericImport<DNFontFamilyClass, DNFontFamily>) end;

  //-------------namespace: System.Drawing----------------
  DNGraphicsClass = interface(DDN.mscorlib.DNMarshalByRefObjectClass)
  ['{8B64F2D6-2CA6-5EB8-AAD8-B244F4CE7A55}']
  { static methods } 

    ///<summary>
    ///  从设备上下文的指定句柄创建新的 <see cref="T:System.Drawing.Graphics" />
    ///  。
    ///</summary>
    ///  <param name="hdc">
    ///  设备上下文的句柄。
    ///</param>
    ///<returns>
    ///  此方法为指定的设备上下文返回新的 <see cref="T:System.Drawing.Graphics" />
    ///  。
    ///</returns>
    {class} function FromHdc(hdc: IntPtr): DNGraphics; overload;
    ///<summary>
    ///  返回指定设备上下文的 <see cref="T:System.Drawing.Graphics" />
    ///  。
    ///</summary>
    ///  <param name="hdc">
    ///  设备上下文的句柄。
    ///</param>
    ///<returns>
    ///  指定设备上下文的 <see cref="T:System.Drawing.Graphics" />
    ///  。
    ///</returns>
    {class} function FromHdcInternal(hdc: IntPtr): DNGraphics;
    ///<summary>
    ///  创建指定 Windows 句柄的新 <see cref="T:System.Drawing.Graphics" />
    ///  。
    ///</summary>
    ///  <param name="hwnd">
    ///  窗口的句柄。
    ///</param>
    ///<returns>
    ///  指定窗口句柄的 <see cref="T:System.Drawing.Graphics" />
    ///  。
    ///</returns>
    {class} function FromHwndInternal(hwnd: IntPtr): DNGraphics;
    ///<summary>
    ///  从指定的 <see cref="T:System.Drawing.Image" />
    ///  创建新的 <see cref="T:System.Drawing.Graphics" />
    ///  。
    ///</summary>
    ///  <param name="image">
    ///  从中创建新 <see cref="T:System.Drawing.Graphics" />
    ///  的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///<returns>
    ///  此方法为指定的 <see cref="T:System.Drawing.Image" />
    ///  返回一个新的 <see cref="T:System.Drawing.Graphics" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.Exception"><paramref name="image" />
    ///  具有索引的像素格式或其格式未定义。
    ///</exception>
    {class} function FromImage(image: DNImage): DNGraphics;
    ///<summary>
    ///  获取当前 Windows 的半色调调色板的句柄。
    ///</summary>
    ///<returns>
    ///  指定调色板的句柄的内部指针。
    ///</returns>
    {class} function GetHalftonePalette: IntPtr;
    ///<summary>
    ///  从设备上下文的指定句柄和设备的句柄创建新的 <see cref="T:System.Drawing.Graphics" />
    ///  。
    ///</summary>
    ///  <param name="hdc">
    ///  设备上下文的句柄。
    ///</param>
    ///  <param name="hdevice">
    ///  设备的句柄。
    ///</param>
    ///<returns>
    ///  此方法为指定的设备上下文和设备返回新的 <see cref="T:System.Drawing.Graphics" />
    ///  。
    ///</returns>
    {class} function FromHdc(hdc: IntPtr; hdevice: IntPtr): DNGraphics; overload;
    ///<summary>
    ///  从窗口的指定句柄创建新的 <see cref="T:System.Drawing.Graphics" />
    ///  。
    ///</summary>
    ///  <param name="hwnd">
    ///  窗口的句柄。
    ///</param>
    ///<returns>
    ///  此方法为指定的窗口句柄返回新的 <see cref="T:System.Drawing.Graphics" />
    ///  。
    ///</returns>
    {class} function FromHwnd(hwnd: IntPtr): DNGraphics;

  end;

  ///<summary>
  ///  封装一个 GDI+ 绘图图面。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.Drawing.Graphics')]
  DNGraphics = interface(DDN.mscorlib.DNMarshalByRefObject)
  ['{3EAFE9D3-C1B1-3755-AB28-DA7CAFBF37FC}']
  { getters & setters } 

    function get_CompositingMode: DNCompositingMode;
    procedure set_CompositingMode(value: DNCompositingMode);
    function get_RenderingOrigin: DNPoint;
    procedure set_RenderingOrigin(value: DNPoint);
    function get_CompositingQuality: DNCompositingQuality;
    procedure set_CompositingQuality(value: DNCompositingQuality);
    function get_TextRenderingHint: DNTextRenderingHint;
    procedure set_TextRenderingHint(value: DNTextRenderingHint);
    function get_TextContrast: Int32;
    procedure set_TextContrast(value: Int32);
    function get_SmoothingMode: DNSmoothingMode;
    procedure set_SmoothingMode(value: DNSmoothingMode);
    function get_PixelOffsetMode: DNPixelOffsetMode;
    procedure set_PixelOffsetMode(value: DNPixelOffsetMode);
    function get_InterpolationMode: DNInterpolationMode;
    procedure set_InterpolationMode(value: DNInterpolationMode);
    function get_Transform: DNMatrix;
    procedure set_Transform(value: DNMatrix);
    function get_PageUnit: DNGraphicsUnit;
    procedure set_PageUnit(value: DNGraphicsUnit);
    function get_PageScale: Single;
    procedure set_PageScale(value: Single);
    function get_DpiX: Single;
    function get_DpiY: Single;
    function get_Clip: DNRegion;
    procedure set_Clip(value: DNRegion);
    function get_ClipBounds: DNRectangleF;
    function get_IsClipEmpty: Boolean;
    function get_VisibleClipBounds: DNRectangleF;
    function get_IsVisibleClipEmpty: Boolean;

  { methods } 

    ///<summary>
    ///  释放通过以前对此 <see cref="T:System.Drawing.Graphics" />
    ///  的 <see cref="M:System.Drawing.Graphics.GetHdc" />
    ///  方法的调用获得的设备上下文句柄。
    ///</summary>
    ///  <param name="hdc">
    ///  通过以前对此 <see cref="T:System.Drawing.Graphics" />
    ///  的 <see cref="M:System.Drawing.Graphics.GetHdc" />
    ///  方法的调用获得的设备上下文句柄。
    ///</param>
    procedure ReleaseHdc(hdc: IntPtr); overload;
    ///<summary>
    ///  释放设备上下文的句柄。
    ///</summary>
    ///  <param name="hdc">
    ///  设备上下文的句柄。
    ///</param>
    procedure ReleaseHdcInternal(hdc: IntPtr);
    ///<summary>
    ///  通过使此 <see cref="T:System.Drawing.Graphics" />
    ///  的变换矩阵左乘指定的平移来更改坐标系统的原点。
    ///</summary>
    ///  <param name="dx">
    ///  平移的 x 坐标。
    ///</param>
    ///  <param name="dy">
    ///  平移的 y 坐标。
    ///</param>
    procedure TranslateTransform(dx: Single; dy: Single); overload;
    ///<summary>
    ///  通过以指定顺序将指定平移应用于此 <see cref="T:System.Drawing.Graphics" />
    ///  的变换矩阵来更改坐标系统的原点。
    ///</summary>
    ///  <param name="dx">
    ///  平移的 x 坐标。
    ///</param>
    ///  <param name="dy">
    ///  平移的 y 坐标。
    ///</param>
    ///  <param name="order"><see cref="T:System.Drawing.Drawing2D.MatrixOrder" />
    ///  枚举的成员，它指定是将平移添加到变换矩阵前还是追加到变换矩阵后。
    ///</param>
    procedure TranslateTransform(dx: Single; dy: Single; order: DNMatrixOrder); overload;
    ///<summary>
    ///  获取与指定的 <see cref="T:System.Drawing.Color" />
    ///  结构最接近的颜色。
    ///</summary>
    ///  <param name="color"><see cref="T:System.Drawing.Color" />
    ///  结构，为其查找匹配项。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  结构，它表示与 <paramref name="color" />
    ///  参数指定的颜色最接近的颜色。
    ///</returns>
    function GetNearestColor(color: DNColor): DNColor;
    ///<summary>
    ///  绘制一条连接由坐标对指定的两个点的线条。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定线条的颜色、宽度和样式。
    ///</param>
    ///  <param name="x1">
    ///  第一个点的 x 坐标。
    ///</param>
    ///  <param name="y1">
    ///  第一个点的 y 坐标。
    ///</param>
    ///  <param name="x2">
    ///  第二个点的 x 坐标。
    ///</param>
    ///  <param name="y2">
    ///  第二个点的 y 坐标。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawLine(pen: DNPen; x1: Int32; y1: Int32; x2: Int32; y2: Int32); overload;
    ///<summary>
    ///  绘制由 <see cref="T:System.Drawing.Rectangle" />
    ///  结构指定的矩形。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定矩形的颜色、宽度和样式。
    ///</param>
    ///  <param name="rect">
    ///  表示要绘制的矩形的 <see cref="T:System.Drawing.Rectangle" />
    ///  结构。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawRectangle(pen: DNPen; rect: DNRectangle); overload;
    ///<summary>
    ///  绘制由坐标对、宽度和高度指定的矩形。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定矩形的颜色、宽度和样式。
    ///</param>
    ///  <param name="x">
    ///  要绘制的矩形的左上角的 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  要绘制的矩形的左上角的 y 坐标。
    ///</param>
    ///  <param name="width">
    ///  要绘制的矩形的宽度。
    ///</param>
    ///  <param name="height">
    ///  要绘制的矩形的高度。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawRectangle(pen: DNPen; x: Single; y: Single; width: Single; height: Single); overload;
    ///<summary>
    ///  绘制由坐标对、宽度和高度指定的矩形。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定矩形的颜色、宽度和样式。
    ///</param>
    ///  <param name="x">
    ///  要绘制的矩形的左上角的 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  要绘制的矩形的左上角的 y 坐标。
    ///</param>
    ///  <param name="width">
    ///  要绘制的矩形的宽度。
    ///</param>
    ///  <param name="height">
    ///  要绘制的矩形的高度。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawRectangle(pen: DNPen; x: Int32; y: Int32; width: Int32; height: Int32); overload;
    ///<summary>
    ///  绘制边界 <see cref="T:System.Drawing.RectangleF" />
    ///  定义的椭圆。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定曲线的颜色、宽度和样式。
    ///</param>
    ///  <param name="rect"><see cref="T:System.Drawing.RectangleF" />
    ///  结构，它定义椭圆的边界。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawEllipse(pen: DNPen; rect: DNRectangleF); overload;
    ///<summary>
    ///  清除整个绘图面并以指定背景色填充。
    ///</summary>
    ///  <param name="color"><see cref="T:System.Drawing.Color" />
    ///  结构，它表示绘图面的背景色。
    ///</param>
    procedure Clear(color: DNColor);
    ///<summary>
    ///  填充由一对坐标、一个宽度和一个高度指定的矩形的内部。
    ///</summary>
    ///  <param name="brush">
    ///  确定填充特性的 <see cref="T:System.Drawing.Brush" />
    ///  。
    ///</param>
    ///  <param name="x">
    ///  要填充的矩形的左上角的 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  要填充的矩形的左上角的 y 坐标。
    ///</param>
    ///  <param name="width">
    ///  要填充的矩形的宽度。
    ///</param>
    ///  <param name="height">
    ///  要填充的矩形的高度。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure FillRectangle(brush: DNBrush; x: Single; y: Single; width: Single; height: Single); overload;
    ///<summary>
    ///  填充 <see cref="T:System.Drawing.Rectangle" />
    ///  结构指定的矩形的内部。
    ///</summary>
    ///  <param name="brush">
    ///  确定填充特性的 <see cref="T:System.Drawing.Brush" />
    ///  。
    ///</param>
    ///  <param name="rect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构，它表示要填充的矩形。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure FillRectangle(brush: DNBrush; rect: DNRectangle); overload;
    ///<summary>
    ///  填充由一对坐标、一个宽度和一个高度指定的矩形的内部。
    ///</summary>
    ///  <param name="brush">
    ///  确定填充特性的 <see cref="T:System.Drawing.Brush" />
    ///  。
    ///</param>
    ///  <param name="x">
    ///  要填充的矩形的左上角的 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  要填充的矩形的左上角的 y 坐标。
    ///</param>
    ///  <param name="width">
    ///  要填充的矩形的宽度。
    ///</param>
    ///  <param name="height">
    ///  要填充的矩形的高度。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure FillRectangle(brush: DNBrush; x: Int32; y: Int32; width: Int32; height: Int32); overload;
    ///<summary>
    ///  填充由 <see cref="T:System.Drawing.Rectangle" />
    ///  结构指定的一系列矩形的内部。
    ///</summary>
    ///  <param name="brush">
    ///  确定填充特性的 <see cref="T:System.Drawing.Brush" />
    ///  。
    ///</param>
    ///  <param name="rects"><see cref="T:System.Drawing.Rectangle" />
    ///  结构数组，这些结构表示要填充的矩形。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="rects" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="rects" />
    ///  是一个长度为零的数组。
    ///</exception>
    procedure FillRectangles(brush: DNBrush; rects: TArray<DNRectangle>); overload;
    ///<summary>
    ///  填充 <see cref="T:System.Drawing.Point" />
    ///  结构指定的点数组所定义的多边形的内部。
    ///</summary>
    ///  <param name="brush">
    ///  确定填充特性的 <see cref="T:System.Drawing.Brush" />
    ///  。
    ///</param>
    ///  <param name="points"><see cref="T:System.Drawing.Point" />
    ///  结构数组，这些结构表示要填充的多边形的顶点。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="points" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure FillPolygon(brush: DNBrush; points: TArray<DNPoint>); overload;
    ///<summary>
    ///  填充边框所定义的椭圆的内部，该边框由一对坐标、一个宽度和一个高度指定。
    ///</summary>
    ///  <param name="brush">
    ///  确定填充特性的 <see cref="T:System.Drawing.Brush" />
    ///  。
    ///</param>
    ///  <param name="x">
    ///  定义椭圆的边框的左上角的 X 坐标。
    ///</param>
    ///  <param name="y">
    ///  定义椭圆的边框的左上角的 Y 坐标。
    ///</param>
    ///  <param name="width">
    ///  定义椭圆的边框的宽度。
    ///</param>
    ///  <param name="height">
    ///  定义椭圆的边框的高度。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure FillEllipse(brush: DNBrush; x: Single; y: Single; width: Single; height: Single); overload;
    ///<summary>
    ///  填充 <see cref="T:System.Drawing.Region" />
    ///  的内部。
    ///</summary>
    ///  <param name="brush">
    ///  确定填充特性的 <see cref="T:System.Drawing.Brush" />
    ///  。
    ///</param>
    ///  <param name="region"><see cref="T:System.Drawing.Region" />
    ///  ，它表示要填充的区域。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="region" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure FillRegion(brush: DNBrush; region: DNRegion);
    ///<summary>
    ///  在指定位置并且用指定的 <see cref="T:System.Drawing.Brush" />
    ///  和 <see cref="T:System.Drawing.Font" />
    ///  对象绘制指定的文本字符串。
    ///</summary>
    ///  <param name="s">
    ///  要绘制的字符串。
    ///</param>
    ///  <param name="font"><see cref="T:System.Drawing.Font" />
    ///  ，它定义字符串的文本格式。
    ///</param>
    ///  <param name="brush"><see cref="T:System.Drawing.Brush" />
    ///  ，它确定所绘制文本的颜色和纹理。
    ///</param>
    ///  <param name="x">
    ///  所绘制文本的左上角的 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  所绘制文本的左上角的 y 坐标。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="s" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawString(s: string; font: DNFont; brush: DNBrush; x: Single; y: Single); overload;
    ///<summary>
    ///  在指定矩形并且用指定的 <see cref="T:System.Drawing.Brush" />
    ///  和 <see cref="T:System.Drawing.Font" />
    ///  对象绘制指定的文本字符串。
    ///</summary>
    ///  <param name="s">
    ///  要绘制的字符串。
    ///</param>
    ///  <param name="font"><see cref="T:System.Drawing.Font" />
    ///  ，它定义字符串的文本格式。
    ///</param>
    ///  <param name="brush"><see cref="T:System.Drawing.Brush" />
    ///  ，它确定所绘制文本的颜色和纹理。
    ///</param>
    ///  <param name="layoutRectangle"><see cref="T:System.Drawing.RectangleF" />
    ///  结构，它指定所绘制文本的位置。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="s" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawString(s: string; font: DNFont; brush: DNBrush; layoutRectangle: DNRectangleF); overload;
    ///<summary>
    ///  使用指定 <see cref="T:System.Drawing.StringFormat" />
    ///  的格式化特性，用指定的 <see cref="T:System.Drawing.Brush" />
    ///  和 <see cref="T:System.Drawing.Font" />
    ///  对象在指定的矩形中绘制指定的文本字符串。
    ///</summary>
    ///  <param name="s">
    ///  要绘制的字符串。
    ///</param>
    ///  <param name="font"><see cref="T:System.Drawing.Font" />
    ///  ，它定义字符串的文本格式。
    ///</param>
    ///  <param name="brush"><see cref="T:System.Drawing.Brush" />
    ///  ，它确定所绘制文本的颜色和纹理。
    ///</param>
    ///  <param name="layoutRectangle"><see cref="T:System.Drawing.RectangleF" />
    ///  结构，它指定所绘制文本的位置。
    ///</param>
    ///  <param name="format"><see cref="T:System.Drawing.StringFormat" />
    ///  ，它指定应用于所绘制文本的格式化特性（如行距和对齐方式）。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="s" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawString(s: string; font: DNFont; brush: DNBrush; layoutRectangle: DNRectangleF; format: DNStringFormat); overload;
    ///<summary>
    ///  测量用指定的 <see cref="T:System.Drawing.Font" />
    ///  绘制并用指定的 <see cref="T:System.Drawing.StringFormat" />
    ///  格式化的指定字符串。
    ///</summary>
    ///  <param name="text">
    ///  要测量的字符串。
    ///</param>
    ///  <param name="font"><see cref="T:System.Drawing.Font" />
    ///  定义字符串的文本格式。
    ///</param>
    ///  <param name="layoutArea"><see cref="T:System.Drawing.SizeF" />
    ///  结构，它指定文本的最大布局区域。
    ///</param>
    ///  <param name="stringFormat"><see cref="T:System.Drawing.StringFormat" />
    ///  ，它表示字符串的格式化信息（如行距）。
    ///</param>
    ///<returns>
    ///  此方法返回 <see cref="T:System.Drawing.SizeF" />
    ///  结构，该结构表示在 <paramref name="text" />
    ///  参数中指定的、用 <paramref name="font" />
    ///  参数和 <paramref name="stringFormat" />
    ///  参数绘制的字符串的大小，单位由 <see cref="P:System.Drawing.Graphics.PageUnit" />
    ///  属性指定。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="font" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    function MeasureString(text: string; font: DNFont; layoutArea: DNSizeF; stringFormat: DNStringFormat): DNSizeF; overload;
    ///<summary>
    ///  测量用指定的 <see cref="T:System.Drawing.Font" />
    ///  绘制的指定字符串。
    ///</summary>
    ///  <param name="text">
    ///  要测量的字符串。
    ///</param>
    ///  <param name="font"><see cref="T:System.Drawing.Font" />
    ///  ，它定义字符串的文本格式。
    ///</param>
    ///<returns>
    ///  此方法返回 <see cref="T:System.Drawing.SizeF" />
    ///  结构，该结构表示 <paramref name="text" />
    ///  参数指定的、使用 <paramref name="font" />
    ///  参数绘制的字符串的大小，单位由 <see cref="P:System.Drawing.Graphics.PageUnit" />
    ///  属性指定。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="font" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    function MeasureString(text: string; font: DNFont): DNSizeF; overload;
    ///<summary>
    ///  测量用指定的 <see cref="T:System.Drawing.Font" />
    ///  绘制并用指定的 <see cref="T:System.Drawing.StringFormat" />
    ///  格式化的指定字符串。
    ///</summary>
    ///  <param name="text">
    ///  要测量的字符串。
    ///</param>
    ///  <param name="font"><see cref="T:System.Drawing.Font" />
    ///  ，它定义字符串的文本格式。
    ///</param>
    ///  <param name="width">
    ///  字符串的最大宽度。
    ///</param>
    ///  <param name="format"><see cref="T:System.Drawing.StringFormat" />
    ///  ，它表示字符串的格式化信息（如行距）。
    ///</param>
    ///<returns>
    ///  此方法返回 <see cref="T:System.Drawing.SizeF" />
    ///  结构，该结构表示在 <paramref name="text" />
    ///  参数中指定的、用 <paramref name="font" />
    ///  参数和 <paramref name="stringFormat" />
    ///  参数绘制的字符串的大小，单位由 <see cref="P:System.Drawing.Graphics.PageUnit" />
    ///  属性指定。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="font" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    function MeasureString(text: string; font: DNFont; width: Int32; format: DNStringFormat): DNSizeF; overload;
    ///<summary>
    ///  在由坐标对指定的位置，使用图像的原始物理大小绘制指定的图像。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="x">
    ///  所绘制图像的左上角的 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  所绘制图像的左上角的 y 坐标。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImage(image: DNImage; x: Int32; y: Int32); overload;
    ///<summary>
    ///  在指定位置并且按指定大小绘制指定的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="rect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构，它指定所绘制图像的位置和大小。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImage(image: DNImage; rect: DNRectangle); overload;
    ///<summary>
    ///  在指定位置并且按指定大小绘制指定的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="x">
    ///  所绘制图像的左上角的 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  所绘制图像的左上角的 y 坐标。
    ///</param>
    ///  <param name="width">
    ///  所绘制图像的宽度。
    ///</param>
    ///  <param name="height">
    ///  所绘制图像的高度。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImage(image: DNImage; x: Int32; y: Int32; width: Int32; height: Int32); overload;
    ///<summary>
    ///  在指定位置并且按指定大小绘制指定的 <see cref="T:System.Drawing.Image" />
    ///  的指定部分。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="destRect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构，它指定所绘制图像的位置和大小。
    ///  将图像进行缩放以适合该矩形。
    ///</param>
    ///  <param name="srcRect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构，它指定 <paramref name="image" />
    ///  对象中要绘制的部分。
    ///</param>
    ///  <param name="srcUnit"><see cref="T:System.Drawing.GraphicsUnit" />
    ///  枚举的成员，它指定 <paramref name="srcRect" />
    ///  参数所用的度量单位。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImage(image: DNImage; destRect: DNRectangle; srcRect: DNRectangle; srcUnit: DNGraphicsUnit); overload;
    ///<summary>
    ///  在指定位置并且按指定大小绘制指定的 <see cref="T:System.Drawing.Image" />
    ///  的指定部分。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="destRect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构，它指定所绘制图像的位置和大小。
    ///  将图像进行缩放以适合该矩形。
    ///</param>
    ///  <param name="srcX">
    ///  要绘制的源图像部分的左上角的 x 坐标。
    ///</param>
    ///  <param name="srcY">
    ///  要绘制的源图像部分的左上角的 y 坐标。
    ///</param>
    ///  <param name="srcWidth">
    ///  要绘制的源图像部分的宽度。
    ///</param>
    ///  <param name="srcHeight">
    ///  要绘制的源图像部分的高度。
    ///</param>
    ///  <param name="srcUnit"><see cref="T:System.Drawing.GraphicsUnit" />
    ///  枚举的成员，它指定用于确定源矩形的度量单位。
    ///</param>
    ///  <param name="imageAttr"><see cref="T:System.Drawing.Imaging.ImageAttributes" />
    ///  ，它指定 <paramref name="image" />
    ///  对象的重新着色和伽玛信息。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImage(image: DNImage; destRect: DNRectangle; srcX: Int32; srcY: Int32; srcWidth: Int32; srcHeight: Int32; srcUnit: DNGraphicsUnit; imageAttr: DNImageAttributes); overload;
    ///<summary>
    ///  在指定位置并且按指定大小绘制指定的 <see cref="T:System.Drawing.Image" />
    ///  的指定部分。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="destRect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构，它指定所绘制图像的位置和大小。
    ///  将图像进行缩放以适合该矩形。
    ///</param>
    ///  <param name="srcX">
    ///  要绘制的源图像部分的左上角的 x 坐标。
    ///</param>
    ///  <param name="srcY">
    ///  要绘制的源图像部分的左上角的 y 坐标。
    ///</param>
    ///  <param name="srcWidth">
    ///  要绘制的源图像部分的宽度。
    ///</param>
    ///  <param name="srcHeight">
    ///  要绘制的源图像部分的高度。
    ///</param>
    ///  <param name="srcUnit"><see cref="T:System.Drawing.GraphicsUnit" />
    ///  枚举的成员，它指定用于确定源矩形的度量单位。
    ///</param>
    ///  <param name="imageAttrs"><see cref="T:System.Drawing.Imaging.ImageAttributes" />
    ///  ，它指定 <paramref name="image" />
    ///  对象的重新着色和伽玛信息。
    ///</param>
    ///  <param name="callback"><see cref="T:System.Drawing.Graphics.DrawImageAbort" />
    ///  委托，它指定在绘制图像期间要调用的方法。
    ///  此方法被频繁调用以检查是否根据应用程序确定的条件停止 <see cref="M:System.Drawing.Graphics.DrawImage(System.Drawing.Image,System.Drawing.Rectangle,System.Int32,System.Int32,System.Int32,System.Int32,System.Drawing.GraphicsUnit,System.Drawing.Imaging.ImageAttributes,System.Drawing.Graphics.DrawImageAbort,System.IntPtr)" />
    ///  方法的执行。
    ///</param>
    ///  <param name="callbackData">
    ///  一个值，它为 <see cref="T:System.Drawing.Graphics.DrawImageAbort" />
    ///  委托指定在检查是否停止执行 <see langword="DrawImage" />
    ///  方法时要使用的附加数据。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImage(image: DNImage; destRect: DNRectangle; srcX: Int32; srcY: Int32; srcWidth: Int32; srcHeight: Int32; srcUnit: DNGraphicsUnit; imageAttrs: DNImageAttributes; callback: DNGraphics_DrawImageAbort; callbackData: IntPtr); overload;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Graphics" />
    ///  的剪辑区域设置为 <see cref="T:System.Drawing.Rectangle" />
    ///  结构指定的矩形。
    ///</summary>
    ///  <param name="rect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构，它表示新的剪辑区域。
    ///</param>
    procedure SetClip(rect: DNRectangle); overload;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Graphics" />
    ///  的剪辑区域设置为当前剪辑区域与指定 <see cref="T:System.Drawing.Region" />
    ///  的组合结果。
    ///</summary>
    ///  <param name="region">
    ///  要组合的 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</param>
    ///  <param name="combineMode"><see cref="T:System.Drawing.Drawing2D.CombineMode" />
    ///  枚举的成员，它指定要使用的组合操作。
    ///</param>
    procedure SetClip(region: DNRegion; combineMode: DNCombineMode); overload;
    ///<summary>
    ///  更新此 <see cref="T:System.Drawing.Graphics" />
    ///  的剪辑区域，以排除 <see cref="T:System.Drawing.Region" />
    ///  所指定的区域。
    ///</summary>
    ///  <param name="region"><see cref="T:System.Drawing.Region" />
    ///  ，它指定要从剪辑区域排除的区域。
    ///</param>
    procedure ExcludeClip(region: DNRegion); overload;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Graphics" />
    ///  的剪辑区域沿水平方向和垂直方向平移指定的量。
    ///</summary>
    ///  <param name="dx">
    ///  平移的 x 坐标。
    ///</param>
    ///  <param name="dy">
    ///  平移的 y 坐标。
    ///</param>
    procedure TranslateClip(dx: Int32; dy: Int32); overload;
    ///<summary>
    ///  获取累积的图形上下文。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Object" />
    ///  ，表示累积的图形上下文。
    ///</returns>
    function GetContextInfo: DDN.mscorlib.DNObject;
    ///<summary>
    ///  指示 <see cref="T:System.Drawing.Rectangle" />
    ///  结构指定的矩形是否包含在此 <see cref="T:System.Drawing.Graphics" />
    ///  的可见剪辑区域内。
    ///</summary>
    ///  <param name="rect">
    ///  要测试其可见性的 <see cref="T:System.Drawing.Rectangle" />
    ///  结构。
    ///</param>
    ///<returns>
    ///  如果 <paramref name="rect" />
    ///  参数指定的矩形包含在此 <see cref="T:System.Drawing.Graphics" />
    ///  的可见剪辑区域内，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(rect: DNRectangle): Boolean; overload;
    ///<summary>
    ///  保存此 <see cref="T:System.Drawing.Graphics" />
    ///  的当前状态，并用 <see cref="T:System.Drawing.Drawing2D.GraphicsState" />
    ///  标识保存的状态。
    ///</summary>
    ///<returns>
    ///  此方法返回 <see cref="T:System.Drawing.Drawing2D.GraphicsState" />
    ///  ，该对象表示此 <see cref="T:System.Drawing.Graphics" />
    ///  的保存状态。
    ///</returns>
    function Save: DNGraphicsState;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Graphics" />
    ///  的状态还原到 <see cref="T:System.Drawing.Drawing2D.GraphicsState" />
    ///  表示的状态。
    ///</summary>
    ///  <param name="gstate"><see cref="T:System.Drawing.Drawing2D.GraphicsState" />
    ///  ，它表示要将此 <see cref="T:System.Drawing.Graphics" />
    ///  还原到的状态。
    ///</param>
    procedure Restore(gstate: DNGraphicsState);
    ///<summary>
    ///  保存具有此 <see cref="T:System.Drawing.Graphics" />
    ///  的当前状态的图形容器，然后打开并使用新的图形容器。
    ///</summary>
    ///<returns>
    ///  此方法返回一个 <see cref="T:System.Drawing.Drawing2D.GraphicsContainer" />
    ///  ，该对象表示该方法调用运行时此 <see cref="T:System.Drawing.Graphics" />
    ///  的状态。
    ///</returns>
    function BeginContainer: DNGraphicsContainer; overload;
    ///<summary>
    ///  关闭当前图形容器，并将此 <see cref="T:System.Drawing.Graphics" />
    ///  的状态还原到通过调用 <see cref="M:System.Drawing.Graphics.BeginContainer" />
    ///  方法保存的状态。
    ///</summary>
    ///  <param name="container"><see cref="T:System.Drawing.Drawing2D.GraphicsContainer" />
    ///  ，它表示此方法还原的容器。
    ///</param>
    procedure EndContainer(container: DNGraphicsContainer);
    ///<summary>
    ///  获取与此 <see cref="T:System.Drawing.Graphics" />
    ///  关联的设备上下文的句柄。
    ///</summary>
    ///<returns>
    ///  与此 <see cref="T:System.Drawing.Graphics" />
    ///  关联的设备上下文的句柄。
    ///</returns>
    function GetHdc: IntPtr;
    ///<summary>
    ///  释放通过以前对此 <see cref="T:System.Drawing.Graphics" />
    ///  的 <see cref="M:System.Drawing.Graphics.GetHdc" />
    ///  方法的调用获得的设备上下文句柄。
    ///</summary>
    procedure ReleaseHdc; overload;
    ///<summary>
    ///  释放此 <see cref="T:System.Drawing.Graphics" />
    ///  使用的所有资源。
    ///</summary>
    procedure Dispose;
    ///<summary>
    ///  强制执行所有挂起的图形操作并立即返回而不等待操作完成。
    ///</summary>
    procedure Flush; overload;
    ///<summary>
    ///  用此方法强制执行所有挂起的图形操作，按照指定，等待或者不等待，在操作完成之前返回。
    ///</summary>
    ///  <param name="intention"><see cref="T:System.Drawing.Drawing2D.FlushIntention" />
    ///  枚举的成员，它指定该方法是立即返回还是等待所有现有的操作都完成。
    ///</param>
    procedure Flush(intention: DNFlushIntention); overload;
    ///<summary>
    ///  执行颜色数据（对应于由像素组成的矩形）从屏幕到 <see cref="T:System.Drawing.Graphics" />
    ///  的绘图图面的位块传输。
    ///</summary>
    ///  <param name="upperLeftSource">
    ///  位于源矩形左上角的点。
    ///</param>
    ///  <param name="upperLeftDestination">
    ///  位于目标矩形左上角的点。
    ///</param>
    ///  <param name="blockRegionSize">
    ///  要传输的区域大小。
    ///</param>
    ///<exception cref="T:System.ComponentModel.Win32Exception">
    ///  操作失败。
    ///</exception>
    procedure CopyFromScreen(upperLeftSource: DNPoint; upperLeftDestination: DNPoint; blockRegionSize: DNSize); overload;
    ///<summary>
    ///  执行颜色数据（对应于由像素组成的矩形）从屏幕到 <see cref="T:System.Drawing.Graphics" />
    ///  的绘图图面的位块传输。
    ///</summary>
    ///  <param name="sourceX">
    ///  位于源矩形左上角的点的 x 坐标。
    ///</param>
    ///  <param name="sourceY">
    ///  位于源矩形左上角的点的 y 坐标。
    ///</param>
    ///  <param name="destinationX">
    ///  位于目标矩形左上角的点的 x 坐标。
    ///</param>
    ///  <param name="destinationY">
    ///  位于目标矩形左上角的点的 y 坐标。
    ///</param>
    ///  <param name="blockRegionSize">
    ///  要传输的区域大小。
    ///</param>
    ///<exception cref="T:System.ComponentModel.Win32Exception">
    ///  操作失败。
    ///</exception>
    procedure CopyFromScreen(sourceX: Int32; sourceY: Int32; destinationX: Int32; destinationY: Int32; blockRegionSize: DNSize); overload;
    ///<summary>
    ///  执行颜色数据（对应于由像素组成的矩形）从屏幕到 <see cref="T:System.Drawing.Graphics" />
    ///  的绘图图面的位块传输。
    ///</summary>
    ///  <param name="upperLeftSource">
    ///  位于源矩形左上角的点。
    ///</param>
    ///  <param name="upperLeftDestination">
    ///  位于目标矩形左上角的点。
    ///</param>
    ///  <param name="blockRegionSize">
    ///  要传输的区域大小。
    ///</param>
    ///  <param name="copyPixelOperation"><see cref="T:System.Drawing.CopyPixelOperation" />
    ///  值之一。
    ///</param>
    ///<exception cref="T:System.ComponentModel.InvalidEnumArgumentException"><paramref name="copyPixelOperation" />
    ///  不是成员的 <see cref="T:System.Drawing.CopyPixelOperation" />
    ///  。
    ///</exception><exception cref="T:System.ComponentModel.Win32Exception">
    ///  操作失败。
    ///</exception>
    procedure CopyFromScreen(upperLeftSource: DNPoint; upperLeftDestination: DNPoint; blockRegionSize: DNSize; copyPixelOperation: DNCopyPixelOperation); overload;
    ///<summary>
    ///  执行颜色数据（对应于由像素组成的矩形）从屏幕到 <see cref="T:System.Drawing.Graphics" />
    ///  的绘图图面的位块传输。
    ///</summary>
    ///  <param name="sourceX">
    ///  位于源矩形左上角的点的 x 坐标。
    ///</param>
    ///  <param name="sourceY">
    ///  位于源矩形左上角的点的 y 坐标
    ///</param>
    ///  <param name="destinationX">
    ///  位于目标矩形左上角的点的 x 坐标。
    ///</param>
    ///  <param name="destinationY">
    ///  位于目标矩形左上角的点的 y 坐标。
    ///</param>
    ///  <param name="blockRegionSize">
    ///  要传输的区域大小。
    ///</param>
    ///  <param name="copyPixelOperation"><see cref="T:System.Drawing.CopyPixelOperation" />
    ///  值之一。
    ///</param>
    ///<exception cref="T:System.ComponentModel.InvalidEnumArgumentException"><paramref name="copyPixelOperation" />
    ///  不是成员的 <see cref="T:System.Drawing.CopyPixelOperation" />
    ///  。
    ///</exception><exception cref="T:System.ComponentModel.Win32Exception">
    ///  操作失败。
    ///</exception>
    procedure CopyFromScreen(sourceX: Int32; sourceY: Int32; destinationX: Int32; destinationY: Int32; blockRegionSize: DNSize; copyPixelOperation: DNCopyPixelOperation); overload;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Graphics" />
    ///  的世界变换矩阵重置为单位矩阵。
    ///</summary>
    procedure ResetTransform;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Graphics" />
    ///  的世界变换乘以指定的 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  。
    ///</summary>
    ///  <param name="matrix">
    ///  乘以世界变换的 4x4 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  。
    ///</param>
    procedure MultiplyTransform(matrix: DNMatrix); overload;
    ///<summary>
    ///  以指定顺序将此 <see cref="T:System.Drawing.Graphics" />
    ///  的世界变换乘以指定的 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  。
    ///</summary>
    ///  <param name="matrix">
    ///  乘以世界变换的 4x4 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  。
    ///</param>
    ///  <param name="order"><see cref="T:System.Drawing.Drawing2D.MatrixOrder" />
    ///  枚举的成员，它确定乘法的顺序。
    ///</param>
    procedure MultiplyTransform(matrix: DNMatrix; order: DNMatrixOrder); overload;
    ///<summary>
    ///  将指定的缩放操作应用于此 <see cref="T:System.Drawing.Graphics" />
    ///  的变换矩阵，方法是将该对象的变换矩阵左乘该缩放矩阵。
    ///</summary>
    ///  <param name="sx">
    ///  x 方向的缩放比例。
    ///</param>
    ///  <param name="sy">
    ///  y 方向的缩放比例。
    ///</param>
    procedure ScaleTransform(sx: Single; sy: Single); overload;
    ///<summary>
    ///  以指定顺序将指定的缩放操作应用到此 <see cref="T:System.Drawing.Graphics" />
    ///  的变换矩阵。
    ///</summary>
    ///  <param name="sx">
    ///  x 方向的缩放比例。
    ///</param>
    ///  <param name="sy">
    ///  y 方向的缩放比例。
    ///</param>
    ///  <param name="order"><see cref="T:System.Drawing.Drawing2D.MatrixOrder" />
    ///  枚举的成员，它指定是将缩放操作添加到变换矩阵前还是追加到变换矩阵后。
    ///</param>
    procedure ScaleTransform(sx: Single; sy: Single; order: DNMatrixOrder); overload;
    ///<summary>
    ///  将指定旋转应用于此 <see cref="T:System.Drawing.Graphics" />
    ///  的变换矩阵。
    ///</summary>
    ///  <param name="angle">
    ///  旋转角度（以度为单位）。
    ///</param>
    procedure RotateTransform(angle: Single); overload;
    ///<summary>
    ///  以指定顺序将指定旋转应用到此 <see cref="T:System.Drawing.Graphics" />
    ///  的变换矩阵。
    ///</summary>
    ///  <param name="angle">
    ///  旋转角度（以度为单位）。
    ///</param>
    ///  <param name="order"><see cref="T:System.Drawing.Drawing2D.MatrixOrder" />
    ///  枚举的成员，它指定是将旋转追加到矩阵变换之后还是添加到矩阵变换之前。
    ///</param>
    procedure RotateTransform(angle: Single; order: DNMatrixOrder); overload;
    ///<summary>
    ///  使用此 <see cref="T:System.Drawing.Graphics" />
    ///  的当前世界变换和页变换，将点数组从一个坐标空间转换到另一个坐标空间。
    ///</summary>
    ///  <param name="destSpace"><see cref="T:System.Drawing.Drawing2D.CoordinateSpace" />
    ///  枚举成员，它指定目标坐标空间。
    ///</param>
    ///  <param name="srcSpace"><see cref="T:System.Drawing.Drawing2D.CoordinateSpace" />
    ///  枚举成员，它指定源坐标空间。
    ///</param>
    ///  <param name="pts"><see cref="T:System.Drawing.PointF" />
    ///  结构数组，这些结构表示要变换的点。
    ///</param>
    procedure TransformPoints(destSpace: DNCoordinateSpace; srcSpace: DNCoordinateSpace; pts: TArray<DNPointF>); overload;
    ///<summary>
    ///  使用此 <see cref="T:System.Drawing.Graphics" />
    ///  的当前世界变换和页变换，将点数组从一个坐标空间转换到另一个坐标空间。
    ///</summary>
    ///  <param name="destSpace"><see cref="T:System.Drawing.Drawing2D.CoordinateSpace" />
    ///  枚举成员，它指定目标坐标空间。
    ///</param>
    ///  <param name="srcSpace"><see cref="T:System.Drawing.Drawing2D.CoordinateSpace" />
    ///  枚举成员，它指定源坐标空间。
    ///</param>
    ///  <param name="pts"><see cref="T:System.Drawing.Point" />
    ///  结构数组，这些结构表示要变换的点。
    ///</param>
    procedure TransformPoints(destSpace: DNCoordinateSpace; srcSpace: DNCoordinateSpace; pts: TArray<DNPoint>); overload;
    ///<summary>
    ///  绘制一条连接由坐标对指定的两个点的线条。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定线条的颜色、宽度和样式。
    ///</param>
    ///  <param name="x1">
    ///  第一个点的 x 坐标。
    ///</param>
    ///  <param name="y1">
    ///  第一个点的 y 坐标。
    ///</param>
    ///  <param name="x2">
    ///  第二个点的 x 坐标。
    ///</param>
    ///  <param name="y2">
    ///  第二个点的 y 坐标。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawLine(pen: DNPen; x1: Single; y1: Single; x2: Single; y2: Single); overload;
    ///<summary>
    ///  绘制一条连接两个 <see cref="T:System.Drawing.PointF" />
    ///  结构的线。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定线条的颜色、宽度和样式。
    ///</param>
    ///  <param name="pt1"><see cref="T:System.Drawing.PointF" />
    ///  结构，它表示要连接的第一个点。
    ///</param>
    ///  <param name="pt2"><see cref="T:System.Drawing.PointF" />
    ///  结构，它表示要连接的第二个点。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawLine(pen: DNPen; pt1: DNPointF; pt2: DNPointF); overload;
    ///<summary>
    ///  绘制一系列连接一组 <see cref="T:System.Drawing.PointF" />
    ///  结构的线段。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定线段的颜色、宽度和样式。
    ///</param>
    ///  <param name="points"><see cref="T:System.Drawing.PointF" />
    ///  结构数组，这些结构表示要连接的点。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="points" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawLines(pen: DNPen; points: TArray<DNPointF>); overload;
    ///<summary>
    ///  绘制一条连接两个 <see cref="T:System.Drawing.Point" />
    ///  结构的线。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定线条的颜色、宽度和样式。
    ///</param>
    ///  <param name="pt1"><see cref="T:System.Drawing.Point" />
    ///  结构，它表示要连接的第一个点。
    ///</param>
    ///  <param name="pt2"><see cref="T:System.Drawing.Point" />
    ///  结构，它表示要连接的第二个点。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawLine(pen: DNPen; pt1: DNPoint; pt2: DNPoint); overload;
    ///<summary>
    ///  绘制一系列连接一组 <see cref="T:System.Drawing.Point" />
    ///  结构的线段。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定线段的颜色、宽度和样式。
    ///</param>
    ///  <param name="points"><see cref="T:System.Drawing.Point" />
    ///  结构数组，这些结构表示要连接的点。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="points" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawLines(pen: DNPen; points: TArray<DNPoint>); overload;
    ///<summary>
    ///  绘制一段弧线，它表示由一对坐标、宽度和高度指定的椭圆部分。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定弧线的颜色、宽度和样式。
    ///</param>
    ///  <param name="x">
    ///  定义椭圆的矩形的左上角的 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  定义椭圆的矩形的左上角的 y 坐标。
    ///</param>
    ///  <param name="width">
    ///  定义椭圆的矩形的宽度。
    ///</param>
    ///  <param name="height">
    ///  定义椭圆的矩形的高度。
    ///</param>
    ///  <param name="startAngle">
    ///  从 x 轴到弧线的起始点沿顺时针方向度量的角（以度为单位）。
    ///</param>
    ///  <param name="sweepAngle">
    ///  从 <paramref name="startAngle" />
    ///  参数到弧线的结束点沿顺时针方向度量的角（以度为单位）。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawArc(pen: DNPen; x: Single; y: Single; width: Single; height: Single; startAngle: Single; sweepAngle: Single); overload;
    ///<summary>
    ///  绘制一段弧线，它表示 <see cref="T:System.Drawing.RectangleF" />
    ///  结构指定的椭圆的一部分。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定弧线的颜色、宽度和样式。
    ///</param>
    ///  <param name="rect"><see cref="T:System.Drawing.RectangleF" />
    ///  结构，它定义椭圆的边界。
    ///</param>
    ///  <param name="startAngle">
    ///  从 x 轴到弧线的起始点沿顺时针方向度量的角（以度为单位）。
    ///</param>
    ///  <param name="sweepAngle">
    ///  从 <paramref name="startAngle" />
    ///  参数到弧线的结束点沿顺时针方向度量的角（以度为单位）。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///</exception>
    procedure DrawArc(pen: DNPen; rect: DNRectangleF; startAngle: Single; sweepAngle: Single); overload;
    ///<summary>
    ///  绘制一段弧线，它表示由一对坐标、宽度和高度指定的椭圆部分。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定弧线的颜色、宽度和样式。
    ///</param>
    ///  <param name="x">
    ///  定义椭圆的矩形的左上角的 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  定义椭圆的矩形的左上角的 y 坐标。
    ///</param>
    ///  <param name="width">
    ///  定义椭圆的矩形的宽度。
    ///</param>
    ///  <param name="height">
    ///  定义椭圆的矩形的高度。
    ///</param>
    ///  <param name="startAngle">
    ///  从 x 轴到弧线的起始点沿顺时针方向度量的角（以度为单位）。
    ///</param>
    ///  <param name="sweepAngle">
    ///  从 <paramref name="startAngle" />
    ///  参数到弧线的结束点沿顺时针方向度量的角（以度为单位）。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="rects" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="rects" />
    ///  是长度为零的数组。
    ///</exception>
    procedure DrawArc(pen: DNPen; x: Int32; y: Int32; width: Int32; height: Int32; startAngle: Int32; sweepAngle: Int32); overload;
    ///<summary>
    ///  绘制一段弧线，它表示 <see cref="T:System.Drawing.Rectangle" />
    ///  结构指定的椭圆的一部分。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定弧线的颜色、宽度和样式。
    ///</param>
    ///  <param name="rect"><see cref="T:System.Drawing.RectangleF" />
    ///  结构，它定义椭圆的边界。
    ///</param>
    ///  <param name="startAngle">
    ///  从 x 轴到弧线的起始点沿顺时针方向度量的角（以度为单位）。
    ///</param>
    ///  <param name="sweepAngle">
    ///  从 <paramref name="startAngle" />
    ///  参数到弧线的结束点沿顺时针方向度量的角（以度为单位）。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawArc(pen: DNPen; rect: DNRectangle; startAngle: Single; sweepAngle: Single); overload;
    ///<summary>
    ///  绘制由四个表示点的有序坐标对定义的贝塞尔样条。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定曲线的颜色、宽度和样式。
    ///</param>
    ///  <param name="x1">
    ///  曲线起始点的 X 坐标。
    ///</param>
    ///  <param name="y1">
    ///  曲线起始点的 Y 坐标。
    ///</param>
    ///  <param name="x2">
    ///  曲线的第一个控制点的 X 坐标。
    ///</param>
    ///  <param name="y2">
    ///  曲线的第一个控制点的 Y 坐标。
    ///</param>
    ///  <param name="x3">
    ///  曲线的第二个控制点的 X 坐标。
    ///</param>
    ///  <param name="y3">
    ///  曲线的第二个控制点的 Y 坐标。
    ///</param>
    ///  <param name="x4">
    ///  曲线的结束点的 X 坐标。
    ///</param>
    ///  <param name="y4">
    ///  曲线的结束点的 Y 坐标。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawBezier(pen: DNPen; x1: Single; y1: Single; x2: Single; y2: Single; x3: Single; y3: Single; x4: Single; y4: Single); overload;
    ///<summary>
    ///  绘制由 4 个 <see cref="T:System.Drawing.PointF" />
    ///  结构定义的贝塞尔样条。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定曲线的颜色、宽度和样式。
    ///</param>
    ///  <param name="pt1"><see cref="T:System.Drawing.PointF" />
    ///  结构，它表示曲线的起始点。
    ///</param>
    ///  <param name="pt2"><see cref="T:System.Drawing.PointF" />
    ///  结构，它表示曲线的第一个控制点。
    ///</param>
    ///  <param name="pt3"><see cref="T:System.Drawing.PointF" />
    ///  结构，它表示曲线的第二个控制点。
    ///</param>
    ///  <param name="pt4"><see cref="T:System.Drawing.PointF" />
    ///  结构，它表示曲线的结束点。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawBezier(pen: DNPen; pt1: DNPointF; pt2: DNPointF; pt3: DNPointF; pt4: DNPointF); overload;
    ///<summary>
    ///  用 <see cref="T:System.Drawing.PointF" />
    ///  结构数组绘制一系列贝塞尔样条。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定曲线的颜色、宽度和样式。
    ///</param>
    ///  <param name="points"><see cref="T:System.Drawing.PointF" />
    ///  结构的数组，这些结构表示确定曲线的点。
    ///  此数组中的点数应为 3 的倍数加 1，如 4、7 或 10。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="points" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawBeziers(pen: DNPen; points: TArray<DNPointF>); overload;
    ///<summary>
    ///  绘制由 4 个 <see cref="T:System.Drawing.Point" />
    ///  结构定义的贝塞尔样条。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  结构，它确定曲线的颜色、宽度和样式。
    ///</param>
    ///  <param name="pt1"><see cref="T:System.Drawing.Point" />
    ///  结构，它表示曲线的起始点。
    ///</param>
    ///  <param name="pt2"><see cref="T:System.Drawing.Point" />
    ///  结构，它表示曲线的第一个控制点。
    ///</param>
    ///  <param name="pt3"><see cref="T:System.Drawing.Point" />
    ///  结构，它表示曲线的第二个控制点。
    ///</param>
    ///  <param name="pt4"><see cref="T:System.Drawing.Point" />
    ///  结构，它表示曲线的结束点。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawBezier(pen: DNPen; pt1: DNPoint; pt2: DNPoint; pt3: DNPoint; pt4: DNPoint); overload;
    ///<summary>
    ///  用 <see cref="T:System.Drawing.Point" />
    ///  结构数组绘制一系列贝塞尔样条。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定曲线的颜色、宽度和样式。
    ///</param>
    ///  <param name="points"><see cref="T:System.Drawing.Point" />
    ///  结构的数组，这些结构表示确定曲线的点。
    ///  此数组中的点数应为 3 的倍数加 1，如 4、7 或 10。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="points" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawBeziers(pen: DNPen; points: TArray<DNPoint>); overload;
    ///<summary>
    ///  绘制一系列由 <see cref="T:System.Drawing.RectangleF" />
    ///  结构指定的矩形。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定矩形轮廓线的颜色、宽度和样式。
    ///</param>
    ///  <param name="rects"><see cref="T:System.Drawing.RectangleF" />
    ///  结构数组，这些结构表示要绘制的矩形。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="rects" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="rects" />
    ///  是长度为零的数组。
    ///</exception>
    procedure DrawRectangles(pen: DNPen; rects: TArray<DNRectangleF>); overload;
    ///<summary>
    ///  绘制一系列由 <see cref="T:System.Drawing.Rectangle" />
    ///  结构指定的矩形。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定矩形轮廓线的颜色、宽度和样式。
    ///</param>
    ///  <param name="rects"><see cref="T:System.Drawing.Rectangle" />
    ///  结构数组，这些结构表示要绘制的矩形。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="rects" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="rects" />
    ///  是长度为零的数组。
    ///</exception>
    procedure DrawRectangles(pen: DNPen; rects: TArray<DNRectangle>); overload;
    ///<summary>
    ///  绘制一个由边框（该边框由一对坐标、高度和宽度指定）定义的椭圆。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定曲线的颜色、宽度和样式。
    ///</param>
    ///  <param name="x">
    ///  定义椭圆的边框的左上角的 X 坐标。
    ///</param>
    ///  <param name="y">
    ///  定义椭圆的边框的左上角的 Y 坐标。
    ///</param>
    ///  <param name="width">
    ///  定义椭圆的边框的宽度。
    ///</param>
    ///  <param name="height">
    ///  定义椭圆的边框的高度。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawEllipse(pen: DNPen; x: Single; y: Single; width: Single; height: Single); overload;
    ///<summary>
    ///  绘制边界 <see cref="T:System.Drawing.Rectangle" />
    ///  结构指定的椭圆。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定曲线的颜色、宽度和样式。
    ///</param>
    ///  <param name="rect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构，它定义椭圆的边界。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawEllipse(pen: DNPen; rect: DNRectangle); overload;
    ///<summary>
    ///  绘制一个由边框定义的椭圆，该边框由矩形的左上角坐标、高度和宽度指定。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定曲线的颜色、宽度和样式。
    ///</param>
    ///  <param name="x">
    ///  定义椭圆的边框的左上角的 X 坐标。
    ///</param>
    ///  <param name="y">
    ///  定义椭圆的边框的左上角的 Y 坐标。
    ///</param>
    ///  <param name="width">
    ///  定义椭圆的边框的宽度。
    ///</param>
    ///  <param name="height">
    ///  定义椭圆的边框的高度。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawEllipse(pen: DNPen; x: Int32; y: Int32; width: Int32; height: Int32); overload;
    ///<summary>
    ///  绘制由一个 <see cref="T:System.Drawing.RectangleF" />
    ///  结构和两条射线所指定的椭圆定义的扇形。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定扇形的颜色、宽度和样式。
    ///</param>
    ///  <param name="rect"><see cref="T:System.Drawing.RectangleF" />
    ///  结构，它表示定义该扇形所属的椭圆的边框。
    ///</param>
    ///  <param name="startAngle">
    ///  从 x 轴到扇形的第一条边沿顺时针方向度量的角（以度为单位）。
    ///</param>
    ///  <param name="sweepAngle">
    ///  从 <paramref name="startAngle" />
    ///  参数到扇形的第二条边沿顺时针方向度量的角（以度为单位）。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawPie(pen: DNPen; rect: DNRectangleF; startAngle: Single; sweepAngle: Single); overload;
    ///<summary>
    ///  绘制一个扇形，该形状由一个坐标对、宽度、高度以及两条射线所指定的椭圆定义。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定扇形的颜色、宽度和样式。
    ///</param>
    ///  <param name="x">
    ///  边框的左上角的 x 坐标，该边框定义扇形所属的椭圆。
    ///</param>
    ///  <param name="y">
    ///  边框的左上角的 y 坐标，该边框定义扇形所属的椭圆。
    ///</param>
    ///  <param name="width">
    ///  边框的宽度，该边框定义扇形所属的椭圆。
    ///</param>
    ///  <param name="height">
    ///  边框的高度，该边框定义扇形所属的椭圆。
    ///</param>
    ///  <param name="startAngle">
    ///  从 x 轴到扇形的第一条边沿顺时针方向度量的角（以度为单位）。
    ///</param>
    ///  <param name="sweepAngle">
    ///  从 <paramref name="startAngle" />
    ///  参数到扇形的第二条边沿顺时针方向度量的角（以度为单位）。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawPie(pen: DNPen; x: Single; y: Single; width: Single; height: Single; startAngle: Single; sweepAngle: Single); overload;
    ///<summary>
    ///  绘制由一个 <see cref="T:System.Drawing.Rectangle" />
    ///  结构和两条射线所指定的椭圆定义的扇形。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定扇形的颜色、宽度和样式。
    ///</param>
    ///  <param name="rect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构，它表示定义该扇形所属的椭圆的边框。
    ///</param>
    ///  <param name="startAngle">
    ///  从 x 轴到扇形的第一条边沿顺时针方向度量的角（以度为单位）。
    ///</param>
    ///  <param name="sweepAngle">
    ///  从 <paramref name="startAngle" />
    ///  参数到扇形的第二条边沿顺时针方向度量的角（以度为单位）。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawPie(pen: DNPen; rect: DNRectangle; startAngle: Single; sweepAngle: Single); overload;
    ///<summary>
    ///  绘制一个扇形，该形状由一个坐标对、宽度、高度以及两条射线所指定的椭圆定义。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定扇形的颜色、宽度和样式。
    ///</param>
    ///  <param name="x">
    ///  边框的左上角的 x 坐标，该边框定义扇形所属的椭圆。
    ///</param>
    ///  <param name="y">
    ///  边框的左上角的 y 坐标，该边框定义扇形所属的椭圆。
    ///</param>
    ///  <param name="width">
    ///  边框的宽度，该边框定义扇形所属的椭圆。
    ///</param>
    ///  <param name="height">
    ///  边框的高度，该边框定义扇形所属的椭圆。
    ///</param>
    ///  <param name="startAngle">
    ///  从 x 轴到扇形的第一条边沿顺时针方向度量的角（以度为单位）。
    ///</param>
    ///  <param name="sweepAngle">
    ///  从 <paramref name="startAngle" />
    ///  参数到扇形的第二条边沿顺时针方向度量的角（以度为单位）。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawPie(pen: DNPen; x: Int32; y: Int32; width: Int32; height: Int32; startAngle: Int32; sweepAngle: Int32); overload;
    ///<summary>
    ///  绘制由一组 <see cref="T:System.Drawing.PointF" />
    ///  结构定义的多边形。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定多边形的颜色、宽度和样式。
    ///</param>
    ///  <param name="points"><see cref="T:System.Drawing.PointF" />
    ///  结构数组，这些结构表示多边形的顶点。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="points" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawPolygon(pen: DNPen; points: TArray<DNPointF>); overload;
    ///<summary>
    ///  绘制由一组 <see cref="T:System.Drawing.Point" />
    ///  结构定义的多边形。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定多边形的颜色、宽度和样式。
    ///</param>
    ///  <param name="points"><see cref="T:System.Drawing.Point" />
    ///  结构数组，这些结构表示多边形的顶点。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawPolygon(pen: DNPen; points: TArray<DNPoint>); overload;
    ///<summary>
    ///  绘制 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定路径的颜色、宽度和样式。
    ///</param>
    ///  <param name="path">
    ///  要绘制的 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="path" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawPath(pen: DNPen; path: DNGraphicsPath);
    ///<summary>
    ///  绘制经过一组指定的 <see cref="T:System.Drawing.PointF" />
    ///  结构的基数样条。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定曲线的颜色、宽度和样式。
    ///</param>
    ///  <param name="points"><see cref="T:System.Drawing.PointF" />
    ///  结构数组，这些结构定义样条。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="points" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawCurve(pen: DNPen; points: TArray<DNPointF>); overload;
    ///<summary>
    ///  使用指定的张力绘制经过一组指定的 <see cref="T:System.Drawing.PointF" />
    ///  结构的基数样条。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定曲线的颜色、宽度和样式。
    ///</param>
    ///  <param name="points"><see cref="T:System.Drawing.PointF" />
    ///  结构的数组，这些结构表示定义曲线的点。
    ///</param>
    ///  <param name="tension">
    ///  大于或等于 0.0F 的值，该值指定曲线的张力。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="points" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawCurve(pen: DNPen; points: TArray<DNPointF>; tension: Single); overload;
    ///<summary>
    ///  绘制经过一组指定的 <see cref="T:System.Drawing.PointF" />
    ///  结构的基数样条。
    ///  从相对于数组开始位置的偏移量开始绘制。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定曲线的颜色、宽度和样式。
    ///</param>
    ///  <param name="points"><see cref="T:System.Drawing.PointF" />
    ///  结构数组，这些结构定义样条。
    ///</param>
    ///  <param name="offset">
    ///  从 <paramref name="points" />
    ///  参数数组中的第一个元素到曲线中起始点的偏移量。
    ///</param>
    ///  <param name="numberOfSegments">
    ///  起始点之后要包含在曲线中的段数。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="points" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawCurve(pen: DNPen; points: TArray<DNPointF>; offset: Int32; numberOfSegments: Int32); overload;
    ///<summary>
    ///  使用指定的张力绘制经过一组指定的 <see cref="T:System.Drawing.PointF" />
    ///  结构的基数样条。
    ///  从相对于数组开始位置的偏移量开始绘制。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定曲线的颜色、宽度和样式。
    ///</param>
    ///  <param name="points"><see cref="T:System.Drawing.PointF" />
    ///  结构数组，这些结构定义样条。
    ///</param>
    ///  <param name="offset">
    ///  从 <paramref name="points" />
    ///  参数数组中的第一个元素到曲线中起始点的偏移量。
    ///</param>
    ///  <param name="numberOfSegments">
    ///  起始点之后要包含在曲线中的段数。
    ///</param>
    ///  <param name="tension">
    ///  大于或等于 0.0F 的值，该值指定曲线的张力。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="points" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawCurve(pen: DNPen; points: TArray<DNPointF>; offset: Int32; numberOfSegments: Int32; tension: Single); overload;
    ///<summary>
    ///  绘制经过一组指定的 <see cref="T:System.Drawing.Point" />
    ///  结构的基数样条。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定曲线的颜色、宽度和高度。
    ///</param>
    ///  <param name="points"><see cref="T:System.Drawing.Point" />
    ///  结构数组，这些结构定义样条。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="points" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawCurve(pen: DNPen; points: TArray<DNPoint>); overload;
    ///<summary>
    ///  使用指定的张力绘制经过一组指定的 <see cref="T:System.Drawing.Point" />
    ///  结构的基数样条。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定曲线的颜色、宽度和样式。
    ///</param>
    ///  <param name="points"><see cref="T:System.Drawing.Point" />
    ///  结构数组，这些结构定义样条。
    ///</param>
    ///  <param name="tension">
    ///  大于或等于 0.0F 的值，该值指定曲线的张力。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="points" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawCurve(pen: DNPen; points: TArray<DNPoint>; tension: Single); overload;
    ///<summary>
    ///  使用指定的张力绘制经过一组指定的 <see cref="T:System.Drawing.Point" />
    ///  结构的基数样条。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定曲线的颜色、宽度和样式。
    ///</param>
    ///  <param name="points"><see cref="T:System.Drawing.Point" />
    ///  结构数组，这些结构定义样条。
    ///</param>
    ///  <param name="offset">
    ///  从 <paramref name="points" />
    ///  参数数组中的第一个元素到曲线中起始点的偏移量。
    ///</param>
    ///  <param name="numberOfSegments">
    ///  起始点之后要包含在曲线中的段数。
    ///</param>
    ///  <param name="tension">
    ///  大于或等于 0.0F 的值，该值指定曲线的张力。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="points" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawCurve(pen: DNPen; points: TArray<DNPoint>; offset: Int32; numberOfSegments: Int32; tension: Single); overload;
    ///<summary>
    ///  绘制由 <see cref="T:System.Drawing.PointF" />
    ///  结构的数组定义的闭合基数样条。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定曲线的颜色、宽度和高度。
    ///</param>
    ///  <param name="points"><see cref="T:System.Drawing.PointF" />
    ///  结构数组，这些结构定义样条。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="points" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawClosedCurve(pen: DNPen; points: TArray<DNPointF>); overload;
    ///<summary>
    ///  使用指定的张力绘制由 <see cref="T:System.Drawing.PointF" />
    ///  结构数组定义的闭合基数样条。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定曲线的颜色、宽度和高度。
    ///</param>
    ///  <param name="points"><see cref="T:System.Drawing.PointF" />
    ///  结构数组，这些结构定义样条。
    ///</param>
    ///  <param name="tension">
    ///  大于或等于 0.0F 的值，该值指定曲线的张力。
    ///</param>
    ///  <param name="fillmode"><see cref="T:System.Drawing.Drawing2D.FillMode" />
    ///  枚举的成员，它确定填充曲线的方式。
    ///  需要此参数但被忽略。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="points" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawClosedCurve(pen: DNPen; points: TArray<DNPointF>; tension: Single; fillmode: DNFillMode); overload;
    ///<summary>
    ///  绘制由 <see cref="T:System.Drawing.Point" />
    ///  结构的数组定义的闭合基数样条。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定曲线的颜色、宽度和高度。
    ///</param>
    ///  <param name="points"><see cref="T:System.Drawing.Point" />
    ///  结构数组，这些结构定义样条。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="points" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawClosedCurve(pen: DNPen; points: TArray<DNPoint>); overload;
    ///<summary>
    ///  使用指定的张力绘制由 <see cref="T:System.Drawing.Point" />
    ///  结构数组定义的闭合基数样条。
    ///</summary>
    ///  <param name="pen"><see cref="T:System.Drawing.Pen" />
    ///  ，它确定曲线的颜色、宽度和高度。
    ///</param>
    ///  <param name="points"><see cref="T:System.Drawing.Point" />
    ///  结构数组，这些结构定义样条。
    ///</param>
    ///  <param name="tension">
    ///  大于或等于 0.0F 的值，该值指定曲线的张力。
    ///</param>
    ///  <param name="fillmode"><see cref="T:System.Drawing.Drawing2D.FillMode" />
    ///  枚举的成员，它确定填充曲线的方式。
    ///  需要此参数但被忽略。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="pen" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="points" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawClosedCurve(pen: DNPen; points: TArray<DNPoint>; tension: Single; fillmode: DNFillMode); overload;
    ///<summary>
    ///  填充 <see cref="T:System.Drawing.RectangleF" />
    ///  结构指定的矩形的内部。
    ///</summary>
    ///  <param name="brush">
    ///  确定填充特性的 <see cref="T:System.Drawing.Brush" />
    ///  。
    ///</param>
    ///  <param name="rect"><see cref="T:System.Drawing.RectangleF" />
    ///  结构，它表示要填充的矩形。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure FillRectangle(brush: DNBrush; rect: DNRectangleF); overload;
    ///<summary>
    ///  填充由 <see cref="T:System.Drawing.RectangleF" />
    ///  结构指定的一系列矩形的内部。
    ///</summary>
    ///  <param name="brush">
    ///  确定填充特性的 <see cref="T:System.Drawing.Brush" />
    ///  。
    ///</param>
    ///  <param name="rects"><see cref="T:System.Drawing.RectangleF" />
    ///  结构数组，这些结构表示要填充的矩形。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="rects" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="Rects" />
    ///  是一个长度为零的数组。
    ///</exception>
    procedure FillRectangles(brush: DNBrush; rects: TArray<DNRectangleF>); overload;
    ///<summary>
    ///  填充 <see cref="T:System.Drawing.PointF" />
    ///  结构指定的点数组所定义的多边形的内部。
    ///</summary>
    ///  <param name="brush">
    ///  确定填充特性的 <see cref="T:System.Drawing.Brush" />
    ///  。
    ///</param>
    ///  <param name="points"><see cref="T:System.Drawing.PointF" />
    ///  结构数组，这些结构表示要填充的多边形的顶点。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="points" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure FillPolygon(brush: DNBrush; points: TArray<DNPointF>); overload;
    ///<summary>
    ///  使用指定的填充模式填充 <see cref="T:System.Drawing.PointF" />
    ///  结构指定的点数组所定义的多边形的内部。
    ///</summary>
    ///  <param name="brush">
    ///  确定填充特性的 <see cref="T:System.Drawing.Brush" />
    ///  。
    ///</param>
    ///  <param name="points"><see cref="T:System.Drawing.PointF" />
    ///  结构数组，这些结构表示要填充的多边形的顶点。
    ///</param>
    ///  <param name="fillMode">
    ///  确定填充样式的 <see cref="T:System.Drawing.Drawing2D.FillMode" />
    ///  枚举的成员。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="points" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure FillPolygon(brush: DNBrush; points: TArray<DNPointF>; fillMode: DNFillMode); overload;
    ///<summary>
    ///  使用指定的填充模式填充 <see cref="T:System.Drawing.Point" />
    ///  结构指定的点数组所定义的多边形的内部。
    ///</summary>
    ///  <param name="brush">
    ///  确定填充特性的 <see cref="T:System.Drawing.Brush" />
    ///  。
    ///</param>
    ///  <param name="points"><see cref="T:System.Drawing.Point" />
    ///  结构数组，这些结构表示要填充的多边形的顶点。
    ///</param>
    ///  <param name="fillMode">
    ///  确定填充样式的 <see cref="T:System.Drawing.Drawing2D.FillMode" />
    ///  枚举的成员。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="points" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure FillPolygon(brush: DNBrush; points: TArray<DNPoint>; fillMode: DNFillMode); overload;
    ///<summary>
    ///  填充 <see cref="T:System.Drawing.RectangleF" />
    ///  结构指定的边框所定义的椭圆的内部。
    ///</summary>
    ///  <param name="brush">
    ///  确定填充特性的 <see cref="T:System.Drawing.Brush" />
    ///  。
    ///</param>
    ///  <param name="rect"><see cref="T:System.Drawing.RectangleF" />
    ///  结构，它表示定义椭圆的边框。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure FillEllipse(brush: DNBrush; rect: DNRectangleF); overload;
    ///<summary>
    ///  填充 <see cref="T:System.Drawing.Rectangle" />
    ///  结构指定的边框所定义的椭圆的内部。
    ///</summary>
    ///  <param name="brush">
    ///  确定填充特性的 <see cref="T:System.Drawing.Brush" />
    ///  。
    ///</param>
    ///  <param name="rect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构，它表示定义椭圆的边框。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure FillEllipse(brush: DNBrush; rect: DNRectangle); overload;
    ///<summary>
    ///  填充边框所定义的椭圆的内部，该边框由一对坐标、一个宽度和一个高度指定。
    ///</summary>
    ///  <param name="brush">
    ///  确定填充特性的 <see cref="T:System.Drawing.Brush" />
    ///  。
    ///</param>
    ///  <param name="x">
    ///  定义椭圆的边框的左上角的 X 坐标。
    ///</param>
    ///  <param name="y">
    ///  定义椭圆的边框的左上角的 Y 坐标。
    ///</param>
    ///  <param name="width">
    ///  定义椭圆的边框的宽度。
    ///</param>
    ///  <param name="height">
    ///  定义椭圆的边框的高度。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure FillEllipse(brush: DNBrush; x: Int32; y: Int32; width: Int32; height: Int32); overload;
    ///<summary>
    ///  填充椭圆所定义的扇形区的内部，该椭圆由 <see cref="T:System.Drawing.RectangleF" />
    ///  结构和两条射线指定。
    ///</summary>
    ///  <param name="brush">
    ///  确定填充特性的 <see cref="T:System.Drawing.Brush" />
    ///  。
    ///</param>
    ///  <param name="rect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构，它表示定义该扇形区所属的椭圆的边框。
    ///</param>
    ///  <param name="startAngle">
    ///  从 x 轴沿顺时针方向旋转到扇形区第一个边所测得的角度（以度为单位）。
    ///</param>
    ///  <param name="sweepAngle">
    ///  从 <paramref name="startAngle" />
    ///  参数沿顺时针方向旋转到扇形区第二个边所测得的角度（以度为单位）。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure FillPie(brush: DNBrush; rect: DNRectangle; startAngle: Single; sweepAngle: Single); overload;
    ///<summary>
    ///  填充由一对坐标、一个宽度、一个高度以及两条射线指定的椭圆所定义的扇形区的内部。
    ///</summary>
    ///  <param name="brush">
    ///  确定填充特性的 <see cref="T:System.Drawing.Brush" />
    ///  。
    ///</param>
    ///  <param name="x">
    ///  边框左上角的 x 坐标，该边框定义扇形区所属的椭圆。
    ///</param>
    ///  <param name="y">
    ///  边框左上角的 y 坐标，该边框定义扇形区所属的椭圆。
    ///</param>
    ///  <param name="width">
    ///  边框的宽度，该边框定义扇形区所属的椭圆。
    ///</param>
    ///  <param name="height">
    ///  边框的高度，该边框定义扇形区所属的椭圆。
    ///</param>
    ///  <param name="startAngle">
    ///  从 x 轴沿顺时针方向旋转到扇形区第一个边所测得的角度（以度为单位）。
    ///</param>
    ///  <param name="sweepAngle">
    ///  从 <paramref name="startAngle" />
    ///  参数沿顺时针方向旋转到扇形区第二个边所测得的角度（以度为单位）。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure FillPie(brush: DNBrush; x: Single; y: Single; width: Single; height: Single; startAngle: Single; sweepAngle: Single); overload;
    ///<summary>
    ///  填充由一对坐标、一个宽度、一个高度以及两条射线指定的椭圆所定义的扇形区的内部。
    ///</summary>
    ///  <param name="brush">
    ///  确定填充特性的 <see cref="T:System.Drawing.Brush" />
    ///  。
    ///</param>
    ///  <param name="x">
    ///  边框左上角的 x 坐标，该边框定义扇形区所属的椭圆。
    ///</param>
    ///  <param name="y">
    ///  边框左上角的 y 坐标，该边框定义扇形区所属的椭圆。
    ///</param>
    ///  <param name="width">
    ///  边框的宽度，该边框定义扇形区所属的椭圆。
    ///</param>
    ///  <param name="height">
    ///  边框的高度，该边框定义扇形区所属的椭圆。
    ///</param>
    ///  <param name="startAngle">
    ///  从 x 轴沿顺时针方向旋转到扇形区第一个边所测得的角度（以度为单位）。
    ///</param>
    ///  <param name="sweepAngle">
    ///  从 <paramref name="startAngle" />
    ///  参数沿顺时针方向旋转到扇形区第二个边所测得的角度（以度为单位）。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure FillPie(brush: DNBrush; x: Int32; y: Int32; width: Int32; height: Int32; startAngle: Int32; sweepAngle: Int32); overload;
    ///<summary>
    ///  填充 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  的内部。
    ///</summary>
    ///  <param name="brush">
    ///  确定填充特性的 <see cref="T:System.Drawing.Brush" />
    ///  。
    ///</param>
    ///  <param name="path"><see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  ，它表示要填充的路径。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="path" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure FillPath(brush: DNBrush; path: DNGraphicsPath);
    ///<summary>
    ///  填充由 <see cref="T:System.Drawing.PointF" />
    ///  结构数组定义的闭合基数样条曲线的内部。
    ///</summary>
    ///  <param name="brush">
    ///  确定填充特性的 <see cref="T:System.Drawing.Brush" />
    ///  。
    ///</param>
    ///  <param name="points"><see cref="T:System.Drawing.PointF" />
    ///  结构数组，这些结构定义样条。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="points" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure FillClosedCurve(brush: DNBrush; points: TArray<DNPointF>); overload;
    ///<summary>
    ///  使用指定的填充模式填充 <see cref="T:System.Drawing.PointF" />
    ///  结构数组定义的闭合基数样条曲线的内部。
    ///</summary>
    ///  <param name="brush">
    ///  确定填充特性的 <see cref="T:System.Drawing.Brush" />
    ///  。
    ///</param>
    ///  <param name="points"><see cref="T:System.Drawing.PointF" />
    ///  结构数组，这些结构定义样条。
    ///</param>
    ///  <param name="fillmode"><see cref="T:System.Drawing.Drawing2D.FillMode" />
    ///  枚举的成员，它确定填充曲线的方式。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="points" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure FillClosedCurve(brush: DNBrush; points: TArray<DNPointF>; fillmode: DNFillMode); overload;
    ///<summary>
    ///  使用指定的填充模式和张力填充 <see cref="T:System.Drawing.PointF" />
    ///  结构数组定义的闭合基数样条曲线的内部。
    ///</summary>
    ///  <param name="brush">
    ///  确定填充特性的 <see cref="T:System.Drawing.Brush" />
    ///  。
    ///</param>
    ///  <param name="points"><see cref="T:System.Drawing.PointF" />
    ///  结构数组，这些结构定义样条。
    ///</param>
    ///  <param name="fillmode"><see cref="T:System.Drawing.Drawing2D.FillMode" />
    ///  枚举的成员，它确定填充曲线的方式。
    ///</param>
    ///  <param name="tension">
    ///  大于或等于 0.0F 的值，该值指定曲线的张力。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="points" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure FillClosedCurve(brush: DNBrush; points: TArray<DNPointF>; fillmode: DNFillMode; tension: Single); overload;
    ///<summary>
    ///  填充由 <see cref="T:System.Drawing.Point" />
    ///  结构数组定义的闭合基数样条曲线的内部。
    ///</summary>
    ///  <param name="brush">
    ///  确定填充特性的 <see cref="T:System.Drawing.Brush" />
    ///  。
    ///</param>
    ///  <param name="points"><see cref="T:System.Drawing.Point" />
    ///  结构数组，这些结构定义样条。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="points" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure FillClosedCurve(brush: DNBrush; points: TArray<DNPoint>); overload;
    ///<summary>
    ///  使用指定的填充模式填充 <see cref="T:System.Drawing.Point" />
    ///  结构数组定义的闭合基数样条曲线的内部。
    ///</summary>
    ///  <param name="brush">
    ///  确定填充特性的 <see cref="T:System.Drawing.Brush" />
    ///  。
    ///</param>
    ///  <param name="points"><see cref="T:System.Drawing.Point" />
    ///  结构数组，这些结构定义样条。
    ///</param>
    ///  <param name="fillmode"><see cref="T:System.Drawing.Drawing2D.FillMode" />
    ///  枚举的成员，它确定填充曲线的方式。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="points" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure FillClosedCurve(brush: DNBrush; points: TArray<DNPoint>; fillmode: DNFillMode); overload;
    ///<summary>
    ///  使用指定的填充模式和张力填充 <see cref="T:System.Drawing.Point" />
    ///  结构数组定义的闭合基数样条曲线的内部。
    ///</summary>
    ///  <param name="brush">
    ///  确定填充特性的 <see cref="T:System.Drawing.Brush" />
    ///  。
    ///</param>
    ///  <param name="points"><see cref="T:System.Drawing.Point" />
    ///  结构数组，这些结构定义样条。
    ///</param>
    ///  <param name="fillmode"><see cref="T:System.Drawing.Drawing2D.FillMode" />
    ///  枚举的成员，它确定填充曲线的方式。
    ///</param>
    ///  <param name="tension">
    ///  大于或等于 0.0F 的值，该值指定曲线的张力。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="points" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure FillClosedCurve(brush: DNBrush; points: TArray<DNPoint>; fillmode: DNFillMode; tension: Single); overload;
    ///<summary>
    ///  在指定位置并且用指定的 <see cref="T:System.Drawing.Brush" />
    ///  和 <see cref="T:System.Drawing.Font" />
    ///  对象绘制指定的文本字符串。
    ///</summary>
    ///  <param name="s">
    ///  要绘制的字符串。
    ///</param>
    ///  <param name="font"><see cref="T:System.Drawing.Font" />
    ///  ，它定义字符串的文本格式。
    ///</param>
    ///  <param name="brush"><see cref="T:System.Drawing.Brush" />
    ///  ，它确定所绘制文本的颜色和纹理。
    ///</param>
    ///  <param name="point"><see cref="T:System.Drawing.PointF" />
    ///  结构，它指定所绘制文本的左上角。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="s" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawString(s: string; font: DNFont; brush: DNBrush; point: DNPointF); overload;
    ///<summary>
    ///  使用指定 <see cref="T:System.Drawing.StringFormat" />
    ///  的格式化特性，用指定的 <see cref="T:System.Drawing.Brush" />
    ///  和 <see cref="T:System.Drawing.Font" />
    ///  对象在指定的位置绘制指定的文本字符串。
    ///</summary>
    ///  <param name="s">
    ///  要绘制的字符串。
    ///</param>
    ///  <param name="font"><see cref="T:System.Drawing.Font" />
    ///  ，它定义字符串的文本格式。
    ///</param>
    ///  <param name="brush"><see cref="T:System.Drawing.Brush" />
    ///  ，它确定所绘制文本的颜色和纹理。
    ///</param>
    ///  <param name="x">
    ///  所绘制文本的左上角的 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  所绘制文本的左上角的 y 坐标。
    ///</param>
    ///  <param name="format"><see cref="T:System.Drawing.StringFormat" />
    ///  ，它指定应用于所绘制文本的格式化特性（如行距和对齐方式）。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="s" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawString(s: string; font: DNFont; brush: DNBrush; x: Single; y: Single; format: DNStringFormat); overload;
    ///<summary>
    ///  使用指定 <see cref="T:System.Drawing.StringFormat" />
    ///  的格式化特性，用指定的 <see cref="T:System.Drawing.Brush" />
    ///  和 <see cref="T:System.Drawing.Font" />
    ///  对象在指定的位置绘制指定的文本字符串。
    ///</summary>
    ///  <param name="s">
    ///  要绘制的字符串。
    ///</param>
    ///  <param name="font"><see cref="T:System.Drawing.Font" />
    ///  ，它定义字符串的文本格式。
    ///</param>
    ///  <param name="brush"><see cref="T:System.Drawing.Brush" />
    ///  ，它确定所绘制文本的颜色和纹理。
    ///</param>
    ///  <param name="point"><see cref="T:System.Drawing.PointF" />
    ///  结构，它指定所绘制文本的左上角。
    ///</param>
    ///  <param name="format"><see cref="T:System.Drawing.StringFormat" />
    ///  ，它指定应用于所绘制文本的格式化特性（如行距和对齐方式）。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="s" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawString(s: string; font: DNFont; brush: DNBrush; point: DNPointF; format: DNStringFormat); overload;
    function MeasureString(text: string; font: DNFont; layoutArea: DNSizeF; stringFormat: DNStringFormat; out charactersFitted: Int32; out linesFilled: Int32): DNSizeF; overload;
    ///<summary>
    ///  测量用指定的 <see cref="T:System.Drawing.Font" />
    ///  绘制并用指定的 <see cref="T:System.Drawing.StringFormat" />
    ///  格式化的指定字符串。
    ///</summary>
    ///  <param name="text">
    ///  要测量的字符串。
    ///</param>
    ///  <param name="font"><see cref="T:System.Drawing.Font" />
    ///  定义字符串的文本格式。
    ///</param>
    ///  <param name="origin"><see cref="T:System.Drawing.PointF" />
    ///  结构，它表示字符串的左上角。
    ///</param>
    ///  <param name="stringFormat"><see cref="T:System.Drawing.StringFormat" />
    ///  ，它表示字符串的格式化信息（如行距）。
    ///</param>
    ///<returns>
    ///  此方法返回 <see cref="T:System.Drawing.SizeF" />
    ///  结构，该结构表示 <paramref name="text" />
    ///  参数指定的、使用 <paramref name="font" />
    ///  参数和 <paramref name="stringFormat" />
    ///  参数绘制的字符串的大小，单位由 <see cref="P:System.Drawing.Graphics.PageUnit" />
    ///  属性指定。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="font" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    function MeasureString(text: string; font: DNFont; origin: DNPointF; stringFormat: DNStringFormat): DNSizeF; overload;
    ///<summary>
    ///  当在指定的布局区域内以指定的 <see cref="T:System.Drawing.Font" />
    ///  绘制时，测量指定的字符串。
    ///</summary>
    ///  <param name="text">
    ///  要测量的字符串。
    ///</param>
    ///  <param name="font"><see cref="T:System.Drawing.Font" />
    ///  定义字符串的文本格式。
    ///</param>
    ///  <param name="layoutArea"><see cref="T:System.Drawing.SizeF" />
    ///  结构，它指定文本的最大布局区域。
    ///</param>
    ///<returns>
    ///  此方法返回 <see cref="T:System.Drawing.SizeF" />
    ///  结构，该结构表示 <paramref name="text" />
    ///  参数指定的、使用 <paramref name="font" />
    ///  参数绘制的字符串的大小，单位由 <see cref="P:System.Drawing.Graphics.PageUnit" />
    ///  属性指定。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="font" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    function MeasureString(text: string; font: DNFont; layoutArea: DNSizeF): DNSizeF; overload;
    ///<summary>
    ///  测量用指定的 <see cref="T:System.Drawing.Font" />
    ///  绘制的指定字符串。
    ///</summary>
    ///  <param name="text">
    ///  要测量的字符串。
    ///</param>
    ///  <param name="font"><see cref="T:System.Drawing.Font" />
    ///  ，它定义字符串的格式。
    ///</param>
    ///  <param name="width">
    ///  字符串的最大宽度（以像素为单位）。
    ///</param>
    ///<returns>
    ///  此方法返回 <see cref="T:System.Drawing.SizeF" />
    ///  结构，该结构表示在 <paramref name="text" />
    ///  参数中指定的、使用 <paramref name="font" />
    ///  参数绘制的字符串的大小，单位由 <see cref="P:System.Drawing.Graphics.PageUnit" />
    ///  属性指定。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="font" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    function MeasureString(text: string; font: DNFont; width: Int32): DNSizeF; overload;
    ///<summary>
    ///  获取 <see cref="T:System.Drawing.Region" />
    ///  对象的数组，其中每个对象将字符位置的范围限定在指定字符串内。
    ///</summary>
    ///  <param name="text">
    ///  要测量的字符串。
    ///</param>
    ///  <param name="font"><see cref="T:System.Drawing.Font" />
    ///  ，它定义字符串的文本格式。
    ///</param>
    ///  <param name="layoutRect"><see cref="T:System.Drawing.RectangleF" />
    ///  结构，它指定字符串的布局矩形。
    ///</param>
    ///  <param name="stringFormat"><see cref="T:System.Drawing.StringFormat" />
    ///  ，它表示字符串的格式化信息（如行距）。
    ///</param>
    ///<returns>
    ///  此方法返回 <see cref="T:System.Drawing.Region" />
    ///  对象的数组，其中每个对象将字符位置的范围限定在指定字符串内。
    ///</returns>
    function MeasureCharacterRanges(text: string; font: DNFont; layoutRect: DNRectangleF; stringFormat: DNStringFormat): TArray<DNRegion>;
    ///<summary>
    ///  在指定坐标处绘制由指定的 <see cref="T:System.Drawing.Icon" />
    ///  表示的图像。
    ///</summary>
    ///  <param name="icon">
    ///  要绘制的 <see cref="T:System.Drawing.Icon" />
    ///  。
    ///</param>
    ///  <param name="x">
    ///  所绘制图像的左上角的 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  所绘制图像的左上角的 y 坐标。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="icon" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawIcon(icon: DNIcon; x: Int32; y: Int32); overload;
    ///<summary>
    ///  在 <see cref="T:System.Drawing.Icon" />
    ///  结构指定的区域内绘制指定的 <see cref="T:System.Drawing.Rectangle" />
    ///  表示的图像。
    ///</summary>
    ///  <param name="icon">
    ///  要绘制的 <see cref="T:System.Drawing.Icon" />
    ///  。
    ///</param>
    ///  <param name="targetRect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构，它指定显示面上结果图像的位置和大小。
    ///  将 <paramref name="icon" />
    ///  参数中包含的图像缩放为此矩形区域的尺寸。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="icon" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawIcon(icon: DNIcon; targetRect: DNRectangle); overload;
    ///<summary>
    ///  绘制指定的 <see cref="T:System.Drawing.Icon" />
    ///  表示的图像，而不缩放该图像。
    ///</summary>
    ///  <param name="icon">
    ///  要绘制的 <see cref="T:System.Drawing.Icon" />
    ///  。
    ///</param>
    ///  <param name="targetRect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构，它指定所绘制图像的位置和大小。
    ///  不缩放图像以适合此矩形的大小，但保留其原始大小。
    ///  如果该图像比该矩形大，将它剪裁到适合它的大小。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="icon" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawIconUnstretched(icon: DNIcon; targetRect: DNRectangle);
    ///<summary>
    ///  在指定的位置使用原始物理大小绘制指定的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="point"><see cref="T:System.Drawing.PointF" />
    ///  结构，它指定所绘制图像的左上角。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImage(image: DNImage; point: DNPointF); overload;
    ///<summary>
    ///  在指定的位置使用原始物理大小绘制指定的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="x">
    ///  所绘制图像的左上角的 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  所绘制图像的左上角的 y 坐标。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImage(image: DNImage; x: Single; y: Single); overload;
    ///<summary>
    ///  在指定位置并且按指定大小绘制指定的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="rect"><see cref="T:System.Drawing.RectangleF" />
    ///  结构，它指定所绘制图像的位置和大小。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImage(image: DNImage; rect: DNRectangleF); overload;
    ///<summary>
    ///  在指定位置并且按指定大小绘制指定的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="x">
    ///  所绘制图像的左上角的 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  所绘制图像的左上角的 y 坐标。
    ///</param>
    ///  <param name="width">
    ///  所绘制图像的宽度。
    ///</param>
    ///  <param name="height">
    ///  所绘制图像的高度。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImage(image: DNImage; x: Single; y: Single; width: Single; height: Single); overload;
    ///<summary>
    ///  在指定的位置使用原始物理大小绘制指定的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="point"><see cref="T:System.Drawing.Point" />
    ///  结构，它表示所绘制图像的左上角的位置。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImage(image: DNImage; point: DNPoint); overload;
    ///<summary>
    ///  在指定的位置使用图像的原始物理大小绘制指定的图像。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="point"><see cref="T:System.Drawing.Point" />
    ///  结构，它指定所绘制图像的左上角。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImageUnscaled(image: DNImage; point: DNPoint); overload;
    ///<summary>
    ///  在由坐标对指定的位置，使用图像的原始物理大小绘制指定的图像。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="x">
    ///  所绘制图像的左上角的 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  所绘制图像的左上角的 y 坐标。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImageUnscaled(image: DNImage; x: Int32; y: Int32); overload;
    ///<summary>
    ///  在指定的位置使用图像的原始物理大小绘制指定的图像。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="rect"><see cref="T:System.Drawing.Rectangle" />
    ///  ，它指定了所绘制图像的左上角。
    ///  该矩形的 X 和 Y 属性指定左上角。
    ///  宽度和高度属性被忽略。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImageUnscaled(image: DNImage; rect: DNRectangle); overload;
    ///<summary>
    ///  在指定的位置使用图像的原始物理大小绘制指定的图像。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="x">
    ///  所绘制图像的左上角的 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  所绘制图像的左上角的 y 坐标。
    ///</param>
    ///  <param name="width">
    ///  未使用。
    ///</param>
    ///  <param name="height">
    ///  未使用。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImageUnscaled(image: DNImage; x: Int32; y: Int32; width: Int32; height: Int32); overload;
    ///<summary>
    ///  在不进行缩放的情况下绘制指定的图像，并在需要时剪辑该图像以适合指定的矩形。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="rect">
    ///  要在其中绘制图像的 <see cref="T:System.Drawing.Rectangle" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImageUnscaledAndClipped(image: DNImage; rect: DNRectangle);
    ///<summary>
    ///  在指定位置并且按指定形状和大小绘制指定的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="destPoints">
    ///  由三个 <see cref="T:System.Drawing.PointF" />
    ///  结构组成的数组，这三个结构定义一个平行四边形。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImage(image: DNImage; destPoints: TArray<DNPointF>); overload;
    ///<summary>
    ///  在指定位置并且按指定形状和大小绘制指定的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="destPoints">
    ///  由三个 <see cref="T:System.Drawing.Point" />
    ///  结构组成的数组，这三个结构定义一个平行四边形。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImage(image: DNImage; destPoints: TArray<DNPoint>); overload;
    ///<summary>
    ///  在指定的位置绘制图像的一部分。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="x">
    ///  所绘制图像的左上角的 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  所绘制图像的左上角的 y 坐标。
    ///</param>
    ///  <param name="srcRect"><see cref="T:System.Drawing.RectangleF" />
    ///  结构，它指定 <see cref="T:System.Drawing.Image" />
    ///  中要绘制的部分。
    ///</param>
    ///  <param name="srcUnit"><see cref="T:System.Drawing.GraphicsUnit" />
    ///  枚举的成员，它指定 <paramref name="srcRect" />
    ///  参数所用的度量单位。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImage(image: DNImage; x: Single; y: Single; srcRect: DNRectangleF; srcUnit: DNGraphicsUnit); overload;
    ///<summary>
    ///  在指定的位置绘制图像的一部分。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="x">
    ///  所绘制图像的左上角的 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  所绘制图像的左上角的 y 坐标。
    ///</param>
    ///  <param name="srcRect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构，它指定 <paramref name="image" />
    ///  对象中要绘制的部分。
    ///</param>
    ///  <param name="srcUnit"><see cref="T:System.Drawing.GraphicsUnit" />
    ///  枚举的成员，它指定 <paramref name="srcRect" />
    ///  参数所用的度量单位。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImage(image: DNImage; x: Int32; y: Int32; srcRect: DNRectangle; srcUnit: DNGraphicsUnit); overload;
    ///<summary>
    ///  在指定位置并且按指定大小绘制指定的 <see cref="T:System.Drawing.Image" />
    ///  的指定部分。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="destRect"><see cref="T:System.Drawing.RectangleF" />
    ///  结构，它指定所绘制图像的位置和大小。
    ///  将图像进行缩放以适合该矩形。
    ///</param>
    ///  <param name="srcRect"><see cref="T:System.Drawing.RectangleF" />
    ///  结构，它指定 <paramref name="image" />
    ///  对象中要绘制的部分。
    ///</param>
    ///  <param name="srcUnit"><see cref="T:System.Drawing.GraphicsUnit" />
    ///  枚举的成员，它指定 <paramref name="srcRect" />
    ///  参数所用的度量单位。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImage(image: DNImage; destRect: DNRectangleF; srcRect: DNRectangleF; srcUnit: DNGraphicsUnit); overload;
    ///<summary>
    ///  在指定位置并且按指定大小绘制指定的 <see cref="T:System.Drawing.Image" />
    ///  的指定部分。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="destPoints">
    ///  由三个 <see cref="T:System.Drawing.PointF" />
    ///  结构组成的数组，这三个结构定义一个平行四边形。
    ///</param>
    ///  <param name="srcRect"><see cref="T:System.Drawing.RectangleF" />
    ///  结构，它指定 <paramref name="image" />
    ///  对象中要绘制的部分。
    ///</param>
    ///  <param name="srcUnit"><see cref="T:System.Drawing.GraphicsUnit" />
    ///  枚举的成员，它指定 <paramref name="srcRect" />
    ///  参数所用的度量单位。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImage(image: DNImage; destPoints: TArray<DNPointF>; srcRect: DNRectangleF; srcUnit: DNGraphicsUnit); overload;
    ///<summary>
    ///  在指定位置并且按指定大小绘制指定的 <see cref="T:System.Drawing.Image" />
    ///  的指定部分。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="destPoints">
    ///  由三个 <see cref="T:System.Drawing.PointF" />
    ///  结构组成的数组，这三个结构定义一个平行四边形。
    ///</param>
    ///  <param name="srcRect"><see cref="T:System.Drawing.RectangleF" />
    ///  结构，它指定 <paramref name="image" />
    ///  对象中要绘制的部分。
    ///</param>
    ///  <param name="srcUnit"><see cref="T:System.Drawing.GraphicsUnit" />
    ///  枚举的成员，它指定 <paramref name="srcRect" />
    ///  参数所用的度量单位。
    ///</param>
    ///  <param name="imageAttr"><see cref="T:System.Drawing.Imaging.ImageAttributes" />
    ///  ，它指定 <paramref name="image" />
    ///  对象的重新着色和伽玛信息。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImage(image: DNImage; destPoints: TArray<DNPointF>; srcRect: DNRectangleF; srcUnit: DNGraphicsUnit; imageAttr: DNImageAttributes); overload;
    ///<summary>
    ///  在指定位置并且按指定大小绘制指定的 <see cref="T:System.Drawing.Image" />
    ///  的指定部分。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="destPoints">
    ///  由三个 <see cref="T:System.Drawing.PointF" />
    ///  结构组成的数组，这三个结构定义一个平行四边形。
    ///</param>
    ///  <param name="srcRect"><see cref="T:System.Drawing.RectangleF" />
    ///  结构，它指定 <paramref name="image" />
    ///  对象中要绘制的部分。
    ///</param>
    ///  <param name="srcUnit"><see cref="T:System.Drawing.GraphicsUnit" />
    ///  枚举的成员，它指定 <paramref name="srcRect" />
    ///  参数所用的度量单位。
    ///</param>
    ///  <param name="imageAttr"><see cref="T:System.Drawing.Imaging.ImageAttributes" />
    ///  ，它指定 <paramref name="image" />
    ///  对象的重新着色和伽玛信息。
    ///</param>
    ///  <param name="callback"><see cref="T:System.Drawing.Graphics.DrawImageAbort" />
    ///  委托，它指定在绘制图像期间要调用的方法。
    ///  此方法被频繁调用以检查是否根据应用程序确定的条件停止 <see cref="M:System.Drawing.Graphics.DrawImage(System.Drawing.Image,System.Drawing.PointF[],System.Drawing.RectangleF,System.Drawing.GraphicsUnit,System.Drawing.Imaging.ImageAttributes,System.Drawing.Graphics.DrawImageAbort)" />
    ///  方法的执行。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImage(image: DNImage; destPoints: TArray<DNPointF>; srcRect: DNRectangleF; srcUnit: DNGraphicsUnit; imageAttr: DNImageAttributes; callback: DNGraphics_DrawImageAbort); overload;
    ///<summary>
    ///  在指定位置并且按指定大小绘制指定的 <see cref="T:System.Drawing.Image" />
    ///  的指定部分。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="destPoints">
    ///  由三个 <see cref="T:System.Drawing.PointF" />
    ///  结构组成的数组，这三个结构定义一个平行四边形。
    ///</param>
    ///  <param name="srcRect"><see cref="T:System.Drawing.RectangleF" />
    ///  结构，它指定 <paramref name="image" />
    ///  对象中要绘制的部分。
    ///</param>
    ///  <param name="srcUnit"><see cref="T:System.Drawing.GraphicsUnit" />
    ///  枚举的成员，它指定 <paramref name="srcRect" />
    ///  参数所用的度量单位。
    ///</param>
    ///  <param name="imageAttr"><see cref="T:System.Drawing.Imaging.ImageAttributes" />
    ///  ，它指定 <paramref name="image" />
    ///  对象的重新着色和伽玛信息。
    ///</param>
    ///  <param name="callback"><see cref="T:System.Drawing.Graphics.DrawImageAbort" />
    ///  委托，它指定在绘制图像期间要调用的方法。
    ///  此方法被频繁调用以检查是否根据应用程序确定的条件停止 <see cref="M:System.Drawing.Graphics.DrawImage(System.Drawing.Image,System.Drawing.PointF[],System.Drawing.RectangleF,System.Drawing.GraphicsUnit,System.Drawing.Imaging.ImageAttributes,System.Drawing.Graphics.DrawImageAbort,System.Int32)" />
    ///  方法的执行。
    ///</param>
    ///  <param name="callbackData">
    ///  一个值，它为 <see cref="T:System.Drawing.Graphics.DrawImageAbort" />
    ///  委托指定在检查是否停止执行 <see cref="M:System.Drawing.Graphics.DrawImage(System.Drawing.Image,System.Drawing.PointF[],System.Drawing.RectangleF,System.Drawing.GraphicsUnit,System.Drawing.Imaging.ImageAttributes,System.Drawing.Graphics.DrawImageAbort,System.Int32)" />
    ///  方法时要使用的附加数据。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImage(image: DNImage; destPoints: TArray<DNPointF>; srcRect: DNRectangleF; srcUnit: DNGraphicsUnit; imageAttr: DNImageAttributes; callback: DNGraphics_DrawImageAbort; callbackData: Int32); overload;
    ///<summary>
    ///  在指定位置并且按指定大小绘制指定的 <see cref="T:System.Drawing.Image" />
    ///  的指定部分。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="destPoints">
    ///  由三个 <see cref="T:System.Drawing.Point" />
    ///  结构组成的数组，这三个结构定义一个平行四边形。
    ///</param>
    ///  <param name="srcRect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构，它指定 <paramref name="image" />
    ///  对象中要绘制的部分。
    ///</param>
    ///  <param name="srcUnit"><see cref="T:System.Drawing.GraphicsUnit" />
    ///  枚举的成员，它指定 <paramref name="srcRect" />
    ///  参数所用的度量单位。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImage(image: DNImage; destPoints: TArray<DNPoint>; srcRect: DNRectangle; srcUnit: DNGraphicsUnit); overload;
    ///<summary>
    ///  在指定位置绘制指定的 <see cref="T:System.Drawing.Image" />
    ///  的指定部分。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="destPoints">
    ///  由三个 <see cref="T:System.Drawing.Point" />
    ///  结构组成的数组，这三个结构定义一个平行四边形。
    ///</param>
    ///  <param name="srcRect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构，它指定 <paramref name="image" />
    ///  对象中要绘制的部分。
    ///</param>
    ///  <param name="srcUnit"><see cref="T:System.Drawing.GraphicsUnit" />
    ///  枚举的成员，它指定 <paramref name="srcRect" />
    ///  参数所用的度量单位。
    ///</param>
    ///  <param name="imageAttr"><see cref="T:System.Drawing.Imaging.ImageAttributes" />
    ///  ，它指定 <paramref name="image" />
    ///  对象的重新着色和伽玛信息。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImage(image: DNImage; destPoints: TArray<DNPoint>; srcRect: DNRectangle; srcUnit: DNGraphicsUnit; imageAttr: DNImageAttributes); overload;
    ///<summary>
    ///  在指定位置并且按指定大小绘制指定的 <see cref="T:System.Drawing.Image" />
    ///  的指定部分。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="destPoints">
    ///  由三个 <see cref="T:System.Drawing.PointF" />
    ///  结构组成的数组，这三个结构定义一个平行四边形。
    ///</param>
    ///  <param name="srcRect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构，它指定 <paramref name="image" />
    ///  对象中要绘制的部分。
    ///</param>
    ///  <param name="srcUnit"><see cref="T:System.Drawing.GraphicsUnit" />
    ///  枚举的成员，它指定 <paramref name="srcRect" />
    ///  参数所用的度量单位。
    ///</param>
    ///  <param name="imageAttr"><see cref="T:System.Drawing.Imaging.ImageAttributes" />
    ///  ，它指定 <paramref name="image" />
    ///  对象的重新着色和伽玛信息。
    ///</param>
    ///  <param name="callback"><see cref="T:System.Drawing.Graphics.DrawImageAbort" />
    ///  委托，它指定在绘制图像期间要调用的方法。
    ///  此方法被频繁调用以检查是否根据应用程序确定的条件停止 <see cref="M:System.Drawing.Graphics.DrawImage(System.Drawing.Image,System.Drawing.Point[],System.Drawing.Rectangle,System.Drawing.GraphicsUnit,System.Drawing.Imaging.ImageAttributes,System.Drawing.Graphics.DrawImageAbort)" />
    ///  方法的执行。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImage(image: DNImage; destPoints: TArray<DNPoint>; srcRect: DNRectangle; srcUnit: DNGraphicsUnit; imageAttr: DNImageAttributes; callback: DNGraphics_DrawImageAbort); overload;
    ///<summary>
    ///  在指定位置并且按指定大小绘制指定的 <see cref="T:System.Drawing.Image" />
    ///  的指定部分。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="destPoints">
    ///  由三个 <see cref="T:System.Drawing.PointF" />
    ///  结构组成的数组，这三个结构定义一个平行四边形。
    ///</param>
    ///  <param name="srcRect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构，它指定 <paramref name="image" />
    ///  对象中要绘制的部分。
    ///</param>
    ///  <param name="srcUnit"><see cref="T:System.Drawing.GraphicsUnit" />
    ///  枚举的成员，它指定 <paramref name="srcRect" />
    ///  参数所用的度量单位。
    ///</param>
    ///  <param name="imageAttr"><see cref="T:System.Drawing.Imaging.ImageAttributes" />
    ///  ，它指定 <paramref name="image" />
    ///  对象的重新着色和伽玛信息。
    ///</param>
    ///  <param name="callback"><see cref="T:System.Drawing.Graphics.DrawImageAbort" />
    ///  委托，它指定在绘制图像期间要调用的方法。
    ///  此方法被频繁调用以检查是否根据应用程序确定的条件停止 <see cref="M:System.Drawing.Graphics.DrawImage(System.Drawing.Image,System.Drawing.Point[],System.Drawing.Rectangle,System.Drawing.GraphicsUnit,System.Drawing.Imaging.ImageAttributes,System.Drawing.Graphics.DrawImageAbort,System.Int32)" />
    ///  方法的执行。
    ///</param>
    ///  <param name="callbackData">
    ///  一个值，它为 <see cref="T:System.Drawing.Graphics.DrawImageAbort" />
    ///  委托指定在检查是否停止执行 <see cref="M:System.Drawing.Graphics.DrawImage(System.Drawing.Image,System.Drawing.Point[],System.Drawing.Rectangle,System.Drawing.GraphicsUnit,System.Drawing.Imaging.ImageAttributes,System.Drawing.Graphics.DrawImageAbort,System.Int32)" />
    ///  方法时要使用的附加数据。
    ///</param>
    procedure DrawImage(image: DNImage; destPoints: TArray<DNPoint>; srcRect: DNRectangle; srcUnit: DNGraphicsUnit; imageAttr: DNImageAttributes; callback: DNGraphics_DrawImageAbort; callbackData: Int32); overload;
    ///<summary>
    ///  在指定位置并且按指定大小绘制指定的 <see cref="T:System.Drawing.Image" />
    ///  的指定部分。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="destRect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构，它指定所绘制图像的位置和大小。
    ///  将图像进行缩放以适合该矩形。
    ///</param>
    ///  <param name="srcX">
    ///  要绘制的源图像部分的左上角的 x 坐标。
    ///</param>
    ///  <param name="srcY">
    ///  要绘制的源图像部分的左上角的 y 坐标。
    ///</param>
    ///  <param name="srcWidth">
    ///  要绘制的源图像部分的宽度。
    ///</param>
    ///  <param name="srcHeight">
    ///  要绘制的源图像部分的高度。
    ///</param>
    ///  <param name="srcUnit"><see cref="T:System.Drawing.GraphicsUnit" />
    ///  枚举的成员，它指定用于确定源矩形的度量单位。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImage(image: DNImage; destRect: DNRectangle; srcX: Single; srcY: Single; srcWidth: Single; srcHeight: Single; srcUnit: DNGraphicsUnit); overload;
    ///<summary>
    ///  在指定位置并且按指定大小绘制指定的 <see cref="T:System.Drawing.Image" />
    ///  的指定部分。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="destRect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构，它指定所绘制图像的位置和大小。
    ///  将图像进行缩放以适合该矩形。
    ///</param>
    ///  <param name="srcX">
    ///  要绘制的源图像部分的左上角的 x 坐标。
    ///</param>
    ///  <param name="srcY">
    ///  要绘制的源图像部分的左上角的 y 坐标。
    ///</param>
    ///  <param name="srcWidth">
    ///  要绘制的源图像部分的宽度。
    ///</param>
    ///  <param name="srcHeight">
    ///  要绘制的源图像部分的高度。
    ///</param>
    ///  <param name="srcUnit"><see cref="T:System.Drawing.GraphicsUnit" />
    ///  枚举的成员，它指定用于确定源矩形的度量单位。
    ///</param>
    ///  <param name="imageAttrs"><see cref="T:System.Drawing.Imaging.ImageAttributes" />
    ///  ，它指定 <paramref name="image" />
    ///  对象的重新着色和伽玛信息。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImage(image: DNImage; destRect: DNRectangle; srcX: Single; srcY: Single; srcWidth: Single; srcHeight: Single; srcUnit: DNGraphicsUnit; imageAttrs: DNImageAttributes); overload;
    ///<summary>
    ///  在指定位置并且按指定大小绘制指定的 <see cref="T:System.Drawing.Image" />
    ///  的指定部分。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="destRect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构，它指定所绘制图像的位置和大小。
    ///  将图像进行缩放以适合该矩形。
    ///</param>
    ///  <param name="srcX">
    ///  要绘制的源图像部分的左上角的 x 坐标。
    ///</param>
    ///  <param name="srcY">
    ///  要绘制的源图像部分的左上角的 y 坐标。
    ///</param>
    ///  <param name="srcWidth">
    ///  要绘制的源图像部分的宽度。
    ///</param>
    ///  <param name="srcHeight">
    ///  要绘制的源图像部分的高度。
    ///</param>
    ///  <param name="srcUnit"><see cref="T:System.Drawing.GraphicsUnit" />
    ///  枚举的成员，它指定用于确定源矩形的度量单位。
    ///</param>
    ///  <param name="imageAttrs"><see cref="T:System.Drawing.Imaging.ImageAttributes" />
    ///  ，它指定 <paramref name="image" />
    ///  对象的重新着色和伽玛信息。
    ///</param>
    ///  <param name="callback"><see cref="T:System.Drawing.Graphics.DrawImageAbort" />
    ///  委托，它指定在绘制图像期间要调用的方法。
    ///  此方法被频繁调用以检查是否根据应用程序确定的条件停止 <see cref="M:System.Drawing.Graphics.DrawImage(System.Drawing.Image,System.Drawing.Rectangle,System.Single,System.Single,System.Single,System.Single,System.Drawing.GraphicsUnit,System.Drawing.Imaging.ImageAttributes,System.Drawing.Graphics.DrawImageAbort)" />
    ///  方法的执行。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImage(image: DNImage; destRect: DNRectangle; srcX: Single; srcY: Single; srcWidth: Single; srcHeight: Single; srcUnit: DNGraphicsUnit; imageAttrs: DNImageAttributes; callback: DNGraphics_DrawImageAbort); overload;
    ///<summary>
    ///  在指定位置并且按指定大小绘制指定的 <see cref="T:System.Drawing.Image" />
    ///  的指定部分。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="destRect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构，它指定所绘制图像的位置和大小。
    ///  将图像进行缩放以适合该矩形。
    ///</param>
    ///  <param name="srcX">
    ///  要绘制的源图像部分的左上角的 x 坐标。
    ///</param>
    ///  <param name="srcY">
    ///  要绘制的源图像部分的左上角的 y 坐标。
    ///</param>
    ///  <param name="srcWidth">
    ///  要绘制的源图像部分的宽度。
    ///</param>
    ///  <param name="srcHeight">
    ///  要绘制的源图像部分的高度。
    ///</param>
    ///  <param name="srcUnit"><see cref="T:System.Drawing.GraphicsUnit" />
    ///  枚举的成员，它指定用于确定源矩形的度量单位。
    ///</param>
    ///  <param name="imageAttrs"><see cref="T:System.Drawing.Imaging.ImageAttributes" />
    ///  ，它指定 <paramref name="image" />
    ///  对象的重新着色和伽玛信息。
    ///</param>
    ///  <param name="callback"><see cref="T:System.Drawing.Graphics.DrawImageAbort" />
    ///  委托，它指定在绘制图像期间要调用的方法。
    ///  此方法被频繁调用以检查是否根据应用程序确定的条件停止 <see cref="M:System.Drawing.Graphics.DrawImage(System.Drawing.Image,System.Drawing.Rectangle,System.Single,System.Single,System.Single,System.Single,System.Drawing.GraphicsUnit,System.Drawing.Imaging.ImageAttributes,System.Drawing.Graphics.DrawImageAbort,System.IntPtr)" />
    ///  方法的执行。
    ///</param>
    ///  <param name="callbackData">
    ///  一个值，它为 <see cref="T:System.Drawing.Graphics.DrawImageAbort" />
    ///  委托指定在检查是否停止执行 <see langword="DrawImage" />
    ///  方法时要使用的附加数据。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImage(image: DNImage; destRect: DNRectangle; srcX: Single; srcY: Single; srcWidth: Single; srcHeight: Single; srcUnit: DNGraphicsUnit; imageAttrs: DNImageAttributes; callback: DNGraphics_DrawImageAbort; callbackData: IntPtr); overload;
    ///<summary>
    ///  在指定位置并且按指定大小绘制指定的 <see cref="T:System.Drawing.Image" />
    ///  的指定部分。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="destRect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构，它指定所绘制图像的位置和大小。
    ///  将图像进行缩放以适合该矩形。
    ///</param>
    ///  <param name="srcX">
    ///  要绘制的源图像部分的左上角的 x 坐标。
    ///</param>
    ///  <param name="srcY">
    ///  要绘制的源图像部分的左上角的 y 坐标。
    ///</param>
    ///  <param name="srcWidth">
    ///  要绘制的源图像部分的宽度。
    ///</param>
    ///  <param name="srcHeight">
    ///  要绘制的源图像部分的高度。
    ///</param>
    ///  <param name="srcUnit"><see cref="T:System.Drawing.GraphicsUnit" />
    ///  枚举的成员，它指定用于确定源矩形的度量单位。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImage(image: DNImage; destRect: DNRectangle; srcX: Int32; srcY: Int32; srcWidth: Int32; srcHeight: Int32; srcUnit: DNGraphicsUnit); overload;
    ///<summary>
    ///  在指定位置并且按指定大小绘制指定的 <see cref="T:System.Drawing.Image" />
    ///  的指定部分。
    ///</summary>
    ///  <param name="image">
    ///  要绘制的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="destRect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构，它指定所绘制图像的位置和大小。
    ///  将图像进行缩放以适合该矩形。
    ///</param>
    ///  <param name="srcX">
    ///  要绘制的源图像部分的左上角的 x 坐标。
    ///</param>
    ///  <param name="srcY">
    ///  要绘制的源图像部分的左上角的 y 坐标。
    ///</param>
    ///  <param name="srcWidth">
    ///  要绘制的源图像部分的宽度。
    ///</param>
    ///  <param name="srcHeight">
    ///  要绘制的源图像部分的高度。
    ///</param>
    ///  <param name="srcUnit"><see cref="T:System.Drawing.GraphicsUnit" />
    ///  枚举的成员，它指定用于确定源矩形的度量单位。
    ///</param>
    ///  <param name="imageAttr"><see cref="T:System.Drawing.Imaging.ImageAttributes" />
    ///  ，它指定 <paramref name="image" />
    ///  的重新着色和伽玛信息。
    ///</param>
    ///  <param name="callback"><see cref="T:System.Drawing.Graphics.DrawImageAbort" />
    ///  委托，它指定在绘制图像期间要调用的方法。
    ///  此方法被频繁调用以检查是否根据应用程序确定的条件停止 <see cref="M:System.Drawing.Graphics.DrawImage(System.Drawing.Image,System.Drawing.Rectangle,System.Int32,System.Int32,System.Int32,System.Int32,System.Drawing.GraphicsUnit,System.Drawing.Imaging.ImageAttributes,System.Drawing.Graphics.DrawImageAbort)" />
    ///  方法的执行。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure DrawImage(image: DNImage; destRect: DNRectangle; srcX: Int32; srcY: Int32; srcWidth: Int32; srcHeight: Int32; srcUnit: DNGraphicsUnit; imageAttr: DNImageAttributes; callback: DNGraphics_DrawImageAbort); overload;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Graphics" />
    ///  的剪辑区域设置为指定 <see cref="T:System.Drawing.Graphics" />
    ///  的 <see langword="Clip" />
    ///  属性。
    ///</summary>
    ///  <param name="g"><see cref="T:System.Drawing.Graphics" />
    ///  ，从该对象中获取新剪辑区域。
    ///</param>
    procedure SetClip(g: DNGraphics); overload;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Graphics" />
    ///  的剪辑区域设置为当前剪辑区域和指定的 <see cref="T:System.Drawing.Graphics" />
    ///  的 <see cref="P:System.Drawing.Graphics.Clip" />
    ///  属性指定的组合操作的结果。
    ///</summary>
    ///  <param name="g"><see cref="T:System.Drawing.Graphics" />
    ///  ，它指定要组合的剪辑区域。
    ///</param>
    ///  <param name="combineMode"><see cref="T:System.Drawing.Drawing2D.CombineMode" />
    ///  枚举的成员，它指定要使用的组合操作。
    ///</param>
    procedure SetClip(g: DNGraphics; combineMode: DNCombineMode); overload;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Graphics" />
    ///  的剪辑区域设置为当前剪辑区域与 <see cref="T:System.Drawing.Rectangle" />
    ///  结构所指定矩形的组合结果。
    ///</summary>
    ///  <param name="rect">
    ///  要组合的 <see cref="T:System.Drawing.Rectangle" />
    ///  结构。
    ///</param>
    ///  <param name="combineMode"><see cref="T:System.Drawing.Drawing2D.CombineMode" />
    ///  枚举的成员，它指定要使用的组合操作。
    ///</param>
    procedure SetClip(rect: DNRectangle; combineMode: DNCombineMode); overload;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Graphics" />
    ///  的剪辑区域设置为 <see cref="T:System.Drawing.RectangleF" />
    ///  结构指定的矩形。
    ///</summary>
    ///  <param name="rect"><see cref="T:System.Drawing.RectangleF" />
    ///  结构，它表示新的剪辑区域。
    ///</param>
    procedure SetClip(rect: DNRectangleF); overload;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Graphics" />
    ///  的剪辑区域设置为当前剪辑区域与 <see cref="T:System.Drawing.RectangleF" />
    ///  结构所指定矩形的组合结果。
    ///</summary>
    ///  <param name="rect">
    ///  要组合的 <see cref="T:System.Drawing.RectangleF" />
    ///  结构。
    ///</param>
    ///  <param name="combineMode"><see cref="T:System.Drawing.Drawing2D.CombineMode" />
    ///  枚举的成员，它指定要使用的组合操作。
    ///</param>
    procedure SetClip(rect: DNRectangleF; combineMode: DNCombineMode); overload;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Graphics" />
    ///  的剪辑区域设置为指定的 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</summary>
    ///  <param name="path"><see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  ，它表示新的剪辑区域。
    ///</param>
    procedure SetClip(path: DNGraphicsPath); overload;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Graphics" />
    ///  的剪辑区域设置为当前剪辑区域与指定 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  的组合结果。
    ///</summary>
    ///  <param name="path">
    ///  要组合的 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</param>
    ///  <param name="combineMode"><see cref="T:System.Drawing.Drawing2D.CombineMode" />
    ///  枚举的成员，它指定要使用的组合操作。
    ///</param>
    procedure SetClip(path: DNGraphicsPath; combineMode: DNCombineMode); overload;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Graphics" />
    ///  的剪辑区域更新为当前剪辑区域与指定 <see cref="T:System.Drawing.Rectangle" />
    ///  结构的交集。
    ///</summary>
    ///  <param name="rect">
    ///  与当前剪辑区域相交的 <see cref="T:System.Drawing.Rectangle" />
    ///  结构。
    ///</param>
    procedure IntersectClip(rect: DNRectangle); overload;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Graphics" />
    ///  的剪辑区域更新为当前剪辑区域与指定 <see cref="T:System.Drawing.RectangleF" />
    ///  结构的交集。
    ///</summary>
    ///  <param name="rect">
    ///  与当前剪辑区域相交的 <see cref="T:System.Drawing.RectangleF" />
    ///  结构。
    ///</param>
    procedure IntersectClip(rect: DNRectangleF); overload;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Graphics" />
    ///  对象的剪辑区域更新为当前剪辑区域与指定 <see cref="T:System.Drawing.Region" />
    ///  的交集。
    ///</summary>
    ///  <param name="region">
    ///  要与当前区域交叉的 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</param>
    procedure IntersectClip(region: DNRegion); overload;
    ///<summary>
    ///  更新此 <see cref="T:System.Drawing.Graphics" />
    ///  的剪辑区域，以排除 <see cref="T:System.Drawing.Rectangle" />
    ///  结构所指定的区域。
    ///</summary>
    ///  <param name="rect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构，它指定要从剪辑区域排除的矩形。
    ///</param>
    procedure ExcludeClip(rect: DNRectangle); overload;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Graphics" />
    ///  的剪辑区域重置为无限区域。
    ///</summary>
    procedure ResetClip;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Graphics" />
    ///  的剪辑区域沿水平方向和垂直方向平移指定的量。
    ///</summary>
    ///  <param name="dx">
    ///  平移的 x 坐标。
    ///</param>
    ///  <param name="dy">
    ///  平移的 y 坐标。
    ///</param>
    procedure TranslateClip(dx: Single; dy: Single); overload;
    ///<summary>
    ///  指示由一对坐标指定的点是否包含在此 <see cref="T:System.Drawing.Graphics" />
    ///  的可见剪辑区域内。
    ///</summary>
    ///  <param name="x">
    ///  要测试其可见性的点的 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  要测试其可见性的点的 y 坐标。
    ///</param>
    ///<returns>
    ///  如果由 <paramref name="x" />
    ///  和 <paramref name="y" />
    ///  参数定义的点包含在此 <see cref="T:System.Drawing.Graphics" />
    ///  的可见剪辑区域内，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(x: Int32; y: Int32): Boolean; overload;
    ///<summary>
    ///  指示指定的 <see cref="T:System.Drawing.Point" />
    ///  结构是否包含在此 <see cref="T:System.Drawing.Graphics" />
    ///  的可见剪辑区域内。
    ///</summary>
    ///  <param name="point">
    ///  要测试其可见性的 <see cref="T:System.Drawing.Point" />
    ///  结构。
    ///</param>
    ///<returns>
    ///  如果 <paramref name="point" />
    ///  参数指定的点包含在此 <see cref="T:System.Drawing.Graphics" />
    ///  的可见剪辑区域内，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(point: DNPoint): Boolean; overload;
    ///<summary>
    ///  指示由一对坐标指定的点是否包含在此 <see cref="T:System.Drawing.Graphics" />
    ///  的可见剪辑区域内。
    ///</summary>
    ///  <param name="x">
    ///  要测试其可见性的点的 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  要测试其可见性的点的 y 坐标。
    ///</param>
    ///<returns>
    ///  如果由 <paramref name="x" />
    ///  和 <paramref name="y" />
    ///  参数定义的点包含在此 <see cref="T:System.Drawing.Graphics" />
    ///  的可见剪辑区域内，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(x: Single; y: Single): Boolean; overload;
    ///<summary>
    ///  指示指定的 <see cref="T:System.Drawing.PointF" />
    ///  结构是否包含在此 <see cref="T:System.Drawing.Graphics" />
    ///  的可见剪辑区域内。
    ///</summary>
    ///  <param name="point">
    ///  要测试其可见性的 <see cref="T:System.Drawing.PointF" />
    ///  结构。
    ///</param>
    ///<returns>
    ///  如果 <paramref name="point" />
    ///  参数指定的点包含在此 <see cref="T:System.Drawing.Graphics" />
    ///  的可见剪辑区域内，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(point: DNPointF): Boolean; overload;
    ///<summary>
    ///  指示由一对坐标、一个宽度和一个高度指定的矩形是否包含在此 <see cref="T:System.Drawing.Graphics" />
    ///  的可见剪辑区域内。
    ///</summary>
    ///  <param name="x">
    ///  要测试其可见性的矩形的左上角的 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  要测试其可见性的矩形的左上角的 y 坐标。
    ///</param>
    ///  <param name="width">
    ///  要测试其可见性的矩形的宽度。
    ///</param>
    ///  <param name="height">
    ///  要测试其可见性的矩形的高度。
    ///</param>
    ///<returns>
    ///  如果 <paramref name="x" />
    ///  、<paramref name="y" />
    ///  、<paramref name="width" />
    ///  和 <paramref name="height" />
    ///  参数定义的矩形包含在此 <see cref="T:System.Drawing.Graphics" />
    ///  的可见剪辑区域内，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(x: Int32; y: Int32; width: Int32; height: Int32): Boolean; overload;
    ///<summary>
    ///  指示由一对坐标、一个宽度和一个高度指定的矩形是否包含在此 <see cref="T:System.Drawing.Graphics" />
    ///  的可见剪辑区域内。
    ///</summary>
    ///  <param name="x">
    ///  要测试其可见性的矩形的左上角的 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  要测试其可见性的矩形的左上角的 y 坐标。
    ///</param>
    ///  <param name="width">
    ///  要测试其可见性的矩形的宽度。
    ///</param>
    ///  <param name="height">
    ///  要测试其可见性的矩形的高度。
    ///</param>
    ///<returns>
    ///  如果 <paramref name="x" />
    ///  、<paramref name="y" />
    ///  、<paramref name="width" />
    ///  和 <paramref name="height" />
    ///  参数定义的矩形包含在此 <see cref="T:System.Drawing.Graphics" />
    ///  的可见剪辑区域内，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(x: Single; y: Single; width: Single; height: Single): Boolean; overload;
    ///<summary>
    ///  指示 <see cref="T:System.Drawing.RectangleF" />
    ///  结构指定的矩形是否包含在此 <see cref="T:System.Drawing.Graphics" />
    ///  的可见剪辑区域内。
    ///</summary>
    ///  <param name="rect">
    ///  要测试其可见性的 <see cref="T:System.Drawing.RectangleF" />
    ///  结构。
    ///</param>
    ///<returns>
    ///  如果 <paramref name="rect" />
    ///  参数指定的矩形包含在此 <see cref="T:System.Drawing.Graphics" />
    ///  的可见剪辑区域内，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(rect: DNRectangleF): Boolean; overload;
    ///<summary>
    ///  保存具有此 <see cref="T:System.Drawing.Graphics" />
    ///  的当前状态的图形容器，然后打开并使用具有指定缩放变形的新图形容器。
    ///</summary>
    ///  <param name="dstrect"><see cref="T:System.Drawing.RectangleF" />
    ///  结构，它与 <paramref name="srcrect" />
    ///  参数一起为新的图形容器指定缩放变换。
    ///</param>
    ///  <param name="srcrect"><see cref="T:System.Drawing.RectangleF" />
    ///  结构，它与 <paramref name="dstrect" />
    ///  参数一起为新的图形容器指定缩放变换。
    ///</param>
    ///  <param name="unit"><see cref="T:System.Drawing.GraphicsUnit" />
    ///  枚举的成员，它指定容器的度量单位。
    ///</param>
    ///<returns>
    ///  此方法返回一个 <see cref="T:System.Drawing.Drawing2D.GraphicsContainer" />
    ///  ，该对象表示该方法调用运行时此 <see cref="T:System.Drawing.Graphics" />
    ///  的状态。
    ///</returns>
    function BeginContainer(dstrect: DNRectangleF; srcrect: DNRectangleF; &unit: DNGraphicsUnit): DNGraphicsContainer; overload;
    ///<summary>
    ///  保存具有此 <see cref="T:System.Drawing.Graphics" />
    ///  的当前状态的图形容器，然后打开并使用具有指定缩放变形的新图形容器。
    ///</summary>
    ///  <param name="dstrect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构，它与 <paramref name="srcrect" />
    ///  参数一起为容器指定缩放变换。
    ///</param>
    ///  <param name="srcrect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构，它与 <paramref name="dstrect" />
    ///  参数一起为容器指定缩放变换。
    ///</param>
    ///  <param name="unit"><see cref="T:System.Drawing.GraphicsUnit" />
    ///  枚举的成员，它指定容器的度量单位。
    ///</param>
    ///<returns>
    ///  此方法返回一个 <see cref="T:System.Drawing.Drawing2D.GraphicsContainer" />
    ///  ，该对象表示该方法调用运行时此 <see cref="T:System.Drawing.Graphics" />
    ///  的状态。
    ///</returns>
    function BeginContainer(dstrect: DNRectangle; srcrect: DNRectangle; &unit: DNGraphicsUnit): DNGraphicsContainer; overload;
    ///<summary>
    ///  向当前 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  添加注释。
    ///</summary>
    ///  <param name="data">
    ///  包含注释的字节的数组。
    ///</param>
    procedure AddMetafileComment(data: TArray<Byte>);
    function GetLifetimeService: DDN.mscorlib.DNObject;
    function InitializeLifetimeService: DDN.mscorlib.DNObject;
    function CreateObjRef(requestedType: DDN.mscorlib.DNType): DDN.mscorlib.DNObjRef;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取一个值，该值指定如何将合成图像绘制到此 <see cref="T:System.Drawing.Graphics" />
    ///  。
    ///</summary>
    ///<returns>
    ///  此属性指定 <see cref="T:System.Drawing.Drawing2D.CompositingMode" />
    ///  枚举的成员。
    ///  默认值为 <see cref="F:System.Drawing.Drawing2D.CompositingMode.SourceOver" />
    ///  。
    ///</returns>
    property CompositingMode: DNCompositingMode read get_CompositingMode write set_CompositingMode;
    ///<summary>
    ///  为抵色处理和阴影画笔获取或设置此 <see cref="T:System.Drawing.Graphics" />
    ///  的呈现原点。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Point" />
    ///  结构，它表示 8 位/像素和 16 位/像素抖色处理的抖色原点，还用于设置阴影画笔的原点。
    ///</returns>
    property RenderingOrigin: DNPoint read get_RenderingOrigin write set_RenderingOrigin;
    ///<summary>
    ///  获取或设置绘制到此 <see cref="T:System.Drawing.Graphics" />
    ///  的合成图像的呈现质量。
    ///</summary>
    ///<returns>
    ///  此属性指定 <see cref="T:System.Drawing.Drawing2D.CompositingQuality" />
    ///  枚举的成员。
    ///  默认值为 <see cref="F:System.Drawing.Drawing2D.CompositingQuality.Default" />
    ///  。
    ///</returns>
    property CompositingQuality: DNCompositingQuality read get_CompositingQuality write set_CompositingQuality;
    ///<summary>
    ///  获取或设置与此 <see cref="T:System.Drawing.Graphics" />
    ///  关联的文本的呈现模式。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Text.TextRenderingHint" />
    ///  值之一。
    ///</returns>
    property TextRenderingHint: DNTextRenderingHint read get_TextRenderingHint write set_TextRenderingHint;
    ///<summary>
    ///  获取或设置呈现文本的灰度校正值。
    ///</summary>
    ///<returns>
    ///  用于呈现抗锯齿和 ClearType 文本的伽玛校正值。
    ///</returns>
    property TextContrast: Int32 read get_TextContrast write set_TextContrast;
    ///<summary>
    ///  获取或设置此 <see cref="T:System.Drawing.Graphics" />
    ///  的呈现质量。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Drawing2D.SmoothingMode" />
    ///  值之一。
    ///</returns>
    property SmoothingMode: DNSmoothingMode read get_SmoothingMode write set_SmoothingMode;
    ///<summary>
    ///  获取或设置一个值，该值指定在呈现此 <see cref="T:System.Drawing.Graphics" />
    ///  的过程中像素如何偏移。
    ///</summary>
    ///<returns>
    ///  此属性指定 <see cref="T:System.Drawing.Drawing2D.PixelOffsetMode" />
    ///  枚举的成员。
    ///</returns>
    property PixelOffsetMode: DNPixelOffsetMode read get_PixelOffsetMode write set_PixelOffsetMode;
    ///<summary>
    ///  获取或设置与此 <see cref="T:System.Drawing.Graphics" />
    ///  关联的插补模式。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Drawing2D.InterpolationMode" />
    ///  值之一。
    ///</returns>
    property InterpolationMode: DNInterpolationMode read get_InterpolationMode write set_InterpolationMode;
    ///<summary>
    ///  获取或设置此 <see cref="T:System.Drawing.Graphics" />
    ///  的几何世界变换的副本。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  副本，表示此 <see cref="T:System.Drawing.Graphics" />
    ///  的几何世界变换。
    ///</returns>
    property Transform: DNMatrix read get_Transform write set_Transform;
    ///<summary>
    ///  获取或设置用于此 <see cref="T:System.Drawing.Graphics" />
    ///  中的页坐标的度量单位。
    ///</summary>
    ///<returns>
    ///  除 <see cref="F:System.Drawing.GraphicsUnit.World" />
    ///  以外的 <see cref="T:System.Drawing.GraphicsUnit" />
    ///  值之一。
    ///</returns>
    ///<exception cref="T:System.ComponentModel.InvalidEnumArgumentException"><see cref="P:System.Drawing.Graphics.PageUnit" />
    ///  设置为 <see cref="F:System.Drawing.GraphicsUnit.World" />
    ///  , ，这不是物理单元。
    ///</exception>
    property PageUnit: DNGraphicsUnit read get_PageUnit write set_PageUnit;
    ///<summary>
    ///  获取或设置此 <see cref="T:System.Drawing.Graphics" />
    ///  的世界单位和页单位之间的比例。
    ///</summary>
    ///<returns>
    ///  此属性指定此 <see cref="T:System.Drawing.Graphics" />
    ///  的世界单位和页单位之间的比例值。
    ///</returns>
    property PageScale: Single read get_PageScale write set_PageScale;
    ///<summary>
    ///  获取此 <see cref="T:System.Drawing.Graphics" />
    ///  的水平分辨率。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.Graphics" />
    ///  支持的水平分辨率的值（以每英寸点数为单位）。
    ///</returns>
    property DpiX: Single read get_DpiX;
    ///<summary>
    ///  获取此 <see cref="T:System.Drawing.Graphics" />
    ///  的垂直分辨率。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.Graphics" />
    ///  支持的垂直分辨率的值（以每英寸点数为单位）。
    ///</returns>
    property DpiY: Single read get_DpiY;
    ///<summary>
    ///  获取或设置 <see cref="T:System.Drawing.Region" />
    ///  ，它限定此 <see cref="T:System.Drawing.Graphics" />
    ///  的绘图区域。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Region" />
    ///  ，它限定此 <see cref="T:System.Drawing.Graphics" />
    ///  当前可用的绘图区域。
    ///</returns>
    property Clip: DNRegion read get_Clip write set_Clip;
    ///<summary>
    ///  获取一个 <see cref="T:System.Drawing.RectangleF" />
    ///  结构，该结构限定此 <see cref="T:System.Drawing.Graphics" />
    ///  的剪辑区域。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.RectangleF" />
    ///  结构，它表示此 <see cref="T:System.Drawing.Graphics" />
    ///  的剪辑区域的边框。
    ///</returns>
    property ClipBounds: DNRectangleF read get_ClipBounds;
    ///<summary>
    ///  获取一个值，该值指示此 <see cref="T:System.Drawing.Graphics" />
    ///  的剪辑区域是否为空。
    ///</summary>
    ///<returns>
    ///  如果此 <see cref="T:System.Drawing.Graphics" />
    ///  的剪辑区域为空，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsClipEmpty: Boolean read get_IsClipEmpty;
    ///<summary>
    ///  获取此 <see cref="T:System.Drawing.Graphics" />
    ///  的可见剪辑区域的边框。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.RectangleF" />
    ///  结构，它表示此 <see cref="T:System.Drawing.Graphics" />
    ///  的可见剪辑区域的边框。
    ///</returns>
    property VisibleClipBounds: DNRectangleF read get_VisibleClipBounds;
    ///<summary>
    ///  获取一个值，该值指示此 <see cref="T:System.Drawing.Graphics" />
    ///  的可见剪辑区域是否为空。
    ///</summary>
    ///<returns>
    ///  如果此 <see cref="T:System.Drawing.Graphics" />
    ///  的剪辑区域的可见部分为空，则为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsVisibleClipEmpty: Boolean read get_IsVisibleClipEmpty;
  end;

  TDNGraphics = class(TDNGenericImport<DNGraphicsClass, DNGraphics>) end;

  //-------------namespace: System.Drawing----------------
  DNIconClass = interface(DDN.mscorlib.DNMarshalByRefObjectClass)
  ['{3D203B12-B3FE-5D34-A578-F82BA634BF10}']
  { constructors } 

    ///<summary>
    ///  从指定的文件名初始化 <see cref="T:System.Drawing.Icon" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="fileName">
    ///  要从其中加载 <see cref="T:System.Drawing.Icon" />
    ///  的文件。
    ///</param>
    {class} function init(fileName: string): DNIcon; overload;
    ///<summary>
    ///  从指定的文件初始化 <see cref="T:System.Drawing.Icon" />
    ///  类的指定大小的新实例。
    ///</summary>
    ///  <param name="fileName">
    ///  包含图标数据的文件的名称和路径。
    ///</param>
    ///  <param name="size">
    ///  所需的图标大小。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="string" />
    ///  是 <see langword="null" />
    ///  也不包含图像数据。
    ///</exception>
    {class} function init(fileName: string; size: DNSize): DNIcon; overload;
    ///<summary>
    ///  使用指定文件中的指定宽度和高度初始化 <see cref="T:System.Drawing.Icon" />
    ///  类的一个新实例。
    ///</summary>
    ///  <param name="fileName">
    ///  包含 <see cref="T:System.Drawing.Icon" />
    ///  数据的文件的名称和路径。
    ///</param>
    ///  <param name="width">
    ///  需要的 <see cref="T:System.Drawing.Icon" />
    ///  宽度。
    ///</param>
    ///  <param name="height">
    ///  需要的 <see cref="T:System.Drawing.Icon" />
    ///  高度。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="string" />
    ///  是 <see langword="null" />
    ///  也不包含图像数据。
    ///</exception>
    {class} function init(fileName: string; width: Int32; height: Int32): DNIcon; overload;
    ///<summary>
    ///  初始化 <see cref="T:System.Drawing.Icon" />
    ///  类的新实例，并尝试查找与所请求的大小匹配的图标版本。
    ///</summary>
    ///  <param name="original">
    ///  要从其中加载新调整大小的图标的 <see cref="T:System.Drawing.Icon" />
    ///  。
    ///</param>
    ///  <param name="size">
    ///  用于指定新 <see cref="T:System.Drawing.Icon" />
    ///  的高度和宽度的 <see cref="T:System.Drawing.Size" />
    ///  结构。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="original" />
    ///  参数为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(original: DNIcon; size: DNSize): DNIcon; overload;
    ///<summary>
    ///  初始化 <see cref="T:System.Drawing.Icon" />
    ///  类的新实例，并尝试查找与所请求的大小匹配的图标版本。
    ///</summary>
    ///  <param name="original">
    ///  要从其中加载不同大小的图标。
    ///</param>
    ///  <param name="width">
    ///  新图标的宽度。
    ///</param>
    ///  <param name="height">
    ///  新图标的高度。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="original" />
    ///  参数为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(original: DNIcon; width: Int32; height: Int32): DNIcon; overload;
    ///<summary>
    ///  从指定程序集中的资源初始化 <see cref="T:System.Drawing.Icon" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="type"><see cref="T:System.Type" />
    ///  ，它指定在其中查找资源的程序集。
    ///</param>
    ///  <param name="resource">
    ///  要加载的资源的名称。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  指定的一个图标 <paramref name="resource" />
    ///  不能在包含指定程序集中找到 <paramref name="type" />
    ///  。
    ///</exception>
    {class} function init(&type: DDN.mscorlib.DNType; resource: string): DNIcon; overload;
    ///<summary>
    ///  从指定的数据流初始化 <see cref="T:System.Drawing.Icon" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="stream">
    ///  从其中加载 <see cref="T:System.Drawing.Icon" />
    ///  的数据流。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="stream" />
    ///  参数为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(stream: DDN.mscorlib.DNStream): DNIcon; overload;
    ///<summary>
    ///  从指定的流初始化 <see cref="T:System.Drawing.Icon" />
    ///  类的指定大小的新实例。
    ///</summary>
    ///  <param name="stream">
    ///  包含图标数据的流。
    ///</param>
    ///  <param name="size">
    ///  所需的图标大小。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="stream" />
    ///  是 <see langword="null" />
    ///  也不包含图像数据。
    ///</exception>
    {class} function init(stream: DDN.mscorlib.DNStream; size: DNSize): DNIcon; overload;
    ///<summary>
    ///  从指定的数据流用指定的宽度和高度初始化 <see cref="T:System.Drawing.Icon" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="stream">
    ///  从其中加载图标的数据流。
    ///</param>
    ///  <param name="width">
    ///  图标的宽度（以像素为单位）。
    ///</param>
    ///  <param name="height">
    ///  图标的高度（以像素为单位）。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="stream" />
    ///  参数为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(stream: DDN.mscorlib.DNStream; width: Int32; height: Int32): DNIcon; overload;

  { static methods } 

    ///<summary>
    ///  返回指定文件中包含的图像的图标表示形式。
    ///</summary>
    ///  <param name="filePath">
    ///  包含图像的文件的路径。
    ///</param>
    ///<returns>
    ///  指定文件中包含的图像的 <see cref="T:System.Drawing.Icon" />
    ///  表示形式。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="filePath" />
    ///  并不表示有效的文件。
    ///  - 或 -
    ///  <paramref name="filePath" />
    ///  指明通用命名约定 (UNC) 路径。
    ///</exception>
    {class} function ExtractAssociatedIcon(filePath: string): DNIcon;
    ///<summary>
    ///  从图标的指定 Windows 句柄 (<see langword="HICON" />
    ///  ) 创建 GDI+ <see cref="T:System.Drawing.Icon" />
    ///  。
    ///</summary>
    ///  <param name="handle">
    ///  图标的 Windows 句柄。
    ///</param>
    ///<returns>
    ///  此方法创建的 <see cref="T:System.Drawing.Icon" />
    ///  。
    ///</returns>
    {class} function FromHandle(handle: IntPtr): DNIcon;

  end;

  ///<summary>
  ///  表示 Windows 图标，它是用于表示对象的小位图图像。
  ///  尽管图标的大小由系统决定，但仍可将其视为透明的位图。
  ///</summary>
  [DNTypeName('System.Drawing.Icon')]
  DNIcon = interface(DDN.mscorlib.DNMarshalByRefObject)
  ['{F874226E-D299-3CEF-A532-1EA4153B91FC}']
  { getters & setters } 

    function get_Handle: IntPtr;
    function get_Height: Int32;
    function get_Size: DNSize;
    function get_Width: Int32;

  { methods } 

    ///<summary>
    ///  克隆 <see cref="T:System.Drawing.Icon" />
    ///  ，创建重复图像。
    ///</summary>
    ///<returns>
    ///  可强制转换为 <see cref="T:System.Drawing.Icon" />
    ///  的对象。
    ///</returns>
    function Clone: DDN.mscorlib.DNObject;
    ///<summary>
    ///  释放此 <see cref="T:System.Drawing.Icon" />
    ///  使用的所有资源。
    ///</summary>
    procedure Dispose;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Icon" />
    ///  保存到指定的输出 <see cref="T:System.IO.Stream" />
    ///  。
    ///</summary>
    ///  <param name="outputStream">
    ///  要保存到的 <see cref="T:System.IO.Stream" />
    ///  。
    ///</param>
    procedure Save(outputStream: DDN.mscorlib.DNStream);
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Icon" />
    ///  转换为 GDI+ <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Bitmap" />
    ///  ，它表示已转换的 <see cref="T:System.Drawing.Icon" />
    ///  。
    ///</returns>
    function ToBitmap: DNBitmap;
    ///<summary>
    ///  获取用于描述 <see cref="T:System.Drawing.Icon" />
    ///  的可读字符串。
    ///</summary>
    ///<returns>
    ///  描述 <see cref="T:System.Drawing.Icon" />
    ///  的字符串。
    ///</returns>
    function ToString: string;
    function GetLifetimeService: DDN.mscorlib.DNObject;
    function InitializeLifetimeService: DDN.mscorlib.DNObject;
    function CreateObjRef(requestedType: DDN.mscorlib.DNType): DDN.mscorlib.DNObjRef;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取此 <see cref="T:System.Drawing.Icon" />
    ///  的 Windows 句柄。
    ///  这并非该句柄的副本；请不要释放它。
    ///</summary>
    ///<returns>
    ///  该图标的 Windows 句柄。
    ///</returns>
    property Handle: IntPtr read get_Handle;
    ///<summary>
    ///  获取此 <see cref="T:System.Drawing.Icon" />
    ///  的高度。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.Icon" />
    ///  的高度。
    ///</returns>
    property Height: Int32 read get_Height;
    ///<summary>
    ///  获取此 <see cref="T:System.Drawing.Icon" />
    ///  的大小。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Size" />
    ///  结构，它指定此 <see cref="T:System.Drawing.Icon" />
    ///  的宽度和高度。
    ///</returns>
    property Size: DNSize read get_Size;
    ///<summary>
    ///  获取此 <see cref="T:System.Drawing.Icon" />
    ///  的宽度。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.Icon" />
    ///  的宽度。
    ///</returns>
    property Width: Int32 read get_Width;
  end;

  TDNIcon = class(TDNGenericImport<DNIconClass, DNIcon>) end;

  //-------------namespace: System.Drawing----------------
  DNImageClass = interface(DDN.mscorlib.DNMarshalByRefObjectClass)
  ['{79A48C86-C565-56AC-8B0C-7D93CF731D7E}']
  { static methods } 

    ///<summary>
    ///  创建 <see cref="T:System.Drawing.Image" />
    ///  从指定的文件。
    ///</summary>
    ///  <param name="filename">
    ///  一个字符串，包含用来创建文件的名称 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///<returns>
    ///  此方法创建的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.OutOfMemoryException">
    ///  该文件没有有效的图像格式。
    ///  - 或 -
    ///  GDI+ 不支持该文件的像素格式。
    ///</exception><exception cref="T:System.IO.FileNotFoundException">
    ///  指定的文件不存在。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="filename" />
    ///  是 <see cref="T:System.Uri" />
    ///  。
    ///</exception>
    {class} function FromFile(filename: string): DNImage; overload;
    ///<summary>
    ///  创建 <see cref="T:System.Drawing.Image" />
    ///  从指定的文件使用嵌入的颜色管理信息在该文件中。
    ///</summary>
    ///  <param name="filename">
    ///  一个字符串，包含用来创建文件的名称 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="useEmbeddedColorManagement">
    ///  设置为 <see langword="true" />
    ///  使用颜色管理信息嵌入到图像文件中; 否则为 <see langword="false" />
    ///  。
    ///</param>
    ///<returns>
    ///  此方法创建的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.OutOfMemoryException">
    ///  该文件没有有效的图像格式。
    ///  - 或 -
    ///  GDI+ 不支持该文件的像素格式。
    ///</exception><exception cref="T:System.IO.FileNotFoundException">
    ///  指定的文件不存在。
    ///</exception><exception cref="T:System.ArgumentException"><paramref name="filename" />
    ///  是 <see cref="T:System.Uri" />
    ///  。
    ///</exception>
    {class} function FromFile(filename: string; useEmbeddedColorManagement: Boolean): DNImage; overload;
    ///<summary>
    ///  创建 <see cref="T:System.Drawing.Image" />
    ///  从指定的数据流。
    ///</summary>
    ///  <param name="stream">
    ///  一个 <see cref="T:System.IO.Stream" />
    ///  ，其中会包含数据此 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///<returns>
    ///  此方法创建的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  流不是有效的图像格式
    ///  - 或 -
    ///  <paramref name="stream" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function FromStream(stream: DDN.mscorlib.DNStream): DNImage; overload;
    ///<summary>
    ///  创建 <see cref="T:System.Drawing.Image" />
    ///  从指定的数据流 （可选） 使用嵌入的颜色管理信息该流中。
    ///</summary>
    ///  <param name="stream">
    ///  一个 <see cref="T:System.IO.Stream" />
    ///  ，其中会包含数据此 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="useEmbeddedColorManagement"><see langword="true" />
    ///  若要使用数据流; 中嵌入的颜色管理信息否则为 <see langword="false" />
    ///  。
    ///</param>
    ///<returns>
    ///  此方法创建的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  流不是有效的图像格式
    ///  - 或 -
    ///  <paramref name="stream" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function FromStream(stream: DDN.mscorlib.DNStream; useEmbeddedColorManagement: Boolean): DNImage; overload;
    ///<summary>
    ///  创建 <see cref="T:System.Drawing.Bitmap" />
    ///  从 GDI 位图的句柄。
    ///</summary>
    ///  <param name="hbitmap">
    ///  GDI 从中创建位图句柄 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</param>
    ///<returns>
    ///  此方法创建的 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</returns>
    {class} function FromHbitmap(hbitmap: IntPtr): DNBitmap; overload;
    ///<summary>
    ///  创建 <see cref="T:System.Drawing.Bitmap" />
    ///  从 GDI 位图和 GDI 调色板的句柄的句柄。
    ///</summary>
    ///  <param name="hbitmap">
    ///  GDI 从中创建位图句柄 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</param>
    ///  <param name="hpalette">
    ///  句柄 GDI 用于如果中指定的位图定义位图颜色的调色板 <paramref name="hBitmap" />
    ///  参数不是与设备无关位图 (DIB)。
    ///</param>
    ///<returns>
    ///  此方法创建的 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</returns>
    {class} function FromHbitmap(hbitmap: IntPtr; hpalette: IntPtr): DNBitmap; overload;
    ///<summary>
    ///  返回指定像素格式的颜色深度（每个像素的位数）。
    ///</summary>
    ///  <param name="pixfmt"><see cref="T:System.Drawing.Imaging.PixelFormat" />
    ///  成员，用于指定要查找其大小的格式。
    ///</param>
    ///<returns>
    ///  指定的像素格式的颜色深度。
    ///</returns>
    {class} function GetPixelFormatSize(pixfmt: DNPixelFormat): Int32;
    ///<summary>
    ///  返回一个值，该值指示的像素格式是否为此 <see cref="T:System.Drawing.Image" />
    ///  包含 alpha 信息。
    ///</summary>
    ///  <param name="pixfmt">
    ///  要测试的 <see cref="T:System.Drawing.Imaging.PixelFormat" />
    ///  。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果 <paramref name="pixfmt" />
    ///  包含 alpha 信息; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    {class} function IsAlphaPixelFormat(pixfmt: DNPixelFormat): Boolean;
    ///<summary>
    ///  返回一个值，该值指示该像素格式是否为每个像素 64 位。
    ///</summary>
    ///  <param name="pixfmt"><see cref="T:System.Drawing.Imaging.PixelFormat" />
    ///  枚举值，用于测试。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果 <paramref name="pixfmt" />
    ///  扩展; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    {class} function IsExtendedPixelFormat(pixfmt: DNPixelFormat): Boolean;
    ///<summary>
    ///  返回一个值，该值指示该像素格式是否为每个像素 32 位。
    ///</summary>
    ///  <param name="pixfmt">
    ///  要测试的 <see cref="T:System.Drawing.Imaging.PixelFormat" />
    ///  。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果 <paramref name="pixfmt" />
    ///  规范; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    {class} function IsCanonicalPixelFormat(pixfmt: DNPixelFormat): Boolean;
    ///<summary>
    ///  创建 <see cref="T:System.Drawing.Image" />
    ///  从指定的数据流 （可选） 使用嵌入的颜色管理信息并验证图像数据。
    ///</summary>
    ///  <param name="stream">
    ///  一个 <see cref="T:System.IO.Stream" />
    ///  ，其中会包含数据此 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="useEmbeddedColorManagement"><see langword="true" />
    ///  若要使用数据流; 中嵌入的颜色管理信息否则为 <see langword="false" />
    ///  。
    ///</param>
    ///  <param name="validateImageData"><see langword="true" />
    ///  若要验证图像数据;否则为 <see langword="false" />
    ///  。
    ///</param>
    ///<returns>
    ///  此方法创建的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  流不是有效的图像格式。
    ///</exception>
    {class} function FromStream(stream: DDN.mscorlib.DNStream; useEmbeddedColorManagement: Boolean; validateImageData: Boolean): DNImage; overload;

  end;

  ///<summary>
  ///  一个抽象基类，提供了用于功能 <see cref="T:System.Drawing.Bitmap" />
  ///  和 <see cref="T:System.Drawing.Imaging.Metafile" />
  ///  继承的类。
  ///</summary>
  [DNTypeName('System.Drawing.Image')]
  DNImage = interface(DDN.mscorlib.DNMarshalByRefObject)
  ['{451DBF16-B46B-3B4F-993C-EFD8B01553A0}']
  { getters & setters } 

    function get_Tag: DDN.mscorlib.DNObject;
    procedure set_Tag(value: DDN.mscorlib.DNObject);
    function get_PhysicalDimension: DNSizeF;
    function get_Size: DNSize;
    function get_Width: Int32;
    function get_Height: Int32;
    function get_HorizontalResolution: Single;
    function get_VerticalResolution: Single;
    function get_Flags: Int32;
    function get_RawFormat: DNImageFormat;
    function get_PixelFormat: DNPixelFormat;
    function get_Palette: DNColorPalette;
    procedure set_Palette(value: DNColorPalette);
    function get_FrameDimensionsList: TArray<DDN.mscorlib.DNGuid>;
    function get_PropertyIdList: TArray<Int32>;
    function get_PropertyItems: TArray<DNPropertyItem>;

  { methods } 

    ///<summary>
    ///  创建此 <see cref="T:System.Drawing.Image" />
    ///  的一个精确副本。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Image" />
    ///  此方法创建的、 强制转换为一个对象。
    ///</returns>
    function Clone: DDN.mscorlib.DNObject;
    ///<summary>
    ///  释放此 <see cref="T:System.Drawing.Image" />
    ///  使用的所有资源。
    ///</summary>
    procedure Dispose;
    ///<summary>
    ///  返回有关指定的图像编码器所支持的参数的信息。
    ///</summary>
    ///  <param name="encoder">
    ///  用于指定图像编码器的 GUID。
    ///</param>
    ///<returns><see cref="T:System.Drawing.Imaging.EncoderParameters" />
    ///  ，其中包含的数组 <see cref="T:System.Drawing.Imaging.EncoderParameter" />
    ///  对象。
    ///  每个 <see cref="T:System.Drawing.Imaging.EncoderParameter" />
    ///  包含有关指定的图像编码器所支持的参数之一的信息。
    ///</returns>
    function GetEncoderParameterList(encoder: DDN.mscorlib.DNGuid): DNEncoderParameters;
    ///<summary>
    ///  这会将保存 <see cref="T:System.Drawing.Image" />
    ///  写入指定的文件或流。
    ///</summary>
    ///  <param name="filename">
    ///  一个字符串，包含要保存此文件的名称 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="filename" />
    ///  为 <see langword="null." />
    ///</exception><exception cref="T:System.Runtime.InteropServices.ExternalException">
    ///  使用错误的图像格式保存图像。
    ///  - 或 -
    ///  图像已保存到同一文件从创建它。
    ///</exception>
    procedure Save(filename: string); overload;
    ///<summary>
    ///  这会将保存 <see cref="T:System.Drawing.Image" />
    ///  写入指定的文件中指定的格式。
    ///</summary>
    ///  <param name="filename">
    ///  一个字符串，包含要保存此文件的名称 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="format">
    ///  用于此 <see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="filename" />
    ///  或 <paramref name="format" />
    ///  是 <see langword="null." />
    ///</exception><exception cref="T:System.Runtime.InteropServices.ExternalException">
    ///  使用错误的图像格式保存图像。
    ///  - 或 -
    ///  图像已保存到同一文件从创建它。
    ///</exception>
    procedure Save(filename: string; format: DNImageFormat); overload;
    ///<summary>
    ///  这会将保存 <see cref="T:System.Drawing.Image" />
    ///  写入指定的文件，使用指定的编码器和图像编码器参数。
    ///</summary>
    ///  <param name="filename">
    ///  一个字符串，包含要保存此文件的名称 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="encoder">
    ///  用于此 <see cref="T:System.Drawing.Imaging.ImageCodecInfo" />
    ///  的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="encoderParams"><see cref="T:System.Drawing.Imaging.EncoderParameters" />
    ///  要用于此 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="filename" />
    ///  或 <paramref name="encoder" />
    ///  是 <see langword="null." />
    ///</exception><exception cref="T:System.Runtime.InteropServices.ExternalException">
    ///  使用错误的图像格式保存图像。
    ///  - 或 -
    ///  图像已保存到同一文件从创建它。
    ///</exception>
    procedure Save(filename: string; encoder: DNImageCodecInfo; encoderParams: DNEncoderParameters); overload;
    ///<summary>
    ///  将此图像以指定的格式保存到指定的流中。
    ///</summary>
    ///  <param name="stream"><see cref="T:System.IO.Stream" />
    ///  将在其中保存图像。
    ///</param>
    ///  <param name="format"><see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  指定保存的图像的格式。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="stream" />
    ///  或 <paramref name="format" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.Runtime.InteropServices.ExternalException">
    ///  包含错误的图像格式保存图像
    ///</exception>
    procedure Save(stream: DDN.mscorlib.DNStream; format: DNImageFormat); overload;
    ///<summary>
    ///  使用指定的编码器和图像编码器参数，将该图像保存到指定的流。
    ///</summary>
    ///  <param name="stream"><see cref="T:System.IO.Stream" />
    ///  将在其中保存图像。
    ///</param>
    ///  <param name="encoder">
    ///  用于此 <see cref="T:System.Drawing.Imaging.ImageCodecInfo" />
    ///  的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="encoderParams"><see cref="T:System.Drawing.Imaging.EncoderParameters" />
    ///  ，它指定图像编码器使用的参数。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="stream" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.Runtime.InteropServices.ExternalException">
    ///  使用错误的图像格式保存图像。
    ///</exception>
    procedure Save(stream: DDN.mscorlib.DNStream; encoder: DNImageCodecInfo; encoderParams: DNEncoderParameters); overload;
    ///<summary>
    ///  将帧添加到上次对 <see cref="Overload:System.Drawing.Image.Save" />
    ///  方法调用时所指定的文件或流中。
    ///  使用此方法将多帧图像中的选定帧保存到另一个多帧图像。
    ///</summary>
    ///  <param name="encoderParams">
    ///  一个 <see cref="T:System.Drawing.Imaging.EncoderParameters" />
    ///  ，包含保存-添加操作使用的图像编码器所需的参数。
    ///</param>
    procedure SaveAdd(encoderParams: DNEncoderParameters); overload;
    ///<summary>
    ///  将帧添加到上次对 <see cref="Overload:System.Drawing.Image.Save" />
    ///  方法调用时所指定的文件或流中。
    ///</summary>
    ///  <param name="image"><see cref="T:System.Drawing.Image" />
    ///  ，包含要添加的帧。
    ///</param>
    ///  <param name="encoderParams">
    ///  一个 <see cref="T:System.Drawing.Imaging.EncoderParameters" />
    ///  ，包含保存-添加操作使用的图像编码器所需的参数。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure SaveAdd(image: DNImage; encoderParams: DNEncoderParameters); overload;
    function GetBounds(out pageUnit: DNGraphicsUnit): DNRectangleF;
    ///<summary>
    ///  返回此缩略图 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///  <param name="thumbWidth">
    ///  以像素为单位，请求的缩略图的宽度。
    ///</param>
    ///  <param name="thumbHeight">
    ///  以像素为单位，请求的缩略图的高度。
    ///</param>
    ///  <param name="callback">
    ///  一个 <see cref="T:System.Drawing.Image.GetThumbnailImageAbort" />
    ///  委托。
    ///  注意   必须创建一个委托，并将传递对作为委托的引用 <paramref name="callback" />
    ///  不使用参数，但该委托。
    ///</param>
    ///  <param name="callbackData">
    ///  必须是 <see cref="F:System.IntPtr.Zero" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Drawing.Image" />
    ///  表示缩略图。
    ///</returns>
    function GetThumbnailImage(thumbWidth: Int32; thumbHeight: Int32; callback: DNImage_GetThumbnailImageAbort; callbackData: IntPtr): DNImage;
    ///<summary>
    ///  返回指定维度的帧数。
    ///</summary>
    ///  <param name="dimension">
    ///  一个 <see cref="T:System.Drawing.Imaging.FrameDimension" />
    ///  指定维度类型标识。
    ///</param>
    ///<returns>
    ///  指定维度中的帧数。
    ///</returns>
    function GetFrameCount(dimension: DNFrameDimension): Int32;
    ///<summary>
    ///  选择由维度和索引指定的帧。
    ///</summary>
    ///  <param name="dimension">
    ///  一个 <see cref="T:System.Drawing.Imaging.FrameDimension" />
    ///  指定维度类型标识。
    ///</param>
    ///  <param name="frameIndex">
    ///  活动帧的索引。
    ///</param>
    ///<returns>
    ///  始终返回 0。
    ///</returns>
    function SelectActiveFrame(dimension: DNFrameDimension; frameIndex: Int32): Int32;
    ///<summary>
    ///  旋转、 翻转，或将旋转和翻转 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///  <param name="rotateFlipType">
    ///  一个 <see cref="T:System.Drawing.RotateFlipType" />
    ///  成员，用于指定的旋转和翻转将应用于映像的类型。
    ///</param>
    procedure RotateFlip(rotateFlipType: DNRotateFlipType);
    ///<summary>
    ///  获取指定的属性项从此 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///  <param name="propid">
    ///  要获取属性项的 ID。
    ///</param>
    ///<returns><see cref="T:System.Drawing.Imaging.PropertyItem" />
    ///  此方法获取。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  此图像的图像格式不支持属性项。
    ///</exception>
    function GetPropertyItem(propid: Int32): DNPropertyItem;
    ///<summary>
    ///  从这中移除指定的属性项 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///  <param name="propid">
    ///  要移除的属性项的 ID。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  映像不包含请求的属性项。
    ///  - 或 -
    ///  此图像的图像格式不支持属性项。
    ///</exception>
    procedure RemovePropertyItem(propid: Int32);
    ///<summary>
    ///  在此 <see cref="T:System.Drawing.Image" />
    ///  中存储一个属性项（元数据片）。
    ///</summary>
    ///  <param name="propitem">
    ///  要存储的 <see cref="T:System.Drawing.Imaging.PropertyItem" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  此图像的图像格式不支持属性项。
    ///</exception>
    procedure SetPropertyItem(propitem: DNPropertyItem);
    function GetLifetimeService: DDN.mscorlib.DNObject;
    function InitializeLifetimeService: DDN.mscorlib.DNObject;
    function CreateObjRef(requestedType: DDN.mscorlib.DNType): DDN.mscorlib.DNObjRef;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置提供有关图像的附加数据的对象。
    ///</summary>
    ///<returns><see cref="T:System.Object" />
    ///  ，它提供有关图像的附加数据。
    ///</returns>
    property Tag: DDN.mscorlib.DNObject read get_Tag write set_Tag;
    ///<summary>
    ///  获取此图像的宽度和高度。
    ///</summary>
    ///<returns>
    ///  A<see cref="T:System.Drawing.SizeF" />
    ///  结构，它表示的宽度和高度这<see cref="T:System.Drawing.Image" />
    ///  。
    ///</returns>
    property PhysicalDimension: DNSizeF read get_PhysicalDimension;
    ///<summary>
    ///  获取此图像的宽度和高度（以像素为单位）。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Size" />
    ///  结构，它表示的宽度和高度，以像素为单位，此映像。
    ///</returns>
    property Size: DNSize read get_Size;
    ///<summary>
    ///  获取的宽度，以像素为单位，这 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  宽度，以像素为单位，此 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</returns>
    property Width: Int32 read get_Width;
    ///<summary>
    ///  获取的高度，以像素为单位，这 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.Image" />
    ///  的高度（以像素为单位）。
    ///</returns>
    property Height: Int32 read get_Height;
    ///<summary>
    ///  获取以每英寸的像素为单位的水平分辨率 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  以每英寸的像素为单位的水平分辨率 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</returns>
    property HorizontalResolution: Single read get_HorizontalResolution;
    ///<summary>
    ///  获取以每英寸的像素为单位的垂直分辨率 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  垂直分辨率，以像素 / 英寸，此 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</returns>
    property VerticalResolution: Single read get_VerticalResolution;
    ///<summary>
    ///  获取特性的像素数据的这标志 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  表示的按位组合的整数 <see cref="T:System.Drawing.Imaging.ImageFlags" />
    ///  此 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</returns>
    property Flags: Int32 read get_Flags;
    ///<summary>
    ///  获取此文件格式 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  表示的文件格式 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</returns>
    property RawFormat: DNImageFormat read get_RawFormat;
    ///<summary>
    ///  获取此像素格式 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Imaging.PixelFormat" />
    ///  ，它会表示像素格式此 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</returns>
    property PixelFormat: DNPixelFormat read get_PixelFormat;
    ///<summary>
    ///  获取或设置用于此目的的颜色调色板 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Imaging.ColorPalette" />
    ///  ，它表示用于此目的的调色板 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</returns>
    property Palette: DNColorPalette read get_Palette write set_Palette;
    ///<summary>
    ///  获取表示在此帧的维数的 Guid 的数组， <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  指定在此帧的维数的 Guid 的数组， <see cref="T:System.Drawing.Image" />
    ///  从最重要到最不重要。
    ///</returns>
    property FrameDimensionsList: TArray<DDN.mscorlib.DNGuid> read get_FrameDimensionsList;
    ///<summary>
    ///  获取存储于此的属性项的 Id <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  由属性 ID 组成的一个数组，此图像中存储的每个属性项各有一个 ID。
    ///</returns>
    property PropertyIdList: TArray<Int32> read get_PropertyIdList;
    ///<summary>
    ///  获取的所有属性项 （元数据片） 存储在此 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  一个数组 <see cref="T:System.Drawing.Imaging.PropertyItem" />
    ///  对象，每个属性项存储在映像中的一个对象。
    ///</returns>
    property PropertyItems: TArray<DNPropertyItem> read get_PropertyItems;
  end;

  TDNImage = class(TDNGenericImport<DNImageClass, DNImage>) end;

  //-------------namespace: System.Drawing----------------
  DNBitmapClass = interface(DNImageClass)
  ['{94ACAB77-01F8-5022-B397-D27F8602028F}']
  { constructors } 

    ///<summary>
    ///  从指定的文件初始化 <see cref="T:System.Drawing.Bitmap" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="filename">
    ///  位图文件的名称和路径中。
    ///</param>
    ///<exception cref="T:System.IO.FileNotFoundException">
    ///  找不到指定的文件。
    ///</exception>
    {class} function init(filename: string): DNBitmap; overload;
    ///<summary>
    ///  从指定的文件初始化 <see cref="T:System.Drawing.Bitmap" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="filename">
    ///  位图文件的名称。
    ///</param>
    ///  <param name="useIcm"><see langword="true" />
    ///  要用于此颜色校正 <see cref="T:System.Drawing.Bitmap" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</param>
    {class} function init(filename: string; useIcm: Boolean): DNBitmap; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Bitmap" />
    ///  类从指定的资源。
    ///</summary>
    ///  <param name="type">
    ///  用于提取资源的类。
    ///</param>
    ///  <param name="resource">
    ///  资源的名称。
    ///</param>
    {class} function init(&type: DDN.mscorlib.DNType; resource: string): DNBitmap; overload;
    ///<summary>
    ///  从指定的数据流初始化 <see cref="T:System.Drawing.Bitmap" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="stream">
    ///  用于加载图像的数据流。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="stream" />
    ///  不包含图像数据，或者是 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="stream" />
    ///  包含单个维度大于 65535 像素的 PNG 图像文件。
    ///</exception>
    {class} function init(stream: DDN.mscorlib.DNStream): DNBitmap; overload;
    ///<summary>
    ///  从指定的数据流初始化 <see cref="T:System.Drawing.Bitmap" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="stream">
    ///  用于加载图像的数据流。
    ///</param>
    ///  <param name="useIcm"><see langword="true" />
    ///  要用于此颜色校正 <see cref="T:System.Drawing.Bitmap" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="stream" />
    ///  不包含图像数据，或者是 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="stream" />
    ///  包含单个维度大于 65535 像素的 PNG 图像文件。
    ///</exception>
    {class} function init(stream: DDN.mscorlib.DNStream; useIcm: Boolean): DNBitmap; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Bitmap" />
    ///  用指定的大小、 像素格式和像素数据的类。
    ///</summary>
    ///  <param name="width">
    ///  宽度，以像素为单位，新的 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</param>
    ///  <param name="height">
    ///  高度，以像素为单位，新的 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</param>
    ///  <param name="stride">
    ///  指定两次一次扫描行的开头之间的字节偏移量的整数。
    ///  这通常 （但不是一定） 是像素格式 (例如，16 位 / 像素的 2) 中的字节数乘以位图的宽度。
    ///  传递给此参数的值必须是四的倍数...
    ///</param>
    ///  <param name="format">
    ///  新的像素格式 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///  这必须指定一个值，开头 <paramref name="Format" />
    ///  。
    ///</param>
    ///  <param name="scan0">
    ///  指向包含像素数据的字节数组的指针。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  一个 <see cref="T:System.Drawing.Imaging.PixelFormat" />
    ///  未指定值，其名称不以开头 格式。
    ///  例如，指定 <see cref="F:System.Drawing.Imaging.PixelFormat.Gdi" />
    ///  将导致 <see cref="T:System.ArgumentException" />
    ///  , ，但 <see cref="F:System.Drawing.Imaging.PixelFormat.Format48bppRgb" />
    ///  将不会。
    ///</exception>
    {class} function init(width: Int32; height: Int32; stride: Int32; format: DNPixelFormat; scan0: IntPtr): DNBitmap; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Bitmap" />
    ///  类，具有指定的大小和格式。
    ///</summary>
    ///  <param name="width">
    ///  宽度，以像素为单位，新的 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</param>
    ///  <param name="height">
    ///  高度，以像素为单位，新的 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</param>
    ///  <param name="format">
    ///  新的像素格式 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///  这必须指定一个值，开头 <paramref name="Format" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  一个 <see cref="T:System.Drawing.Imaging.PixelFormat" />
    ///  未指定值，其名称不以开头 格式。
    ///  例如，指定 <see cref="F:System.Drawing.Imaging.PixelFormat.Gdi" />
    ///  将导致 <see cref="T:System.ArgumentException" />
    ///  , ，但 <see cref="F:System.Drawing.Imaging.PixelFormat.Format48bppRgb" />
    ///  将不会。
    ///</exception>
    {class} function init(width: Int32; height: Int32; format: DNPixelFormat): DNBitmap; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Bitmap" />
    ///  类具有指定大小。
    ///</summary>
    ///  <param name="width">
    ///  宽度，以像素为单位，新的 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</param>
    ///  <param name="height">
    ///  高度，以像素为单位，新的 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</param>
    ///<exception cref="T:System.Exception">
    ///  操作失败。
    ///</exception>
    {class} function init(width: Int32; height: Int32): DNBitmap; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Bitmap" />
    ///  类具有指定大小，并使用指定的解决方法 <see cref="T:System.Drawing.Graphics" />
    ///  对象。
    ///</summary>
    ///  <param name="width">
    ///  宽度，以像素为单位，新的 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</param>
    ///  <param name="height">
    ///  高度，以像素为单位，新的 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</param>
    ///  <param name="g"><see cref="T:System.Drawing.Graphics" />
    ///  对象，它指定为新的分辨率 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="g" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(width: Int32; height: Int32; g: DNGraphics): DNBitmap; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Bitmap" />
    ///  类从指定的现有图像。
    ///</summary>
    ///  <param name="original">
    ///  从中创建新 <see cref="T:System.Drawing.Bitmap" />
    ///  的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    {class} function init(original: DNImage): DNBitmap; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Bitmap" />
    ///  类从指定的现有图像，缩放到指定的大小。
    ///</summary>
    ///  <param name="original">
    ///  从中创建新 <see cref="T:System.Drawing.Bitmap" />
    ///  的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="width">
    ///  宽度，以像素为单位，新的 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</param>
    ///  <param name="height">
    ///  高度，以像素为单位，新的 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</param>
    ///<exception cref="T:System.Exception">
    ///  操作失败。
    ///</exception>
    {class} function init(original: DNImage; width: Int32; height: Int32): DNBitmap; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Bitmap" />
    ///  类从指定的现有图像，缩放到指定的大小。
    ///</summary>
    ///  <param name="original">
    ///  从中创建新 <see cref="T:System.Drawing.Bitmap" />
    ///  的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="newSize"><see cref="T:System.Drawing.Size" />
    ///  结构，它表示大小的新 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</param>
    ///<exception cref="T:System.Exception">
    ///  操作失败。
    ///</exception>
    {class} function init(original: DNImage; newSize: DNSize): DNBitmap; overload;

  { static methods } 

    ///<summary>
    ///  创建 <see cref="T:System.Drawing.Bitmap" />
    ///  从图标的 Windows 句柄。
    ///</summary>
    ///  <param name="hicon">
    ///  指向一个图标的句柄。
    ///</param>
    ///<returns>
    ///  此方法创建的 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</returns>
    {class} function FromHicon(hicon: IntPtr): DNBitmap;
    ///<summary>
    ///  创建 <see cref="T:System.Drawing.Bitmap" />
    ///  从指定的 Windows 资源。
    ///</summary>
    ///  <param name="hinstance">
    ///  包含资源的可执行文件的实例句柄。
    ///</param>
    ///  <param name="bitmapName">
    ///  一个字符串，包含资源位图的名称。
    ///</param>
    ///<returns>
    ///  此方法创建的 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</returns>
    {class} function FromResource(hinstance: IntPtr; bitmapName: string): DNBitmap;

  end;

  ///<summary>
  ///  封装 GDI+ 包含图形图像和其属性的像素数据的位图。
  ///  一个 <see cref="T:System.Drawing.Bitmap" />
  ///  是用来处理图像像素数据所定义的对象。
  ///</summary>
  [DNTypeName('System.Drawing.Bitmap')]
  DNBitmap = interface(DNImage)
  ['{6549E875-8857-35A3-94A2-C3D574DDEB1D}']
  { getters & setters } 

    function get_Tag: DDN.mscorlib.DNObject;
    procedure set_Tag(value: DDN.mscorlib.DNObject);
    function get_PhysicalDimension: DNSizeF;
    function get_Size: DNSize;
    function get_Width: Int32;
    function get_Height: Int32;
    function get_HorizontalResolution: Single;
    function get_VerticalResolution: Single;
    function get_Flags: Int32;
    function get_RawFormat: DNImageFormat;
    function get_PixelFormat: DNPixelFormat;
    function get_Palette: DNColorPalette;
    procedure set_Palette(value: DNColorPalette);
    function get_FrameDimensionsList: TArray<DDN.mscorlib.DNGuid>;
    function get_PropertyIdList: TArray<Int32>;
    function get_PropertyItems: TArray<DNPropertyItem>;

  { methods } 

    ///<summary>
    ///  创建 GDI 从此位图对象 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</summary>
    ///<returns>
    ///  句柄 GDI 此方法创建的位图对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  高度或位图的宽度是否大于 <see cref="F:System.Int16.MaxValue" />
    ///  。
    ///</exception><exception cref="T:System.Exception">
    ///  操作失败。
    ///</exception>
    function GetHbitmap: IntPtr; overload;
    ///<summary>
    ///  创建 GDI 从此位图对象 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</summary>
    ///  <param name="background">
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  结构，它指定背景色。
    ///  如果是完全不透明的位图，则忽略此参数。
    ///</param>
    ///<returns>
    ///  句柄 GDI 此方法创建的位图对象。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  高度或位图的宽度是否大于 <see cref="F:System.Int16.MaxValue" />
    ///  。
    ///</exception><exception cref="T:System.Exception">
    ///  操作失败。
    ///</exception>
    function GetHbitmap(background: DNColor): IntPtr; overload;
    ///<summary>
    ///  返回一个图标的句柄。
    ///</summary>
    ///<returns>
    ///  同一个图像作为带图标的 Windows 句柄 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.Exception">
    ///  操作失败。
    ///</exception>
    function GetHicon: IntPtr;
    ///<summary>
    ///  创建此分区的副本 <see cref="T:System.Drawing.Bitmap" />
    ///  由定义 <see cref="T:System.Drawing.Rectangle" />
    ///  结构并使用指定 <see cref="T:System.Drawing.Imaging.PixelFormat" />
    ///  枚举。
    ///</summary>
    ///  <param name="rect">
    ///  定义此部分 <see cref="T:System.Drawing.Bitmap" />
    ///  复制。
    ///  坐标是相对于此 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</param>
    ///  <param name="format">
    ///  新的像素格式 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///  这必须指定一个值，开头 <paramref name="Format" />
    ///  。
    ///</param>
    ///<returns>
    ///  此方法创建的新 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.OutOfMemoryException"><paramref name="rect" />
    ///  位于源位图边界之外。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  高度或宽度 <paramref name="rect" />
    ///  为 0。
    ///  - 或 -
    ///  一个 <see cref="T:System.Drawing.Imaging.PixelFormat" />
    ///  未指定值，其名称不以开头 格式。
    ///  例如，指定 <see cref="F:System.Drawing.Imaging.PixelFormat.Gdi" />
    ///  将导致 <see cref="T:System.ArgumentException" />
    ///  , ，但 <see cref="F:System.Drawing.Imaging.PixelFormat.Format48bppRgb" />
    ///  将不会。
    ///</exception>
    function Clone(rect: DNRectangle; format: DNPixelFormat): DNBitmap; overload;
    ///<summary>
    ///  创建此分区的副本 <see cref="T:System.Drawing.Bitmap" />
    ///  定义与指定 <see cref="T:System.Drawing.Imaging.PixelFormat" />
    ///  枚举。
    ///</summary>
    ///  <param name="rect">
    ///  定义此部分 <see cref="T:System.Drawing.Bitmap" />
    ///  复制。
    ///</param>
    ///  <param name="format">
    ///  指定 <see cref="T:System.Drawing.Imaging.PixelFormat" />
    ///  枚举为目标 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</param>
    ///<returns>
    ///  此方法创建的 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.OutOfMemoryException"><paramref name="rect" />
    ///  位于源位图边界之外。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  高度或宽度 <paramref name="rect" />
    ///  为 0。
    ///</exception>
    function Clone(rect: DNRectangleF; format: DNPixelFormat): DNBitmap; overload;
    ///<summary>
    ///  让 <see cref="T:System.Drawing.Bitmap" />
    ///  的默认透明颜色为透明。
    ///</summary>
    ///<exception cref="T:System.InvalidOperationException"><see cref="T:System.Drawing.Bitmap" />
    ///  的图像格式为图标格式。
    ///</exception><exception cref="T:System.Exception">
    ///  操作失败。
    ///</exception>
    procedure MakeTransparent; overload;
    ///<summary>
    ///  使指定的颜色透明此 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</summary>
    ///  <param name="transparentColor"><see cref="T:System.Drawing.Color" />
    ///  结构，它表示要将设置为透明的颜色。
    ///</param>
    ///<exception cref="T:System.InvalidOperationException">
    ///  图像格式的 <see cref="T:System.Drawing.Bitmap" />
    ///  是一种图标格式。
    ///</exception><exception cref="T:System.Exception">
    ///  操作失败。
    ///</exception>
    procedure MakeTransparent(transparentColor: DNColor); overload;
    ///<summary>
    ///  锁定 <see cref="T:System.Drawing.Bitmap" />
    ///  到系统内存。
    ///</summary>
    ///  <param name="rect">
    ///  一个 <see cref="T:System.Drawing.Rectangle" />
    ///  结构，它指定的部分 <see cref="T:System.Drawing.Bitmap" />
    ///  为锁。
    ///</param>
    ///  <param name="flags"><see cref="T:System.Drawing.Imaging.ImageLockMode" />
    ///  枚举，用于为指定的访问级别 （读/写） <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</param>
    ///  <param name="format">
    ///  一个 <see cref="T:System.Drawing.Imaging.PixelFormat" />
    ///  枚举，用于指定的数据格式 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Imaging.BitmapData" />
    ///  ，包含有关该锁定操作信息。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><see cref="T:System.Drawing.Imaging.PixelFormat" />
    ///  不是特定的每像素位值。
    ///  - 或 -
    ///  不正确 <see cref="T:System.Drawing.Imaging.PixelFormat" />
    ///  传入的位图。
    ///</exception><exception cref="T:System.Exception">
    ///  操作失败。
    ///</exception>
    function LockBits(rect: DNRectangle; flags: DNImageLockMode; format: DNPixelFormat): DNBitmapData; overload;
    ///<summary>
    ///  锁定 <see cref="T:System.Drawing.Bitmap" />
    ///  到系统内存
    ///</summary>
    ///  <param name="rect">
    ///  矩形结构，它指定的部分 <see cref="T:System.Drawing.Bitmap" />
    ///  为锁。
    ///</param>
    ///  <param name="flags">
    ///  其中一个 <see cref="T:System.Drawing.Imaging.ImageLockMode" />
    ///  为指定的访问级别 （读/写） 的值 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</param>
    ///  <param name="format">
    ///  其中一个 <see cref="T:System.Drawing.Imaging.PixelFormat" />
    ///  值，该值指定的数据格式 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</param>
    ///  <param name="bitmapData">
    ///  一个 <see cref="T:System.Drawing.Imaging.BitmapData" />
    ///  ，包含有关该锁定操作信息。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Imaging.BitmapData" />
    ///  ，包含有关该锁定操作信息。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><see cref="T:System.Drawing.Imaging.PixelFormat" />
    ///  值不是特定的每像素位值。
    ///  - 或 -
    ///  不正确 <see cref="T:System.Drawing.Imaging.PixelFormat" />
    ///  传入的位图。
    ///</exception><exception cref="T:System.Exception">
    ///  操作失败。
    ///</exception>
    function LockBits(rect: DNRectangle; flags: DNImageLockMode; format: DNPixelFormat; bitmapData: DNBitmapData): DNBitmapData; overload;
    ///<summary>
    ///  解锁此 <see cref="T:System.Drawing.Bitmap" />
    ///  于系统内存。
    ///</summary>
    ///  <param name="bitmapdata">
    ///  一个 <see cref="T:System.Drawing.Imaging.BitmapData" />
    ///  ，它指定该锁定操作有关的信息。
    ///</param>
    ///<exception cref="T:System.Exception">
    ///  操作失败。
    ///</exception>
    procedure UnlockBits(bitmapdata: DNBitmapData);
    ///<summary>
    ///  在此获取指定的像素的颜色 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</summary>
    ///  <param name="x">
    ///  要检索的像素 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  要检索的像素 y 坐标。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  结构，它表示指定的像素的颜色。
    ///</returns>
    ///<exception cref="T:System.ArgumentOutOfRangeException"><paramref name="x" />
    ///  小于 0，或大于或等于 <see cref="P:System.Drawing.Image.Width" />
    ///  。
    ///  - 或 -
    ///  <paramref name="y" />
    ///  小于 0，或大于或等于 <see cref="P:System.Drawing.Image.Height" />
    ///  。
    ///</exception><exception cref="T:System.Exception">
    ///  操作失败。
    ///</exception>
    function GetPixel(x: Int32; y: Int32): DNColor;
    ///<summary>
    ///  在此 <see cref="T:System.Drawing.Bitmap" />
    ///  中设置指定像素的颜色。
    ///</summary>
    ///  <param name="x">
    ///  要设置的像素的 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  要设置的像素的 y 坐标。
    ///</param>
    ///  <param name="color">
    ///  代表分配到指定像素的颜色的 <see cref="T:System.Drawing.Color" />
    ///  结构。
    ///</param>
    ///<exception cref="T:System.Exception">
    ///  操作失败。
    ///</exception>
    procedure SetPixel(x: Int32; y: Int32; color: DNColor);
    ///<summary>
    ///  此设置的分辨率 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</summary>
    ///  <param name="xDpi">
    ///  水平分辨率，以每英寸点数为单位的 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</param>
    ///  <param name="yDpi">
    ///  垂直分辨率，以每英寸点数为单位的 <see cref="T:System.Drawing.Bitmap" />
    ///  。
    ///</param>
    ///<exception cref="T:System.Exception">
    ///  操作失败。
    ///</exception>
    procedure SetResolution(xDpi: Single; yDpi: Single);
    ///<summary>
    ///  创建此 <see cref="T:System.Drawing.Image" />
    ///  的一个精确副本。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Image" />
    ///  此方法创建的、 强制转换为一个对象。
    ///</returns>
    function Clone: DDN.mscorlib.DNObject; overload;
    ///<summary>
    ///  释放此 <see cref="T:System.Drawing.Image" />
    ///  使用的所有资源。
    ///</summary>
    procedure Dispose;
    ///<summary>
    ///  返回有关指定的图像编码器所支持的参数的信息。
    ///</summary>
    ///  <param name="encoder">
    ///  用于指定图像编码器的 GUID。
    ///</param>
    ///<returns><see cref="T:System.Drawing.Imaging.EncoderParameters" />
    ///  ，其中包含的数组 <see cref="T:System.Drawing.Imaging.EncoderParameter" />
    ///  对象。
    ///  每个 <see cref="T:System.Drawing.Imaging.EncoderParameter" />
    ///  包含有关指定的图像编码器所支持的参数之一的信息。
    ///</returns>
    function GetEncoderParameterList(encoder: DDN.mscorlib.DNGuid): DNEncoderParameters;
    ///<summary>
    ///  这会将保存 <see cref="T:System.Drawing.Image" />
    ///  写入指定的文件或流。
    ///</summary>
    ///  <param name="filename">
    ///  一个字符串，包含要保存此文件的名称 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="filename" />
    ///  为 <see langword="null." />
    ///</exception><exception cref="T:System.Runtime.InteropServices.ExternalException">
    ///  使用错误的图像格式保存图像。
    ///  - 或 -
    ///  图像已保存到同一文件从创建它。
    ///</exception>
    procedure Save(filename: string); overload;
    ///<summary>
    ///  这会将保存 <see cref="T:System.Drawing.Image" />
    ///  写入指定的文件中指定的格式。
    ///</summary>
    ///  <param name="filename">
    ///  一个字符串，包含要保存此文件的名称 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="format">
    ///  用于此 <see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="filename" />
    ///  或 <paramref name="format" />
    ///  是 <see langword="null." />
    ///</exception><exception cref="T:System.Runtime.InteropServices.ExternalException">
    ///  使用错误的图像格式保存图像。
    ///  - 或 -
    ///  图像已保存到同一文件从创建它。
    ///</exception>
    procedure Save(filename: string; format: DNImageFormat); overload;
    ///<summary>
    ///  这会将保存 <see cref="T:System.Drawing.Image" />
    ///  写入指定的文件，使用指定的编码器和图像编码器参数。
    ///</summary>
    ///  <param name="filename">
    ///  一个字符串，包含要保存此文件的名称 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="encoder">
    ///  用于此 <see cref="T:System.Drawing.Imaging.ImageCodecInfo" />
    ///  的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="encoderParams"><see cref="T:System.Drawing.Imaging.EncoderParameters" />
    ///  要用于此 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="filename" />
    ///  或 <paramref name="encoder" />
    ///  是 <see langword="null." />
    ///</exception><exception cref="T:System.Runtime.InteropServices.ExternalException">
    ///  使用错误的图像格式保存图像。
    ///  - 或 -
    ///  图像已保存到同一文件从创建它。
    ///</exception>
    procedure Save(filename: string; encoder: DNImageCodecInfo; encoderParams: DNEncoderParameters); overload;
    ///<summary>
    ///  将此图像以指定的格式保存到指定的流中。
    ///</summary>
    ///  <param name="stream"><see cref="T:System.IO.Stream" />
    ///  将在其中保存图像。
    ///</param>
    ///  <param name="format"><see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  指定保存的图像的格式。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="stream" />
    ///  或 <paramref name="format" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.Runtime.InteropServices.ExternalException">
    ///  包含错误的图像格式保存图像
    ///</exception>
    procedure Save(stream: DDN.mscorlib.DNStream; format: DNImageFormat); overload;
    ///<summary>
    ///  使用指定的编码器和图像编码器参数，将该图像保存到指定的流。
    ///</summary>
    ///  <param name="stream"><see cref="T:System.IO.Stream" />
    ///  将在其中保存图像。
    ///</param>
    ///  <param name="encoder">
    ///  用于此 <see cref="T:System.Drawing.Imaging.ImageCodecInfo" />
    ///  的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="encoderParams"><see cref="T:System.Drawing.Imaging.EncoderParameters" />
    ///  ，它指定图像编码器使用的参数。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="stream" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.Runtime.InteropServices.ExternalException">
    ///  使用错误的图像格式保存图像。
    ///</exception>
    procedure Save(stream: DDN.mscorlib.DNStream; encoder: DNImageCodecInfo; encoderParams: DNEncoderParameters); overload;
    ///<summary>
    ///  将帧添加到上次对 <see cref="Overload:System.Drawing.Image.Save" />
    ///  方法调用时所指定的文件或流中。
    ///  使用此方法将多帧图像中的选定帧保存到另一个多帧图像。
    ///</summary>
    ///  <param name="encoderParams">
    ///  一个 <see cref="T:System.Drawing.Imaging.EncoderParameters" />
    ///  ，包含保存-添加操作使用的图像编码器所需的参数。
    ///</param>
    procedure SaveAdd(encoderParams: DNEncoderParameters); overload;
    ///<summary>
    ///  将帧添加到上次对 <see cref="Overload:System.Drawing.Image.Save" />
    ///  方法调用时所指定的文件或流中。
    ///</summary>
    ///  <param name="image"><see cref="T:System.Drawing.Image" />
    ///  ，包含要添加的帧。
    ///</param>
    ///  <param name="encoderParams">
    ///  一个 <see cref="T:System.Drawing.Imaging.EncoderParameters" />
    ///  ，包含保存-添加操作使用的图像编码器所需的参数。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure SaveAdd(image: DNImage; encoderParams: DNEncoderParameters); overload;
    function GetBounds(out pageUnit: DNGraphicsUnit): DNRectangleF;
    ///<summary>
    ///  返回此缩略图 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///  <param name="thumbWidth">
    ///  以像素为单位，请求的缩略图的宽度。
    ///</param>
    ///  <param name="thumbHeight">
    ///  以像素为单位，请求的缩略图的高度。
    ///</param>
    ///  <param name="callback">
    ///  一个 <see cref="T:System.Drawing.Image.GetThumbnailImageAbort" />
    ///  委托。
    ///  注意   必须创建一个委托，并将传递对作为委托的引用 <paramref name="callback" />
    ///  不使用参数，但该委托。
    ///</param>
    ///  <param name="callbackData">
    ///  必须是 <see cref="F:System.IntPtr.Zero" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Drawing.Image" />
    ///  表示缩略图。
    ///</returns>
    function GetThumbnailImage(thumbWidth: Int32; thumbHeight: Int32; callback: DNImage_GetThumbnailImageAbort; callbackData: IntPtr): DNImage;
    ///<summary>
    ///  返回指定维度的帧数。
    ///</summary>
    ///  <param name="dimension">
    ///  一个 <see cref="T:System.Drawing.Imaging.FrameDimension" />
    ///  指定维度类型标识。
    ///</param>
    ///<returns>
    ///  指定维度中的帧数。
    ///</returns>
    function GetFrameCount(dimension: DNFrameDimension): Int32;
    ///<summary>
    ///  选择由维度和索引指定的帧。
    ///</summary>
    ///  <param name="dimension">
    ///  一个 <see cref="T:System.Drawing.Imaging.FrameDimension" />
    ///  指定维度类型标识。
    ///</param>
    ///  <param name="frameIndex">
    ///  活动帧的索引。
    ///</param>
    ///<returns>
    ///  始终返回 0。
    ///</returns>
    function SelectActiveFrame(dimension: DNFrameDimension; frameIndex: Int32): Int32;
    ///<summary>
    ///  旋转、 翻转，或将旋转和翻转 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///  <param name="rotateFlipType">
    ///  一个 <see cref="T:System.Drawing.RotateFlipType" />
    ///  成员，用于指定的旋转和翻转将应用于映像的类型。
    ///</param>
    procedure RotateFlip(rotateFlipType: DNRotateFlipType);
    ///<summary>
    ///  获取指定的属性项从此 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///  <param name="propid">
    ///  要获取属性项的 ID。
    ///</param>
    ///<returns><see cref="T:System.Drawing.Imaging.PropertyItem" />
    ///  此方法获取。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  此图像的图像格式不支持属性项。
    ///</exception>
    function GetPropertyItem(propid: Int32): DNPropertyItem;
    ///<summary>
    ///  从这中移除指定的属性项 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///  <param name="propid">
    ///  要移除的属性项的 ID。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  映像不包含请求的属性项。
    ///  - 或 -
    ///  此图像的图像格式不支持属性项。
    ///</exception>
    procedure RemovePropertyItem(propid: Int32);
    ///<summary>
    ///  在此 <see cref="T:System.Drawing.Image" />
    ///  中存储一个属性项（元数据片）。
    ///</summary>
    ///  <param name="propitem">
    ///  要存储的 <see cref="T:System.Drawing.Imaging.PropertyItem" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  此图像的图像格式不支持属性项。
    ///</exception>
    procedure SetPropertyItem(propitem: DNPropertyItem);
    function GetLifetimeService: DDN.mscorlib.DNObject;
    function InitializeLifetimeService: DDN.mscorlib.DNObject;
    function CreateObjRef(requestedType: DDN.mscorlib.DNType): DDN.mscorlib.DNObjRef;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置提供有关图像的附加数据的对象。
    ///</summary>
    ///<returns><see cref="T:System.Object" />
    ///  ，它提供有关图像的附加数据。
    ///</returns>
    property Tag: DDN.mscorlib.DNObject read get_Tag write set_Tag;
    ///<summary>
    ///  获取此图像的宽度和高度。
    ///</summary>
    ///<returns>
    ///  A<see cref="T:System.Drawing.SizeF" />
    ///  结构，它表示的宽度和高度这<see cref="T:System.Drawing.Image" />
    ///  。
    ///</returns>
    property PhysicalDimension: DNSizeF read get_PhysicalDimension;
    ///<summary>
    ///  获取此图像的宽度和高度（以像素为单位）。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Size" />
    ///  结构，它表示的宽度和高度，以像素为单位，此映像。
    ///</returns>
    property Size: DNSize read get_Size;
    ///<summary>
    ///  获取的宽度，以像素为单位，这 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  宽度，以像素为单位，此 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</returns>
    property Width: Int32 read get_Width;
    ///<summary>
    ///  获取的高度，以像素为单位，这 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.Image" />
    ///  的高度（以像素为单位）。
    ///</returns>
    property Height: Int32 read get_Height;
    ///<summary>
    ///  获取以每英寸的像素为单位的水平分辨率 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  以每英寸的像素为单位的水平分辨率 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</returns>
    property HorizontalResolution: Single read get_HorizontalResolution;
    ///<summary>
    ///  获取以每英寸的像素为单位的垂直分辨率 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  垂直分辨率，以像素 / 英寸，此 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</returns>
    property VerticalResolution: Single read get_VerticalResolution;
    ///<summary>
    ///  获取特性的像素数据的这标志 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  表示的按位组合的整数 <see cref="T:System.Drawing.Imaging.ImageFlags" />
    ///  此 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</returns>
    property Flags: Int32 read get_Flags;
    ///<summary>
    ///  获取此文件格式 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  表示的文件格式 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</returns>
    property RawFormat: DNImageFormat read get_RawFormat;
    ///<summary>
    ///  获取此像素格式 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Imaging.PixelFormat" />
    ///  ，它会表示像素格式此 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</returns>
    property PixelFormat: DNPixelFormat read get_PixelFormat;
    ///<summary>
    ///  获取或设置用于此目的的颜色调色板 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Imaging.ColorPalette" />
    ///  ，它表示用于此目的的调色板 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</returns>
    property Palette: DNColorPalette read get_Palette write set_Palette;
    ///<summary>
    ///  获取表示在此帧的维数的 Guid 的数组， <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  指定在此帧的维数的 Guid 的数组， <see cref="T:System.Drawing.Image" />
    ///  从最重要到最不重要。
    ///</returns>
    property FrameDimensionsList: TArray<DDN.mscorlib.DNGuid> read get_FrameDimensionsList;
    ///<summary>
    ///  获取存储于此的属性项的 Id <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  由属性 ID 组成的一个数组，此图像中存储的每个属性项各有一个 ID。
    ///</returns>
    property PropertyIdList: TArray<Int32> read get_PropertyIdList;
    ///<summary>
    ///  获取的所有属性项 （元数据片） 存储在此 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  一个数组 <see cref="T:System.Drawing.Imaging.PropertyItem" />
    ///  对象，每个属性项存储在映像中的一个对象。
    ///</returns>
    property PropertyItems: TArray<DNPropertyItem> read get_PropertyItems;
  end;

  TDNBitmap = class(TDNGenericImport<DNBitmapClass, DNBitmap>) end;

  //-------------namespace: System.Drawing.Imaging----------------
  DNMetafileClass = interface(DNImageClass)
  ['{42D491F2-DEA3-52BA-AE62-751A64D411AB}']
  { constructors } 

    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  类从指定句柄。
    ///</summary>
    ///  <param name="henhmetafile">
    ///  增强型图元文件句柄。
    ///</param>
    ///  <param name="deleteEmf"><see langword="true" />
    ///  若要删除的增强型图元文件处理时 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  已删除; 否则为 <see langword="false" />
    ///  。
    ///</param>
    {class} function init(henhmetafile: IntPtr; deleteEmf: Boolean): DNMetafile; overload;
    ///<summary>
    ///  从指定的文件名初始化 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="filename">
    ///  一个 <see cref="T:System.String" />
    ///  ，它表示从中创建新文件名称 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  。
    ///</param>
    {class} function init(filename: string): DNMetafile; overload;
    ///<summary>
    ///  从指定的数据流初始化 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="stream">
    ///  从中创建新 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  的 <see cref="T:System.IO.Stream" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="stream" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(stream: DDN.mscorlib.DNStream): DNMetafile; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  类从指定的设备上下文中，受限于指定的矩形。
    ///</summary>
    ///  <param name="referenceHdc">
    ///  设备上下文的句柄。
    ///</param>
    ///  <param name="frameRect">
    ///  一个 <see cref="T:System.Drawing.RectangleF" />
    ///  表示限定新矩形 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  。
    ///</param>
    {class} function init(referenceHdc: IntPtr; frameRect: DNRectangleF): DNMetafile; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  类从指定的设备上下文中，受限于指定的矩形。
    ///</summary>
    ///  <param name="referenceHdc">
    ///  设备上下文的句柄。
    ///</param>
    ///  <param name="frameRect">
    ///  一个 <see cref="T:System.Drawing.Rectangle" />
    ///  表示限定新矩形 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  。
    ///</param>
    {class} function init(referenceHdc: IntPtr; frameRect: DNRectangle): DNMetafile; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  初始化具有指定的文件名称。
    ///</summary>
    ///  <param name="fileName">
    ///  一个 <see cref="T:System.String" />
    ///  ，它表示新的文件名称 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  。
    ///</param>
    ///  <param name="referenceHdc">
    ///  设备上下文的 Windows 句柄。
    ///</param>
    {class} function init(fileName: string; referenceHdc: IntPtr): DNMetafile; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  具有指定的文件名，设备上下文的 Windows 句柄的类和一个 <see cref="T:System.Drawing.RectangleF" />
    ///  结构，它表示的矩形的限定新 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  。
    ///</summary>
    ///  <param name="fileName">
    ///  一个 <see cref="T:System.String" />
    ///  ，它表示新的文件名称 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  。
    ///</param>
    ///  <param name="referenceHdc">
    ///  设备上下文的 Windows 句柄。
    ///</param>
    ///  <param name="frameRect">
    ///  一个 <see cref="T:System.Drawing.RectangleF" />
    ///  表示限定新矩形 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  。
    ///</param>
    {class} function init(fileName: string; referenceHdc: IntPtr; frameRect: DNRectangleF): DNMetafile; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  具有指定的文件名，设备上下文的 Windows 句柄的类和一个 <see cref="T:System.Drawing.Rectangle" />
    ///  结构，它表示的矩形的限定新 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  。
    ///</summary>
    ///  <param name="fileName">
    ///  一个 <see cref="T:System.String" />
    ///  ，它表示新的文件名称 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  。
    ///</param>
    ///  <param name="referenceHdc">
    ///  设备上下文的 Windows 句柄。
    ///</param>
    ///  <param name="frameRect">
    ///  一个 <see cref="T:System.Drawing.Rectangle" />
    ///  表示限定新矩形 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  。
    ///</param>
    {class} function init(fileName: string; referenceHdc: IntPtr; frameRect: DNRectangle): DNMetafile; overload;
    ///<summary>
    ///  从指定的数据流初始化 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="stream">
    ///  一个 <see cref="T:System.IO.Stream" />
    ///  ，其中会包含数据此 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  。
    ///</param>
    ///  <param name="referenceHdc">
    ///  设备上下文的 Windows 句柄。
    ///</param>
    {class} function init(stream: DDN.mscorlib.DNStream; referenceHdc: IntPtr): DNMetafile; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  从指定的数据流、 设备上下文的 Windows 句柄的类和一个 <see cref="T:System.Drawing.RectangleF" />
    ///  结构，它表示的矩形的限定新 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  。
    ///</summary>
    ///  <param name="stream">
    ///  一个 <see cref="T:System.IO.Stream" />
    ///  ，其中会包含数据此 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  。
    ///</param>
    ///  <param name="referenceHdc">
    ///  设备上下文的 Windows 句柄。
    ///</param>
    ///  <param name="frameRect">
    ///  一个 <see cref="T:System.Drawing.RectangleF" />
    ///  表示限定新矩形 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  。
    ///</param>
    {class} function init(stream: DDN.mscorlib.DNStream; referenceHdc: IntPtr; frameRect: DNRectangleF): DNMetafile; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  从指定的数据流、 设备上下文的 Windows 句柄的类和一个 <see cref="T:System.Drawing.Rectangle" />
    ///  结构，它表示的矩形的限定新 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  。
    ///</summary>
    ///  <param name="stream">
    ///  一个 <see cref="T:System.IO.Stream" />
    ///  ，其中会包含数据此 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  。
    ///</param>
    ///  <param name="referenceHdc">
    ///  设备上下文的 Windows 句柄。
    ///</param>
    ///  <param name="frameRect">
    ///  一个 <see cref="T:System.Drawing.Rectangle" />
    ///  表示限定新矩形 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  。
    ///</param>
    {class} function init(stream: DDN.mscorlib.DNStream; referenceHdc: IntPtr; frameRect: DNRectangle): DNMetafile; overload;

  end;

  ///<summary>
  ///  定义图形的图元文件。
  ///  图元文件包含描述一系列可以记录 （构造） 的图形操作的记录和播放 （显示）。
  ///  此类不是可继承的。
  ///</summary>
  [DNTypeName('System.Drawing.Imaging.Metafile')]
  DNMetafile = interface(DNImage)
  ['{0039BEED-721E-35E8-A37D-1DBBB36A5A0D}']
  { getters & setters } 

    function get_Tag: DDN.mscorlib.DNObject;
    procedure set_Tag(value: DDN.mscorlib.DNObject);
    function get_PhysicalDimension: DNSizeF;
    function get_Size: DNSize;
    function get_Width: Int32;
    function get_Height: Int32;
    function get_HorizontalResolution: Single;
    function get_VerticalResolution: Single;
    function get_Flags: Int32;
    function get_RawFormat: DNImageFormat;
    function get_PixelFormat: DNPixelFormat;
    function get_Palette: DNColorPalette;
    procedure set_Palette(value: DNColorPalette);
    function get_FrameDimensionsList: TArray<DDN.mscorlib.DNGuid>;
    function get_PropertyIdList: TArray<Int32>;
    function get_PropertyItems: TArray<DNPropertyItem>;

  { methods } 

    ///<summary>
    ///  将 Windows 句柄返回到增强 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  。
    ///</summary>
    ///<returns>
    ///  此增强的 Windows 句柄 <see cref="T:System.Drawing.Imaging.Metafile" />
    ///  。
    ///</returns>
    function GetHenhmetafile: IntPtr;
    ///<summary>
    ///  创建此 <see cref="T:System.Drawing.Image" />
    ///  的一个精确副本。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Image" />
    ///  此方法创建的、 强制转换为一个对象。
    ///</returns>
    function Clone: DDN.mscorlib.DNObject;
    ///<summary>
    ///  释放此 <see cref="T:System.Drawing.Image" />
    ///  使用的所有资源。
    ///</summary>
    procedure Dispose;
    ///<summary>
    ///  返回有关指定的图像编码器所支持的参数的信息。
    ///</summary>
    ///  <param name="encoder">
    ///  用于指定图像编码器的 GUID。
    ///</param>
    ///<returns><see cref="T:System.Drawing.Imaging.EncoderParameters" />
    ///  ，其中包含的数组 <see cref="T:System.Drawing.Imaging.EncoderParameter" />
    ///  对象。
    ///  每个 <see cref="T:System.Drawing.Imaging.EncoderParameter" />
    ///  包含有关指定的图像编码器所支持的参数之一的信息。
    ///</returns>
    function GetEncoderParameterList(encoder: DDN.mscorlib.DNGuid): DNEncoderParameters;
    ///<summary>
    ///  这会将保存 <see cref="T:System.Drawing.Image" />
    ///  写入指定的文件或流。
    ///</summary>
    ///  <param name="filename">
    ///  一个字符串，包含要保存此文件的名称 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="filename" />
    ///  为 <see langword="null." />
    ///</exception><exception cref="T:System.Runtime.InteropServices.ExternalException">
    ///  使用错误的图像格式保存图像。
    ///  - 或 -
    ///  图像已保存到同一文件从创建它。
    ///</exception>
    procedure Save(filename: string); overload;
    ///<summary>
    ///  这会将保存 <see cref="T:System.Drawing.Image" />
    ///  写入指定的文件中指定的格式。
    ///</summary>
    ///  <param name="filename">
    ///  一个字符串，包含要保存此文件的名称 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="format">
    ///  用于此 <see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="filename" />
    ///  或 <paramref name="format" />
    ///  是 <see langword="null." />
    ///</exception><exception cref="T:System.Runtime.InteropServices.ExternalException">
    ///  使用错误的图像格式保存图像。
    ///  - 或 -
    ///  图像已保存到同一文件从创建它。
    ///</exception>
    procedure Save(filename: string; format: DNImageFormat); overload;
    ///<summary>
    ///  这会将保存 <see cref="T:System.Drawing.Image" />
    ///  写入指定的文件，使用指定的编码器和图像编码器参数。
    ///</summary>
    ///  <param name="filename">
    ///  一个字符串，包含要保存此文件的名称 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="encoder">
    ///  用于此 <see cref="T:System.Drawing.Imaging.ImageCodecInfo" />
    ///  的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="encoderParams"><see cref="T:System.Drawing.Imaging.EncoderParameters" />
    ///  要用于此 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="filename" />
    ///  或 <paramref name="encoder" />
    ///  是 <see langword="null." />
    ///</exception><exception cref="T:System.Runtime.InteropServices.ExternalException">
    ///  使用错误的图像格式保存图像。
    ///  - 或 -
    ///  图像已保存到同一文件从创建它。
    ///</exception>
    procedure Save(filename: string; encoder: DNImageCodecInfo; encoderParams: DNEncoderParameters); overload;
    ///<summary>
    ///  将此图像以指定的格式保存到指定的流中。
    ///</summary>
    ///  <param name="stream"><see cref="T:System.IO.Stream" />
    ///  将在其中保存图像。
    ///</param>
    ///  <param name="format"><see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  指定保存的图像的格式。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="stream" />
    ///  或 <paramref name="format" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.Runtime.InteropServices.ExternalException">
    ///  包含错误的图像格式保存图像
    ///</exception>
    procedure Save(stream: DDN.mscorlib.DNStream; format: DNImageFormat); overload;
    ///<summary>
    ///  使用指定的编码器和图像编码器参数，将该图像保存到指定的流。
    ///</summary>
    ///  <param name="stream"><see cref="T:System.IO.Stream" />
    ///  将在其中保存图像。
    ///</param>
    ///  <param name="encoder">
    ///  用于此 <see cref="T:System.Drawing.Imaging.ImageCodecInfo" />
    ///  的 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</param>
    ///  <param name="encoderParams"><see cref="T:System.Drawing.Imaging.EncoderParameters" />
    ///  ，它指定图像编码器使用的参数。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="stream" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.Runtime.InteropServices.ExternalException">
    ///  使用错误的图像格式保存图像。
    ///</exception>
    procedure Save(stream: DDN.mscorlib.DNStream; encoder: DNImageCodecInfo; encoderParams: DNEncoderParameters); overload;
    ///<summary>
    ///  将帧添加到上次对 <see cref="Overload:System.Drawing.Image.Save" />
    ///  方法调用时所指定的文件或流中。
    ///  使用此方法将多帧图像中的选定帧保存到另一个多帧图像。
    ///</summary>
    ///  <param name="encoderParams">
    ///  一个 <see cref="T:System.Drawing.Imaging.EncoderParameters" />
    ///  ，包含保存-添加操作使用的图像编码器所需的参数。
    ///</param>
    procedure SaveAdd(encoderParams: DNEncoderParameters); overload;
    ///<summary>
    ///  将帧添加到上次对 <see cref="Overload:System.Drawing.Image.Save" />
    ///  方法调用时所指定的文件或流中。
    ///</summary>
    ///  <param name="image"><see cref="T:System.Drawing.Image" />
    ///  ，包含要添加的帧。
    ///</param>
    ///  <param name="encoderParams">
    ///  一个 <see cref="T:System.Drawing.Imaging.EncoderParameters" />
    ///  ，包含保存-添加操作使用的图像编码器所需的参数。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="image" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure SaveAdd(image: DNImage; encoderParams: DNEncoderParameters); overload;
    function GetBounds(out pageUnit: DNGraphicsUnit): DNRectangleF;
    ///<summary>
    ///  返回此缩略图 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///  <param name="thumbWidth">
    ///  以像素为单位，请求的缩略图的宽度。
    ///</param>
    ///  <param name="thumbHeight">
    ///  以像素为单位，请求的缩略图的高度。
    ///</param>
    ///  <param name="callback">
    ///  一个 <see cref="T:System.Drawing.Image.GetThumbnailImageAbort" />
    ///  委托。
    ///  注意   必须创建一个委托，并将传递对作为委托的引用 <paramref name="callback" />
    ///  不使用参数，但该委托。
    ///</param>
    ///  <param name="callbackData">
    ///  必须是 <see cref="F:System.IntPtr.Zero" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Drawing.Image" />
    ///  表示缩略图。
    ///</returns>
    function GetThumbnailImage(thumbWidth: Int32; thumbHeight: Int32; callback: DNImage_GetThumbnailImageAbort; callbackData: IntPtr): DNImage;
    ///<summary>
    ///  返回指定维度的帧数。
    ///</summary>
    ///  <param name="dimension">
    ///  一个 <see cref="T:System.Drawing.Imaging.FrameDimension" />
    ///  指定维度类型标识。
    ///</param>
    ///<returns>
    ///  指定维度中的帧数。
    ///</returns>
    function GetFrameCount(dimension: DNFrameDimension): Int32;
    ///<summary>
    ///  选择由维度和索引指定的帧。
    ///</summary>
    ///  <param name="dimension">
    ///  一个 <see cref="T:System.Drawing.Imaging.FrameDimension" />
    ///  指定维度类型标识。
    ///</param>
    ///  <param name="frameIndex">
    ///  活动帧的索引。
    ///</param>
    ///<returns>
    ///  始终返回 0。
    ///</returns>
    function SelectActiveFrame(dimension: DNFrameDimension; frameIndex: Int32): Int32;
    ///<summary>
    ///  旋转、 翻转，或将旋转和翻转 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///  <param name="rotateFlipType">
    ///  一个 <see cref="T:System.Drawing.RotateFlipType" />
    ///  成员，用于指定的旋转和翻转将应用于映像的类型。
    ///</param>
    procedure RotateFlip(rotateFlipType: DNRotateFlipType);
    ///<summary>
    ///  获取指定的属性项从此 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///  <param name="propid">
    ///  要获取属性项的 ID。
    ///</param>
    ///<returns><see cref="T:System.Drawing.Imaging.PropertyItem" />
    ///  此方法获取。
    ///</returns>
    ///<exception cref="T:System.ArgumentException">
    ///  此图像的图像格式不支持属性项。
    ///</exception>
    function GetPropertyItem(propid: Int32): DNPropertyItem;
    ///<summary>
    ///  从这中移除指定的属性项 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///  <param name="propid">
    ///  要移除的属性项的 ID。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  映像不包含请求的属性项。
    ///  - 或 -
    ///  此图像的图像格式不支持属性项。
    ///</exception>
    procedure RemovePropertyItem(propid: Int32);
    ///<summary>
    ///  在此 <see cref="T:System.Drawing.Image" />
    ///  中存储一个属性项（元数据片）。
    ///</summary>
    ///  <param name="propitem">
    ///  要存储的 <see cref="T:System.Drawing.Imaging.PropertyItem" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentException">
    ///  此图像的图像格式不支持属性项。
    ///</exception>
    procedure SetPropertyItem(propitem: DNPropertyItem);
    function GetLifetimeService: DDN.mscorlib.DNObject;
    function InitializeLifetimeService: DDN.mscorlib.DNObject;
    function CreateObjRef(requestedType: DDN.mscorlib.DNType): DDN.mscorlib.DNObjRef;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置提供有关图像的附加数据的对象。
    ///</summary>
    ///<returns><see cref="T:System.Object" />
    ///  ，它提供有关图像的附加数据。
    ///</returns>
    property Tag: DDN.mscorlib.DNObject read get_Tag write set_Tag;
    ///<summary>
    ///  获取此图像的宽度和高度。
    ///</summary>
    ///<returns>
    ///  A<see cref="T:System.Drawing.SizeF" />
    ///  结构，它表示的宽度和高度这<see cref="T:System.Drawing.Image" />
    ///  。
    ///</returns>
    property PhysicalDimension: DNSizeF read get_PhysicalDimension;
    ///<summary>
    ///  获取此图像的宽度和高度（以像素为单位）。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Size" />
    ///  结构，它表示的宽度和高度，以像素为单位，此映像。
    ///</returns>
    property Size: DNSize read get_Size;
    ///<summary>
    ///  获取的宽度，以像素为单位，这 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  宽度，以像素为单位，此 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</returns>
    property Width: Int32 read get_Width;
    ///<summary>
    ///  获取的高度，以像素为单位，这 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.Image" />
    ///  的高度（以像素为单位）。
    ///</returns>
    property Height: Int32 read get_Height;
    ///<summary>
    ///  获取以每英寸的像素为单位的水平分辨率 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  以每英寸的像素为单位的水平分辨率 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</returns>
    property HorizontalResolution: Single read get_HorizontalResolution;
    ///<summary>
    ///  获取以每英寸的像素为单位的垂直分辨率 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  垂直分辨率，以像素 / 英寸，此 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</returns>
    property VerticalResolution: Single read get_VerticalResolution;
    ///<summary>
    ///  获取特性的像素数据的这标志 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  表示的按位组合的整数 <see cref="T:System.Drawing.Imaging.ImageFlags" />
    ///  此 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</returns>
    property Flags: Int32 read get_Flags;
    ///<summary>
    ///  获取此文件格式 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Imaging.ImageFormat" />
    ///  表示的文件格式 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</returns>
    property RawFormat: DNImageFormat read get_RawFormat;
    ///<summary>
    ///  获取此像素格式 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Imaging.PixelFormat" />
    ///  ，它会表示像素格式此 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</returns>
    property PixelFormat: DNPixelFormat read get_PixelFormat;
    ///<summary>
    ///  获取或设置用于此目的的颜色调色板 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Imaging.ColorPalette" />
    ///  ，它表示用于此目的的调色板 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</returns>
    property Palette: DNColorPalette read get_Palette write set_Palette;
    ///<summary>
    ///  获取表示在此帧的维数的 Guid 的数组， <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  指定在此帧的维数的 Guid 的数组， <see cref="T:System.Drawing.Image" />
    ///  从最重要到最不重要。
    ///</returns>
    property FrameDimensionsList: TArray<DDN.mscorlib.DNGuid> read get_FrameDimensionsList;
    ///<summary>
    ///  获取存储于此的属性项的 Id <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  由属性 ID 组成的一个数组，此图像中存储的每个属性项各有一个 ID。
    ///</returns>
    property PropertyIdList: TArray<Int32> read get_PropertyIdList;
    ///<summary>
    ///  获取的所有属性项 （元数据片） 存储在此 <see cref="T:System.Drawing.Image" />
    ///  。
    ///</summary>
    ///<returns>
    ///  一个数组 <see cref="T:System.Drawing.Imaging.PropertyItem" />
    ///  对象，每个属性项存储在映像中的一个对象。
    ///</returns>
    property PropertyItems: TArray<DNPropertyItem> read get_PropertyItems;
  end;

  TDNMetafile = class(TDNGenericImport<DNMetafileClass, DNMetafile>) end;

  //-------------namespace: System.Drawing----------------
  DNPenClass = interface(DDN.mscorlib.DNMarshalByRefObjectClass)
  ['{C1364DE7-F49E-5C06-941C-C2AD2E6AB4B2}']
  { constructors } 

    ///<summary>
    ///  用指定颜色初始化 <see cref="T:System.Drawing.Pen" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="color"><see cref="T:System.Drawing.Color" />
    ///  结构，指示此 <see cref="T:System.Drawing.Pen" />
    ///  的颜色。
    ///</param>
    {class} function init(color: DNColor): DNPen; overload;
    ///<summary>
    ///  用指定的 <see cref="T:System.Drawing.Pen" />
    ///  和 <see cref="T:System.Drawing.Color" />
    ///  属性初始化 <see cref="P:System.Drawing.Pen.Width" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="color"><see cref="T:System.Drawing.Color" />
    ///  结构，指示此 <see cref="T:System.Drawing.Pen" />
    ///  的颜色。
    ///</param>
    ///  <param name="width">
    ///  指示此 <see cref="T:System.Drawing.Pen" />
    ///  的宽度的值。
    ///</param>
    {class} function init(color: DNColor; width: Single): DNPen; overload;
    ///<summary>
    ///  使用指定的 <see cref="T:System.Drawing.Pen" />
    ///  初始化 <see cref="T:System.Drawing.Brush" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="brush">
    ///  一个 <see cref="T:System.Drawing.Brush" />
    ///  ，确定该 <see cref="T:System.Drawing.Pen" />
    ///  的填充属性。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(brush: DNBrush): DNPen; overload;
    ///<summary>
    ///  使用指定的 <see cref="T:System.Drawing.Pen" />
    ///  和 <see cref="T:System.Drawing.Brush" />
    ///  初始化 <see cref="P:System.Drawing.Pen.Width" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="brush">
    ///  一个 <see cref="T:System.Drawing.Brush" />
    ///  ，决定此 <see cref="T:System.Drawing.Pen" />
    ///  的特征。
    ///</param>
    ///  <param name="width">
    ///  新 <see cref="T:System.Drawing.Pen" />
    ///  的宽度。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="brush" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(brush: DNBrush; width: Single): DNPen; overload;

  end;

  ///<summary>
  ///  定义用于绘制直线和曲线的对象。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.Drawing.Pen')]
  DNPen = interface(DDN.mscorlib.DNMarshalByRefObject)
  ['{CDC550AB-7CA0-3E7F-AB2B-7A88B65D0ECD}']
  { getters & setters } 

    function get_Width: Single;
    procedure set_Width(value: Single);
    function get_MiterLimit: Single;
    procedure set_MiterLimit(value: Single);
    function get_Transform: DNMatrix;
    procedure set_Transform(value: DNMatrix);
    function get_Color: DNColor;
    procedure set_Color(value: DNColor);
    function get_Brush: DNBrush;
    procedure set_Brush(value: DNBrush);
    function get_DashOffset: Single;
    procedure set_DashOffset(value: Single);
    function get_DashPattern: TArray<Single>;
    procedure set_DashPattern(value: TArray<Single>);
    function get_CompoundArray: TArray<Single>;
    procedure set_CompoundArray(value: TArray<Single>);

  { methods } 

    ///<summary>
    ///  创建此 <see cref="T:System.Drawing.Pen" />
    ///  的一个精确副本。
    ///</summary>
    ///<returns>
    ///  一个可以强制转换为 <see cref="T:System.Drawing.Pen" />
    ///  的 <see cref="T:System.Object" />
    ///  。
    ///</returns>
    function Clone: DDN.mscorlib.DNObject;
    ///<summary>
    ///  释放此 <see cref="T:System.Drawing.Pen" />
    ///  使用的所有资源。
    ///</summary>
    procedure Dispose;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Pen" />
    ///  的几何变换矩阵重置为单位矩阵。
    ///</summary>
    procedure ResetTransform;
    ///<summary>
    ///  用指定的 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  乘以此 <see cref="T:System.Drawing.Pen" />
    ///  的变换矩阵。
    ///</summary>
    ///  <param name="matrix">
    ///  用来乘变换矩阵的 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  对象。
    ///</param>
    procedure MultiplyTransform(matrix: DNMatrix); overload;
    ///<summary>
    ///  按照指定的顺序，用指定的 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  乘以此 <see cref="T:System.Drawing.Pen" />
    ///  的变换矩阵。
    ///</summary>
    ///  <param name="matrix">
    ///  用来乘变换矩阵的 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  。
    ///</param>
    ///  <param name="order">
    ///  执行乘法运算的顺序。
    ///</param>
    procedure MultiplyTransform(matrix: DNMatrix; order: DNMatrixOrder); overload;
    ///<summary>
    ///  将局部几何转换平移指定尺寸。
    ///  此方法将平移添加到变换前。
    ///</summary>
    ///  <param name="dx">
    ///  X 方向的转换值。
    ///</param>
    ///  <param name="dy">
    ///  Y 方向的转换值。
    ///</param>
    procedure TranslateTransform(dx: Single; dy: Single); overload;
    ///<summary>
    ///  按指定的顺序将局部几何转换平移指定的尺寸。
    ///</summary>
    ///  <param name="dx">
    ///  X 方向的转换值。
    ///</param>
    ///  <param name="dy">
    ///  Y 方向的转换值。
    ///</param>
    ///  <param name="order">
    ///  应用转换的顺序（在前面添加或在后面追加）。
    ///</param>
    procedure TranslateTransform(dx: Single; dy: Single; order: DNMatrixOrder); overload;
    ///<summary>
    ///  按指定因子缩放局部几何转换。
    ///  此方法将缩放矩阵添加到转换前。
    ///</summary>
    ///  <param name="sx">
    ///  沿 x 轴方向缩放转换的因子。
    ///</param>
    ///  <param name="sy">
    ///  沿 y 轴方向缩放转换的因子。
    ///</param>
    procedure ScaleTransform(sx: Single; sy: Single); overload;
    ///<summary>
    ///  将局部几何转换以指定顺序缩放指定因子。
    ///</summary>
    ///  <param name="sx">
    ///  沿 x 轴方向缩放转换的因子。
    ///</param>
    ///  <param name="sy">
    ///  沿 y 轴方向缩放转换的因子。
    ///</param>
    ///  <param name="order">
    ///  一个 <see cref="T:System.Drawing.Drawing2D.MatrixOrder" />
    ///  ，指定是在后面追加缩放矩阵还是在前面添加缩放矩阵。
    ///</param>
    procedure ScaleTransform(sx: Single; sy: Single; order: DNMatrixOrder); overload;
    ///<summary>
    ///  将局部几何转换旋转指定角度。
    ///  此方法将旋转添加到变换前。
    ///</summary>
    ///  <param name="angle">
    ///  旋转角度。
    ///</param>
    procedure RotateTransform(angle: Single); overload;
    ///<summary>
    ///  以指定顺序将局部几何转换旋转指定角度。
    ///</summary>
    ///  <param name="angle">
    ///  旋转角度。
    ///</param>
    ///  <param name="order">
    ///  一个 <see cref="T:System.Drawing.Drawing2D.MatrixOrder" />
    ///  ，它指定是在后面追加旋转矩阵还是在前面添加旋转矩阵。
    ///</param>
    procedure RotateTransform(angle: Single; order: DNMatrixOrder); overload;
    function GetLifetimeService: DDN.mscorlib.DNObject;
    function InitializeLifetimeService: DDN.mscorlib.DNObject;
    function CreateObjRef(requestedType: DDN.mscorlib.DNType): DDN.mscorlib.DNObjRef;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  { propertys } 

    ///<summary>
    ///  获取或设置此 <see cref="T:System.Drawing.Pen" />
    ///  的宽度，以用于绘图的 <see cref="T:System.Drawing.Graphics" />
    ///  对象为单位。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.Pen" />
    ///  的宽度。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><see cref="P:System.Drawing.Pen.Width" />
    ///  属性设置对不可变 <see cref="T:System.Drawing.Pen" />
    ///  , ，例如由 <see cref="T:System.Drawing.Pens" />
    ///  类。
    ///</exception>
    property Width: Single read get_Width write set_Width;
    ///<summary>
    ///  获取或设置斜接角上联接宽度的限制。
    ///</summary>
    ///<returns>
    ///  斜接角上联接宽度的限制。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><see cref="P:System.Drawing.Pen.MiterLimit" />
    ///  属性设置对不可变 <see cref="T:System.Drawing.Pen" />
    ///  , ，例如由 <see cref="T:System.Drawing.Pens" />
    ///  类。
    ///</exception>
    property MiterLimit: Single read get_MiterLimit write set_MiterLimit;
    ///<summary>
    ///  获取或设置此 <see cref="T:System.Drawing.Pen" />
    ///  的几何变换的副本。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  副本，表示此 <see cref="T:System.Drawing.Pen" />
    ///  的几何变换。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><see cref="P:System.Drawing.Pen.Transform" />
    ///  属性设置对不可变 <see cref="T:System.Drawing.Pen" />
    ///  , ，例如由 <see cref="T:System.Drawing.Pens" />
    ///  类。
    ///</exception>
    property Transform: DNMatrix read get_Transform write set_Transform;
    ///<summary>
    ///  获取或设置此 <see cref="T:System.Drawing.Pen" />
    ///  的颜色。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  结构，表示此 <see cref="T:System.Drawing.Pen" />
    ///  的颜色。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><see cref="P:System.Drawing.Pen.Color" />
    ///  属性设置对不可变 <see cref="T:System.Drawing.Pen" />
    ///  , ，例如由 <see cref="T:System.Drawing.Pens" />
    ///  类。
    ///</exception>
    property Color: DNColor read get_Color write set_Color;
    ///<summary>
    ///  获取或设置 <see cref="T:System.Drawing.Brush" />
    ///  ，用于确定此 <see cref="T:System.Drawing.Pen" />
    ///  的特性。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Brush" />
    ///  ，用于确定此 <see cref="T:System.Drawing.Pen" />
    ///  的特性。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><see cref="P:System.Drawing.Pen.Brush" />
    ///  属性设置对不可变 <see cref="T:System.Drawing.Pen" />
    ///  , ，例如由 <see cref="T:System.Drawing.Pens" />
    ///  类。
    ///</exception>
    property Brush: DNBrush read get_Brush write set_Brush;
    ///<summary>
    ///  获取或设置直线的起点到短划线图案起始处的距离。
    ///</summary>
    ///<returns>
    ///  直线的起点到短划线图案起始处的距离。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><see cref="P:System.Drawing.Pen.DashOffset" />
    ///  属性设置对不可变 <see cref="T:System.Drawing.Pen" />
    ///  , ，例如由 <see cref="T:System.Drawing.Pens" />
    ///  类。
    ///</exception>
    property DashOffset: Single read get_DashOffset write set_DashOffset;
    ///<summary>
    ///  获取或设置自定义的短划线和空白区域的数组。
    ///</summary>
    ///<returns>
    ///  实数数组，指定虚线中交替出现的短划线和空白区域的长度。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><see cref="P:System.Drawing.Pen.DashPattern" />
    ///  属性设置对不可变 <see cref="T:System.Drawing.Pen" />
    ///  , ，例如由 <see cref="T:System.Drawing.Pens" />
    ///  类。
    ///</exception>
    property DashPattern: TArray<Single> read get_DashPattern write set_DashPattern;
    ///<summary>
    ///  获取或设置用于指定复合钢笔的值数组。
    ///  复合钢笔绘制由平行直线和空白区域组成的复合直线。
    ///</summary>
    ///<returns>
    ///  用于指定复合数组的实数组。
    ///  该数组中的元素必须按升序排列，不能小于 0，也不能大于 1。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><see cref="P:System.Drawing.Pen.CompoundArray" />
    ///  属性设置对不可变 <see cref="T:System.Drawing.Pen" />
    ///  , ，例如由 <see cref="T:System.Drawing.Pens" />
    ///  类。
    ///</exception>
    property CompoundArray: TArray<Single> read get_CompoundArray write set_CompoundArray;
  end;

  TDNPen = class(TDNGenericImport<DNPenClass, DNPen>) end;

  //-------------namespace: System.Drawing----------------
  DNRegionClass = interface(DDN.mscorlib.DNMarshalByRefObjectClass)
  ['{4B5420B2-257B-550F-892E-A967F1CA8C5D}']
  { constructors } 

    ///<summary>
    ///  初始化新的 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</summary>
    {class} function init: DNRegion; overload;
    ///<summary>
    ///  初始化新 <see cref="T:System.Drawing.Region" />
    ///  从指定 <see cref="T:System.Drawing.RectangleF" />
    ///  结构。
    ///</summary>
    ///  <param name="rect">
    ///  一个 <see cref="T:System.Drawing.RectangleF" />
    ///  结构，它定义新的内部 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</param>
    {class} function init(rect: DNRectangleF): DNRegion; overload;
    ///<summary>
    ///  初始化新 <see cref="T:System.Drawing.Region" />
    ///  从指定 <see cref="T:System.Drawing.Rectangle" />
    ///  结构。
    ///</summary>
    ///  <param name="rect">
    ///  一个 <see cref="T:System.Drawing.Rectangle" />
    ///  结构，它定义新的内部 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</param>
    {class} function init(rect: DNRectangle): DNRegion; overload;
    ///<summary>
    ///  使用指定的 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  初始化新的 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</summary>
    ///  <param name="path">
    ///  一个 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  ，它定义新的 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="path" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(path: DNGraphicsPath): DNRegion; overload;
    ///<summary>
    ///  从指定的数据中初始化新的 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</summary>
    ///  <param name="rgnData">
    ///  一个 <see cref="T:System.Drawing.Drawing2D.RegionData" />
    ///  ，它定义新的 <see cref="T:System.Drawing.Region" />
    ///  的内部。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="rgnData" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(rgnData: DNRegionData): DNRegion; overload;

  { static methods } 

    ///<summary>
    ///  初始化新 <see cref="T:System.Drawing.Region" />
    ///  从指定的现有的句柄 GDI 区域。
    ///</summary>
    ///  <param name="hrgn">
    ///  一个现有的句柄 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</param>
    ///<returns>
    ///  新的 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</returns>
    {class} function FromHrgn(hrgn: IntPtr): DNRegion;

  end;

  ///<summary>
  ///  描述组成矩形和路径的图形形状的内部。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.Drawing.Region')]
  DNRegion = interface(DDN.mscorlib.DNMarshalByRefObject)
  ['{ECA0B9D1-F8EA-3069-9AF8-DD9A08876F74}']
  { methods } 

    ///<summary>
    ///  创建此 <see cref="T:System.Drawing.Region" />
    ///  的一个精确副本。
    ///</summary>
    ///<returns>
    ///  此方法创建的 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</returns>
    function Clone: DNRegion;
    ///<summary>
    ///  初始化此 <see cref="T:System.Drawing.Region" />
    ///  无限内部的对象。
    ///</summary>
    procedure MakeInfinite;
    ///<summary>
    ///  初始化此 <see cref="T:System.Drawing.Region" />
    ///  为一个空内部。
    ///</summary>
    procedure MakeEmpty;
    ///<summary>
    ///  通过指定的 <see cref="T:System.Drawing.Region" />
    ///  ，将此 <see cref="T:System.Drawing.Region" />
    ///  更新为其自身的交集。
    ///</summary>
    ///  <param name="region">
    ///  要与此 <see cref="T:System.Drawing.Region" />
    ///  相交的 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</param>
    procedure Intersect(region: DNRegion); overload;
    ///<summary>
    ///  更新此 <see cref="T:System.Drawing.Region" />
    ///  为自身与指定联合 <see cref="T:System.Drawing.Rectangle" />
    ///  结构。
    ///</summary>
    ///  <param name="rect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构与此联合 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</param>
    procedure Union(rect: DNRectangle); overload;
    ///<summary>
    ///  更新此 <see cref="T:System.Drawing.Region" />
    ///  包含只有不相交具有指定其内部的部分 <see cref="T:System.Drawing.Rectangle" />
    ///  结构。
    ///</summary>
    ///  <param name="rect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构排除这 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</param>
    procedure Exclude(rect: DNRectangle); overload;
    ///<summary>
    ///  这将返回 Windows 句柄 <see cref="T:System.Drawing.Region" />
    ///  中指定的图形上下文。
    ///</summary>
    ///  <param name="g"><see cref="T:System.Drawing.Graphics" />
    ///  此 <see cref="T:System.Drawing.Region" />
    ///  绘制。
    ///</param>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.Region" />
    ///  的 Windows 句柄。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="g" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    function GetHrgn(g: DNGraphics): IntPtr;
    ///<summary>
    ///  测试是否这 <see cref="T:System.Drawing.Region" />
    ///  有无限内部指定的绘图图面上。
    ///</summary>
    ///  <param name="g">
    ///  一个 <see cref="T:System.Drawing.Graphics" />
    ///  ，它表示绘图图面。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果此内部 <see cref="T:System.Drawing.Region" />
    ///  时与关联的转换是无限期 <paramref name="g" />
    ///  应用; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="g" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    function IsInfinite(g: DNGraphics): Boolean;
    ///<summary>
    ///  释放此 <see cref="T:System.Drawing.Region" />
    ///  使用的所有资源。
    ///</summary>
    procedure Dispose;
    ///<summary>
    ///  更新此 <see cref="T:System.Drawing.Region" />
    ///  至其自身的与指定的交点 <see cref="T:System.Drawing.RectangleF" />
    ///  结构。
    ///</summary>
    ///  <param name="rect"><see cref="T:System.Drawing.RectangleF" />
    ///  相交与此 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</param>
    procedure Intersect(rect: DNRectangleF); overload;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Region" />
    ///  更新为其自身与指定的 <see cref="T:System.Drawing.Rectangle" />
    ///  结构的交集。
    ///</summary>
    ///  <param name="rect">
    ///  要与此 <see cref="T:System.Drawing.Region" />
    ///  相交的 <see cref="T:System.Drawing.Rectangle" />
    ///  结构。
    ///</param>
    procedure Intersect(rect: DNRectangle); overload;
    ///<summary>
    ///  更新此 <see cref="T:System.Drawing.Region" />
    ///  至其自身的与指定的交点 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</summary>
    ///  <param name="path"><see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  要与此相交 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</param>
    procedure Intersect(path: DNGraphicsPath); overload;
    ///<summary>
    ///  释放该 <see cref="T:System.Drawing.Region" />
    ///  的句柄。
    ///</summary>
    ///  <param name="regionHandle"><see cref="T:System.Drawing.Region" />
    ///  的句柄。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="regionHandle" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure ReleaseHrgn(regionHandle: IntPtr);
    ///<summary>
    ///  更新此 <see cref="T:System.Drawing.Region" />
    ///  为自身与指定联合 <see cref="T:System.Drawing.RectangleF" />
    ///  结构。
    ///</summary>
    ///  <param name="rect"><see cref="T:System.Drawing.RectangleF" />
    ///  结构与此联合 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</param>
    procedure Union(rect: DNRectangleF); overload;
    ///<summary>
    ///  更新此 <see cref="T:System.Drawing.Region" />
    ///  为自身与指定联合 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</summary>
    ///  <param name="path"><see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  与此联合 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="path" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure Union(path: DNGraphicsPath); overload;
    ///<summary>
    ///  更新此 <see cref="T:System.Drawing.Region" />
    ///  为自身与指定联合 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</summary>
    ///  <param name="region"><see cref="T:System.Drawing.Region" />
    ///  与此联合 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="region" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure Union(region: DNRegion); overload;
    ///<summary>
    ///  更新此 <see cref="T:System.Drawing.Region" />
    ///  到的并集的交集本身具有指定减去 <see cref="T:System.Drawing.RectangleF" />
    ///  结构。
    ///</summary>
    ///  <param name="rect"><see cref="T:System.Drawing.RectangleF" />
    ///  结构 <see cref="M:System.Drawing.Region.Xor(System.Drawing.Drawing2D.GraphicsPath)" />
    ///  与此 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</param>
    procedure &Xor(rect: DNRectangleF); overload;
    ///<summary>
    ///  更新此 <see cref="T:System.Drawing.Region" />
    ///  到的并集的交集本身具有指定减去 <see cref="T:System.Drawing.Rectangle" />
    ///  结构。
    ///</summary>
    ///  <param name="rect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构 <see cref="Overload:System.Drawing.Region.Xor" />
    ///  与此 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</param>
    procedure &Xor(rect: DNRectangle); overload;
    ///<summary>
    ///  更新此 <see cref="T:System.Drawing.Region" />
    ///  到的并集的交集本身具有指定减去 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</summary>
    ///  <param name="path"><see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  到 <see cref="Overload:System.Drawing.Region.Xor" />
    ///  与此 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="path" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure &Xor(path: DNGraphicsPath); overload;
    ///<summary>
    ///  更新此 <see cref="T:System.Drawing.Region" />
    ///  到的并集的交集本身具有指定减去 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</summary>
    ///  <param name="region"><see cref="T:System.Drawing.Region" />
    ///  到 <see cref="Overload:System.Drawing.Region.Xor" />
    ///  与此 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="region" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure &Xor(region: DNRegion); overload;
    ///<summary>
    ///  更新此 <see cref="T:System.Drawing.Region" />
    ///  包含只有不相交具有指定其内部的部分 <see cref="T:System.Drawing.RectangleF" />
    ///  结构。
    ///</summary>
    ///  <param name="rect"><see cref="T:System.Drawing.RectangleF" />
    ///  结构排除这 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</param>
    procedure Exclude(rect: DNRectangleF); overload;
    ///<summary>
    ///  更新此 <see cref="T:System.Drawing.Region" />
    ///  包含只有不相交具有指定其内部的部分 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</summary>
    ///  <param name="path"><see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  排除这 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="path" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure Exclude(path: DNGraphicsPath); overload;
    ///<summary>
    ///  更新此 <see cref="T:System.Drawing.Region" />
    ///  包含只有不相交具有指定其内部的部分 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</summary>
    ///  <param name="region"><see cref="T:System.Drawing.Region" />
    ///  排除这 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="region" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure Exclude(region: DNRegion); overload;
    ///<summary>
    ///  更新此 <see cref="T:System.Drawing.Region" />
    ///  要包含的指定部分 <see cref="T:System.Drawing.RectangleF" />
    ///  与此不相交的结构 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</summary>
    ///  <param name="rect"><see cref="T:System.Drawing.RectangleF" />
    ///  结构来补充这 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</param>
    procedure Complement(rect: DNRectangleF); overload;
    ///<summary>
    ///  更新此 <see cref="T:System.Drawing.Region" />
    ///  要包含的指定部分 <see cref="T:System.Drawing.Rectangle" />
    ///  与此不相交的结构 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</summary>
    ///  <param name="rect"><see cref="T:System.Drawing.Rectangle" />
    ///  结构来补充这 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</param>
    procedure Complement(rect: DNRectangle); overload;
    ///<summary>
    ///  更新此 <see cref="T:System.Drawing.Region" />
    ///  以包含与此 <see cref="T:System.Drawing.Region" />
    ///  不相交的指定的 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  的那部分。
    ///</summary>
    ///  <param name="path">
    ///  要对此 <see cref="T:System.Drawing.Region" />
    ///  进行补充的 <see cref="T:System.Drawing.Drawing2D.GraphicsPath" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="path" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure Complement(path: DNGraphicsPath); overload;
    ///<summary>
    ///  更新此 <see cref="T:System.Drawing.Region" />
    ///  以包含与此 <see cref="T:System.Drawing.Region" />
    ///  不相交的指定的 <see cref="T:System.Drawing.Region" />
    ///  的那部分。
    ///</summary>
    ///  <param name="region">
    ///  要对此 <see cref="T:System.Drawing.Region" />
    ///  对象进行补充的 <see cref="T:System.Drawing.Region" />
    ///  对象。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="region" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure Complement(region: DNRegion); overload;
    ///<summary>
    ///  这些坐标偏移 <see cref="T:System.Drawing.Region" />
    ///  指定的量。
    ///</summary>
    ///  <param name="dx">
    ///  此偏移量 <see cref="T:System.Drawing.Region" />
    ///  水平。
    ///</param>
    ///  <param name="dy">
    ///  此偏移量 <see cref="T:System.Drawing.Region" />
    ///  垂直方向。
    ///</param>
    procedure Translate(dx: Single; dy: Single); overload;
    ///<summary>
    ///  这些坐标偏移 <see cref="T:System.Drawing.Region" />
    ///  指定的量。
    ///</summary>
    ///  <param name="dx">
    ///  此偏移量 <see cref="T:System.Drawing.Region" />
    ///  水平。
    ///</param>
    ///  <param name="dy">
    ///  此偏移量 <see cref="T:System.Drawing.Region" />
    ///  垂直方向。
    ///</param>
    procedure Translate(dx: Int32; dy: Int32); overload;
    ///<summary>
    ///  这一转变源自 <see cref="T:System.Drawing.Region" />
    ///  由指定 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  。
    ///</summary>
    ///  <param name="matrix"><see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  进行变换这 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="matrix" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    procedure Transform(matrix: DNMatrix);
    ///<summary>
    ///  获取 <see cref="T:System.Drawing.RectangleF" />
    ///  结构，它表示限定此矩形 <see cref="T:System.Drawing.Region" />
    ///  的绘图图面上 <see cref="T:System.Drawing.Graphics" />
    ///  对象。
    ///</summary>
    ///  <param name="g"><see cref="T:System.Drawing.Graphics" />
    ///  此 <see cref="T:System.Drawing.Region" />
    ///  绘制。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.RectangleF" />
    ///  结构，它表示此边界的矩形 <see cref="T:System.Drawing.Region" />
    ///  绘图图面上指定。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="g" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    function GetBounds(g: DNGraphics): DNRectangleF;
    ///<summary>
    ///  测试是否这 <see cref="T:System.Drawing.Region" />
    ///  有空的内部指定的绘图图面上。
    ///</summary>
    ///  <param name="g">
    ///  一个 <see cref="T:System.Drawing.Graphics" />
    ///  ，它表示绘图图面。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果此内部 <see cref="T:System.Drawing.Region" />
    ///  与转换相关联时，是空 <paramref name="g" />
    ///  应用; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="g" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    function IsEmpty(g: DNGraphics): Boolean;
    ///<summary>
    ///  测试是否指定 <see cref="T:System.Drawing.Region" />
    ///  是否与此 <see cref="T:System.Drawing.Region" />
    ///  绘图图面上指定。
    ///</summary>
    ///  <param name="region">
    ///  要测试的 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</param>
    ///  <param name="g">
    ///  一个 <see cref="T:System.Drawing.Graphics" />
    ///  ，它表示绘图图面。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果与转换关联时，均不同于内部与此区域的内部与区域 <paramref name="g" />
    ///  参数是应用; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="g" />
    ///  或 <paramref name="region" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    function Equals(region: DNRegion; g: DNGraphics): Boolean; overload;
    ///<summary>
    ///  返回 <see cref="T:System.Drawing.Drawing2D.RegionData" />
    ///  表示描述此信息 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Drawing2D.RegionData" />
    ///  表示描述此信息 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</returns>
    function GetRegionData: DNRegionData;
    ///<summary>
    ///  测试是否指定的点包含在此 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</summary>
    ///  <param name="x">
    ///  要测试的点的 X 坐标。
    ///</param>
    ///  <param name="y">
    ///  要测试的点的 Y 坐标。
    ///</param>
    ///<returns><see langword="true" />
    ///  当指定的点包含在此 <see cref="T:System.Drawing.Region" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(x: Single; y: Single): Boolean; overload;
    ///<summary>
    ///  测试是否指定 <see cref="T:System.Drawing.PointF" />
    ///  结构包含在此 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</summary>
    ///  <param name="point"><see cref="T:System.Drawing.PointF" />
    ///  要测试其结构。
    ///</param>
    ///<returns><see langword="true" />
    ///  当 <paramref name="point" />
    ///  包含在此 <see cref="T:System.Drawing.Region" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(point: DNPointF): Boolean; overload;
    ///<summary>
    ///  测试是否指定的点包含在此 <see cref="T:System.Drawing.Region" />
    ///  时使用指定绘制 <see cref="T:System.Drawing.Graphics" />
    ///  。
    ///</summary>
    ///  <param name="x">
    ///  要测试的点的 X 坐标。
    ///</param>
    ///  <param name="y">
    ///  要测试的点的 Y 坐标。
    ///</param>
    ///  <param name="g">
    ///  一个 <see cref="T:System.Drawing.Graphics" />
    ///  ，它表示的图形上下文。
    ///</param>
    ///<returns><see langword="true" />
    ///  当指定的点包含在此 <see cref="T:System.Drawing.Region" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(x: Single; y: Single; g: DNGraphics): Boolean; overload;
    ///<summary>
    ///  测试是否指定 <see cref="T:System.Drawing.PointF" />
    ///  结构包含在此 <see cref="T:System.Drawing.Region" />
    ///  时使用指定绘制 <see cref="T:System.Drawing.Graphics" />
    ///  。
    ///</summary>
    ///  <param name="point"><see cref="T:System.Drawing.PointF" />
    ///  要测试其结构。
    ///</param>
    ///  <param name="g">
    ///  一个 <see cref="T:System.Drawing.Graphics" />
    ///  ，它表示的图形上下文。
    ///</param>
    ///<returns><see langword="true" />
    ///  当 <paramref name="point" />
    ///  包含在此 <see cref="T:System.Drawing.Region" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(point: DNPointF; g: DNGraphics): Boolean; overload;
    ///<summary>
    ///  测试是否指定任何的矩形部分包含在此 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</summary>
    ///  <param name="x">
    ///  要测试的矩形的左上角 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  要测试的矩形的左上角 y 坐标。
    ///</param>
    ///  <param name="width">
    ///  要测试的矩形的宽度。
    ///</param>
    ///  <param name="height">
    ///  要测试的矩形的高度。
    ///</param>
    ///<returns><see langword="true" />
    ///  当指定的任何的矩形部分包含在此 <see cref="T:System.Drawing.Region" />
    ///  对象; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(x: Single; y: Single; width: Single; height: Single): Boolean; overload;
    ///<summary>
    ///  测试是否有任何指定的部分 <see cref="T:System.Drawing.RectangleF" />
    ///  结构包含在此 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</summary>
    ///  <param name="rect"><see cref="T:System.Drawing.RectangleF" />
    ///  要测试其结构。
    ///</param>
    ///<returns><see langword="true" />
    ///  时的任何部分 <paramref name="rect" />
    ///  包含在此 <see cref="T:System.Drawing.Region" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(rect: DNRectangleF): Boolean; overload;
    ///<summary>
    ///  测试是否指定任何的矩形部分包含在此 <see cref="T:System.Drawing.Region" />
    ///  时使用指定绘制 <see cref="T:System.Drawing.Graphics" />
    ///  。
    ///</summary>
    ///  <param name="x">
    ///  要测试的矩形的左上角 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  要测试的矩形的左上角 y 坐标。
    ///</param>
    ///  <param name="width">
    ///  要测试的矩形的宽度。
    ///</param>
    ///  <param name="height">
    ///  要测试的矩形的高度。
    ///</param>
    ///  <param name="g">
    ///  一个 <see cref="T:System.Drawing.Graphics" />
    ///  ，它表示的图形上下文。
    ///</param>
    ///<returns><see langword="true" />
    ///  当指定的任何的矩形部分包含在此 <see cref="T:System.Drawing.Region" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(x: Single; y: Single; width: Single; height: Single; g: DNGraphics): Boolean; overload;
    ///<summary>
    ///  测试是否有任何指定的部分 <see cref="T:System.Drawing.RectangleF" />
    ///  结构包含在此 <see cref="T:System.Drawing.Region" />
    ///  时使用指定绘制 <see cref="T:System.Drawing.Graphics" />
    ///  。
    ///</summary>
    ///  <param name="rect"><see cref="T:System.Drawing.RectangleF" />
    ///  要测试其结构。
    ///</param>
    ///  <param name="g">
    ///  一个 <see cref="T:System.Drawing.Graphics" />
    ///  ，它表示的图形上下文。
    ///</param>
    ///<returns><see langword="true" />
    ///  当 <paramref name="rect" />
    ///  包含在此 <see cref="T:System.Drawing.Region" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(rect: DNRectangleF; g: DNGraphics): Boolean; overload;
    ///<summary>
    ///  测试是否指定的点包含在此 <see cref="T:System.Drawing.Region" />
    ///  对象时使用指定绘制 <see cref="T:System.Drawing.Graphics" />
    ///  对象。
    ///</summary>
    ///  <param name="x">
    ///  要测试的点的 X 坐标。
    ///</param>
    ///  <param name="y">
    ///  要测试的点的 Y 坐标。
    ///</param>
    ///  <param name="g">
    ///  一个 <see cref="T:System.Drawing.Graphics" />
    ///  ，它表示的图形上下文。
    ///</param>
    ///<returns><see langword="true" />
    ///  当指定的点包含在此 <see cref="T:System.Drawing.Region" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(x: Int32; y: Int32; g: DNGraphics): Boolean; overload;
    ///<summary>
    ///  测试是否指定 <see cref="T:System.Drawing.Point" />
    ///  结构包含在此 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</summary>
    ///  <param name="point"><see cref="T:System.Drawing.Point" />
    ///  要测试其结构。
    ///</param>
    ///<returns><see langword="true" />
    ///  当 <paramref name="point" />
    ///  包含在此 <see cref="T:System.Drawing.Region" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(point: DNPoint): Boolean; overload;
    ///<summary>
    ///  测试是否指定 <see cref="T:System.Drawing.Point" />
    ///  结构包含在此 <see cref="T:System.Drawing.Region" />
    ///  时使用指定绘制 <see cref="T:System.Drawing.Graphics" />
    ///  。
    ///</summary>
    ///  <param name="point"><see cref="T:System.Drawing.Point" />
    ///  要测试其结构。
    ///</param>
    ///  <param name="g">
    ///  一个 <see cref="T:System.Drawing.Graphics" />
    ///  ，它表示的图形上下文。
    ///</param>
    ///<returns><see langword="true" />
    ///  当 <paramref name="point" />
    ///  包含在此 <see cref="T:System.Drawing.Region" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(point: DNPoint; g: DNGraphics): Boolean; overload;
    ///<summary>
    ///  测试是否指定任何的矩形部分包含在此 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</summary>
    ///  <param name="x">
    ///  要测试的矩形的左上角 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  要测试的矩形的左上角 y 坐标。
    ///</param>
    ///  <param name="width">
    ///  要测试的矩形的宽度。
    ///</param>
    ///  <param name="height">
    ///  要测试的矩形的高度。
    ///</param>
    ///<returns><see langword="true" />
    ///  当指定的任何的矩形部分包含在此 <see cref="T:System.Drawing.Region" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(x: Int32; y: Int32; width: Int32; height: Int32): Boolean; overload;
    ///<summary>
    ///  测试是否有任何指定的部分 <see cref="T:System.Drawing.Rectangle" />
    ///  结构包含在此 <see cref="T:System.Drawing.Region" />
    ///  。
    ///</summary>
    ///  <param name="rect"><see cref="T:System.Drawing.Rectangle" />
    ///  要测试其结构。
    ///</param>
    ///<returns>
    ///  此方法返回 <see langword="true" />
    ///  时的任何部分 <paramref name="rect" />
    ///  包含在此 <see cref="T:System.Drawing.Region" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(rect: DNRectangle): Boolean; overload;
    ///<summary>
    ///  测试是否指定任何的矩形部分包含在此 <see cref="T:System.Drawing.Region" />
    ///  时使用指定绘制 <see cref="T:System.Drawing.Graphics" />
    ///  。
    ///</summary>
    ///  <param name="x">
    ///  要测试的矩形的左上角 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  要测试的矩形的左上角 y 坐标。
    ///</param>
    ///  <param name="width">
    ///  要测试的矩形的宽度。
    ///</param>
    ///  <param name="height">
    ///  要测试的矩形的高度。
    ///</param>
    ///  <param name="g">
    ///  一个 <see cref="T:System.Drawing.Graphics" />
    ///  ，它表示的图形上下文。
    ///</param>
    ///<returns><see langword="true" />
    ///  当指定的任何的矩形部分包含在此 <see cref="T:System.Drawing.Region" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(x: Int32; y: Int32; width: Int32; height: Int32; g: DNGraphics): Boolean; overload;
    ///<summary>
    ///  测试是否有任何指定的部分 <see cref="T:System.Drawing.Rectangle" />
    ///  结构包含在此 <see cref="T:System.Drawing.Region" />
    ///  时使用指定绘制 <see cref="T:System.Drawing.Graphics" />
    ///  。
    ///</summary>
    ///  <param name="rect"><see cref="T:System.Drawing.Rectangle" />
    ///  要测试其结构。
    ///</param>
    ///  <param name="g">
    ///  一个 <see cref="T:System.Drawing.Graphics" />
    ///  ，它表示的图形上下文。
    ///</param>
    ///<returns><see langword="true" />
    ///  时的任何部分 <paramref name="rect" />
    ///  包含在此 <see cref="T:System.Drawing.Region" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsVisible(rect: DNRectangle; g: DNGraphics): Boolean; overload;
    ///<summary>
    ///  返回的数组 <see cref="T:System.Drawing.RectangleF" />
    ///  近似的结构 <see cref="T:System.Drawing.Region" />
    ///  应用指定的矩阵变换之后。
    ///</summary>
    ///  <param name="matrix">
    ///  一个 <see cref="T:System.Drawing.Drawing2D.Matrix" />
    ///  ，表示要应用于区域的几何变换。
    ///</param>
    ///<returns>
    ///  一个数组 <see cref="T:System.Drawing.RectangleF" />
    ///  近似的结构 <see cref="T:System.Drawing.Region" />
    ///  应用指定的矩阵变换之后。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="matrix" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    function GetRegionScans(matrix: DNMatrix): TArray<DNRectangleF>;
    function GetLifetimeService: DDN.mscorlib.DNObject;
    function InitializeLifetimeService: DDN.mscorlib.DNObject;
    function CreateObjRef(requestedType: DDN.mscorlib.DNType): DDN.mscorlib.DNObjRef;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean; overload;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNRegion = class(TDNGenericImport<DNRegionClass, DNRegion>) end;

  //-------------namespace: System.Drawing----------------
  DNStringFormatClass = interface(DDN.mscorlib.DNMarshalByRefObjectClass)
  ['{56C8F5D2-5C03-54B7-9939-1F548CEBD429}']
  { static getter & setter } 

    {class} function get_GenericDefault: DNStringFormat;
    {class} function get_GenericTypographic: DNStringFormat;

  { constructors } 

    ///<summary>
    ///  初始化新的 <see cref="T:System.Drawing.StringFormat" />
    ///  对象。
    ///</summary>
    {class} function init: DNStringFormat; overload;
    ///<summary>
    ///  用指定的 <see cref="T:System.Drawing.StringFormatFlags" />
    ///  枚举初始化新 <see cref="T:System.Drawing.StringFormat" />
    ///  对象。
    ///</summary>
    ///  <param name="options">
    ///  新 <see cref="T:System.Drawing.StringFormat" />
    ///  对象的 <see cref="T:System.Drawing.StringFormatFlags" />
    ///  枚举。
    ///</param>
    {class} function init(options: DNStringFormatFlags): DNStringFormat; overload;
    ///<summary>
    ///  用指定的 <see cref="T:System.Drawing.StringFormatFlags" />
    ///  枚举和语言初始化新的 <see cref="T:System.Drawing.StringFormat" />
    ///  对象。
    ///</summary>
    ///  <param name="options">
    ///  新 <see cref="T:System.Drawing.StringFormat" />
    ///  对象的 <see cref="T:System.Drawing.StringFormatFlags" />
    ///  枚举。
    ///</param>
    ///  <param name="language">
    ///  一个指示文本语言的值。
    ///</param>
    {class} function init(options: DNStringFormatFlags; language: Int32): DNStringFormat; overload;
    ///<summary>
    ///  从指定的现有 <see cref="T:System.Drawing.StringFormat" />
    ///  对象初始化新 <see cref="T:System.Drawing.StringFormat" />
    ///  对象。
    ///</summary>
    ///  <param name="format"><see cref="T:System.Drawing.StringFormat" />
    ///  对象，从该对象初始化新 <see cref="T:System.Drawing.StringFormat" />
    ///  对象。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="format" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(format: DNStringFormat): DNStringFormat; overload;

  { static propertys } 

    ///<summary>
    ///  获取泛型默认 <see cref="T:System.Drawing.StringFormat" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  泛型默认 <see cref="T:System.Drawing.StringFormat" />
    ///  对象。
    ///</returns>
    {class} property GenericDefault: DNStringFormat read get_GenericDefault;
    ///<summary>
    ///  获取泛型版式 <see cref="T:System.Drawing.StringFormat" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  泛型版式 <see cref="T:System.Drawing.StringFormat" />
    ///  对象。
    ///</returns>
    {class} property GenericTypographic: DNStringFormat read get_GenericTypographic;
  end;

  ///<summary>
  ///  封装文本布局信息（如对齐方式、方向和制表位）、显示操作（如省略号插入和区域数字替换）和 OpenType 功能。
  ///  此类不能被继承。
  ///</summary>
  [DNTypeName('System.Drawing.StringFormat')]
  DNStringFormat = interface(DDN.mscorlib.DNMarshalByRefObject)
  ['{977C6406-2374-3D2B-ADE1-F9C93DB908CA}']
  { getters & setters } 

    function get_FormatFlags: DNStringFormatFlags;
    procedure set_FormatFlags(value: DNStringFormatFlags);
    function get_Alignment: DNStringAlignment;
    procedure set_Alignment(value: DNStringAlignment);
    function get_LineAlignment: DNStringAlignment;
    procedure set_LineAlignment(value: DNStringAlignment);
    function get_HotkeyPrefix: DNHotkeyPrefix;
    procedure set_HotkeyPrefix(value: DNHotkeyPrefix);
    function get_Trimming: DNStringTrimming;
    procedure set_Trimming(value: DNStringTrimming);
    function get_DigitSubstitutionMethod: DNStringDigitSubstitute;
    function get_DigitSubstitutionLanguage: Int32;

  { methods } 

    ///<summary>
    ///  释放由此 <see cref="T:System.Drawing.StringFormat" />
    ///  对象使用的所有资源。
    ///</summary>
    procedure Dispose;
    ///<summary>
    ///  创建此 <see cref="T:System.Drawing.StringFormat" />
    ///  对象的一个精确副本。
    ///</summary>
    ///<returns>
    ///  此方法创建的 <see cref="T:System.Drawing.StringFormat" />
    ///  对象。
    ///</returns>
    function Clone: DDN.mscorlib.DNObject;
    ///<summary>
    ///  指定 <see cref="T:System.Drawing.CharacterRange" />
    ///  结构的数组，这些结构表示通过调用 <see cref="M:System.Drawing.Graphics.MeasureCharacterRanges(System.String,System.Drawing.Font,System.Drawing.RectangleF,System.Drawing.StringFormat)" />
    ///  方法来测定的字符的范围。
    ///</summary>
    ///  <param name="ranges"><see cref="T:System.Drawing.CharacterRange" />
    ///  结构的数组，这些结构指定由调用 <see cref="M:System.Drawing.Graphics.MeasureCharacterRanges(System.String,System.Drawing.Font,System.Drawing.RectangleF,System.Drawing.StringFormat)" />
    ///  方法来测定的字符范围。
    ///</param>
    ///<exception cref="T:System.OverflowException">
    ///  已设置超过 32 个字符范围。
    ///</exception>
    procedure SetMeasurableCharacterRanges(ranges: TArray<DNCharacterRange>);
    ///<summary>
    ///  为此 <see cref="T:System.Drawing.StringFormat" />
    ///  对象设置制表位。
    ///</summary>
    ///  <param name="firstTabOffset">
    ///  文本行开头和第一个制表位之间的空格数。
    ///</param>
    ///  <param name="tabStops">
    ///  制表位之间的距离的数组，这些距离的单位由 <see cref="P:System.Drawing.Graphics.PageUnit" />
    ///  属性指定。
    ///</param>
    procedure SetTabStops(firstTabOffset: Single; tabStops: TArray<Single>);
    function GetTabStops(out firstTabOffset: Single): TArray<Single>;
    ///<summary>
    ///  指定将本地数字替换为西方数字时所使用的语言和方法。
    ///</summary>
    ///  <param name="language">
    ///  一个区域语言支持 (NLS) 语言标识符，它标识在将本地数字替换为西方数字时所使用的语言。
    ///  可将 <see cref="T:System.Globalization.CultureInfo" />
    ///  对象的 <see cref="P:System.Globalization.CultureInfo.LCID" />
    ///  属性作为 NLS 语言标识符传递。
    ///  例如，假定通过将字符串“ar-EG”传递给 <see cref="T:System.Globalization.CultureInfo" />
    ///  构造函数来创建 <see cref="T:System.Globalization.CultureInfo" />
    ///  对象。
    ///  如果将该 <see cref="T:System.Globalization.CultureInfo" />
    ///  对象的 <see cref="P:System.Globalization.CultureInfo.LCID" />
    ///  属性连同 <see cref="F:System.Drawing.StringDigitSubstitute.Traditional" />
    ///  一起传递给 <see cref="M:System.Drawing.StringFormat.SetDigitSubstitution(System.Int32,System.Drawing.StringDigitSubstitute)" />
    ///  ，则在显示时阿拉伯 - 印度文数字将会替换西方数字。
    ///</param>
    ///  <param name="substitute"><see cref="T:System.Drawing.StringDigitSubstitute" />
    ///  枚举的一个元素，它指定如何显示数字位。
    ///</param>
    procedure SetDigitSubstitution(language: Int32; substitute: DNStringDigitSubstitute);
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.StringFormat" />
    ///  对象转换为可读的字符串。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.StringFormat" />
    ///  对象的字符串表示形式。
    ///</returns>
    function ToString: string;
    function GetLifetimeService: DDN.mscorlib.DNObject;
    function InitializeLifetimeService: DDN.mscorlib.DNObject;
    function CreateObjRef(requestedType: DDN.mscorlib.DNType): DDN.mscorlib.DNObjRef;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取或设置包含格式化信息的 <see cref="T:System.Drawing.StringFormatFlags" />
    ///  枚举。
    ///</summary>
    ///<returns>
    ///  包含格式化信息的 <see cref="T:System.Drawing.StringFormatFlags" />
    ///  枚举。
    ///</returns>
    property FormatFlags: DNStringFormatFlags read get_FormatFlags write set_FormatFlags;
    ///<summary>
    ///  获取或设置字符串的水平对齐方式。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.StringAlignment" />
    ///  枚举，它指定字符串的水平对齐方式。
    ///</returns>
    property Alignment: DNStringAlignment read get_Alignment write set_Alignment;
    ///<summary>
    ///  获取或设置字符串的垂直对齐方式。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.StringAlignment" />
    ///  枚举，它表示行的垂直对齐方式。
    ///</returns>
    property LineAlignment: DNStringAlignment read get_LineAlignment write set_LineAlignment;
    ///<summary>
    ///  获取或设置此 <see cref="T:System.Drawing.StringFormat" />
    ///  对象的 <see cref="T:System.Drawing.Text.HotkeyPrefix" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.StringFormat" />
    ///  对象的 <see cref="T:System.Drawing.Text.HotkeyPrefix" />
    ///  对象，默认值为 <see cref="F:System.Drawing.Text.HotkeyPrefix.None" />
    ///  。
    ///</returns>
    property HotkeyPrefix: DNHotkeyPrefix read get_HotkeyPrefix write set_HotkeyPrefix;
    ///<summary>
    ///  获取或设置此 <see cref="T:System.Drawing.StringFormat" />
    ///  对象的 <see cref="T:System.Drawing.StringTrimming" />
    ///  枚举。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.StringTrimming" />
    ///  枚举，它指示当用此 <see cref="T:System.Drawing.StringFormat" />
    ///  对象绘制的文本超出布局矩形的边缘时被剪裁的方式。
    ///</returns>
    property Trimming: DNStringTrimming read get_Trimming write set_Trimming;
    ///<summary>
    ///  获取要用于数字替换的方法。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.StringDigitSubstitute" />
    ///  枚举值，它指定如何替换字符串中因当前字体不支持而无法显示的字符。
    ///</returns>
    property DigitSubstitutionMethod: DNStringDigitSubstitute read get_DigitSubstitutionMethod;
    ///<summary>
    ///  获取将本地数字替换西方数字时所使用的语言。
    ///</summary>
    ///<returns>
    ///  一个区域语言支持 (NLS) 语言标识符，它标识在将本地数字替换为西方数字时所使用的语言。
    ///  可将 <see cref="T:System.Globalization.CultureInfo" />
    ///  对象的 <see cref="P:System.Globalization.CultureInfo.LCID" />
    ///  属性作为 NLS 语言标识符传递。
    ///  例如，假定通过将字符串“ar-EG”传递给 <see cref="T:System.Globalization.CultureInfo" />
    ///  构造函数来创建 <see cref="T:System.Globalization.CultureInfo" />
    ///  对象。
    ///  如果将该 <see cref="T:System.Globalization.CultureInfo" />
    ///  对象的 <see cref="P:System.Globalization.CultureInfo.LCID" />
    ///  属性连同 <see cref="F:System.Drawing.StringDigitSubstitute.Traditional" />
    ///  一起传递给 <see cref="M:System.Drawing.StringFormat.SetDigitSubstitution(System.Int32,System.Drawing.StringDigitSubstitute)" />
    ///  方法，则在显示时阿拉伯 - 印度文数字将会替换西方数字。
    ///</returns>
    property DigitSubstitutionLanguage: Int32 read get_DigitSubstitutionLanguage;
  end;

  TDNStringFormat = class(TDNGenericImport<DNStringFormatClass, DNStringFormat>) end;

  //-------------namespace: System.Runtime.InteropServices----------------
  DNStandardOleMarshalObjectClass = interface(DDN.mscorlib.DNMarshalByRefObjectClass)
  ['{4B04E9B2-2342-544E-BD7A-4DBD8D30C8C9}']
  end;

  ///<summary>
  ///  标准公共语言运行时 (CLR) 自由线程封送处理程序替换为标准 OLE STA 封送处理程序。
  ///</summary>
  [DNTypeName('System.Runtime.InteropServices.StandardOleMarshalObject')]
  DNStandardOleMarshalObject = interface(DDN.mscorlib.DNMarshalByRefObject)
  ['{0EF62602-E19F-3DF5-BE17-A43AAF6BA008}']
  { methods } 

    function GetLifetimeService: DDN.mscorlib.DNObject;
    function InitializeLifetimeService: DDN.mscorlib.DNObject;
    function CreateObjRef(requestedType: DDN.mscorlib.DNType): DDN.mscorlib.DNObjRef;
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    function GetHashCode: Int32;
    function GetType: DDN.mscorlib.DNType;
    function ToString: string;

  end;

  TDNStandardOleMarshalObject = class(TDNGenericImport<DNStandardOleMarshalObjectClass, DNStandardOleMarshalObject>) end;

  //-------------namespace: System.Runtime.Versioning----------------
  DNFrameworkNameClass = interface(DDN.mscorlib.DNObjectClass)
  ['{DACFE325-96FA-5FEE-8665-021F12739DA2}']
  { constructors } 

    ///<summary>
    ///  新实例初始化 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  从字符串的类和一个 <see cref="T:System.Version" />
    ///  标识的.NET Framework 版本的对象。
    ///</summary>
    ///  <param name="identifier">
    ///  一个字符串，标识的.NET Framework 版本。
    ///</param>
    ///  <param name="version">
    ///  一个包含.NET Framework 的版本信息的对象。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="identifier" />
    ///  为 <see cref="F:System.String.Empty" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="identifier" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="version" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(identifier: string; version: DDN.mscorlib.DNVersion): DNFrameworkName; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  类，从字符串 <see cref="T:System.Version" />
    ///  标识的.NET Framework 版本，以及配置文件名称的对象。
    ///</summary>
    ///  <param name="identifier">
    ///  一个字符串，标识的.NET Framework 版本。
    ///</param>
    ///  <param name="version">
    ///  一个包含.NET Framework 的版本信息的对象。
    ///</param>
    ///  <param name="profile">
    ///  配置文件名称。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="identifier" />
    ///  为 <see cref="F:System.String.Empty" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="identifier" />
    ///  为 <see langword="null" />
    ///  。
    ///  - 或 -
    ///  <paramref name="version" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(identifier: string; version: DDN.mscorlib.DNVersion; profile: string): DNFrameworkName; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  从一个字符串，包含有关.NET Framework 的版本信息的类。
    ///</summary>
    ///  <param name="frameworkName">
    ///  一个字符串，包含.NET Framework 的版本信息。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="frameworkName" />
    ///  为 <see cref="F:System.String.Empty" />
    ///  。
    ///  - 或 -
    ///  <paramref name="frameworkName" />
    ///  具有少于两个部分或三个以上的组件。
    ///  - 或 -
    ///  <paramref name="frameworkName" />
    ///  不包括主版本号和次版本号。
    ///  - 或 -
    ///  <paramref name="frameworkName " />
    ///  不包括有效的版本号。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="frameworkName" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function init(frameworkName: string): DNFrameworkName; overload;

  end;

  ///<summary>
  ///  表示 .NET Framework 的版本名称。
  ///</summary>
  [DNTypeName('System.Runtime.Versioning.FrameworkName')]
  DNFrameworkName = interface(DDN.mscorlib.DNObject)
  ['{80B9C665-1969-3BA7-9E64-BCED9A56B36E}']
  { getters & setters } 

    function get_Identifier: string;
    function get_Version: DDN.mscorlib.DNVersion;
    function get_Profile: string;
    function get_FullName: string;

  { methods } 

    ///<summary>
    ///  返回一个值，该值指示是否此 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  实例表示相同的.NET Framework 版本与指定的对象。
    ///</summary>
    ///  <param name="obj">
    ///  要与当前类型进行比较的对象。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果当前的每个组件 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  对象的相应部分匹配 <paramref name="obj" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function Equals(obj: DDN.mscorlib.DNObject): Boolean; overload;
    ///<summary>
    ///  返回一个值，该值指示是否此 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  实例表示与指定相同的.NET Framework 版本 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  实例。
    ///</summary>
    ///  <param name="other">
    ///  要与当前类型进行比较的对象。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果当前的每个组件 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  对象的相应部分匹配 <paramref name="other" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function Equals(other: DNFrameworkName): Boolean; overload;
    ///<summary>
    ///  返回的哈希代码 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  32 位有符号的整数，表示此实例的哈希代码。
    ///</returns>
    function GetHashCode: Int32;
    ///<summary>
    ///  返回的字符串表示形式 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  表示此 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  对象的字符串。
    ///</returns>
    function ToString: string;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取此标识符 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  此标识符 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  对象。
    ///</returns>
    property Identifier: string read get_Identifier;
    ///<summary>
    ///  获取此版本 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  一个对象，包含有关此版本信息 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  对象。
    ///</returns>
    property Version: DDN.mscorlib.DNVersion read get_Version;
    ///<summary>
    ///  获取此配置文件名称 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  此配置文件名称 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  对象。
    ///</returns>
    property Profile: string read get_Profile;
    ///<summary>
    ///  获取此的完整名称 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  对象。
    ///</summary>
    ///<returns>
    ///  完整名称 <see cref="T:System.Runtime.Versioning.FrameworkName" />
    ///  对象。
    ///</returns>
    property FullName: string read get_FullName;
  end;

  TDNFrameworkName = class(TDNGenericImport<DNFrameworkNameClass, DNFrameworkName>) end;

  //-------------namespace: System----------------
  DNUriClass = interface(DDN.mscorlib.DNObjectClass)
  ['{8A027B3B-A57B-527D-952E-7A148425AE4A}']
  { constructors } 

    ///<summary>
    ///  用指定的 URI 初始化 <see cref="T:System.Uri" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="uriString">
    ///  一个 URI。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="uriString" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.UriFormatException">
    ///  在.NET for Windows Store apps或可移植类库，捕获该基类异常， <see cref="T:System.FormatException" />
    ///  ，而不是。
    ///  <paramref name="uriString" />
    ///  为空。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的方案格式不正确。
    ///  请参阅<see cref="M:System.Uri.CheckSchemeName(System.String)" />
    ///  。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  包含过多斜杠。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的密码无效。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的主机名无效。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的文件名无效。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的用户名无效。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的主机名或证书颁发机构名称不能以反斜杠结尾。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的端口号无效或无法分析。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  的长度超过 65519 个字符。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的方案的长度超过 1023 个字符。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中存在无效的字符序列。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的 MS-DOS 路径必须以 c:\\ 开头。
    ///</exception>
    {class} function init(uriString: string): DNUri; overload;
    ///<summary>
    ///  用指定的 URI 初始化 <see cref="T:System.Uri" />
    ///  类的新实例，并对字符转义进行显式控制。
    ///</summary>
    ///  <param name="uriString">
    ///  URI。
    ///</param>
    ///  <param name="dontEscape">
    ///  如果 <see langword="true" />
    ///  已完全转义，则为 <paramref name="uriString" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///  请参阅“备注”。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="uriString" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.UriFormatException"><paramref name="uriString" />
    ///  为空或仅包含空格。
    ///  - 或 -
    ///  中指定的方案<paramref name="uriString" />
    ///  无效。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  包含过多斜杠。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的密码无效。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的主机名无效。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的文件名无效。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的用户名无效。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的主机名或证书颁发机构名称不能以反斜杠结尾。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的端口号无效或无法分析。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  的长度超过 65519 个字符。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的方案的长度超过 1023 个字符。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中存在无效的字符序列。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的 MS-DOS 路径必须以 c:\\ 开头。
    ///</exception>
    {class} function init(uriString: string; dontEscape: Boolean): DNUri; overload;
    ///<summary>
    ///  根据指定的基 URI 和相对 URI，初始化 <see cref="T:System.Uri" />
    ///  类的新实例，并对字符转义进行显式控制。
    ///</summary>
    ///  <param name="baseUri">
    ///  基 URI。
    ///</param>
    ///  <param name="relativeUri">
    ///  要添加到基 URI 的相对 URI。
    ///</param>
    ///  <param name="dontEscape">
    ///  如果 <see langword="true" />
    ///  已完全转义，则为 <paramref name="uriString" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///  请参阅“备注”。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="baseUri" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="baseUri" />
    ///  不是绝对的 <see cref="T:System.Uri" />
    ///  实例。
    ///</exception><exception cref="T:System.UriFormatException">
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 为空或仅包含空格。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的方案无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 包含过多的斜杠。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的密码无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的主机名无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的文件名无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的用户名无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的主机名或证书颁发机构名称不能以反斜杠终止。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的端口号无效或无法分析。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 的长度超过 65519 个字符。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的方案长度超过 1023 个字符。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中存在无效字符序列。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的 MS-DOS 路径必须以 c:\\ 开头。
    ///</exception>
    {class} function init(baseUri: DNUri; relativeUri: string; dontEscape: Boolean): DNUri; overload;
    ///<summary>
    ///  用指定的 URI 初始化 <see cref="T:System.Uri" />
    ///  类的新实例。
    ///  此构造函数允许指定 URI 字符串是相对 URI、绝对 URI 还是不确定。
    ///</summary>
    ///  <param name="uriString">
    ///  标识将由 <see cref="T:System.Uri" />
    ///  实例表示的资源的字符串。
    ///</param>
    ///  <param name="uriKind">
    ///  指定 URI 字符串是相对 URI、绝对 URI 还是不确定。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="uriKind" />
    ///  无效。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="uriString" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.UriFormatException">
    ///  在.NET for Windows Store apps或可移植类库，捕获该基类异常， <see cref="T:System.FormatException" />
    ///  ，而不是。
    ///  <paramref name="uriString" />
    ///  包含相对 URI，而 <paramref name="uriKind" />
    ///  为 <see cref="F:System.UriKind.Absolute" />
    ///  。
    ///  或
    ///  <paramref name="uriString" />
    ///  包含绝对 URI，而 <paramref name="uriKind" />
    ///  为 <see cref="F:System.UriKind.Relative" />
    ///  。
    ///  或
    ///  <paramref name="uriString" />
    ///  为空。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的方案格式不正确。
    ///  请参阅<see cref="M:System.Uri.CheckSchemeName(System.String)" />
    ///  。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  包含过多斜杠。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的密码无效。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的主机名无效。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的文件名无效。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的用户名无效。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的主机名或证书颁发机构名称不能以反斜杠结尾。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的端口号无效或无法分析。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  的长度超过 65519 个字符。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的方案的长度超过 1023 个字符。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中存在无效的字符序列。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的 MS-DOS 路径必须以 c:\\ 开头。
    ///</exception>
    {class} function init(uriString: string; uriKind: DNUriKind): DNUri; overload;
    ///<summary>
    ///  根据指定的基 URI 和相对 URI 字符串，初始化 <see cref="T:System.Uri" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="baseUri">
    ///  基 URI。
    ///</param>
    ///  <param name="relativeUri">
    ///  要添加到基 URI 的相对 URI。
    ///</param>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="baseUri" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="baseUri" />
    ///  不是绝对的 <see cref="T:System.Uri" />
    ///  实例。
    ///</exception><exception cref="T:System.UriFormatException">
    ///  在.NET for Windows Store apps或可移植类库，捕获该基类异常， <see cref="T:System.FormatException" />
    ///  ，而不是。
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 为空或仅包含空格。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的方案无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 包含过多的斜杠。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的密码无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的主机名无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的文件名无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的用户名无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的主机名或证书颁发机构名称不能以反斜杠终止。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的端口号无效或无法分析。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 的长度超过 65519 个字符。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的方案长度超过 1023 个字符。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中存在无效字符序列。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的 MS-DOS 路径必须以 c:\\ 开头。
    ///</exception>
    {class} function init(baseUri: DNUri; relativeUri: string): DNUri; overload;
    ///<summary>
    ///  根据指定的基 <see cref="T:System.Uri" />
    ///  实例和相对 <see cref="T:System.Uri" />
    ///  实例的组合，初始化 <see cref="T:System.Uri" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="baseUri">
    ///  作为新 <see cref="T:System.Uri" />
    ///  实例的基的绝对 <see cref="T:System.Uri" />
    ///  。
    ///</param>
    ///  <param name="relativeUri">
    ///  与 <see cref="T:System.Uri" />
    ///  组合的相对 <paramref name="baseUri" />
    ///  实例。
    ///</param>
    ///<exception cref="T:System.ArgumentException"><paramref name="baseUri" />
    ///  不是绝对的 <see cref="T:System.Uri" />
    ///  实例。
    ///</exception><exception cref="T:System.ArgumentNullException"><paramref name="baseUri" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.ArgumentOutOfRangeException"><paramref name="baseUri" />
    ///  不是绝对的 <see cref="T:System.Uri" />
    ///  实例。
    ///</exception><exception cref="T:System.UriFormatException">
    ///  在.NET for Windows Store apps或可移植类库，捕获该基类异常， <see cref="T:System.FormatException" />
    ///  ，而不是。
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 为空或仅包含空格。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的方案无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 包含过多的斜杠。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的密码无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的主机名无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的文件名无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的用户名无效。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的主机名或证书颁发机构名称不能以反斜杠终止。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的端口号无效或无法分析。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 的长度超过 65519 个字符。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中指定的方案长度超过 1023 个字符。
    ///  - 或 -
    ///  通过组合 <paramref name="baseUri" />
    ///  和 <paramref name="relativeUri" />
    ///  而构成的 URI 中存在无效字符序列。
    ///  - 或 -
    ///  <paramref name="uriString" />
    ///  中指定的 MS-DOS 路径必须以 c:\\ 开头。
    ///</exception>
    {class} function init(baseUri: DNUri; relativeUri: DNUri): DNUri; overload;

  { static fields getter & setter } 

   function __fakeFieldGet_UriSchemeFile: string;
   function __fakeFieldGet_UriSchemeFtp: string;
   function __fakeFieldGet_UriSchemeGopher: string;
   function __fakeFieldGet_UriSchemeHttp: string;
   function __fakeFieldGet_UriSchemeHttps: string;
   function __fakeFieldGet_UriSchemeMailto: string;
   function __fakeFieldGet_UriSchemeNews: string;
   function __fakeFieldGet_UriSchemeNntp: string;
   function __fakeFieldGet_UriSchemeNetTcp: string;
   function __fakeFieldGet_UriSchemeNetPipe: string;
   function __fakeFieldGet_SchemeDelimiter: string;

  { static fields } 

    ///<summary>
    ///  指定 URI 是指向文件的指针。
    ///  此字段为只读。
    ///</summary>
    {class} property UriSchemeFile: string read __fakeFieldGet_UriSchemeFile;
    ///<summary>
    ///  指定通过文件传输协议 (FTP) 访问 URI。
    ///  此字段为只读。
    ///</summary>
    {class} property UriSchemeFtp: string read __fakeFieldGet_UriSchemeFtp;
    ///<summary>
    ///  指定通过 Gopher 协议访问 URI。
    ///  此字段为只读。
    ///</summary>
    {class} property UriSchemeGopher: string read __fakeFieldGet_UriSchemeGopher;
    ///<summary>
    ///  指定通过超文本传输协议 (HTTP) 访问 URI。
    ///  此字段为只读。
    ///</summary>
    {class} property UriSchemeHttp: string read __fakeFieldGet_UriSchemeHttp;
    ///<summary>
    ///  指定通过安全超文本传输协议 (HTTPS) 访问 URI。
    ///  此字段为只读。
    ///</summary>
    {class} property UriSchemeHttps: string read __fakeFieldGet_UriSchemeHttps;
    ///<summary>
    ///  指定 URI 是一个电子邮件地址，需通过简单邮件传输协议 (SMTP) 访问。
    ///  此字段为只读。
    ///</summary>
    {class} property UriSchemeMailto: string read __fakeFieldGet_UriSchemeMailto;
    ///<summary>
    ///  指定 URI 是 Internet 新闻组，而且可以通过 Network 新闻传输协议 (NNTP) 进行访问。
    ///  此字段为只读。
    ///</summary>
    {class} property UriSchemeNews: string read __fakeFieldGet_UriSchemeNews;
    ///<summary>
    ///  指定 URI 是 Internet 新闻组，而且可以通过 Network 新闻传输协议 (NNTP) 进行访问。
    ///  此字段为只读。
    ///</summary>
    {class} property UriSchemeNntp: string read __fakeFieldGet_UriSchemeNntp;
    ///<summary>
    ///  指明通过 Windows Communication Foundation (WCF) 使用的 NetTcp 方案访问该 URI。
    ///  此字段为只读。
    ///</summary>
    {class} property UriSchemeNetTcp: string read __fakeFieldGet_UriSchemeNetTcp;
    ///<summary>
    ///  指明通过 Windows Communication Foundation (WCF) 使用的 NetPipe 方案访问该 URI。
    ///  此字段为只读。
    ///</summary>
    {class} property UriSchemeNetPipe: string read __fakeFieldGet_UriSchemeNetPipe;
    ///<summary>
    ///  指定将通讯协议方案同 URI 的地址部分分开的字符。
    ///  此字段为只读。
    ///</summary>
    {class} property SchemeDelimiter: string read __fakeFieldGet_SchemeDelimiter;

  { static methods } 

    {class} function HexUnescape(pattern: string; out index: Int32): Char;
    ///<summary>
    ///  确定字符串中的一个字符是否为十六进制编码。
    ///</summary>
    ///  <param name="pattern">
    ///  要检查的字符串。
    ///</param>
    ///  <param name="index">
    ///  检查十六进制编码的 <paramref name="pattern" />
    ///  中的位置。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Boolean" />
    ///  值。如果 <see langword="true" />
    ///  在指定位置进行了十六进制编码，则该值为 <paramref name="pattern" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    {class} function IsHexEncoding(pattern: string; index: Int32): Boolean;
    ///<summary>
    ///  确定指定的方案名是否有效。
    ///</summary>
    ///  <param name="schemeName">
    ///  要验证的方案名。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Boolean" />
    ///  值。如果方案名有效，则该值为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    {class} function CheckSchemeName(schemeName: string): Boolean;
    ///<summary>
    ///  确定指定的字符是否为有效的十六进制数字。
    ///</summary>
    ///  <param name="character">
    ///  要验证的字符。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Boolean" />
    ///  值。如果字符是有效的十六进制数字，则该值为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    {class} function IsHexDigit(character: Char): Boolean;
    ///<summary>
    ///  获取十六进制数字的十进制值。
    ///</summary>
    ///  <param name="digit">
    ///  要转换的十六进制数字（0-9、a-f、A-F）。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Int32" />
    ///  值，包含与指定的十六进制数字对应的介于 0 到 15 之间的数字。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="digit" />
    ///  不是有效的十六进制数字 (0-9、 a-f、 A-F)。
    ///</exception>
    {class} function FromHex(digit: Char): Int32;
    {class} function TryCreate(uriString: string; uriKind: DNUriKind; out result: DNUri): Boolean; overload;
    {class} function TryCreate(baseUri: DNUri; relativeUri: string; out result: DNUri): Boolean; overload;
    {class} function TryCreate(baseUri: DNUri; relativeUri: DNUri; out result: DNUri): Boolean; overload;
    ///<summary>
    ///  使用指定的比较规则比较两个 URI 的指定部分。
    ///</summary>
    ///  <param name="uri1">
    ///  第一个 <see cref="T:System.Uri" />
    ///  。
    ///</param>
    ///  <param name="uri2">
    ///  第二个 <see cref="T:System.Uri" />
    ///  。
    ///</param>
    ///  <param name="partsToCompare"><see cref="T:System.UriComponents" />
    ///  值的按位组合，它指定要比较的 <paramref name="uri1" />
    ///  和 <paramref name="uri2" />
    ///  的部分。
    ///</param>
    ///  <param name="compareFormat"><see cref="T:System.UriFormat" />
    ///  值中的一个，它指定在比较 URI 部分时使用的字符转义。
    ///</param>
    ///  <param name="comparisonType"><see cref="T:System.StringComparison" />
    ///  值之一。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Int32" />
    ///  值，指示进行比较的 <see cref="T:System.Uri" />
    ///  部分之间的词法关系。
    ///  值
    ///  含义
    ///  小于零
    ///  <paramref name="uri1" />
    ///  小于 <paramref name="uri2" />
    ///  。
    ///  零
    ///  <paramref name="uri1" />
    ///  等于 <paramref name="uri2" />
    ///  。
    ///  大于零
    ///  <paramref name="uri1" />
    ///  大于 <paramref name="uri2" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="comparisonType" />
    ///  不是有效的 <see cref="T:System.StringComparison" />
    ///  值。
    ///</exception>
    {class} function Compare(uri1: DNUri; uri2: DNUri; partsToCompare: DNUriComponents; compareFormat: DNUriFormat; comparisonType: DDN.mscorlib.DNStringComparison): Int32;
    ///<summary>
    ///  通过尝试用字符串构造一个 URI 来指示字符串是否为格式良好的，并确保字符串不需要进一步转义。
    ///</summary>
    ///  <param name="uriString">
    ///  用于尝试构造 <see cref="T:System.Uri" />
    ///  的字符串。
    ///</param>
    ///  <param name="uriKind"><see cref="T:System.Uri" />
    ///  中的 <paramref name="uriString" />
    ///  的类型。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Boolean" />
    ///  值。如果该字符串格式正确，则该值为 <see langword="true " />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    {class} function IsWellFormedUriString(uriString: string; uriKind: DNUriKind): Boolean;
    ///<summary>
    ///  将 URI 字符串转换为它的转义表示形式。
    ///</summary>
    ///  <param name="stringToEscape">
    ///  要转义的字符串。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，包含 <paramref name="stringToEscape" />
    ///  的转义表示形式。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="stringToEscape" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.UriFormatException">
    ///  在 .NET for Windows Store apps 或 可移植类库, ，捕获该基类异常， <see cref="T:System.FormatException" />
    ///  , ，而不是。
    ///  <paramref name="stringToEscape" />
    ///  的长度超过 32766 个字符。
    ///</exception>
    {class} function EscapeUriString(stringToEscape: string): string;
    ///<summary>
    ///  将字符串转换为它的转义表示形式。
    ///</summary>
    ///  <param name="stringToEscape">
    ///  要转义的字符串。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，包含 <paramref name="stringToEscape" />
    ///  的转义表示形式。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="stringToEscape" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.UriFormatException">
    ///  在 .NET for Windows Store apps 或 可移植类库, ，捕获该基类异常， <see cref="T:System.FormatException" />
    ///  , ，而不是。
    ///  <paramref name="stringToEscape" />
    ///  的长度超过 32766 个字符。
    ///</exception>
    {class} function EscapeDataString(stringToEscape: string): string;
    ///<summary>
    ///  确定指定的主机名是否为有效的 DNS 名称。
    ///</summary>
    ///  <param name="name">
    ///  要验证的主机名。
    ///  可以是 IPv4 或 IPv6 地址或 Internet 主机名。
    ///</param>
    ///<returns>
    ///  指示主机名类型的 <see cref="T:System.UriHostNameType" />
    ///  。
    ///  如果无法确定主机名的类型，或者主机名为 <see langword="null" />
    ///  或零长度字符串，则此方法返回 <see cref="F:System.UriHostNameType.Unknown" />
    ///  。
    ///</returns>
    {class} function CheckHostName(name: string): DNUriHostNameType;
    ///<summary>
    ///  将指定的字符转换为它的等效十六进制字符。
    ///</summary>
    ///  <param name="character">
    ///  要转换为十六进制表示形式的字符。
    ///</param>
    ///<returns>
    ///  指定字符的十六进制表示形式。
    ///</returns>
    ///<exception cref="T:System.ArgumentOutOfRangeException"><paramref name="character" />
    ///  大于 255。
    ///</exception>
    {class} function HexEscape(character: Char): string;
    ///<summary>
    ///  将字符串转换为它的非转义表示形式。
    ///</summary>
    ///  <param name="stringToUnescape">
    ///  要恢复原义的字符串。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，包含 <paramref name="stringToUnescape" />
    ///  的非转义表示形式。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="stringToUnescape" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    {class} function UnescapeDataString(stringToUnescape: string): string;

  end;

  ///<summary>
  ///  提供统一资源标识符 (URI) 的对象表示形式和对 URI 各部分的轻松访问。
  ///</summary>
  [DNTypeName('System.Uri')]
  DNUri = interface(DDN.mscorlib.DNObject)
  ['{9BB92499-99AB-3AE5-93D2-0F41F92018D0}']
  { getters & setters } 

    function get_AbsolutePath: string;
    function get_AbsoluteUri: string;
    function get_LocalPath: string;
    function get_Authority: string;
    function get_HostNameType: DNUriHostNameType;
    function get_IsDefaultPort: Boolean;
    function get_IsFile: Boolean;
    function get_IsLoopback: Boolean;
    function get_PathAndQuery: string;
    function get_Segments: TArray<string>;
    function get_IsUnc: Boolean;
    function get_Host: string;
    function get_Port: Int32;
    function get_Query: string;
    function get_Fragment: string;
    function get_Scheme: string;
    function get_OriginalString: string;
    function get_DnsSafeHost: string;
    function get_IdnHost: string;
    function get_IsAbsoluteUri: Boolean;
    function get_UserEscaped: Boolean;
    function get_UserInfo: string;

  { methods } 

    ///<summary>
    ///  获取 <see cref="T:System.Uri" />
    ///  实例的指定部分。
    ///</summary>
    ///  <param name="part"><see cref="T:System.UriPartial" />
    ///  值之一，指定要返回的 URI 部分的结尾。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，其中包含 <see cref="T:System.Uri" />
    ///  实例的指定部分。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  当前<see cref="T:System.Uri" />
    ///  实例不是绝对的实例。
    ///</exception><exception cref="T:System.ArgumentException">
    ///  指定<paramref name="part" />
    ///  无效。
    ///</exception>
    function GetLeftPart(part: DNUriPartial): string;
    ///<summary>
    ///  获取 URI 的哈希代码。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Int32" />
    ///  ，其中包含为此 URI 生成的哈希值。
    ///</returns>
    function GetHashCode: Int32;
    ///<summary>
    ///  获取指定的 <see cref="T:System.Uri" />
    ///  实例的规范化字符串表示形式。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  实例，它包含 <see cref="T:System.Uri" />
    ///  实例的非转义规范化表示形式。
    ///  除了 #、? 和 %，所有字符均为非转义字符。
    ///</returns>
    function ToString: string;
    ///<summary>
    ///  比较两个 <see cref="T:System.Uri" />
    ///  实例是否相等。
    ///</summary>
    ///  <param name="comparand">
    ///  与当前实例相比较的 <see cref="T:System.Uri" />
    ///  实例或 URI 标识符。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Boolean" />
    ///  值。如果两个实例表示相同的 URI，则该值为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function Equals(comparand: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  确定两个 <see cref="T:System.Uri" />
    ///  实例之间的差异。
    ///</summary>
    ///  <param name="toUri">
    ///  与当前 URI 进行比较的 URI。
    ///</param>
    ///<returns>
    ///  如果此 URI 实例与 <paramref name="toUri" />
    ///  的主机名和方案相同，则此方法返回一个表示相对 URI 的 <see cref="T:System.String" />
    ///  。若将此相对 URI 追加到当前 URI 实例，就可以得到 <paramref name="toUri" />
    ///  参数。
    ///  如果主机名或方案不同，则此方法返回一个表示 <see cref="T:System.String" />
    ///  参数的 <paramref name="toUri" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="toUri" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  此实例表示相对的 URI，并且此方法是仅对绝对 Uri 有效。
    ///</exception>
    function MakeRelative(toUri: DNUri): string;
    ///<summary>
    ///  使用特殊字符的指定转义，获取当前实例的指定部分。
    ///</summary>
    ///  <param name="components"><see cref="T:System.UriComponents" />
    ///  值的按位组合，它指定当前实例中要返回到调用方的部分。
    ///</param>
    ///  <param name="format"><see cref="T:System.UriFormat" />
    ///  值中的一个，它控制如何转义特殊字符。
    ///</param>
    ///<returns>
    ///  一个包含这些部分的 <see cref="T:System.String" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentOutOfRangeException"><paramref name="components" />
    ///  不是有效的组合<see cref="T:System.UriComponents" />
    ///  值。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  当前<see cref="T:System.Uri" />
    ///  不是一个绝对 URI。
    ///  相对 Uri 不能使用此方法。
    ///</exception>
    function GetComponents(components: DNUriComponents; format: DNUriFormat): string;
    ///<summary>
    ///  指示用于构造此 <see cref="T:System.Uri" />
    ///  的字符串是否格式良好，以及它是否不需要进一步转义。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Boolean" />
    ///  值。如果该字符串格式正确，则该值为 <see langword="true" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    function IsWellFormedOriginalString: Boolean;
    ///<summary>
    ///  确定当前的 <see cref="T:System.Uri" />
    ///  实例是否为指定 <see cref="T:System.Uri" />
    ///  实例的基。
    ///</summary>
    ///  <param name="uri">
    ///  要测试的指定 <see cref="T:System.Uri" />
    ///  实例。
    ///</param>
    ///<returns>
    ///  如果当前 <see langword="true" />
    ///  实例是 <see cref="T:System.Uri" />
    ///  的基，则为 <paramref name="uri" />
    ///  ；否则，为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="uri" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception>
    function IsBaseOf(uri: DNUri): Boolean;
    ///<summary>
    ///  确定两个 <see cref="T:System.Uri" />
    ///  实例之间的差异。
    ///</summary>
    ///  <param name="uri">
    ///  与当前 URI 进行比较的 URI。
    ///</param>
    ///<returns>
    ///  如果此 URI 实例与 <paramref name="uri" />
    ///  的主机名和方案相同，则此方法返回一个相对 <see cref="T:System.Uri" />
    ///  。若将此相对 URI 追加到当前 URI 实例，就可以得到 <paramref name="uri" />
    ///  。
    ///  如果主机名或方案不同，则此方法返回一个表示 <see cref="T:System.Uri" />
    ///  参数的 <paramref name="uri" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentNullException"><paramref name="uri" />
    ///  为 <see langword="null" />
    ///  。
    ///</exception><exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    function MakeRelativeUri(uri: DNUri): DNUri;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取 URI 的绝对路径。
    ///</summary>
    ///<returns>
    ///  包含资源的绝对路径的 <see cref="T:System.String" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property AbsolutePath: string read get_AbsolutePath;
    ///<summary>
    ///  获取绝对 URI。
    ///</summary>
    ///<returns>
    ///  包含整个 URI 的 <see cref="T:System.String" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property AbsoluteUri: string read get_AbsoluteUri;
    ///<summary>
    ///  获取文件名的本地操作系统表示形式。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，包含文件名的本地操作系统表示形式。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property LocalPath: string read get_LocalPath;
    ///<summary>
    ///  获取服务器的域名系统 (DNS) 主机名或 IP 地址和端口号。
    ///</summary>
    ///<returns>
    ///  包含此实例所表示的 URI 的证书颁发机构部分的 <see cref="T:System.String" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property Authority: string read get_Authority;
    ///<summary>
    ///  获取 URI 中指定的主机名的类型。
    ///</summary>
    ///<returns><see cref="T:System.UriHostNameType" />
    ///  枚举的一个成员。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property HostNameType: DNUriHostNameType read get_HostNameType;
    ///<summary>
    ///  获取一个值，该值指示 URI 的端口值是否为此方案的默认值。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Boolean" />
    ///  值。如果 <see langword="true" />
    ///  属性中的值是此方案的默认端口，则该值为 <see cref="P:System.Uri.Port" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property IsDefaultPort: Boolean read get_IsDefaultPort;
    ///<summary>
    ///  获取一个值，该值指示指定的 <see cref="T:System.Uri" />
    ///  是否为文件 URI。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Boolean" />
    ///  值。如果 <see langword="true" />
    ///  是文件 URI，则该值为 <see cref="T:System.Uri" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property IsFile: Boolean read get_IsFile;
    ///<summary>
    ///  获取一个值，该值指示指定的 <see cref="T:System.Uri" />
    ///  是否引用了本地主机。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Boolean" />
    ///  值。如果此 <see langword="true" />
    ///  引用了本地主机，则该值为 <see cref="T:System.Uri" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property IsLoopback: Boolean read get_IsLoopback;
    ///<summary>
    ///  获取用问号 (?) 分隔的 <see cref="P:System.Uri.AbsolutePath" />
    ///  和 <see cref="P:System.Uri.Query" />
    ///  属性。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，它包含用问号 (?) 分隔的 <see cref="P:System.Uri.AbsolutePath" />
    ///  和 <see cref="P:System.Uri.Query" />
    ///  属性。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property PathAndQuery: string read get_PathAndQuery;
    ///<summary>
    ///  获取包含构成指定 URI 的路径段的数组。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  数组，包含构成指定 URI 的路径段。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property Segments: TArray<string> read get_Segments;
    ///<summary>
    ///  获取一个值，该值指示指定的 <see cref="T:System.Uri" />
    ///  是否为统一命名约定 (UNC) 路径。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Boolean" />
    ///  值。如果 <see langword="true" />
    ///  是 UNC 路径，则该值为 <see cref="T:System.Uri" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property IsUnc: Boolean read get_IsUnc;
    ///<summary>
    ///  获取此实例的主机部分。
    ///</summary>
    ///<returns>
    ///  一个包含主机名的 <see cref="T:System.String" />
    ///  。
    ///  这通常是服务器的 DNS 主机名或 IP 地址。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property Host: string read get_Host;
    ///<summary>
    ///  获取此 URI 的端口号。
    ///</summary>
    ///<returns>
    ///  一个包含此 URI 的端口号的 <see cref="T:System.Int32" />
    ///  值。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property Port: Int32 read get_Port;
    ///<summary>
    ///  获取指定 URI 中包括的任何查询信息。
    ///</summary>
    ///<returns>
    ///  一个<see cref="T:System.String" />
    ///  ，包含指定 URI 中包括的任何查询信息。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property Query: string read get_Query;
    ///<summary>
    ///  获取转义 URI 片段。
    ///</summary>
    ///<returns>
    ///  一个包含任意 URI 片段信息的 <see cref="T:System.String" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property Fragment: string read get_Fragment;
    ///<summary>
    ///  获取此 URI 的方案名称。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，包含此 URI 的方案（已转换为小写形式）。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property Scheme: string read get_Scheme;
    ///<summary>
    ///  获取传递给 <see cref="T:System.Uri" />
    ///  构造函数的原始 URI 字符串。
    ///</summary>
    ///<returns>
    ///  包含构造此实例时指定的同一 URI，则为 <see cref="T:System.String" />
    ///  ；否则，为 <see cref="F:System.String.Empty" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property OriginalString: string read get_OriginalString;
    ///<summary>
    ///  获得可安全用于 DNS 解析的未转义主机名。
    ///</summary>
    ///<returns>
    ///  一个包含适用于 DNS 解析的未转义 URI 主机部分的 <see cref="T:System.String" />
    ///  ；或者，如果原始的未转义主机字符串已适用于解析，则为原始的未转义主机字符串。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例表示一个相对 URI，并且此属性仅对绝对 Uri 有效。
    ///</exception>
    property DnsSafeHost: string read get_DnsSafeHost;
    ///<summary>
    ///  RFC 3490 根据需要使用 Punycode，符合主机的国际域名要求。
    ///</summary>
    ///<returns>
    ///  根据 IDN 标准，返回采用 Punycode 格式的主机名。<see cref="T:System.String" />
    ///  。
    ///</returns>
    property IdnHost: string read get_IdnHost;
    ///<summary>
    ///  获取一个值，该值指示 <see cref="T:System.Uri" />
    ///  实例是否为绝对 URI。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Boolean" />
    ///  值。如果 <see langword="true" />
    ///  实例是绝对 URI，则该值为 <see cref="T:System.Uri" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsAbsoluteUri: Boolean read get_IsAbsoluteUri;
    ///<summary>
    ///  指示 URI 字符串在创建 <see cref="T:System.Uri" />
    ///  实例之前已被完全转义。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Boolean" />
    ///  值。如果在创建 <see langword="true" />
    ///  实例时 <paramref name="dontEscape" />
    ///  参数设置为 <see langword="true" />
    ///  ，则该值为 <see cref="T:System.Uri" />
    ///  ；否则为 <see langword="false" />
    ///  。
    ///</returns>
    property UserEscaped: Boolean read get_UserEscaped;
    ///<summary>
    ///  获取用户名、密码或其他与指定 URI 关联的特定于用户的信息。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.String" />
    ///  ，包含与该 URI 关联的用户信息。
    ///  返回值不包括“@”字符，该字符是一个保留字符，用于分隔 URI 的用户信息部分。
    ///</returns>
    ///<exception cref="T:System.InvalidOperationException">
    ///  此实例代表一个相对的 URI，而此属性仅对绝对 Uri 无效。
    ///</exception>
    property UserInfo: string read get_UserInfo;
  end;

  TDNUri = class(TDNGenericImport<DNUriClass, DNUri>) end;

  //-------------namespace: System.Drawing----------------
  DNCharacterRangeClass = interface(DDN.mscorlib.DNValueTypeClass)
  ['{A0A5CEDC-68FB-58AB-8D49-C44FE49BC34B}']
  { constructors } 

    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.CharacterRange" />
    ///  结构，并指定字符串中字符位置的范围。
    ///</summary>
    ///  <param name="First">
    ///  第一个字符的范围内的位置。
    ///  例如，如果 <paramref name="First" />
    ///  设置为 0 时，该范围的第一个位置是在字符串中的位置 0。
    ///</param>
    ///  <param name="Length">
    ///  范围内的位置数。
    ///</param>
    {class} function init(First: Int32; Length: Int32): DNCharacterRange;

  end;

  ///<summary>
  ///  指定字符串中字符位置的范围。
  ///</summary>
  [DNTypeName('System.Drawing.CharacterRange')]
  DNCharacterRange = interface(DDN.mscorlib.DNValueType)
  ['{D26938C9-752E-36A5-8A7F-544485A0DBCA}']
  { getters & setters } 

    function get_First: Int32;
    procedure set_First(value: Int32);
    function get_Length: Int32;
    procedure set_Length(value: Int32);

  { methods } 

    ///<summary>
    ///  获取一个值，该值指示此对象是否等效于指定的对象。
    ///</summary>
    ///  <param name="obj">
    ///  要比较相等的对象。
    ///</param>
    ///<returns><see langword="true" />
    ///  指示指定的对象是否具有相同的实例 <see cref="P:System.Drawing.CharacterRange.First" />
    ///  和 <see cref="P:System.Drawing.CharacterRange.Length" />
    ///  值与此实例; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  返回此实例的哈希代码。
    ///</summary>
    ///<returns>
    ///  一个 32 位带符号整数，它是此实例的哈希代码。
    ///</returns>
    function GetHashCode: Int32;
    function ToString: string;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取或设置的第一个字符的字符串中的位置 <see cref="T:System.Drawing.CharacterRange" />
    ///  。
    ///</summary>
    ///<returns>
    ///  第一个位置 <see cref="T:System.Drawing.CharacterRange" />
    ///  。
    ///</returns>
    property First: Int32 read get_First write set_First;
    ///<summary>
    ///  获取或设置在此位置数 <see cref="T:System.Drawing.CharacterRange" />
    ///  。
    ///</summary>
    ///<returns>
    ///  在此位置数 <see cref="T:System.Drawing.CharacterRange" />
    ///  。
    ///</returns>
    property Length: Int32 read get_Length write set_Length;
  end;

  TDNCharacterRange = class(TDNGenericImport<DNCharacterRangeClass, DNCharacterRange>) end;

  //-------------namespace: System.Drawing----------------
  DNColorClass = interface(DDN.mscorlib.DNValueTypeClass)
  ['{F54C08F6-E6CF-5D2A-8BBC-E1387E7CC027}']
  { static getter & setter } 

    {class} function get_Transparent: DNColor;
    {class} function get_AliceBlue: DNColor;
    {class} function get_AntiqueWhite: DNColor;
    {class} function get_Aqua: DNColor;
    {class} function get_Aquamarine: DNColor;
    {class} function get_Azure: DNColor;
    {class} function get_Beige: DNColor;
    {class} function get_Bisque: DNColor;
    {class} function get_Black: DNColor;
    {class} function get_BlanchedAlmond: DNColor;
    {class} function get_Blue: DNColor;
    {class} function get_BlueViolet: DNColor;
    {class} function get_Brown: DNColor;
    {class} function get_BurlyWood: DNColor;
    {class} function get_CadetBlue: DNColor;
    {class} function get_Chartreuse: DNColor;
    {class} function get_Chocolate: DNColor;
    {class} function get_Coral: DNColor;
    {class} function get_CornflowerBlue: DNColor;
    {class} function get_Cornsilk: DNColor;
    {class} function get_Crimson: DNColor;
    {class} function get_Cyan: DNColor;
    {class} function get_DarkBlue: DNColor;
    {class} function get_DarkCyan: DNColor;
    {class} function get_DarkGoldenrod: DNColor;
    {class} function get_DarkGray: DNColor;
    {class} function get_DarkGreen: DNColor;
    {class} function get_DarkKhaki: DNColor;
    {class} function get_DarkMagenta: DNColor;
    {class} function get_DarkOliveGreen: DNColor;
    {class} function get_DarkOrange: DNColor;
    {class} function get_DarkOrchid: DNColor;
    {class} function get_DarkRed: DNColor;
    {class} function get_DarkSalmon: DNColor;
    {class} function get_DarkSeaGreen: DNColor;
    {class} function get_DarkSlateBlue: DNColor;
    {class} function get_DarkSlateGray: DNColor;
    {class} function get_DarkTurquoise: DNColor;
    {class} function get_DarkViolet: DNColor;
    {class} function get_DeepPink: DNColor;
    {class} function get_DeepSkyBlue: DNColor;
    {class} function get_DimGray: DNColor;
    {class} function get_DodgerBlue: DNColor;
    {class} function get_Firebrick: DNColor;
    {class} function get_FloralWhite: DNColor;
    {class} function get_ForestGreen: DNColor;
    {class} function get_Fuchsia: DNColor;
    {class} function get_Gainsboro: DNColor;
    {class} function get_GhostWhite: DNColor;
    {class} function get_Gold: DNColor;
    {class} function get_Goldenrod: DNColor;
    {class} function get_Gray: DNColor;
    {class} function get_Green: DNColor;
    {class} function get_GreenYellow: DNColor;
    {class} function get_Honeydew: DNColor;
    {class} function get_HotPink: DNColor;
    {class} function get_IndianRed: DNColor;
    {class} function get_Indigo: DNColor;
    {class} function get_Ivory: DNColor;
    {class} function get_Khaki: DNColor;
    {class} function get_Lavender: DNColor;
    {class} function get_LavenderBlush: DNColor;
    {class} function get_LawnGreen: DNColor;
    {class} function get_LemonChiffon: DNColor;
    {class} function get_LightBlue: DNColor;
    {class} function get_LightCoral: DNColor;
    {class} function get_LightCyan: DNColor;
    {class} function get_LightGoldenrodYellow: DNColor;
    {class} function get_LightGreen: DNColor;
    {class} function get_LightGray: DNColor;
    {class} function get_LightPink: DNColor;
    {class} function get_LightSalmon: DNColor;
    {class} function get_LightSeaGreen: DNColor;
    {class} function get_LightSkyBlue: DNColor;
    {class} function get_LightSlateGray: DNColor;
    {class} function get_LightSteelBlue: DNColor;
    {class} function get_LightYellow: DNColor;
    {class} function get_Lime: DNColor;
    {class} function get_LimeGreen: DNColor;
    {class} function get_Linen: DNColor;
    {class} function get_Magenta: DNColor;
    {class} function get_Maroon: DNColor;
    {class} function get_MediumAquamarine: DNColor;
    {class} function get_MediumBlue: DNColor;
    {class} function get_MediumOrchid: DNColor;
    {class} function get_MediumPurple: DNColor;
    {class} function get_MediumSeaGreen: DNColor;
    {class} function get_MediumSlateBlue: DNColor;
    {class} function get_MediumSpringGreen: DNColor;
    {class} function get_MediumTurquoise: DNColor;
    {class} function get_MediumVioletRed: DNColor;
    {class} function get_MidnightBlue: DNColor;
    {class} function get_MintCream: DNColor;
    {class} function get_MistyRose: DNColor;
    {class} function get_Moccasin: DNColor;
    {class} function get_NavajoWhite: DNColor;
    {class} function get_Navy: DNColor;
    {class} function get_OldLace: DNColor;
    {class} function get_Olive: DNColor;
    {class} function get_OliveDrab: DNColor;
    {class} function get_Orange: DNColor;
    {class} function get_OrangeRed: DNColor;
    {class} function get_Orchid: DNColor;
    {class} function get_PaleGoldenrod: DNColor;
    {class} function get_PaleGreen: DNColor;
    {class} function get_PaleTurquoise: DNColor;
    {class} function get_PaleVioletRed: DNColor;
    {class} function get_PapayaWhip: DNColor;
    {class} function get_PeachPuff: DNColor;
    {class} function get_Peru: DNColor;
    {class} function get_Pink: DNColor;
    {class} function get_Plum: DNColor;
    {class} function get_PowderBlue: DNColor;
    {class} function get_Purple: DNColor;
    {class} function get_Red: DNColor;
    {class} function get_RosyBrown: DNColor;
    {class} function get_RoyalBlue: DNColor;
    {class} function get_SaddleBrown: DNColor;
    {class} function get_Salmon: DNColor;
    {class} function get_SandyBrown: DNColor;
    {class} function get_SeaGreen: DNColor;
    {class} function get_SeaShell: DNColor;
    {class} function get_Sienna: DNColor;
    {class} function get_Silver: DNColor;
    {class} function get_SkyBlue: DNColor;
    {class} function get_SlateBlue: DNColor;
    {class} function get_SlateGray: DNColor;
    {class} function get_Snow: DNColor;
    {class} function get_SpringGreen: DNColor;
    {class} function get_SteelBlue: DNColor;
    {class} function get_Tan: DNColor;
    {class} function get_Teal: DNColor;
    {class} function get_Thistle: DNColor;
    {class} function get_Tomato: DNColor;
    {class} function get_Turquoise: DNColor;
    {class} function get_Violet: DNColor;
    {class} function get_Wheat: DNColor;
    {class} function get_White: DNColor;
    {class} function get_WhiteSmoke: DNColor;
    {class} function get_Yellow: DNColor;
    {class} function get_YellowGreen: DNColor;

  { static fields getter & setter } 

   function __fakeFieldGet_Empty: DNColor;

  { static fields } 

    ///<summary>
    ///  表示颜色，它是 <see langword="null" />
    ///  。
    ///</summary>
    {class} property Empty: DNColor read __fakeFieldGet_Empty;

  { static methods } 

    ///<summary>
    ///  创建 <see cref="T:System.Drawing.Color" />
    ///  从 32 位 ARGB 值结构。
    ///</summary>
    ///  <param name="argb">
    ///  指定的 32 位 ARGB 值的值。
    ///</param>
    ///<returns><see cref="T:System.Drawing.Color" />
    ///  此方法创建的结构。
    ///</returns>
    {class} function FromArgb(argb: Int32): DNColor; overload;
    ///<summary>
    ///  创建 <see cref="T:System.Drawing.Color" />
    ///  从指定的 8 位颜色值 （红色、 绿色和蓝色） 的结构。
    ///  Alpha 值隐式地为 255 （完全不透明）。
    ///  尽管此方法允许为每个颜色组件传递一个 32 位值，但每个分量的值仅限于 8 位。
    ///</summary>
    ///  <param name="red">
    ///  新的红色分量值 <see cref="T:System.Drawing.Color" />
    ///  。
    ///  有效值为 0 到 255 之间。
    ///</param>
    ///  <param name="green">
    ///  新的绿色分量值 <see cref="T:System.Drawing.Color" />
    ///  。
    ///  有效值为 0 到 255 之间。
    ///</param>
    ///  <param name="blue">
    ///  新的蓝色分量值 <see cref="T:System.Drawing.Color" />
    ///  。
    ///  有效值为 0 到 255 之间。
    ///</param>
    ///<returns>
    ///  此方法创建的 <see cref="T:System.Drawing.Color" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="red" />
    ///  , <paramref name="green" />
    ///  , ，或 <paramref name="blue" />
    ///  小于 0 或大于 255。
    ///</exception>
    {class} function FromArgb(red: Int32; green: Int32; blue: Int32): DNColor; overload;
    ///<summary>
    ///  创建 <see cref="T:System.Drawing.Color" />
    ///  从指定的结构预定义颜色。
    ///</summary>
    ///  <param name="color">
    ///  一个元素 <see cref="T:System.Drawing.KnownColor" />
    ///  枚举。
    ///</param>
    ///<returns>
    ///  此方法创建的 <see cref="T:System.Drawing.Color" />
    ///  。
    ///</returns>
    {class} function FromKnownColor(color: DNKnownColor): DNColor;
    ///<summary>
    ///  创建 <see cref="T:System.Drawing.Color" />
    ///  预定义的颜色的指定名称的结构。
    ///</summary>
    ///  <param name="name">
    ///  一个字符串，是一种预定义颜色的名称。
    ///  有效的名称为的元素的名称相同 <see cref="T:System.Drawing.KnownColor" />
    ///  枚举。
    ///</param>
    ///<returns>
    ///  此方法创建的 <see cref="T:System.Drawing.Color" />
    ///  。
    ///</returns>
    {class} function FromName(name: string): DNColor;
    ///<summary>
    ///  创建 <see cref="T:System.Drawing.Color" />
    ///  从四个 ARGB 组件 （alpha、 红色、 绿色和蓝色） 的结构的值。
    ///  尽管此方法允许为每个组件传递一个 32 位值，但每个分量的值仅限于 8 位。
    ///</summary>
    ///  <param name="alpha">
    ///  Alpha 分量。
    ///  有效值为 0 到 255 之间。
    ///</param>
    ///  <param name="red">
    ///  红色组件。
    ///  有效值为 0 到 255 之间。
    ///</param>
    ///  <param name="green">
    ///  绿色的组件。
    ///  有效值为 0 到 255 之间。
    ///</param>
    ///  <param name="blue">
    ///  蓝色组件。
    ///  有效值为 0 到 255 之间。
    ///</param>
    ///<returns>
    ///  此方法创建的 <see cref="T:System.Drawing.Color" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="alpha" />
    ///  , <paramref name="red" />
    ///  , ，<paramref name="green" />
    ///  , ，或 <paramref name="blue" />
    ///  小于 0 或大于 255。
    ///</exception>
    {class} function FromArgb(alpha: Int32; red: Int32; green: Int32; blue: Int32): DNColor; overload;
    ///<summary>
    ///  创建 <see cref="T:System.Drawing.Color" />
    ///  从指定的结构 <see cref="T:System.Drawing.Color" />
    ///  结构，但要使用新指定的 alpha 值。
    ///  虽然此方法允许传递的 alpha 值为 32 位值，该值被限制为 8 位。
    ///</summary>
    ///  <param name="alpha">
    ///  新的 alpha 值 <see cref="T:System.Drawing.Color" />
    ///  。
    ///  有效值为 0 到 255 之间。
    ///</param>
    ///  <param name="baseColor">
    ///  从中创建新 <see cref="T:System.Drawing.Color" />
    ///  的 <see cref="T:System.Drawing.Color" />
    ///  。
    ///</param>
    ///<returns>
    ///  此方法创建的 <see cref="T:System.Drawing.Color" />
    ///  。
    ///</returns>
    ///<exception cref="T:System.ArgumentException"><paramref name="alpha" />
    ///  为小于 0 或大于 255。
    ///</exception>
    {class} function FromArgb(alpha: Int32; baseColor: DNColor): DNColor; overload;

  { static propertys } 

    ///<summary>
    ///  获取系统定义的颜色。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Transparent: DNColor read get_Transparent;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFF0F8FF。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property AliceBlue: DNColor read get_AliceBlue;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFAEBD7。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property AntiqueWhite: DNColor read get_AntiqueWhite;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF00FFFF。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Aqua: DNColor read get_Aqua;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF7FFFD4。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Aquamarine: DNColor read get_Aquamarine;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFF0FFFF。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Azure: DNColor read get_Azure;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFF5F5DC。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Beige: DNColor read get_Beige;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFFE4C4。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Bisque: DNColor read get_Bisque;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF000000。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Black: DNColor read get_Black;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFFEBCD。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property BlanchedAlmond: DNColor read get_BlanchedAlmond;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF0000FF。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Blue: DNColor read get_Blue;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF8A2BE2。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property BlueViolet: DNColor read get_BlueViolet;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFA52A2A。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Brown: DNColor read get_Brown;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFDEB887。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property BurlyWood: DNColor read get_BurlyWood;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF5F9EA0。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property CadetBlue: DNColor read get_CadetBlue;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF7FFF00。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Chartreuse: DNColor read get_Chartreuse;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFD2691E。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Chocolate: DNColor read get_Chocolate;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFF7F50。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Coral: DNColor read get_Coral;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF6495ED。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property CornflowerBlue: DNColor read get_CornflowerBlue;
    ///<summary>
    ///  获取的 ARGB 值为系统定义的颜色 #FFFFF8DC。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Cornsilk: DNColor read get_Cornsilk;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFDC143C。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Crimson: DNColor read get_Crimson;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF00FFFF。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Cyan: DNColor read get_Cyan;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF00008B。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property DarkBlue: DNColor read get_DarkBlue;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF008B8B。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property DarkCyan: DNColor read get_DarkCyan;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFB8860B。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property DarkGoldenrod: DNColor read get_DarkGoldenrod;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFA9A9A9。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property DarkGray: DNColor read get_DarkGray;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF006400。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property DarkGreen: DNColor read get_DarkGreen;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFBDB76B。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property DarkKhaki: DNColor read get_DarkKhaki;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF8B008B。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property DarkMagenta: DNColor read get_DarkMagenta;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF556B2F。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property DarkOliveGreen: DNColor read get_DarkOliveGreen;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFF8C00。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property DarkOrange: DNColor read get_DarkOrange;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF9932CC。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property DarkOrchid: DNColor read get_DarkOrchid;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF8B0000。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property DarkRed: DNColor read get_DarkRed;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFE9967A。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property DarkSalmon: DNColor read get_DarkSalmon;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF8FBC8F。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property DarkSeaGreen: DNColor read get_DarkSeaGreen;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF483D8B。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property DarkSlateBlue: DNColor read get_DarkSlateBlue;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF2F4F4F。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property DarkSlateGray: DNColor read get_DarkSlateGray;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF00CED1。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property DarkTurquoise: DNColor read get_DarkTurquoise;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF9400D3。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property DarkViolet: DNColor read get_DarkViolet;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFF1493。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property DeepPink: DNColor read get_DeepPink;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF00BFFF。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property DeepSkyBlue: DNColor read get_DeepSkyBlue;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF696969。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property DimGray: DNColor read get_DimGray;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF1E90FF。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property DodgerBlue: DNColor read get_DodgerBlue;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFB22222。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Firebrick: DNColor read get_Firebrick;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFFFAF0。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property FloralWhite: DNColor read get_FloralWhite;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF228B22。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property ForestGreen: DNColor read get_ForestGreen;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFF00FF。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Fuchsia: DNColor read get_Fuchsia;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFDCDCDC。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Gainsboro: DNColor read get_Gainsboro;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFF8F8FF。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property GhostWhite: DNColor read get_GhostWhite;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFFD700。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Gold: DNColor read get_Gold;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFDAA520。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Goldenrod: DNColor read get_Goldenrod;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF808080。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  结构，表示系统定义的颜色。
    ///</returns>
    {class} property Gray: DNColor read get_Gray;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF008000。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Green: DNColor read get_Green;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFADFF2F。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property GreenYellow: DNColor read get_GreenYellow;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFF0FFF0。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Honeydew: DNColor read get_Honeydew;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFF69B4。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property HotPink: DNColor read get_HotPink;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFCD5C5C。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property IndianRed: DNColor read get_IndianRed;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF4B0082。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Indigo: DNColor read get_Indigo;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFFFFF0。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Ivory: DNColor read get_Ivory;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFF0E68C。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Khaki: DNColor read get_Khaki;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFE6E6FA。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Lavender: DNColor read get_Lavender;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFFF0F5。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property LavenderBlush: DNColor read get_LavenderBlush;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF7CFC00。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property LawnGreen: DNColor read get_LawnGreen;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFFFACD。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property LemonChiffon: DNColor read get_LemonChiffon;
    ///<summary>
    ///  获取具有 ARGB 值的系统定义的颜色#FFADD8E6。
    ///</summary>
    ///<returns>
    ///  A<see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property LightBlue: DNColor read get_LightBlue;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFF08080。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property LightCoral: DNColor read get_LightCoral;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFE0FFFF。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property LightCyan: DNColor read get_LightCyan;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFAFAD2。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property LightGoldenrodYellow: DNColor read get_LightGoldenrodYellow;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF90EE90。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property LightGreen: DNColor read get_LightGreen;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFD3D3D3。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property LightGray: DNColor read get_LightGray;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFFB6C1。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property LightPink: DNColor read get_LightPink;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFFA07A。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property LightSalmon: DNColor read get_LightSalmon;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF20B2AA。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property LightSeaGreen: DNColor read get_LightSeaGreen;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF87CEFA。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property LightSkyBlue: DNColor read get_LightSkyBlue;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF778899。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property LightSlateGray: DNColor read get_LightSlateGray;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFB0C4DE。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property LightSteelBlue: DNColor read get_LightSteelBlue;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFFFFE0。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property LightYellow: DNColor read get_LightYellow;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF00FF00。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Lime: DNColor read get_Lime;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF32CD32。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property LimeGreen: DNColor read get_LimeGreen;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFAF0E6。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Linen: DNColor read get_Linen;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFF00FF。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Magenta: DNColor read get_Magenta;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF800000。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Maroon: DNColor read get_Maroon;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF66CDAA。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property MediumAquamarine: DNColor read get_MediumAquamarine;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF0000CD。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property MediumBlue: DNColor read get_MediumBlue;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFBA55D3。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property MediumOrchid: DNColor read get_MediumOrchid;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF9370DB。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property MediumPurple: DNColor read get_MediumPurple;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF3CB371。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property MediumSeaGreen: DNColor read get_MediumSeaGreen;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF7B68EE。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property MediumSlateBlue: DNColor read get_MediumSlateBlue;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF00FA9A。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property MediumSpringGreen: DNColor read get_MediumSpringGreen;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF48D1CC。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property MediumTurquoise: DNColor read get_MediumTurquoise;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFC71585。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property MediumVioletRed: DNColor read get_MediumVioletRed;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF191970。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property MidnightBlue: DNColor read get_MidnightBlue;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFF5FFFA。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property MintCream: DNColor read get_MintCream;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFFE4E1。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property MistyRose: DNColor read get_MistyRose;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFFE4B5。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Moccasin: DNColor read get_Moccasin;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFFDEAD。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property NavajoWhite: DNColor read get_NavajoWhite;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF000080。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Navy: DNColor read get_Navy;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFDF5E6。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property OldLace: DNColor read get_OldLace;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF808000。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Olive: DNColor read get_Olive;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF6B8E23。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property OliveDrab: DNColor read get_OliveDrab;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFFA500。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Orange: DNColor read get_Orange;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFF4500。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property OrangeRed: DNColor read get_OrangeRed;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFDA70D6。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Orchid: DNColor read get_Orchid;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFEEE8AA。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property PaleGoldenrod: DNColor read get_PaleGoldenrod;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF98FB98。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property PaleGreen: DNColor read get_PaleGreen;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFAFEEEE。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property PaleTurquoise: DNColor read get_PaleTurquoise;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFDB7093。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property PaleVioletRed: DNColor read get_PaleVioletRed;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFFEFD5。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property PapayaWhip: DNColor read get_PapayaWhip;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFFDAB9。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property PeachPuff: DNColor read get_PeachPuff;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFCD853F。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Peru: DNColor read get_Peru;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFFC0CB。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Pink: DNColor read get_Pink;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFDDA0DD。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Plum: DNColor read get_Plum;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFB0E0E6。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property PowderBlue: DNColor read get_PowderBlue;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF800080。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Purple: DNColor read get_Purple;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFF0000。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Red: DNColor read get_Red;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFBC8F8F。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property RosyBrown: DNColor read get_RosyBrown;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF4169E1。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property RoyalBlue: DNColor read get_RoyalBlue;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF8B4513。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property SaddleBrown: DNColor read get_SaddleBrown;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFA8072。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Salmon: DNColor read get_Salmon;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFF4A460。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property SandyBrown: DNColor read get_SandyBrown;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF2E8B57。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property SeaGreen: DNColor read get_SeaGreen;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFFF5EE。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property SeaShell: DNColor read get_SeaShell;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFA0522D。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Sienna: DNColor read get_Sienna;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFC0C0C0。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Silver: DNColor read get_Silver;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF87CEEB。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property SkyBlue: DNColor read get_SkyBlue;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF6A5ACD。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property SlateBlue: DNColor read get_SlateBlue;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF708090。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property SlateGray: DNColor read get_SlateGray;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFFFAFA。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Snow: DNColor read get_Snow;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF00FF7F。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property SpringGreen: DNColor read get_SpringGreen;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF4682B4。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property SteelBlue: DNColor read get_SteelBlue;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFD2B48C。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Tan: DNColor read get_Tan;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF008080。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Teal: DNColor read get_Teal;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFD8BFD8。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Thistle: DNColor read get_Thistle;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFF6347。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Tomato: DNColor read get_Tomato;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF40E0D0。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Turquoise: DNColor read get_Turquoise;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFEE82EE。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Violet: DNColor read get_Violet;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFF5DEB3。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Wheat: DNColor read get_Wheat;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFFFFFF。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property White: DNColor read get_White;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFF5F5F5。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property WhiteSmoke: DNColor read get_WhiteSmoke;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FFFFFF00。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property Yellow: DNColor read get_Yellow;
    ///<summary>
    ///  获取系统定义的颜色具有 ARGB 值 #FF9ACD32。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Color" />
    ///  表示系统定义的颜色。
    ///</returns>
    {class} property YellowGreen: DNColor read get_YellowGreen;
  end;

  ///<summary>
  ///  表示 alpha、 红色、 绿色 (蓝色） 的 ARGB 颜色。
  ///</summary>
  [DNTypeName('System.Drawing.Color')]
  DNColor = interface(DDN.mscorlib.DNValueType)
  ['{173627B3-3CAB-3FF6-8CAB-93E849D6A8A5}']
  { getters & setters } 

    function get_R: Byte;
    function get_G: Byte;
    function get_B: Byte;
    function get_A: Byte;
    function get_IsKnownColor: Boolean;
    function get_IsEmpty: Boolean;
    function get_IsNamedColor: Boolean;
    function get_IsSystemColor: Boolean;
    function get_Name: string;

  { methods } 

    ///<summary>
    ///  获取此的色调-饱和度-亮度 (HSB) 亮度值 <see cref="T:System.Drawing.Color" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  此亮度 <see cref="T:System.Drawing.Color" />
    ///  。
    ///  亮度范围介于 0.0 到 1.0，其中 0.0 表示黑，1.0 表示白。
    ///</returns>
    function GetBrightness: Single;
    ///<summary>
    ///  获取的色调-饱和度-亮度 (HSB) 色调值，以度为单位，此 <see cref="T:System.Drawing.Color" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  色调以度为单位，此 <see cref="T:System.Drawing.Color" />
    ///  。
    ///  色调以度为单位，范围介于 0.0 到 360.0，在 HSB 颜色空间中。
    ///</returns>
    function GetHue: Single;
    ///<summary>
    ///  获取此的色调-饱和度-亮度 (HSB) 饱和度值 <see cref="T:System.Drawing.Color" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  此饱和度 <see cref="T:System.Drawing.Color" />
    ///  。
    ///  饱和度介于 0.0 到 1.0，其中 0.0 为灰度，1.0 表示最饱和。
    ///</returns>
    function GetSaturation: Single;
    ///<summary>
    ///  获取此的 32 位 ARGB 值 <see cref="T:System.Drawing.Color" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  此 32 位 ARGB 值 <see cref="T:System.Drawing.Color" />
    ///  。
    ///</returns>
    function ToArgb: Int32;
    ///<summary>
    ///  获取 <see cref="T:System.Drawing.KnownColor" />
    ///  此值的 <see cref="T:System.Drawing.Color" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  一个元素 <see cref="T:System.Drawing.KnownColor" />
    ///  枚举中，如果 <see cref="T:System.Drawing.Color" />
    ///  通过使用创建的预定义的颜色 <see cref="M:System.Drawing.Color.FromName(System.String)" />
    ///  方法或 <see cref="M:System.Drawing.Color.FromKnownColor(System.Drawing.KnownColor)" />
    ///  方法; 否则为 0。
    ///</returns>
    function ToKnownColor: DNKnownColor;
    ///<summary>
    ///  测试指定的对象是否为 <see cref="T:System.Drawing.Color" />
    ///  结构，并且等效于此 <see cref="T:System.Drawing.Color" />
    ///  结构。
    ///</summary>
    ///  <param name="obj">
    ///  要测试的对象。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果 <paramref name="obj" />
    ///  是 <see cref="T:System.Drawing.Color" />
    ///  结构等效于此 <see cref="T:System.Drawing.Color" />
    ///  结构; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  返回此哈希代码 <see cref="T:System.Drawing.Color" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  一个整数值，指定此哈希代码 <see cref="T:System.Drawing.Color" />
    ///  。
    ///</returns>
    function GetHashCode: Int32;
    ///<summary>
    ///  将此转换 <see cref="T:System.Drawing.Color" />
    ///  用户可读的字符串的结构。
    ///</summary>
    ///<returns>
    ///  此名称的字符串 <see cref="T:System.Drawing.Color" />
    ///  , ，如果 <see cref="T:System.Drawing.Color" />
    ///  通过使用创建的预定义的颜色 <see cref="M:System.Drawing.Color.FromName(System.String)" />
    ///  方法或 <see cref="M:System.Drawing.Color.FromKnownColor(System.Drawing.KnownColor)" />
    ///  方法; 否则为 ARGB 组件名称和它们的值组成的字符串。
    ///</returns>
    function ToString: string;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取此的红色分量值 <see cref="T:System.Drawing.Color" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  此的红色分量值 <see cref="T:System.Drawing.Color" />
    ///  。
    ///</returns>
    property R: Byte read get_R;
    ///<summary>
    ///  获取此的绿色分量值 <see cref="T:System.Drawing.Color" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  此的绿色分量值 <see cref="T:System.Drawing.Color" />
    ///  。
    ///</returns>
    property G: Byte read get_G;
    ///<summary>
    ///  获取此的蓝色分量值 <see cref="T:System.Drawing.Color" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  此的蓝色分量值 <see cref="T:System.Drawing.Color" />
    ///  。
    ///</returns>
    property B: Byte read get_B;
    ///<summary>
    ///  获取此的 alpha 分量值 <see cref="T:System.Drawing.Color" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  This 的 alpha 分量值 <see cref="T:System.Drawing.Color" />
    ///  。
    ///</returns>
    property A: Byte read get_A;
    ///<summary>
    ///  获取一个值，该值指示是否此 <see cref="T:System.Drawing.Color" />
    ///  结构是预定义的颜色。
    ///  预定义的颜色表示的元素 <see cref="T:System.Drawing.KnownColor" />
    ///  枚举。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果此 <see cref="T:System.Drawing.Color" />
    ///  已通过使用创建的预定义的颜色 <see cref="M:System.Drawing.Color.FromName(System.String)" />
    ///  方法或 <see cref="M:System.Drawing.Color.FromKnownColor(System.Drawing.KnownColor)" />
    ///  方法; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsKnownColor: Boolean read get_IsKnownColor;
    ///<summary>
    ///  指定是否这 <see cref="T:System.Drawing.Color" />
    ///  结构未初始化。
    ///</summary>
    ///<returns>
    ///  此属性返回 <see langword="true" />
    ///  该颜色是否未初始化; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsEmpty: Boolean read get_IsEmpty;
    ///<summary>
    ///  获取一个值，该值指示是否此 <see cref="T:System.Drawing.Color" />
    ///  结构是已命名的颜色或成员的 <see cref="T:System.Drawing.KnownColor" />
    ///  枚举。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果此 <see cref="T:System.Drawing.Color" />
    ///  由使用 <see cref="M:System.Drawing.Color.FromName(System.String)" />
    ///  方法或 <see cref="M:System.Drawing.Color.FromKnownColor(System.Drawing.KnownColor)" />
    ///  方法; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsNamedColor: Boolean read get_IsNamedColor;
    ///<summary>
    ///  获取一个值，该值指示是否此 <see cref="T:System.Drawing.Color" />
    ///  结构是一种系统颜色。
    ///  系统颜色是一种 Windows 显示元素中使用的颜色。
    ///  系统颜色由元素的 <see cref="T:System.Drawing.KnownColor" />
    ///  枚举。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果此 <see cref="T:System.Drawing.Color" />
    ///  已通过使用创建的系统颜色 <see cref="M:System.Drawing.Color.FromName(System.String)" />
    ///  方法或 <see cref="M:System.Drawing.Color.FromKnownColor(System.Drawing.KnownColor)" />
    ///  方法; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsSystemColor: Boolean read get_IsSystemColor;
    ///<summary>
    ///  获取此 <see cref="T:System.Drawing.Color" />
    ///  的名称。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.Color" />
    ///  的名称。
    ///</returns>
    property Name: string read get_Name;
  end;

  TDNColor = class(TDNGenericImport<DNColorClass, DNColor>) end;

  //-------------namespace: System.Drawing----------------
  DNPointClass = interface(DDN.mscorlib.DNValueTypeClass)
  ['{B23E3AA6-C68F-573E-8FD5-A8150E5D4997}']
  { constructors } 

    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Point" />
    ///  类的指定坐标。
    ///</summary>
    ///  <param name="x">
    ///  点的水平位置。
    ///</param>
    ///  <param name="y">
    ///  点的垂直位置。
    ///</param>
    {class} function init(x: Int32; y: Int32): DNPoint; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Point" />
    ///  类 <see cref="T:System.Drawing.Size" />
    ///  。
    ///</summary>
    ///  <param name="sz">
    ///  一个 <see cref="T:System.Drawing.Size" />
    ///  新指定的坐标 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</param>
    {class} function init(sz: DNSize): DNPoint; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Point" />
    ///  类使用的整数值所指定的坐标。
    ///</summary>
    ///  <param name="dw">
    ///  一个 32 位整数，它指定为新的坐标 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</param>
    {class} function init(dw: Int32): DNPoint; overload;

  { static fields getter & setter } 

   function __fakeFieldGet_Empty: DNPoint;

  { static fields } 

    ///<summary>
    ///  表示 <see cref="T:System.Drawing.Point" />
    ///  具有 <see cref="P:System.Drawing.Point.X" />
    ///  和 <see cref="P:System.Drawing.Point.Y" />
    ///  值设置为零。
    ///</summary>
    {class} property Empty: DNPoint read __fakeFieldGet_Empty;

  { static methods } 

    ///<summary>
    ///  添加指定 <see cref="T:System.Drawing.Size" />
    ///  到指定 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</summary>
    ///  <param name="pt">
    ///  要添加的 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</param>
    ///  <param name="sz"><see cref="T:System.Drawing.Size" />
    ///  添加
    ///</param>
    ///<returns><see cref="T:System.Drawing.Point" />
    ///  即加法运算的结果。
    ///</returns>
    {class} function Add(pt: DNPoint; sz: DNSize): DNPoint;
    ///<summary>
    ///  返回的结果中减去指定 <see cref="T:System.Drawing.Size" />
    ///  从指定 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</summary>
    ///  <param name="pt"><see cref="T:System.Drawing.Point" />
    ///  被减数。
    ///</param>
    ///  <param name="sz"><see cref="T:System.Drawing.Size" />
    ///  要从中减去 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Drawing.Point" />
    ///  它是减法运算的结果。
    ///</returns>
    {class} function Subtract(pt: DNPoint; sz: DNSize): DNPoint;
    ///<summary>
    ///  将指定 <see cref="T:System.Drawing.PointF" />
    ///  到 <see cref="T:System.Drawing.Point" />
    ///  通过舍入的值 <see cref="T:System.Drawing.PointF" />
    ///  到下一个较大的整数值。
    ///</summary>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Drawing.PointF" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Drawing.Point" />
    ///  此方法将转换为。
    ///</returns>
    {class} function Ceiling(value: DNPointF): DNPoint;
    ///<summary>
    ///  将指定 <see cref="T:System.Drawing.PointF" />
    ///  到 <see cref="T:System.Drawing.Point" />
    ///  通过截断的值 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</summary>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Drawing.PointF" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Drawing.Point" />
    ///  此方法将转换为。
    ///</returns>
    {class} function Truncate(value: DNPointF): DNPoint;
    ///<summary>
    ///  将指定 <see cref="T:System.Drawing.PointF" />
    ///  到 <see cref="T:System.Drawing.Point" />
    ///  通过舍入的对象 <see cref="T:System.Drawing.Point" />
    ///  值到最接近的整数。
    ///</summary>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Drawing.PointF" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Drawing.Point" />
    ///  此方法将转换为。
    ///</returns>
    {class} function Round(value: DNPointF): DNPoint;

  end;

  ///<summary>
  ///  表示的整数 x 坐标和 y 坐标点定义在二维平面中的有序的对。
  ///</summary>
  [DNTypeName('System.Drawing.Point')]
  DNPoint = interface(DDN.mscorlib.DNValueType)
  ['{CD6CB0A8-D6EF-33E8-888E-FE8C78CA568F}']
  { getters & setters } 

    function get_IsEmpty: Boolean;
    function get_X: Int32;
    procedure set_X(value: Int32);
    function get_Y: Int32;
    procedure set_Y(value: Int32);

  { methods } 

    ///<summary>
    ///  指定是否这 <see cref="T:System.Drawing.Point" />
    ///  包含与指定相同的坐标 <see cref="T:System.Object" />
    ///  。
    ///</summary>
    ///  <param name="obj">
    ///  要测试的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果 <paramref name="obj" />
    ///  是 <see cref="T:System.Drawing.Point" />
    ///  并且具有与此相同的坐标 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</returns>
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  返回此哈希代码 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</summary>
    ///<returns>
    ///  一个整数值，指定此哈希值 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</returns>
    function GetHashCode: Int32;
    ///<summary>
    ///  按指定量平移此 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</summary>
    ///  <param name="dx">
    ///  x 坐标的偏移量。
    ///</param>
    ///  <param name="dy">
    ///  y 坐标的偏移量。
    ///</param>
    procedure Offset(dx: Int32; dy: Int32); overload;
    ///<summary>
    ///  会将其转换 <see cref="T:System.Drawing.Point" />
    ///  由指定 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</summary>
    ///  <param name="p"><see cref="T:System.Drawing.Point" />
    ///  使用偏移量这 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</param>
    procedure Offset(p: DNPoint); overload;
    ///<summary>
    ///  将此转换 <see cref="T:System.Drawing.Point" />
    ///  到用户可读字符串。
    ///</summary>
    ///<returns>
    ///  表示此 <see cref="T:System.Drawing.Point" />
    ///  的字符串。
    ///</returns>
    function ToString: string;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取一个值，该值指示此 <see cref="T:System.Drawing.Point" />
    ///  是否为空。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果两个 <see cref="P:System.Drawing.Point.X" />
    ///  和 <see cref="P:System.Drawing.Point.Y" />
    ///  0; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsEmpty: Boolean read get_IsEmpty;
    ///<summary>
    ///  获取或设置此的 x 坐标 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</summary>
    ///<returns>
    ///  此的 x 坐标 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</returns>
    property X: Int32 read get_X write set_X;
    ///<summary>
    ///  获取或设置此的 y 坐标 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</summary>
    ///<returns>
    ///  此的 y 坐标 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</returns>
    property Y: Int32 read get_Y write set_Y;
  end;

  TDNPoint = class(TDNGenericImport<DNPointClass, DNPoint>) end;

  //-------------namespace: System.Drawing----------------
  DNPointFClass = interface(DDN.mscorlib.DNValueTypeClass)
  ['{68F24B46-D3A6-59B7-BF29-00901DF2B211}']
  { constructors } 

    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.PointF" />
    ///  类的指定坐标。
    ///</summary>
    ///  <param name="x">
    ///  点的水平位置。
    ///</param>
    ///  <param name="y">
    ///  点的垂直位置。
    ///</param>
    {class} function init(x: Single; y: Single): DNPointF;

  { static fields getter & setter } 

   function __fakeFieldGet_Empty: DNPointF;

  { static fields } 

    ///<summary>
    ///  表示的新实例 <see cref="T:System.Drawing.PointF" />
    ///  类的成员数据未被初始化。
    ///</summary>
    {class} property Empty: DNPointF read __fakeFieldGet_Empty;

  { static methods } 

    ///<summary>
    ///  将转换给定 <see cref="T:System.Drawing.PointF" />
    ///  由指定 <see cref="T:System.Drawing.Size" />
    ///  。
    ///</summary>
    ///  <param name="pt"><see cref="T:System.Drawing.PointF" />
    ///  转换。
    ///</param>
    ///  <param name="sz"><see cref="T:System.Drawing.Size" />
    ///  ，它指定要添加到的坐标的数字 <paramref name="pt" />
    ///  。
    ///</param>
    ///<returns>
    ///  经过平移 <see cref="T:System.Drawing.PointF" />
    ///  。
    ///</returns>
    {class} function Add(pt: DNPointF; sz: DNSize): DNPointF; overload;
    ///<summary>
    ///  将转换 <see cref="T:System.Drawing.PointF" />
    ///  按指定大小的负值。
    ///</summary>
    ///  <param name="pt"><see cref="T:System.Drawing.PointF" />
    ///  转换。
    ///</param>
    ///  <param name="sz"><see cref="T:System.Drawing.Size" />
    ///  ，它指定要从中的坐标减去的数字 <paramref name="pt" />
    ///  。
    ///</param>
    ///<returns>
    ///  经过平移 <see cref="T:System.Drawing.PointF" />
    ///  。
    ///</returns>
    {class} function Subtract(pt: DNPointF; sz: DNSize): DNPointF; overload;
    ///<summary>
    ///  将转换给定 <see cref="T:System.Drawing.PointF" />
    ///  由指定 <see cref="T:System.Drawing.SizeF" />
    ///  。
    ///</summary>
    ///  <param name="pt"><see cref="T:System.Drawing.PointF" />
    ///  转换。
    ///</param>
    ///  <param name="sz"><see cref="T:System.Drawing.SizeF" />
    ///  ，它指定要添加到的坐标的数字 <paramref name="pt" />
    ///  。
    ///</param>
    ///<returns>
    ///  经过平移 <see cref="T:System.Drawing.PointF" />
    ///  。
    ///</returns>
    {class} function Add(pt: DNPointF; sz: DNSizeF): DNPointF; overload;
    ///<summary>
    ///  将转换 <see cref="T:System.Drawing.PointF" />
    ///  按指定大小的负值。
    ///</summary>
    ///  <param name="pt"><see cref="T:System.Drawing.PointF" />
    ///  转换。
    ///</param>
    ///  <param name="sz"><see cref="T:System.Drawing.SizeF" />
    ///  ，它指定要从中的坐标减去的数字 <paramref name="pt" />
    ///  。
    ///</param>
    ///<returns>
    ///  经过平移 <see cref="T:System.Drawing.PointF" />
    ///  。
    ///</returns>
    {class} function Subtract(pt: DNPointF; sz: DNSizeF): DNPointF; overload;

  end;

  ///<summary>
  ///  表示的浮点 x 坐标和 y 坐标点定义在二维平面中的有序的对。
  ///</summary>
  [DNTypeName('System.Drawing.PointF')]
  DNPointF = interface(DDN.mscorlib.DNValueType)
  ['{A521101D-A776-3125-B530-67030F2E0A21}']
  { getters & setters } 

    function get_IsEmpty: Boolean;
    function get_X: Single;
    procedure set_X(value: Single);
    function get_Y: Single;
    procedure set_Y(value: Single);

  { methods } 

    ///<summary>
    ///  指定是否这 <see cref="T:System.Drawing.PointF" />
    ///  包含与指定相同的坐标 <see cref="T:System.Object" />
    ///  。
    ///</summary>
    ///  <param name="obj">
    ///  要测试的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns>
    ///  此方法返回 <see langword="true" />
    ///  如果 <paramref name="obj" />
    ///  是 <see cref="T:System.Drawing.PointF" />
    ///  并且具有与此相同的坐标 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</returns>
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  返回此哈希代码 <see cref="T:System.Drawing.PointF" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  一个整数值，指定此哈希值 <see cref="T:System.Drawing.PointF" />
    ///  结构。
    ///</returns>
    function GetHashCode: Int32;
    ///<summary>
    ///  将此转换 <see cref="T:System.Drawing.PointF" />
    ///  到可读字符串。
    ///</summary>
    ///<returns>
    ///  表示此 <see cref="T:System.Drawing.PointF" />
    ///  的字符串。
    ///</returns>
    function ToString: string;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取一个值，该值指示此 <see cref="T:System.Drawing.PointF" />
    ///  是否为空。
    ///</summary>
    ///<returns><see langword="true" />
    ///  如果两个 <see cref="P:System.Drawing.PointF.X" />
    ///  和 <see cref="P:System.Drawing.PointF.Y" />
    ///  0; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsEmpty: Boolean read get_IsEmpty;
    ///<summary>
    ///  获取或设置此的 x 坐标 <see cref="T:System.Drawing.PointF" />
    ///  。
    ///</summary>
    ///<returns>
    ///  此的 x 坐标 <see cref="T:System.Drawing.PointF" />
    ///  。
    ///</returns>
    property X: Single read get_X write set_X;
    ///<summary>
    ///  获取或设置此的 y 坐标 <see cref="T:System.Drawing.PointF" />
    ///  。
    ///</summary>
    ///<returns>
    ///  此的 y 坐标 <see cref="T:System.Drawing.PointF" />
    ///  。
    ///</returns>
    property Y: Single read get_Y write set_Y;
  end;

  TDNPointF = class(TDNGenericImport<DNPointFClass, DNPointF>) end;

  //-------------namespace: System.Drawing----------------
  DNRectangleClass = interface(DDN.mscorlib.DNValueTypeClass)
  ['{24950A89-FDF4-51EA-80AD-37BF2A502082}']
  { constructors } 

    ///<summary>
    ///  用指定的位置和大小初始化 <see cref="T:System.Drawing.Rectangle" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="x">
    ///  矩形左上角的 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  矩形左上角的 y 坐标。
    ///</param>
    ///  <param name="width">
    ///  矩形的宽度。
    ///</param>
    ///  <param name="height">
    ///  矩形的高度。
    ///</param>
    {class} function init(x: Int32; y: Int32; width: Int32; height: Int32): DNRectangle; overload;
    ///<summary>
    ///  用指定的位置和大小初始化 <see cref="T:System.Drawing.Rectangle" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="location"><see cref="T:System.Drawing.Point" />
    ///  ，它表示矩形区域的左上角。
    ///</param>
    ///  <param name="size"><see cref="T:System.Drawing.Size" />
    ///  ，它表示矩形区域的宽度和高度。
    ///</param>
    {class} function init(location: DNPoint; size: DNSize): DNRectangle; overload;

  { static fields getter & setter } 

   function __fakeFieldGet_Empty: DNRectangle;

  { static fields } 

    ///<summary>
    ///  表示其属性未被初始化的 <see cref="T:System.Drawing.Rectangle" />
    ///  结构。
    ///</summary>
    {class} property Empty: DNRectangle read __fakeFieldGet_Empty;

  { static methods } 

    ///<summary>
    ///  创建一个具有指定边缘位置的 <see cref="T:System.Drawing.Rectangle" />
    ///  结构。
    ///</summary>
    ///  <param name="left">
    ///  此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构左上角的 x 坐标。
    ///</param>
    ///  <param name="top">
    ///  此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构左上角的 y 坐标。
    ///</param>
    ///  <param name="right">
    ///  此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构右下角的 x 坐标。
    ///</param>
    ///  <param name="bottom">
    ///  此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构右下角的 y 坐标。
    ///</param>
    ///<returns>
    ///  此方法创建的新 <see cref="T:System.Drawing.Rectangle" />
    ///  。
    ///</returns>
    {class} function FromLTRB(left: Int32; top: Int32; right: Int32; bottom: Int32): DNRectangle;
    ///<summary>
    ///  通过截断 <see cref="T:System.Drawing.RectangleF" />
    ///  值，将指定的 <see cref="T:System.Drawing.RectangleF" />
    ///  转换为 <see cref="T:System.Drawing.Rectangle" />
    ///  。
    ///</summary>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Drawing.RectangleF" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Drawing.Rectangle" />
    ///  的截断值。
    ///</returns>
    {class} function Truncate(value: DNRectangleF): DNRectangle;
    ///<summary>
    ///  返回第三个 <see cref="T:System.Drawing.Rectangle" />
    ///  结构，它表示其他两个 <see cref="T:System.Drawing.Rectangle" />
    ///  结构的交集。
    ///  如果没有重叠，将返回空的 <see cref="T:System.Drawing.Rectangle" />
    ///  。
    ///</summary>
    ///  <param name="a">
    ///  要相交的矩形。
    ///</param>
    ///  <param name="b">
    ///  要相交的矩形。
    ///</param>
    ///<returns>
    ///  表示 <paramref name="a" />
    ///  和 <paramref name="b" />
    ///  的交集的 <see cref="T:System.Drawing.Rectangle" />
    ///  。
    ///</returns>
    {class} function Intersect(a: DNRectangle; b: DNRectangle): DNRectangle; overload;
    ///<summary>
    ///  获取包含两个 <see cref="T:System.Drawing.Rectangle" />
    ///  结构的交集的 <see cref="T:System.Drawing.Rectangle" />
    ///  结构。
    ///</summary>
    ///  <param name="a">
    ///  要合并的矩形。
    ///</param>
    ///  <param name="b">
    ///  要合并的矩形。
    ///</param>
    ///<returns>
    ///  包含两个 <see cref="T:System.Drawing.Rectangle" />
    ///  结构的交集的 <see cref="T:System.Drawing.Rectangle" />
    ///  结构。
    ///</returns>
    {class} function Union(a: DNRectangle; b: DNRectangle): DNRectangle;
    ///<summary>
    ///  通过将 <see cref="T:System.Drawing.RectangleF" />
    ///  值舍入到比它大的相邻整数值，将指定的 <see cref="T:System.Drawing.RectangleF" />
    ///  结构转换为 <see cref="T:System.Drawing.Rectangle" />
    ///  结构。
    ///</summary>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Drawing.RectangleF" />
    ///  结构。
    ///</param>
    ///<returns>
    ///  返回 <see cref="T:System.Drawing.Rectangle" />
    ///  。
    ///</returns>
    {class} function Ceiling(value: DNRectangleF): DNRectangle;
    ///<summary>
    ///  通过将 <see cref="T:System.Drawing.RectangleF" />
    ///  舍入到最近的整数值，将指定的 <see cref="T:System.Drawing.RectangleF" />
    ///  转换为 <see cref="T:System.Drawing.Rectangle" />
    ///  。
    ///</summary>
    ///  <param name="value">
    ///  要转换的 <see cref="T:System.Drawing.RectangleF" />
    ///  。
    ///</param>
    ///<returns><see cref="T:System.Drawing.Rectangle" />
    ///  的四舍五入整数值。
    ///</returns>
    {class} function Round(value: DNRectangleF): DNRectangle;
    ///<summary>
    ///  创建并返回指定 <see cref="T:System.Drawing.Rectangle" />
    ///  结构的放大副本。
    ///  该副本被放大指定的量。
    ///  不修改原始 <see cref="T:System.Drawing.Rectangle" />
    ///  结构。
    ///</summary>
    ///  <param name="rect">
    ///  要从其开始操作的 <see cref="T:System.Drawing.Rectangle" />
    ///  。
    ///  不修改此矩形。
    ///</param>
    ///  <param name="x">
    ///  此 <see cref="T:System.Drawing.Rectangle" />
    ///  的水平放大量。
    ///</param>
    ///  <param name="y">
    ///  此 <see cref="T:System.Drawing.Rectangle" />
    ///  的垂直放大量。
    ///</param>
    ///<returns>
    ///  放大的 <see cref="T:System.Drawing.Rectangle" />
    ///  。
    ///</returns>
    {class} function Inflate(rect: DNRectangle; x: Int32; y: Int32): DNRectangle; overload;

  end;

  ///<summary>
  ///  存储一组整数，共四个，表示一个矩形的位置和大小
  ///</summary>
  [DNTypeName('System.Drawing.Rectangle')]
  DNRectangle = interface(DDN.mscorlib.DNValueType)
  ['{548BBB02-5F3C-35FB-A75F-1FBD3D0D3584}']
  { getters & setters } 

    function get_Location: DNPoint;
    procedure set_Location(value: DNPoint);
    function get_Size: DNSize;
    procedure set_Size(value: DNSize);
    function get_X: Int32;
    procedure set_X(value: Int32);
    function get_Y: Int32;
    procedure set_Y(value: Int32);
    function get_Width: Int32;
    procedure set_Width(value: Int32);
    function get_Height: Int32;
    procedure set_Height(value: Int32);
    function get_Left: Int32;
    function get_Top: Int32;
    function get_Right: Int32;
    function get_Bottom: Int32;
    function get_IsEmpty: Boolean;

  { methods } 

    ///<summary>
    ///  确定指定的点是否包含在此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构内。
    ///</summary>
    ///  <param name="x">
    ///  要测试的点的 X 坐标。
    ///</param>
    ///  <param name="y">
    ///  要测试的点的 Y 坐标。
    ///</param>
    ///<returns>
    ///  如果 <paramref name="x" />
    ///  和 <paramref name="y" />
    ///  定义的点包含在此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构中，此方法将返回 <see langword="true" />
    ///  ；否则将返回 <see langword="false" />
    ///  。
    ///</returns>
    function &Contains(x: Int32; y: Int32): Boolean; overload;
    ///<summary>
    ///  确定指定的点是否包含在此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构内。
    ///</summary>
    ///  <param name="pt">
    ///  要测试的 <see cref="T:System.Drawing.Point" />
    ///  。
    ///</param>
    ///<returns>
    ///  如果 <paramref name="pt" />
    ///  表示的点包含在此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构中，此方法将返回 <see langword="true" />
    ///  ；否则将返回 <see langword="false" />
    ///  。
    ///</returns>
    function &Contains(pt: DNPoint): Boolean; overload;
    ///<summary>
    ///  确定 <paramref name="rect" />
    ///  表示的矩形区域是否完全包含在此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构内。
    ///</summary>
    ///  <param name="rect">
    ///  要测试的 <see cref="T:System.Drawing.Rectangle" />
    ///  。
    ///</param>
    ///<returns>
    ///  如果 <paramref name="rect" />
    ///  表示的矩形区域完全包含在此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构内，此方法将返回 <see langword="true" />
    ///  ；否则将返回 <see langword="false" />
    ///  。
    ///</returns>
    function &Contains(rect: DNRectangle): Boolean; overload;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Rectangle" />
    ///  放大指定量。
    ///</summary>
    ///  <param name="width">
    ///  此 <see cref="T:System.Drawing.Rectangle" />
    ///  的水平放大量。
    ///</param>
    ///  <param name="height">
    ///  此 <see cref="T:System.Drawing.Rectangle" />
    ///  的垂直放大量。
    ///</param>
    procedure Inflate(width: Int32; height: Int32); overload;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Rectangle" />
    ///  替换为其自身与指定 <see cref="T:System.Drawing.Rectangle" />
    ///  的交集。
    ///</summary>
    ///  <param name="rect">
    ///  用其进行相交操作的 <see cref="T:System.Drawing.Rectangle" />
    ///  。
    ///</param>
    procedure Intersect(rect: DNRectangle); overload;
    ///<summary>
    ///  确定此矩形是否与 <paramref name="rect" />
    ///  相交。
    ///</summary>
    ///  <param name="rect">
    ///  要测试的矩形。
    ///</param>
    ///<returns>
    ///  如果有重叠，此方法将返回 <see langword="true" />
    ///  ；否则将返回 <see langword="false" />
    ///  。
    ///</returns>
    function IntersectsWith(rect: DNRectangle): Boolean;
    ///<summary>
    ///  测试 <paramref name="obj" />
    ///  是否为与此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构具有相同位置和大小的 <see cref="T:System.Drawing.Rectangle" />
    ///  结构。
    ///</summary>
    ///  <param name="obj">
    ///  要测试的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns>
    ///  如果 <paramref name="obj" />
    ///  是 <see cref="T:System.Drawing.Rectangle" />
    ///  结构，并且其 <see cref="P:System.Drawing.Rectangle.X" />
    ///  、<see cref="P:System.Drawing.Rectangle.Y" />
    ///  、<see cref="P:System.Drawing.Rectangle.Width" />
    ///  和 <see cref="P:System.Drawing.Rectangle.Height" />
    ///  属性与此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构的对应属性相等，此方法将返回 <see langword="true" />
    ///  ；否则将返回 <see langword="false" />
    ///  。
    ///</returns>
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  返回此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构的哈希代码。
    ///  有关如何使用哈希代码的信息，请参见 <see cref="M:System.Object.GetHashCode" />
    ///  。
    ///</summary>
    ///<returns>
    ///  一个整数，表示此矩形的哈希代码。
    ///</returns>
    function GetHashCode: Int32;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Rectangle" />
    ///  放大指定量。
    ///</summary>
    ///  <param name="size">
    ///  此矩形的放大量。
    ///</param>
    procedure Inflate(size: DNSize); overload;
    ///<summary>
    ///  将此矩形的位置调整指定的量。
    ///</summary>
    ///  <param name="pos">
    ///  该位置的偏移量。
    ///</param>
    procedure Offset(pos: DNPoint); overload;
    ///<summary>
    ///  将此矩形的位置调整指定的量。
    ///</summary>
    ///  <param name="x">
    ///  水平偏移量。
    ///</param>
    ///  <param name="y">
    ///  垂直偏移量。
    ///</param>
    procedure Offset(x: Int32; y: Int32); overload;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.Rectangle" />
    ///  的特性转换为可读字符串。
    ///</summary>
    ///<returns>
    ///  一个包含此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构 ¾ 的位置、宽度和高度的字符串，例如 {X=20, Y=20, Width=100, Height=50}
    ///</returns>
    function ToString: string;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取或设置此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构左上角的坐标。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Point" />
    ///  ，它表示此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构的左上角。
    ///</returns>
    property Location: DNPoint read get_Location write set_Location;
    ///<summary>
    ///  获取或设置此 <see cref="T:System.Drawing.Rectangle" />
    ///  的大小。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.Size" />
    ///  ，它表示此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构的宽度和高度。
    ///</returns>
    property Size: DNSize read get_Size write set_Size;
    ///<summary>
    ///  获取或设置此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构左上角的 x 坐标。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构左上角的 x 坐标。
    ///  默认值为 0。
    ///</returns>
    property X: Int32 read get_X write set_X;
    ///<summary>
    ///  获取或设置此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构左上角的 y 坐标。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构左上角的 y 坐标。
    ///  默认值为 0。
    ///</returns>
    property Y: Int32 read get_Y write set_Y;
    ///<summary>
    ///  获取或设置此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构的宽度。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构的宽度。
    ///  默认值为 0。
    ///</returns>
    property Width: Int32 read get_Width write set_Width;
    ///<summary>
    ///  获取或设置此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构的高度。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构的高度。
    ///  默认值为 0。
    ///</returns>
    property Height: Int32 read get_Height write set_Height;
    ///<summary>
    ///  获取此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构左边缘的 x 坐标。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构左边缘的 x 坐标。
    ///</returns>
    property Left: Int32 read get_Left;
    ///<summary>
    ///  获取此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构上边缘的 y 坐标。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构上边缘的 y 坐标。
    ///</returns>
    property Top: Int32 read get_Top;
    ///<summary>
    ///  获取 x 坐标，该坐标是此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构的 <see cref="P:System.Drawing.Rectangle.X" />
    ///  与 <see cref="P:System.Drawing.Rectangle.Width" />
    ///  属性值之和。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.Rectangle" />
    ///  的 <see cref="P:System.Drawing.Rectangle.X" />
    ///  与 <see cref="P:System.Drawing.Rectangle.Width" />
    ///  之和的 x 坐标。
    ///</returns>
    property Right: Int32 read get_Right;
    ///<summary>
    ///  获取 y 坐标，该坐标是此 <see cref="T:System.Drawing.Rectangle" />
    ///  结构的 <see cref="P:System.Drawing.Rectangle.Y" />
    ///  与 <see cref="P:System.Drawing.Rectangle.Height" />
    ///  属性值之和。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.Rectangle" />
    ///  的 <see cref="P:System.Drawing.Rectangle.Y" />
    ///  与 <see cref="P:System.Drawing.Rectangle.Height" />
    ///  之和的 y 坐标。
    ///</returns>
    property Bottom: Int32 read get_Bottom;
    ///<summary>
    ///  测试此 <see cref="T:System.Drawing.Rectangle" />
    ///  的所有数值属性是否都具有零值。
    ///</summary>
    ///<returns>
    ///  如果此 <see cref="T:System.Drawing.Rectangle" />
    ///  的 <see cref="P:System.Drawing.Rectangle.Width" />
    ///  、<see cref="P:System.Drawing.Rectangle.Height" />
    ///  、<see cref="P:System.Drawing.Rectangle.X" />
    ///  和 <see cref="P:System.Drawing.Rectangle.Y" />
    ///  属性都具有零值，此属性将返回 <see langword="true" />
    ///  ；否则将返回 <see langword="false" />
    ///  。
    ///</returns>
    property IsEmpty: Boolean read get_IsEmpty;
  end;

  TDNRectangle = class(TDNGenericImport<DNRectangleClass, DNRectangle>) end;

  //-------------namespace: System.Drawing----------------
  DNRectangleFClass = interface(DDN.mscorlib.DNValueTypeClass)
  ['{93812BD6-FBF9-555C-B730-A20DE51F8701}']
  { constructors } 

    ///<summary>
    ///  用指定的位置和大小初始化 <see cref="T:System.Drawing.RectangleF" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="x">
    ///  矩形左上角的 x 坐标。
    ///</param>
    ///  <param name="y">
    ///  矩形左上角的 y 坐标。
    ///</param>
    ///  <param name="width">
    ///  矩形的宽度。
    ///</param>
    ///  <param name="height">
    ///  矩形的高度。
    ///</param>
    {class} function init(x: Single; y: Single; width: Single; height: Single): DNRectangleF; overload;
    ///<summary>
    ///  用指定的位置和大小初始化 <see cref="T:System.Drawing.RectangleF" />
    ///  类的新实例。
    ///</summary>
    ///  <param name="location"><see cref="T:System.Drawing.PointF" />
    ///  ，它表示矩形区域的左上角。
    ///</param>
    ///  <param name="size"><see cref="T:System.Drawing.SizeF" />
    ///  ，它表示矩形区域的宽度和高度。
    ///</param>
    {class} function init(location: DNPointF; size: DNSizeF): DNRectangleF; overload;

  { static fields getter & setter } 

   function __fakeFieldGet_Empty: DNRectangleF;

  { static fields } 

    ///<summary>
    ///  表示实例 <see cref="T:System.Drawing.RectangleF" />
    ///  未初始化其成员的类。
    ///</summary>
    {class} property Empty: DNRectangleF read __fakeFieldGet_Empty;

  { static methods } 

    ///<summary>
    ///  创建可以包含两个形成并集的两个矩形的最小可能第三个矩形。
    ///</summary>
    ///  <param name="a">
    ///  要合并的矩形。
    ///</param>
    ///  <param name="b">
    ///  要合并的矩形。
    ///</param>
    ///<returns>
    ///  第三个 <see cref="T:System.Drawing.RectangleF" />
    ///  结构，其中包含这两个形成并集的两个矩形。
    ///</returns>
    {class} function Union(a: DNRectangleF; b: DNRectangleF): DNRectangleF;
    ///<summary>
    ///  创建 <see cref="T:System.Drawing.RectangleF" />
    ///  结构具有窗口左上角和右下角位于指定位置。
    ///</summary>
    ///  <param name="left">
    ///  该矩形区域的左上角 x 坐标。
    ///</param>
    ///  <param name="top">
    ///  该矩形区域的左上角 y 坐标。
    ///</param>
    ///  <param name="right">
    ///  该矩形区域的右下角 x 坐标。
    ///</param>
    ///  <param name="bottom">
    ///  该矩形区域的右下角 y 坐标。
    ///</param>
    ///<returns>
    ///  此方法创建的新 <see cref="T:System.Drawing.RectangleF" />
    ///  。
    ///</returns>
    {class} function FromLTRB(left: Single; top: Single; right: Single; bottom: Single): DNRectangleF;
    ///<summary>
    ///  创建并返回指定 <see cref="T:System.Drawing.RectangleF" />
    ///  结构的放大副本。
    ///  该副本被放大指定量并不修改原始矩形。
    ///</summary>
    ///  <param name="rect">
    ///  要复制的 <see cref="T:System.Drawing.RectangleF" />
    ///  。
    ///  不修改此矩形。
    ///</param>
    ///  <param name="x">
    ///  水平副本的矩形的放大量。
    ///</param>
    ///  <param name="y">
    ///  副本的矩形垂直放大量。
    ///</param>
    ///<returns>
    ///  放大的 <see cref="T:System.Drawing.RectangleF" />
    ///  。
    ///</returns>
    {class} function Inflate(rect: DNRectangleF; x: Single; y: Single): DNRectangleF; overload;
    ///<summary>
    ///  返回 <see cref="T:System.Drawing.RectangleF" />
    ///  结构，它表示两个矩形交集。
    ///  如果没有重叠和空 <see cref="T:System.Drawing.RectangleF" />
    ///  返回。
    ///</summary>
    ///  <param name="a">
    ///  要相交的矩形。
    ///</param>
    ///  <param name="b">
    ///  要相交的矩形。
    ///</param>
    ///<returns>
    ///  第三个 <see cref="T:System.Drawing.RectangleF" />
    ///  结构的大小表示两个指定的矩形的重叠的区域。
    ///</returns>
    {class} function Intersect(a: DNRectangleF; b: DNRectangleF): DNRectangleF; overload;

  end;

  ///<summary>
  ///  存储一组表示位置的四个浮点数字和矩形的大小。
  ///  对于更高级的区域函数，请使用 <see cref="T:System.Drawing.Region" />
  ///  对象。
  ///</summary>
  [DNTypeName('System.Drawing.RectangleF')]
  DNRectangleF = interface(DDN.mscorlib.DNValueType)
  ['{A5567232-D740-3F7B-BBC9-D2F5B3EB90CB}']
  { getters & setters } 

    function get_Location: DNPointF;
    procedure set_Location(value: DNPointF);
    function get_Size: DNSizeF;
    procedure set_Size(value: DNSizeF);
    function get_X: Single;
    procedure set_X(value: Single);
    function get_Y: Single;
    procedure set_Y(value: Single);
    function get_Width: Single;
    procedure set_Width(value: Single);
    function get_Height: Single;
    procedure set_Height(value: Single);
    function get_Left: Single;
    function get_Top: Single;
    function get_Right: Single;
    function get_Bottom: Single;
    function get_IsEmpty: Boolean;

  { methods } 

    ///<summary>
    ///  这将放大 <see cref="T:System.Drawing.RectangleF" />
    ///  结构指定的量。
    ///</summary>
    ///  <param name="x">
    ///  这样的放大量 <see cref="T:System.Drawing.RectangleF" />
    ///  结构的水平。
    ///</param>
    ///  <param name="y">
    ///  这样的放大量 <see cref="T:System.Drawing.RectangleF" />
    ///  结构的垂直。
    ///</param>
    procedure Inflate(x: Single; y: Single); overload;
    ///<summary>
    ///  测试是否 <paramref name="obj" />
    ///  是 <see cref="T:System.Drawing.RectangleF" />
    ///  具有相同的位置和大小的 <see cref="T:System.Drawing.RectangleF" />
    ///  。
    ///</summary>
    ///  <param name="obj">
    ///  要测试的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns>
    ///  此方法返回 <see langword="true" />
    ///  如果 <paramref name="obj" />
    ///  是 <see cref="T:System.Drawing.RectangleF" />
    ///  并将其 <see langword="X" />
    ///  , ，<see langword="Y" />
    ///  , ，<see langword="Width" />
    ///  , ，和 <see langword="Height" />
    ///  的对应属性相等 <see cref="T:System.Drawing.RectangleF" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  确定指定的点是否包含在此 <see cref="T:System.Drawing.RectangleF" />
    ///  结构内。
    ///</summary>
    ///  <param name="x">
    ///  要测试的点的 X 坐标。
    ///</param>
    ///  <param name="y">
    ///  要测试的点的 Y 坐标。
    ///</param>
    ///<returns>
    ///  如果 <paramref name="x" />
    ///  和 <paramref name="y" />
    ///  定义的点包含在此 <see cref="T:System.Drawing.RectangleF" />
    ///  结构中，此方法将返回 <see langword="true" />
    ///  ；否则将返回 <see langword="false" />
    ///  。
    ///</returns>
    function &Contains(x: Single; y: Single): Boolean; overload;
    ///<summary>
    ///  确定指定的点是否包含在此 <see cref="T:System.Drawing.RectangleF" />
    ///  结构内。
    ///</summary>
    ///  <param name="pt">
    ///  要测试的 <see cref="T:System.Drawing.PointF" />
    ///  。
    ///</param>
    ///<returns>
    ///  此方法返回 <see langword="true" />
    ///  如果表示的点 <paramref name="pt" />
    ///  参数包含在此 <see cref="T:System.Drawing.RectangleF" />
    ///  结构; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function &Contains(pt: DNPointF): Boolean; overload;
    ///<summary>
    ///  确定 <paramref name="rect" />
    ///  表示的矩形区域是否完全包含在此 <see cref="T:System.Drawing.RectangleF" />
    ///  结构内。
    ///</summary>
    ///  <param name="rect">
    ///  要测试的 <see cref="T:System.Drawing.RectangleF" />
    ///  。
    ///</param>
    ///<returns>
    ///  此方法返回 <see langword="true" />
    ///  如果表示矩形区域 <paramref name="rect" />
    ///  所表示的矩形区域范围内完全包含 <see cref="T:System.Drawing.RectangleF" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function &Contains(rect: DNRectangleF): Boolean; overload;
    ///<summary>
    ///  获取此哈希代码 <see cref="T:System.Drawing.RectangleF" />
    ///  结构。
    ///  有关使用哈希代码的信息，请参阅 <see langword="Object.GetHashCode" />
    ///  。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.RectangleF" />
    ///  的哈希代码。
    ///</returns>
    function GetHashCode: Int32;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.RectangleF" />
    ///  放大指定量。
    ///</summary>
    ///  <param name="size">
    ///  此矩形的放大量。
    ///</param>
    procedure Inflate(size: DNSizeF); overload;
    ///<summary>
    ///  将此 <see cref="T:System.Drawing.RectangleF" />
    ///  结构替换为其自身与指定的 <see cref="T:System.Drawing.RectangleF" />
    ///  结构的交集。
    ///</summary>
    ///  <param name="rect">
    ///  要相交的矩形。
    ///</param>
    procedure Intersect(rect: DNRectangleF); overload;
    ///<summary>
    ///  确定此矩形是否与 <paramref name="rect" />
    ///  相交。
    ///</summary>
    ///  <param name="rect">
    ///  要测试的矩形。
    ///</param>
    ///<returns>
    ///  此方法返回 <see langword="true" />
    ///  如果重叠。
    ///</returns>
    function IntersectsWith(rect: DNRectangleF): Boolean;
    ///<summary>
    ///  将此矩形的位置调整指定的量。
    ///</summary>
    ///  <param name="pos">
    ///  该位置的偏移量。
    ///</param>
    procedure Offset(pos: DNPointF); overload;
    ///<summary>
    ///  将此矩形的位置调整指定的量。
    ///</summary>
    ///  <param name="x">
    ///  该位置的水平偏移量。
    ///</param>
    ///  <param name="y">
    ///  该位置的垂直偏移量。
    ///</param>
    procedure Offset(x: Single; y: Single); overload;
    ///<summary>
    ///  将转换 <see langword="Location" />
    ///  和 <see cref="T:System.Drawing.Size" />
    ///  此 <see cref="T:System.Drawing.RectangleF" />
    ///  到用户可读字符串。
    ///</summary>
    ///<returns>
    ///  一个字符串，包含位置、 宽度和高度这 <see cref="T:System.Drawing.RectangleF" />
    ///  结构。
    ///  例如，"{X = 20，Y = 20，Width = 100，Height = 50}"。
    ///</returns>
    function ToString: string;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取或设置此 <see cref="T:System.Drawing.RectangleF" />
    ///  结构左上角的坐标。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.PointF" />
    ///  ，它表示此 <see cref="T:System.Drawing.RectangleF" />
    ///  结构的左上角。
    ///</returns>
    property Location: DNPointF read get_Location write set_Location;
    ///<summary>
    ///  获取或设置此 <see cref="T:System.Drawing.RectangleF" />
    ///  的大小。
    ///</summary>
    ///<returns><see cref="T:System.Drawing.SizeF" />
    ///  ，它表示此 <see cref="T:System.Drawing.RectangleF" />
    ///  结构的宽度和高度。
    ///</returns>
    property Size: DNSizeF read get_Size write set_Size;
    ///<summary>
    ///  获取或设置此 <see cref="T:System.Drawing.RectangleF" />
    ///  结构左上角的 x 坐标。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.RectangleF" />
    ///  结构左上角的 x 坐标。
    ///  默认值为 0。
    ///</returns>
    property X: Single read get_X write set_X;
    ///<summary>
    ///  获取或设置此 <see cref="T:System.Drawing.RectangleF" />
    ///  结构左上角的 y 坐标。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.RectangleF" />
    ///  结构左上角的 y 坐标。
    ///  默认值为 0。
    ///</returns>
    property Y: Single read get_Y write set_Y;
    ///<summary>
    ///  获取或设置此 <see cref="T:System.Drawing.RectangleF" />
    ///  结构的宽度。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.RectangleF" />
    ///  结构的宽度。
    ///  默认值为 0。
    ///</returns>
    property Width: Single read get_Width write set_Width;
    ///<summary>
    ///  获取或设置此 <see cref="T:System.Drawing.RectangleF" />
    ///  结构的高度。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.RectangleF" />
    ///  结构的高度。
    ///  默认值为 0。
    ///</returns>
    property Height: Single read get_Height write set_Height;
    ///<summary>
    ///  获取此 <see cref="T:System.Drawing.RectangleF" />
    ///  结构左边缘的 x 坐标。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.RectangleF" />
    ///  结构左边缘的 x 坐标。
    ///</returns>
    property Left: Single read get_Left;
    ///<summary>
    ///  获取此 <see cref="T:System.Drawing.RectangleF" />
    ///  结构上边缘的 y 坐标。
    ///</summary>
    ///<returns>
    ///  此 <see cref="T:System.Drawing.RectangleF" />
    ///  结构上边缘的 y 坐标。
    ///</returns>
    property Top: Single read get_Top;
    ///<summary>
    ///  获取是之和的 x 坐标 <see cref="P:System.Drawing.RectangleF.X" />
    ///  和 <see cref="P:System.Drawing.RectangleF.Width" />
    ///  此 <see cref="T:System.Drawing.RectangleF" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  之和的 x 坐标 <see cref="P:System.Drawing.RectangleF.X" />
    ///  和 <see cref="P:System.Drawing.RectangleF.Width" />
    ///  此 <see cref="T:System.Drawing.RectangleF" />
    ///  结构。
    ///</returns>
    property Right: Single read get_Right;
    ///<summary>
    ///  获取是之和的 y 坐标 <see cref="P:System.Drawing.RectangleF.Y" />
    ///  和 <see cref="P:System.Drawing.RectangleF.Height" />
    ///  此 <see cref="T:System.Drawing.RectangleF" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  之和的 y 坐标 <see cref="P:System.Drawing.RectangleF.Y" />
    ///  和 <see cref="P:System.Drawing.RectangleF.Height" />
    ///  此 <see cref="T:System.Drawing.RectangleF" />
    ///  结构。
    ///</returns>
    property Bottom: Single read get_Bottom;
    ///<summary>
    ///  测试是否 <see cref="P:System.Drawing.RectangleF.Width" />
    ///  或 <see cref="P:System.Drawing.RectangleF.Height" />
    ///  属性 <see cref="T:System.Drawing.RectangleF" />
    ///  值为零。
    ///</summary>
    ///<returns>
    ///  此属性返回 <see langword="true" />
    ///  如果 <see cref="P:System.Drawing.RectangleF.Width" />
    ///  或 <see cref="P:System.Drawing.RectangleF.Height" />
    ///  属性 <see cref="T:System.Drawing.RectangleF" />
    ///  值为零; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsEmpty: Boolean read get_IsEmpty;
  end;

  TDNRectangleF = class(TDNGenericImport<DNRectangleFClass, DNRectangleF>) end;

  //-------------namespace: System.Drawing----------------
  DNSizeClass = interface(DDN.mscorlib.DNValueTypeClass)
  ['{156B7BC2-8B4A-54A9-9F29-1BBCFEFCB428}']
  { constructors } 

    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Size" />
    ///  从指定的结构 <see cref="T:System.Drawing.Point" />
    ///  结构。
    ///</summary>
    ///  <param name="pt"><see cref="T:System.Drawing.Point" />
    ///  结构，可用于初始化此 <see cref="T:System.Drawing.Size" />
    ///  结构。
    ///</param>
    {class} function init(pt: DNPoint): DNSize; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.Size" />
    ///  根据指定的维度的结构。
    ///</summary>
    ///  <param name="width">
    ///  新的宽度分量 <see cref="T:System.Drawing.Size" />
    ///  。
    ///</param>
    ///  <param name="height">
    ///  新的高度分量 <see cref="T:System.Drawing.Size" />
    ///  。
    ///</param>
    {class} function init(width: Int32; height: Int32): DNSize; overload;

  { static fields getter & setter } 

   function __fakeFieldGet_Empty: DNSize;

  { static fields } 

    ///<summary>
    ///  获取 <see cref="T:System.Drawing.Size" />
    ///  结构具有 <see cref="P:System.Drawing.Size.Height" />
    ///  和 <see cref="P:System.Drawing.Size.Width" />
    ///  值为 0。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Size" />
    ///  具有 <see cref="P:System.Drawing.Size.Height" />
    ///  和 <see cref="P:System.Drawing.Size.Width" />
    ///  值为 0。
    ///</returns>
    {class} property Empty: DNSize read __fakeFieldGet_Empty;

  { static methods } 

    ///<summary>
    ///  添加的宽度和高度的其中一个 <see cref="T:System.Drawing.Size" />
    ///  结构的宽度和高度与另一个 <see cref="T:System.Drawing.Size" />
    ///  结构。
    ///</summary>
    ///  <param name="sz1">
    ///  第一个 <see cref="T:System.Drawing.Size" />
    ///  可添加结构。
    ///</param>
    ///  <param name="sz2">
    ///  第二个 <see cref="T:System.Drawing.Size" />
    ///  可添加结构。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Size" />
    ///  结构，它是加法运算的结果。
    ///</returns>
    {class} function Add(sz1: DNSize; sz2: DNSize): DNSize;
    ///<summary>
    ///  将指定 <see cref="T:System.Drawing.SizeF" />
    ///  结构 <see cref="T:System.Drawing.Size" />
    ///  按舍入的值显示结构 <see cref="T:System.Drawing.Size" />
    ///  到下一个较大的整数值的结构。
    ///</summary>
    ///  <param name="value"><see cref="T:System.Drawing.SizeF" />
    ///  要转换的结构。
    ///</param>
    ///<returns><see cref="T:System.Drawing.Size" />
    ///  此方法将转换为结构。
    ///</returns>
    {class} function Ceiling(value: DNSizeF): DNSize;
    ///<summary>
    ///  减去的宽度和高度的其中一个 <see cref="T:System.Drawing.Size" />
    ///  从宽度和高度与另一个结构 <see cref="T:System.Drawing.Size" />
    ///  结构。
    ///</summary>
    ///  <param name="sz1"><see cref="T:System.Drawing.Size" />
    ///  减法运算符左侧的结构。
    ///</param>
    ///  <param name="sz2"><see cref="T:System.Drawing.Size" />
    ///  减法运算符右侧的结构。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.Size" />
    ///  结构，它是减法运算的结果。
    ///</returns>
    {class} function Subtract(sz1: DNSize; sz2: DNSize): DNSize;
    ///<summary>
    ///  将指定 <see cref="T:System.Drawing.SizeF" />
    ///  结构 <see cref="T:System.Drawing.Size" />
    ///  通过截断的值的结构 <see cref="T:System.Drawing.SizeF" />
    ///  到下一个较低的整数值的结构。
    ///</summary>
    ///  <param name="value"><see cref="T:System.Drawing.SizeF" />
    ///  要转换的结构。
    ///</param>
    ///<returns><see cref="T:System.Drawing.Size" />
    ///  此方法将转换为结构。
    ///</returns>
    {class} function Truncate(value: DNSizeF): DNSize;
    ///<summary>
    ///  将指定 <see cref="T:System.Drawing.SizeF" />
    ///  结构 <see cref="T:System.Drawing.Size" />
    ///  按舍入的值显示结构 <see cref="T:System.Drawing.SizeF" />
    ///  到最接近的整数值的结构。
    ///</summary>
    ///  <param name="value"><see cref="T:System.Drawing.SizeF" />
    ///  要转换的结构。
    ///</param>
    ///<returns><see cref="T:System.Drawing.Size" />
    ///  此方法将转换为结构。
    ///</returns>
    {class} function Round(value: DNSizeF): DNSize;

  end;

  ///<summary>
  ///  存储的整数，指定一个有序的对 <see cref="P:System.Drawing.Size.Height" />
  ///  和 <see cref="P:System.Drawing.Size.Width" />
  ///  。
  ///</summary>
  [DNTypeName('System.Drawing.Size')]
  DNSize = interface(DDN.mscorlib.DNValueType)
  ['{ECD5EB7F-1CD0-3F82-9997-5E4C9AB9F326}']
  { getters & setters } 

    function get_IsEmpty: Boolean;
    function get_Width: Int32;
    procedure set_Width(value: Int32);
    function get_Height: Int32;
    procedure set_Height(value: Int32);

  { methods } 

    ///<summary>
    ///  测试以确定指定的对象是否为 <see cref="T:System.Drawing.Size" />
    ///  具有与此相同的维度的结构 <see cref="T:System.Drawing.Size" />
    ///  结构。
    ///</summary>
    ///  <param name="obj">
    ///  要测试的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns><see langword="true" />
    ///  如果 <paramref name="obj" />
    ///  是 <see cref="T:System.Drawing.Size" />
    ///  具有相同的宽度和高度与此 <see cref="T:System.Drawing.Size" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  返回此哈希代码 <see cref="T:System.Drawing.Size" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  一个整数值，指定此哈希值 <see cref="T:System.Drawing.Size" />
    ///  结构。
    ///</returns>
    function GetHashCode: Int32;
    ///<summary>
    ///  创建一个用户可读的字符串，表示此 <see cref="T:System.Drawing.Size" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  表示此 <see cref="T:System.Drawing.Size" />
    ///  的字符串。
    ///</returns>
    function ToString: string;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  测试是否这 <see cref="T:System.Drawing.Size" />
    ///  结构的宽度和高度均为 0。
    ///</summary>
    ///<returns>
    ///  此属性返回 <see langword="true" />
    ///  时这 <see cref="T:System.Drawing.Size" />
    ///  结构的宽度和高度均为 0; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsEmpty: Boolean read get_IsEmpty;
    ///<summary>
    ///  获取或设置此水平组件<see cref="T:System.Drawing.Size" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  此水平组件<see cref="T:System.Drawing.Size" />
    ///  结构，通常以像素度量。
    ///</returns>
    property Width: Int32 read get_Width write set_Width;
    ///<summary>
    ///  获取或设置的垂直分量 <see cref="T:System.Drawing.Size" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  垂直分量 <see cref="T:System.Drawing.Size" />
    ///  结构，通常以像素为单位进行度量。
    ///</returns>
    property Height: Int32 read get_Height write set_Height;
  end;

  TDNSize = class(TDNGenericImport<DNSizeClass, DNSize>) end;

  //-------------namespace: System.Drawing----------------
  DNSizeFClass = interface(DDN.mscorlib.DNValueTypeClass)
  ['{889E69F7-7C5F-5D31-9A96-7A897B044864}']
  { constructors } 

    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.SizeF" />
    ///  从指定的现有结构 <see cref="T:System.Drawing.SizeF" />
    ///  结构。
    ///</summary>
    ///  <param name="size"><see cref="T:System.Drawing.SizeF" />
    ///  从中创建新的结构 <see cref="T:System.Drawing.SizeF" />
    ///  结构。
    ///</param>
    {class} function init(size: DNSizeF): DNSizeF; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.SizeF" />
    ///  从指定的结构 <see cref="T:System.Drawing.PointF" />
    ///  结构。
    ///</summary>
    ///  <param name="pt"><see cref="T:System.Drawing.PointF" />
    ///  结构，可用于初始化此 <see cref="T:System.Drawing.SizeF" />
    ///  结构。
    ///</param>
    {class} function init(pt: DNPointF): DNSizeF; overload;
    ///<summary>
    ///  新实例初始化 <see cref="T:System.Drawing.SizeF" />
    ///  根据指定的维度的结构。
    ///</summary>
    ///  <param name="width">
    ///  新的宽度分量 <see cref="T:System.Drawing.SizeF" />
    ///  结构。
    ///</param>
    ///  <param name="height">
    ///  新的高度分量 <see cref="T:System.Drawing.SizeF" />
    ///  结构。
    ///</param>
    {class} function init(width: Single; height: Single): DNSizeF; overload;

  { static fields getter & setter } 

   function __fakeFieldGet_Empty: DNSizeF;

  { static fields } 

    ///<summary>
    ///  获取 <see cref="T:System.Drawing.SizeF" />
    ///  结构具有 <see cref="P:System.Drawing.SizeF.Height" />
    ///  和 <see cref="P:System.Drawing.SizeF.Width" />
    ///  值为 0。
    ///</summary>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.SizeF" />
    ///  结构具有 <see cref="P:System.Drawing.SizeF.Height" />
    ///  和 <see cref="P:System.Drawing.SizeF.Width" />
    ///  值为 0。
    ///</returns>
    {class} property Empty: DNSizeF read __fakeFieldGet_Empty;

  { static methods } 

    ///<summary>
    ///  添加的宽度和高度的其中一个 <see cref="T:System.Drawing.SizeF" />
    ///  结构的宽度和高度与另一个 <see cref="T:System.Drawing.SizeF" />
    ///  结构。
    ///</summary>
    ///  <param name="sz1">
    ///  第一个 <see cref="T:System.Drawing.SizeF" />
    ///  可添加结构。
    ///</param>
    ///  <param name="sz2">
    ///  第二个 <see cref="T:System.Drawing.SizeF" />
    ///  可添加结构。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.SizeF" />
    ///  结构，它是加法运算的结果。
    ///</returns>
    {class} function Add(sz1: DNSizeF; sz2: DNSizeF): DNSizeF;
    ///<summary>
    ///  减去的宽度和高度的其中一个 <see cref="T:System.Drawing.SizeF" />
    ///  从宽度和高度与另一个结构 <see cref="T:System.Drawing.SizeF" />
    ///  结构。
    ///</summary>
    ///  <param name="sz1"><see cref="T:System.Drawing.SizeF" />
    ///  减法运算符左侧的结构。
    ///</param>
    ///  <param name="sz2"><see cref="T:System.Drawing.SizeF" />
    ///  减法运算符右侧的结构。
    ///</param>
    ///<returns>
    ///  一个 <see cref="T:System.Drawing.SizeF" />
    ///  结构，它是减法运算的结果。
    ///</returns>
    {class} function Subtract(sz1: DNSizeF; sz2: DNSizeF): DNSizeF;

  end;

  ///<summary>
  ///  将存储浮点数、 通常的宽度和高度的矩形的有序的对。
  ///</summary>
  [DNTypeName('System.Drawing.SizeF')]
  DNSizeF = interface(DDN.mscorlib.DNValueType)
  ['{56ABB41C-4516-30F6-882E-57F234AB5028}']
  { getters & setters } 

    function get_IsEmpty: Boolean;
    function get_Width: Single;
    procedure set_Width(value: Single);
    function get_Height: Single;
    procedure set_Height(value: Single);

  { methods } 

    ///<summary>
    ///  测试以确定指定的对象是否为 <see cref="T:System.Drawing.SizeF" />
    ///  具有与此相同的维度的结构 <see cref="T:System.Drawing.SizeF" />
    ///  结构。
    ///</summary>
    ///  <param name="obj">
    ///  要测试的 <see cref="T:System.Object" />
    ///  。
    ///</param>
    ///<returns>
    ///  此方法返回 <see langword="true" />
    ///  如果 <paramref name="obj" />
    ///  是 <see cref="T:System.Drawing.SizeF" />
    ///  具有相同的宽度和高度与此 <see cref="T:System.Drawing.SizeF" />
    ///  ; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    function Equals(obj: DDN.mscorlib.DNObject): Boolean;
    ///<summary>
    ///  返回此哈希代码 <see cref="T:System.Drawing.Size" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  一个整数值，指定此哈希值 <see cref="T:System.Drawing.Size" />
    ///  结构。
    ///</returns>
    function GetHashCode: Int32;
    ///<summary>
    ///  将转换 <see cref="T:System.Drawing.SizeF" />
    ///  结构 <see cref="T:System.Drawing.PointF" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  返回 <see cref="T:System.Drawing.PointF" />
    ///  结构。
    ///</returns>
    function ToPointF: DNPointF;
    ///<summary>
    ///  将转换 <see cref="T:System.Drawing.SizeF" />
    ///  结构 <see cref="T:System.Drawing.Size" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  返回 <see cref="T:System.Drawing.Size" />
    ///  结构。
    ///</returns>
    function ToSize: DNSize;
    ///<summary>
    ///  创建一个用户可读的字符串，表示此 <see cref="T:System.Drawing.SizeF" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  一个字符串，表示此 <see cref="T:System.Drawing.SizeF" />
    ///  结构。
    ///</returns>
    function ToString: string;
    function GetType: DDN.mscorlib.DNType;

  { propertys } 

    ///<summary>
    ///  获取一个值，该值指示是否此 <see cref="T:System.Drawing.SizeF" />
    ///  结构的零宽度和高度。
    ///</summary>
    ///<returns>
    ///  此属性返回 <see langword="true" />
    ///  时这 <see cref="T:System.Drawing.SizeF" />
    ///  结构的宽度和高度均为零; 否则为 <see langword="false" />
    ///  。
    ///</returns>
    property IsEmpty: Boolean read get_IsEmpty;
    ///<summary>
    ///  获取或设置的水平分量 <see cref="T:System.Drawing.SizeF" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  水平分量 <see cref="T:System.Drawing.SizeF" />
    ///  结构，通常以像素为单位进行度量。
    ///</returns>
    property Width: Single read get_Width write set_Width;
    ///<summary>
    ///  获取或设置的垂直分量 <see cref="T:System.Drawing.SizeF" />
    ///  结构。
    ///</summary>
    ///<returns>
    ///  垂直分量 <see cref="T:System.Drawing.SizeF" />
    ///  结构，通常以像素为单位进行度量。
    ///</returns>
    property Height: Single read get_Height write set_Height;
  end;

  TDNSizeF = class(TDNGenericImport<DNSizeFClass, DNSizeF>) end;


implementation

end.
