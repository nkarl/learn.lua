
--[[
print(29)
--]]

---[[
print(23)
--]]

-- this is a single line comment in Lua

--[[
This is syntactically correct multi-line comment in Lua.
It be as long as needed as long as the lines are encapsulated in
the double square brackets after the double hyphens.
]]

--
-- bash shell apparently also supports automatic comment the next line 
-- when hitting Enter key.
--
-- This is all a continuous take. When I hit Enter, the next line is
-- automatically commented out.
--
-- Pretty neat. I don't have to worry too much about all the comment
-- format.
--
-- Although, I can see how the double square brackets can be very useful
-- for debugging as shown at the top of this file.
--
-- Everything encapsulated in the brackets is automatically a comment. This 
-- could me a whole chunk with multiple lines. However, a simple addition
-- of an extra hyphen into the opening brackets will convert the comment back
-- to code.

--
-- Now I also want to run through a quick review on how to use Lua from
-- the commandline. Lua can be used in the same manner as a bash script
-- by adding `#!/usr/bin/lua` to the first line of the file.
--
-- However, I think I prefer to call it through the interpreter for now, just like
-- a python script.
--
-- The syntax of a commandline call is:
-- 	
-- 	$ lua [option] [script [args]]
--
-- For example:
-- 	Let's say I have a script to calculate the factorial of passed variable, this
-- 	script is named `facto.lua`.
--
-- 	I can do this:
--
-- 	$ lua -lfacto -e "print(fact(x=10))"
--
-- 	directly from the commandline.
-- 	
-- 	IMPORTANT: I found out that there will be a run-time error if the filename is
-- 	the same as the function: `fact.lua` and there is function called `fact (n)`
-- 	contained inside the file.
--
-- 	That's why it is best to use a different filename from the function defined inside
-- 	to avoid collision.
