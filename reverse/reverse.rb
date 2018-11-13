# Solution #1

string = 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.'

arr = string.split(//)

reverse_arr = []

until arr.length == 0
  reverse_arr.push arr.last
  arr.pop
end

reverse_str = reverse_arr.join

puts reverse_str

# Solution #2

string = 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.'

arr = string.split(//)

reverse_arr = []

arr_length = arr.length - 1

until arr_length < 0
  reverse_arr.push arr[arr_length]
  arr_length -= 1
end

reverse_str = reverse_arr.join

puts reverse_str
