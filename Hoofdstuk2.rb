def deelbaardoor3 (tot)
  i = 0
  while i < tot
    if i % 3 == 0
      puts(i)
    end
    i = i + 1
  end
end

def FizzBuzz(tot)
  i = 0

  while i < tot

    if ((i % 3==0) and (i % 7==0))
      puts ("FizzBuzz")
    elsif i % 3 == 0
      #puts (i)
      puts("Fizz")
    elsif i % 7 == 0
      puts("Buzz")
    else
      puts(i)
    end

    i += 1
  end
end

def zeef (n)
  reeks = [*2..n]
  priem = []
  i = 0
  while i < reeks.length
    j = reeks[i]
    priem.push(j)
    while j < n
      j += reeks[i]
      reeks.delete(j)
    end
    i += 1
  end
  puts (priem)
end

def opsomming ()
  for i in (0..1000)
    puts(i)
  end
end



def shift (letter)
  letters = ["a".."z"]
  puts(letters.index(letter))
  return letters[letters.index(letter) + 2]
end

puts (shift("h"))
#opsomming()
#zeef(10000)
#FizzBuzz(100)
#deelbaardoor3(1000)
