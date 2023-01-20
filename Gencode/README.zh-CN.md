中文   | [English](README.md)

-----

命令行：

* .NET Framework

```
GenCodeNET net4.0.json
```

* .NET Core

```
dotnet GenCodeNETC.dll netcore2.1.json
```
GenCodeNETC.runtimeconfig
```json
{
  "runtimeOptions": {
    "tfm": "",
    "framework": {
      "name": "Microsoft.NETCore.App",
      "version": "2.1.30"  // 修改版本号运行指定的.NET Core版本。
    }
  }
}
```
----

json配置文件格式：
```json
{
  "OutputDir": "",                  // 单元输出目录
  "Lang": "",                       // 生成的注释语言，比如：zh-Hans，可空，默认为en-US
  "GenerateCommnet": true,          // 是否生成注释，默认为false
  "AssemblyRoot": "",               // 程序集目录
  "NETVersion": "",                 // .NET程序集的版本，一般只用于标准库中
  "Items": [                        // 清单项目
    {
      "Assembly": "",               // 程序集(dll)的文件名或者全路径
      "IsMsLib": false,             // 是否为MS自带的标准库，默认为false
      "Units": [                    // 要生成的单元
        {
          "DotNotGenerate": false,  // 不生成此单元，默认为false
          "IsMain": true,           // 是否为主单元，默认为false，主单元必须要为true
          "ExcludeNamespaces": [    // 要排除掉当前程序集中指定的的命名空间
          ],
          "ExcludeTypes": [         // 要排除掉当前程序集中指定的类型

          ],
          "OnlyGenerateNamespace": "", // 只生成当前程序集中为此命名空间的，一般用于解决程序集之间循环引用
          "OnlyGenerateType": "",      // 只生成当前程序集中指定的类型，一般用于解决程序集之间循环引用
          "Append": {                  // 附加的，有时候他相同的命名空间但不在一个程序集中，比如System.dll与System.Configuration.dll中的System.Configuration合并为一个单元。
            "Assembly": "",            // 要附加的程序集(dll)绝对路径    
            "IncludeNamespaces": [     // 要附加的类型的命名空间

            ]
          },
          "ExcludeUses": [],           // 要从uses列表中排除的单元，不需要加`DDN.`
          "IncludeUses": [],           // 要添加到uses列表的单元，不需要加`DDN.`    
          "FixNamesapces": [           // 因为循环引用拆分单元后，修复其他单元的类型引用问题
            {
              "TypeName": "",          // 要修复的.NET类型全名，比如`System.Object`
              "Namespace": ""          // 单元名，不需要加`DDN.`           
            }
          ],
          "ExcludeMethods": [],        // 要排除的指定方法，`.NET类型全名`+`.`+`方法名`        
          "ExcludeProps": [],          // 要排除的指定属性，`.NET类型全名`+`.`+`方法名`        
          "ExcludeFields": []          // 要排除的指定字段，`.NET类型全名`+`.`+`方法名`        
        }
      ]
    }
  ]
}
```