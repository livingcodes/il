.assembly extern System.Runtime {
   .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A)
   .ver 7:0:0:0
}
.assembly Hello {}
.module Hello.dll

.class public auto ansi beforefieldinit Hello.User
{
   .field public initonly string First
   .field public initonly string Last

   .method public hidebysig specialname rtspecialname instance void 
   .ctor(string First, string Last) cil managed {
      .maxstack 8
      ldarg.0
      ldarg.1
      stfld string Hello.User::First
      ldarg.0
      ldarg.2
      stfld string Hello.User::Last
      nop
      ret
   }

   .method public instance string get_Name() cil managed {
      .maxstack 4
      ldarg.0 // implicit 'this' argument
      ldfld string Hello.User::First
      ldstr " - "
      ldarg.0
      ldfld string Hello.User::Last
      call string [System.Runtime]System.String::Concat(
         string, string, string)
      ret
   }
   .property instance string Name() {
      .get instance string Hello.User::get_Name()
   }
}