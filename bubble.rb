require 'pry-byebug'

def bubble_sort(numbers)
  i = 0
  n = (numbers.length) - 1
  while i < n 
    swaps = 0
    for k in 0..n-1
      if numbers[k] > numbers[k+1]
        first_num = numbers[k]
        second_Num = numbers[k+1]

        numbers[k] = second_Num
        numbers[k+1] = first_num
        # p "Swapped #{first_num} with #{second_Num}"
        swaps += 1 
      end
    end
    swaps > 0 ? i +=1 : break
  end 
  p numbers
end

numbers = [4,3,78,2,0,2]
bubble_sort(numbers)