
-- defines a function to factorialize a number
function factorial(n)
  if n == 0 then
    return 1
  else
    return n * factorial(n - 1)
  end
end

-- i/o shell to get user input
print("Enter a number to factorialize:")
num = io.read("*num")

-- display the result
print(factorial(num))

