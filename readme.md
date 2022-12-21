# IL

Getting started

## hello.il

```
.assembly extern mscorlib {}
.assembly Hello {}
.module Hello.exe
.class Hello.Program extends [mscorlib]System.Object
{
 .method static void Main(string[] args)
 cil managed
 {
  .entrypoint
  ldstr "Hello world"
  call void [mscorlib]System.Console::WriteLine(string)
  ret
 }
}
```

## ilasm hello.il

IL Assembler assemble?

Add ilasm.exe location to command line path for convienence
(i.e. so the path does not need to be type everytime).
Example:
PATH=C:\Windows\Microsoft.NET\Framework\v4.0.30319
using old .NET Framework?

Enter in command prompt

```
ilasm hello.il
```

and ilasm creates hello.exe

## hello.exe

Type "hello.exe" on command line.

The text from the IL, "Hello world", is written out.
Hurray, we assembled/compiled? our first IL.

Alternatively double click exe,
but it closes so fast I couldn't see output.

# references

* https://sharplab.io/
* ILSpy
* https://www.youtube.com/c/ImmoLandwerth
* VS Code: IL Language Support Extension for syntax highlighting

## todo

* How to convert IL to c#? cs, ILSpy, Cecil?
* Name exe
* Reference .NET 6, extern?