.assembly extern mscorlib {}
.assembly Hello {}
.module Hello.exe
.class Hello.Program extends [mscorlib]System.Object
{
 .method static void Main(string[] args)
 cil managed
 {
  .entrypoint
  .maxstack 8
  .locals init (
   [0] string name
  )
  ldstr "What is your name?"
  call void [mscorlib]System.Console::WriteLine(string)
  call string [mscorlib]System.Console::ReadLine()
  stloc.0
  ldstr "Hello "
  ldloc.0
  call string [mscorlib]System.String::Concat(string, string)

  call void [mscorlib]System.Console::WriteLine(string)
  call string [mscorlib]System.Console::ReadLine()
  pop
  ret
 }
}