--  package cr�� pour tester si une fonction qui est utilis�e par une fonction export�e
--  est aussi export�e indirectement dans le librairie pour le code C
--  Et apr�s test : �a fonctionne !
with Interfaces; use Interfaces;
package Add is

   function Addition (A, B : Interfaces.Unsigned_32) return Interfaces.Unsigned_32 ;

end Add;
