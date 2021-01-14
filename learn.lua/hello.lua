#!/usr/bin/lua

-- this print hellow work in Lua
print("Hello World!")

-- defines a factorial function
function fact (n)
	if n == 0 then
		return 1
	else
		return n * fact(n - 1)
	end
end

-- io shell
print("Enter a number:")
a = io.read("*n")		-- read a number

print(fact(a))
