# Write a function that accepts a number, like on a keypad
# Keypad numbers map to strings of letters (aka #1 maps to ABC,  and 2 to DEF).
# the function returns all the possible combinations of letters they could have typed.
#
#
# Optional: write recrusive and iterative reversions

LOOKUP = {'2'=> 'ABC',
          '3'=> 'DEF',
          '4'=> 'GHI',
          '5'=> 'JKL',
          '6'=> 'MNO', 
          '7'=> 'PQR', 
          '8'=> 'STU', 
          '9'=> 'VWX', 
          '0'=>'YZ' }
def phone_to_text(number)
  prev_results = ['']
  curr_results = []
  number.each_char do |n|
    letters = LOOKUP[n]
    prev_results.each do |result|
      letters.each_char do |letter| 
        curr_results << result + letter
      end
    end
    prev_results = curr_results
    curr_results = []
  end
  prev_results
end
