.assembly extern System.Runtime {
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )
  .ver 7:0:0:0
}
.assembly extern System.Console {
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )
  .ver 7:0:0:0
}
.assembly Hello {}
.module Hello.dll

.class public auto ansi beforefieldinit Hello.Program
    extends [System.Runtime]System.Object
{
    .method public hidebysig static void Main() cil managed 
    {
        .maxstack 8
        .entrypoint
        ldstr "hello"
        call void [System.Console]System.Console::WriteLine(string)
        ret
    }
}
