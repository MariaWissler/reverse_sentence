# A method to reverse the words in a sentence, in place.
# Time Complexity: O(3n) + O(n) = O(n) Outside loop runs only once
# Space Complexity: O(1)

def reverse_words(my_sentence)
  l = 0
  j = my_sentence.length - 1

  while l < j
    temp = my_sentence[l]
    my_sentence[l] = my_sentence[j]
    my_sentence[j] = temp
    l += 1
    j -= 1
  end

  return my_sentence
end

def reverse_index(my_sentence, m, k)
  while m < k
    temp = my_sentence[m]
    my_sentence[m] = my_sentence[k - 1]
    my_sentence[k - 1] = temp
    m += 1
    k -= 1
  end

  return my_sentence
end

def reverse_sentence(my_sentence)
  return nil if my_sentence == nil

  i = 0
  m = 0
  j = my_sentence.length

  i += 1 while my_sentence == " "

  while i < j
    while my_sentence[i] != " " && i != j
      i += 1
    end

    k = i
    my_sentence = reverse_index(my_sentence, m, k)

    while my_sentence[i] == " "
      i += 1
    end

    m = i
  end

  return reverse_words(my_sentence)
end
