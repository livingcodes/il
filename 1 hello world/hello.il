.assembly extern mscorlib {}
.assembly Hello {}
.module Hello.exe
.class Hello.Program extends [mscorlib]System.Object
{
 .method static void Main(string[] args)
 cil managed
 {
  .entrypoint
  ldstr "hello world"
  call void [mscorlib]System.Console::WriteLine(string)
  call string [mscorlib]System.Console::ReadLine()
  pop
  ret
 }
}