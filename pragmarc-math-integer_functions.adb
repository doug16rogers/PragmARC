-- PragmAda Reusable Component (PragmARC)
-- Copyright (C) 2018 by PragmAda Software Engineering.  All rights reserved.
-- **************************************************************************
--
-- Functions for integers.
--
-- History:
-- 2018 Aug 01     J. Carter          V1.2--Cleanup compiler warnings
-- 2016 Jun 01     J. Carter          V1.1--Changed comment for empty declarative part
-- 2006 Mar 01     J. Carter          V1.0--Integer functions moved here
--
package body PragmARC.Math.Integer_Functions is
   function GCD (Left : Natural; Right : Natural) return Natural is
      Min       : Natural := Integer'Min (Left, Right);
      Max       : Natural := Integer'Max (Left, Right);
      Remainder : Natural;
   begin -- GCD
      Reduce : loop
         if Min = 0 then
            return Max;
         end if;

         Remainder := Max rem Min;
         Max := Min;
         Min := Remainder;
      end loop Reduce;
   end GCD;

   function LCM (Left : Natural; Right : Natural) return Natural is
      -- Empty
   begin -- LCM
      return (Left * Right) / GCD (Left, Right);
   end LCM;
end PragmARC.Math.Integer_Functions;
--
-- This is free software; you can redistribute it and/or modify it under
-- terms of the GNU General Public License as published by the Free Software
-- Foundation; either version 2, or (at your option) any later version.
-- This software is distributed in the hope that it will be useful, but WITH
-- OUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
-- or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License
-- for more details. Free Software Foundation, 59 Temple Place - Suite
-- 330, Boston, MA 02111-1307, USA.
--
-- As a special exception, if other files instantiate generics from this
-- unit, or you link this unit with other files to produce an executable,
-- this unit does not by itself cause the resulting executable to be
-- covered by the GNU General Public License. This exception does not
-- however invalidate any other reasons why the executable file might be
-- covered by the GNU Public License.

