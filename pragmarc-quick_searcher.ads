-- PragmAda Reusable Component (PragmARC)
-- Copyright (C) 2000 by PragmAda Software Engineering.  All rights reserved.
-- **************************************************************************
--
-- Fast string search routine; faster than Boyer-Moore for most reasonable search patterns
-- From Sunday, David, "A very fast substring search algorithm", COMMUNICATIONS OF THE ACM, 1990 Aug
--
-- History:
-- 2000 May 01     J. Carter          V1.0--Initial release
--
package PragmARC.Quick_Searcher is
   pragma Pure;

   type Result (Found : Boolean := False) is record
      case Found is
      when False =>
         null;
      when True =>
         Index : Positive := 1;
      end case;
   end record;

   function Quick_Search (Pattern : String; Source : String) return Result;
   -- If Pattern occurs in Source, returns (Found => True, Index => index of first position of Pattern in Source)
   -- Returns (Found => False) otherwise
end PragmARC.Quick_Searcher;
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