# @param {Integer} num
# @return {Boolean}
def is_ugly(num)
    i = num -1
    u_counter = 0
    counter = 0
    prime_counter = 0

    until i == 1
        if num%i == 0
            if i == 2 || i == 3 || i == 5
                u_counter += 1
            end
            num2 = i
            j = i
            factors = 0
            until j == 1
                if num2 % j == 0
                    factors += 1
                end
                j -= 1
            end
            if factors == 1
                prime_counter += 1
            end
        end
        i -= 1
    end
    if (prime_counter - u_counter) == 0
        return true
    else
        return false
    end
end
