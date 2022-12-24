# Hello User

+ initonly fields
+ ldfld
+ get only property
+ implicit `this` argument
  Instance methods have `this` as an implicit first argument
  `ldarg.0` to load implicit argument on stack.
  Don't forget to pass in `this` as first argument when calling instance method.

  # Assemble

  `ilasm hello.il \dll \out:hello.dll`

  `\dll` prevents an entry point from being required.

  Still not sure how to create .NET Core .exe without getting load exception.
