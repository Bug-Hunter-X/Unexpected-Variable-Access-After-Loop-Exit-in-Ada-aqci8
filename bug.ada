```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
begin
   for I in My_Arr'Range loop
      if My_Arr(I) = 5 then
         exit;
      end if;
   end loop;
   -- Accessing My_Arr(I) here after exiting the loop is problematic
   -- if the loop exited early.
   Put_Line(My_Arr(I)'Img); -- This could raise Constraint_Error
end Example;
```