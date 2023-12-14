with Ada.Text_IO; use Ada.Text_IO;
with ada.numerics.discrete_random;

procedure Hello is
   S : String(1..10);
   type randRange is new Integer range 1..100;
   package Rand_Int is new ada.numerics.discrete_random(randRange);
   use Rand_Int;
   gen : Generator;
   num : randRange;
   begin
      Ada.Text_IO.Put_Line ("Wlcome to the michau calculater! Please input a number");
      S := Get_Line;
      reset(gen);
      num := random(gen);
      put_line(randRange'Image(num));
end Hello;