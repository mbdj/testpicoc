pragma Ada_2012;

with System.Machine_Code; use System.Machine_Code;
with Add;

package body Testpicoc is

   ---------------
   -- Main_Loop --
   ---------------
   procedure Delai (D : in Interfaces.Unsigned_32) is
   --  simule un delai
   begin
      for I in 1 .. D loop
         Asm ("nop");
      end loop;
   end Delai;

   procedure Main_Loop is
      use Interfaces;

      N : Interfaces.Unsigned_32 := 1;

   begin

      loop
         Blink (N);

         N := Add.Addition (N, 1);

         Delai (20_000_000);
      end loop;

   end Main_Loop;

end Testpicoc;
