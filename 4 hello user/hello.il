.assembly extern System.Runtime {
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )
  .ver 7:0:0:0
}
.assembly Hello {}
.module Hello.dll

.class public auto ansi beforefieldinit Hello.User
extends [System.Runtime]System.Object
{
   // First with getter and setter methods
   .field private initonly string first
   // last public init only field
   .field public initonly string last

   .method public hidebysig specialname instance string 
   get_First() cil managed {
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      .maxstack 8
      ldarg.0
      ldfld string Hello.User::first
      ret
   }

   .method public hidebysig specialname instance 
   void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) 
   set_First(string 'value') cil managed {
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 )
      .maxstack 8
      ldarg.0
      ldarg.1
      stfld string Hello.User::first
      ret
   }

   .property instance string First() {
      .get instance string Hello.User::get_First()
      .set instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) Hello.User::set_First(string)
   }

   .method public hidebysig specialname rtspecialname instance void 
   .ctor(string First, string Last) cil managed {
      .maxstack 8
      ldarg.0
      ldarg.1
      stfld string Hello.User::first
      ldarg.0
      ldarg.2
      stfld string Hello.User::last
      nop
      ret
   }
}
