N = 8       -- board size

-- check whether  position (n, c) is free from attacks
function isPlaceOK(a, n, c)
    for i = 1, n - 1 do                     -- for each queen already placed
        if (a[i] == c)                      -- is it same column?
            or (a[i] - i == c - n)          -- same diagonal?
            or (a[i] + i == c + n) then     -- same diagonal?
            return false                    -- place can be attacked
        end
    end
    return true                             -- no attacks; place is OK
end

-- print a board
function printSolution(a)
    for i = 1, N do                                 -- for each row
        for j = 1, N do                             -- and for each column
            io.write(a[i] == j and "X" or "-", " ") -- write "X" or "-" plus a space
        end
        io.write("\n")
    end
    io.write("\n")
end

-- add to board 'board' all queens from 'n' to  'N'
function addQueen(board, n)
    if n > N then                           -- all queen have been placed?
        printSolution(board)
    else                                    -- try to place n-th queen
        for c = 1, N do
            if isPlaceOK(board, n, c) then
                a[n] = c                    -- place n-th queen at column 'c'
                addQueen(board, n + 1)
            end
        end
    end
end

-- run the program
addQueen({}, 1)
