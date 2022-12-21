# .NET Core

The steps to assemble .NET core differ from the older .NET 4.

# ilasm 7

Create a console app in Visual Studio.

Open Nuget Package Console.

Run `dotnet publish --self-contained -r win-x64 -c Release`

Copy the ilasm.exe that is in the published folder.

----

Alternatively, can use Developer Command Prompt for VS 2022,
because it already knows path to ilasm.

# IL

sharplab.io

Enter `System.Console.WriteLine("hello world");`

Copy generated IL to it's own file, hello.il.

----

Alternatively, disassemble simple console app as a starting point.

Run `ildasm ConsoleApp.dll /out:startingpoint.il`

# Assemble

Change directory in command prompt to directory containing hello.il.

Run `ilasm hello.il` to create hello.exe

Getting following error when running hello.exe in command prompt:

Unhandled Exception: System.IO.FileLoadException: Could not load file or assembly 
'System.Runtime, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null'
or one of its dependencies.
The located assembly's manifest does not match the assembly reference. 
(Exception from HRESULT: 0x80131040)

So instead run `ilasm hello.il \out:hello.dll`

Now you can reference this dll from another app.