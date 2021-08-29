[中文](README.zh-CN.md)   | English      

-----

### What's new

* v0.1.20  
   * 1. Add support for generic types (nested generics are not currently supported).
   * 2. Fix that there is no forced data cleaning when creating entrusted data.
   * 3. Added a new `DDN.Helpers` unit.
   * 4. Optimize the speed of type search.
   * 5. Refactor the GenCode tool and no longer generate Common units. MS standard library will be provided directly.

* v0.1.16
  * 1. Added `SetShowDetailedExceptionMessage` to display detailed error messages when used for exceptions.
  * 2. Restore `SetExceptionMask` in initialization to shield certain exceptions by default.
