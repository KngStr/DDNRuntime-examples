[中文](README.zh-CN.md)   | English      

-----

Command Line: 
```
GenCodeNET net4.0.json
```

json configuration file format:  
```json
{
   "OutputDir": "",                 // Units output directory
   "Lang": "",                      // The generated annotation language, such as: zh-Hans, can be empty, the default is en-US
   "GenerateCommnet": true,         // Whether to generate comments, the default is false
   "Items": [                       // List item
       {
	       "Assembly": "",          // Assembly (dll) absolute path
		   "IsMsLib": false,        // Whether it is the standard library that comes with MS, the default is false
		   "Units": [               // Units to be generated
		      {
			     "DotNotGenerate": false, // Do not generate this unit, the default is false
				 "IsMain": true,          // Whether it is the main unit, the default is false, the main unit must be true
				 "ExcludeNamespaces": [   // To exclude the namespace specified in the current assembly
				    
				 ],
				 "ExcludeTypes": [        // To exclude the type specified in the current assembly
				 
				 ],
				 "OnlyGenerateNamespace": "", // Only generate this namespace in the current assembly, which is generally used to resolve circular references between assemblies
				 "OnlyGenerateType": "",      // Only generate the type specified in the current assembly, which is generally used to resolve circular references between assemblies
				 "Append": {                  // In addition, sometimes he has the same namespace but is not in the same assembly, for example, System.dll and System.Configuration in System.Configuration.dll are merged into one unit.
				    "Assembly": "",           // The absolute path of the assembly (dll) to be attached
                    "IncludeNamespaces": [    // The namespace of the type to attach
					
					] 					
				 },
				 "ExcludeUses": [],           // To exclude units from the uses list, there is no need to add `DDN.`
                 "IncludeUses": [],           // To add to the unit of the uses list, there is no need to add `DDN.`
                 "FixNamesapces": [           // After splitting the unit because of circular references, fix the type reference problem of other units
				    "TypeName": "",           // The full name of the .NET type to be repaired, such as `System.Object`
                    "Namespace": "",          // Unit name, no need to add `DDN.`		
				 ],
                 "ExcludeMethods": []         // The specified method to be excluded, `.NET type full name`+`.`+`method name`			 
 			  
			  }
		   ]
	   }
   ]
}
```