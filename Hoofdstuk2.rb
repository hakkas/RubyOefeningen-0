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

$letters = [*"a".."z"]

def shift (letter, ap)
  if isalpha(letter)
    nieuwepos = ($letters.index(letter) + ap)
    return $letters[nieuwepos % 26]
  else
    return letter
  end
end

def isalpha(str)
  !str.match(/[^A-Za-z]/)
end

def encrypt (woord, posities)
  res = ""
  res2 = ""

  #woord.each_char do |c|
  #  res += shift(c, posities)
  #end

  for letter in woord.split("")
    #puts(letter)
    res2 += shift(letter, posities)
  end

  return res2
end


def readFile ()
  contents = File.read('secret.txt')
  puts(contents)
  for i in (0..25)
    puts(encrypt(contents.downcase(), -i))
  end
end


readFile()
#opsomming()
#zeef(10000)
#FizzBuzz(100)
#deelbaardoor3(1000)
