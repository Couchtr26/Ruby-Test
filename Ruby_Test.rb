
def instructions 
  puts "To take the test, each question will appear one at a time.  As you answer, this will create a text file that will save your 
  questions and answers.  To answer, simply type the corresponding number and press enter.  Some answers will require multiple inputs.  
  Simply type the additional numbers with a comma separating each (e.g. 1,3,4) and then press enter.  Enjoy and good luck!"
end

def review
  puts "\n--- Test Review ---"
  if File.exist?("review_log.txt")
    File.foreach("review_log.txt") do |line|
      puts line
    end   
  else
    puts "No review log found.  Take the test!"
  end
end               

def test
  total_correct = 0
  incorrect = 0

=begin  
   The core logic is that each test is run and with the end separates rather than loading all at once.  With the score tracking it will
   auto display at the end by tracking score in the background. You could show score by puts score at the end of the if/else answer 
   method.  In addition, each is followed by a method to copy the question and answer from quiz taker to a .txt file that is dated at 
   the end.  Date will follow YYYY-MM-DD Time HH:MM:SS in 24 hour format.

   Should you need to add: Below is your standard block.
    puts "1. Question 1
    1. 1
    2. 2
    3. 3
    4. 4"
    answer = gets.chomp.to_i
    The section above is a question it is followed by command answer = gets.chomp.to_i.  This tells it to ask an answer from user
    gets <-- allows to get the answer .chomp <--- prevents a line break after as is standard to line break .to_i <--- changes answer to
    integer in Ruby. If we don't do that the program will not accept the numbers inserted as an answer.  answer <---- this says that the
    answer derived is what the tester chose


    if answer == 4 
      puts "Correct. Well done!"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)." 
    else
      puts "Incorrect. The correct answer is 4."
      incorrect += 1    
    end
    This section checks the answer.  Showing if correct, it adds one to the total correct which is in turn used to derive ending score
    The else means if it is anyting else it will count as incorrect and wil add one to the incorrect file. Change these as needed for
    question.
  
    File.open("review_log.txt", "a") do |file|
    file.puts "Question: 1. To best support beneficiary questions and remain compliant with the required materials at the time of enrollment, 
    which minimal marketing materials must agents ensure they have available during a marketing event?"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
    end
    This section is about creating the answer text file. The first tells it how to name the a means to ammend and the do |file| it means
    the actions are to be performed on that file. The puts after tells it to put the question in file followed by user answer and result
    the final bit separates each question with 40 -

    puts
    This creates a space between questions. The puts command purpose is to put what follows on screen but without anything to put on 
    screen it creates a line break.  If we wish to show anything that isn't a problem but "Around what you want to put" if you want 
    to add quotes into the thing you want put in the quotes \"\" do that the \ functions as an escape clause so it knows to print but
    is not part of the syntax "" needed for putting the string on screen.  String - Text file you wish computer to display in quotes 
    in program. 
    Now you understand the code and update as needed the bottom includes how total score is calculated plus a time date stamp when 
    finished but I would advise against alteration. 

    To add blocks copy and paste the block section as shown here and fill in your own info you only need question and answer alterations
    to keep the review file if you wish to change it feel free to put name in there word_word_number.txt or similar to create the rest
    alter your questions and answers as needed.  Look at that you can program a computer now.  Enjoy!

    puts "15. Question 15
    1. 1
    2. 2
    3. 3
    4. 4"
    puts "Enter all that apply."
    answer = gets.chomp.split(",").map(&:strip).map(&:to_i)
    This allows the handling of multi select answers.  Answer equals the users answers but gets.chomp is followed by .split this is 
    the answers are to appear so needing comma, strip this reads the whole set as one and compares against array and to_i to convert
    to an integer

    answers = [2, 3]
    Above the answers are stored in array called answers 

    if answer.sort == answers.sort Here the answer is sorted as is the array to check regardless of order. 
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect. The correct answer is 2 and 3."
      incorrect += 1 
    end
  
    File.open("review_log.txt", "a") do |file|
    file.puts "15. Question 15"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == answers.sort ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
    end
=end

  puts "1. Question 1
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4 
      puts "Correct. Well done!"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect. The correct answer is 4."
      incorrect += 1
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "1. Question 1"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts "2. Question 2
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct. Keep going!"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect. The correct answer is 4."
      incorrect += 1
  end    
  
  File.open("review_log.txt", "a") do |file|
    file.puts "2. Question 2"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts "3. Question 3
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct. Good job!"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect. The correct answer is 4."
      incorrect += 1
  end 
  
  File.open("review_log.txt", "a") do |file|
    file.puts "3. Question 3"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts "4. Question 4
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct. You got this!"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect. The correct answer is 4."
      incorrect += 1
  end 
  
  File.open("review_log.txt", "a") do |file|
    file.puts "4. Question 4"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts "5. Question 5
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct. You are crushing it!"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)." 
    else
      puts "Incorrect.  The correct answer is 4."
      incorrect += 1
  end 
  
  File.open("review_log.txt", "a") do |file|
    file.puts "5. Question 5"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts "6. Question 6
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

  if answer == 4
    puts "Correct. You know Medicare!"
    total_correct += 1
  elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
  else
    puts "Incorrect. The correct answer is 4"
    incorrect += 1
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "6. Question 6"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts "7. Question 7
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "7. Question 7"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts 

  puts "8. Question 8
    1. 1
    2. 2
    3. 3"
  answer = gets.chomp.to_i

    if answer == 3
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 3
      puts "Please enter a valid option (1-3)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "8. Question 8"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 3 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts "9. Question 9
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "9. Question 9"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts "10. Question 10
    1. 1
    2. 2
    3. 3"
  answer = gets.chomp.to_i

    if answer == 3
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 3
      puts "Please enter a valid option (1-3)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "10. Question 10"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 3 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts 

  puts "11. Question 11
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "11. Question 11"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts 

  puts "12. Question 12 
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "12. Question 12"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts 

=begin  
   You don't need a 100 people to fight a silverback gorilla 
   You need one brave man from Florida with the tattoo of an eagle 
   Pump him up with meth adrenaline will do the rest 
   and the other 99 will be just fine
=end

  puts "13. Question 13
    1. 1
    2. 2
    3. 3"
  answer = gets.chomp.to_i

    if answer == 1
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 3
      puts "Please enter a valid option (1-3)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "13. Question 13"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 1 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts 

  puts "14. AQuestion 14
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "14. Question 14"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts 

  puts "15. Question 15
    1. 1
    2. 2
    3. 3
    4. 4"
  puts "Enter all that apply."
  answer = gets.chomp.split(",").map(&:strip).map(&:to_i)

  answers = [2, 3]

    if answer.sort == answers.sort
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect. The correct answer is 2 and 3."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "15. Question 15"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == answers.sort ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts 

  puts "16. Question 16
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "16. Question 16"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts 

  puts "17. Question 17
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "17. Question 17"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts 

  puts "18. Question 18
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "18. Question 18"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts "19. Question 19
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "19. Question 19"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts "20. Question 20
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "20. Question 20"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts "21. Question 21
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "21. Question 21"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts
  
  # Source code isn't it so much fun to read.
  # Always zany.

  puts '22. Question 22
    1. 1
    2. 2
    3. 3
    4. 4'
  puts "Enter all that apply."
  answer = gets.chomp.split(",").map(&:strip).map(&:to_i)

  answers = [1, 2, 4]

    if answer.sort == answers.sort
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect. The correct answer is 2 and 3."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "22. Question 22"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == answers.sort ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts "23. Question 23
    1. 1
    2. 2 
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "23. Question 23"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts "24. Question 24
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "24. Question 24"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts "25. Question 25
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "25. Question 25"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts "26. Question 26
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "26. Question 26"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts "27. Question 27
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "27. Question 27"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts 

  puts "28. Question 28
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "28. Question 28"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts 

  puts "29. Question 29
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "29. Question 29"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts 

=begin 
   I am a guy so I..... 
   keep a little dirt under my pillow for the dirt man. 
   In case he comes to town. 
   Keep a little dirt under my pillow for the dirt man. 
   So he won't take me down.
   To his lair 
   Deep under the mountain 
   Underground
   That's where he keeps his dirt.
=end

  puts "30. Question 30
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "30. Question 30"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts 

  puts "31. Question 31 
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "31. Question 31"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts 

  puts "32. Question 32
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "32. Question 32"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts 

  # Comments are the zest of code.  Allowing explanation of logic and programmer personality.

  puts "33. Question 33
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "33. Question 33"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts "34. Question 34
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "34. Question 34"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts "35. Question 35
    1. 1
    2. 2
    3. 3
    4. 4"
  puts "Enter all that apply."
  answer = gets.chomp.split(",").map(&:strip).map(&:to_i)

  answers = [1, 2, 3, 4]

    if answer.sort == answers.sort
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect. The correct answer is 2 and 3."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "35. Question 35"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == answers.sort ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts
  # Pillow
  # A little dirt

  puts "36. Question 36
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "36. Question 36"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts "37. Question 37
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "37. Question 37"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts '38. Question 38
    1. 1
    2. 2
    3. 3
    4. 4'
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "38. Question 38"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  # While finishing this code, programmer Thomas Couch subsisted mostly on popcorn, coffee, diet A&W and grit

  puts "39. Question 39
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "39. Question 39"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts "40. Question 40
    1. 1
    2. 2
    3. 3
    4. 4"
  puts "Enter all that apply."
  answer = gets.chomp.split(",").map(&:strip).map(&:to_i)

  answers = [3, 4]

    if answer.sort == answers.sort
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect. The correct answer is 2 and 3."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "40. Question 40"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == answers.sort ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts "41. Question 41
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "41. Question 41"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts "42. Question 42
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "Question 42"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts "43. Question 43
    1. 1
    2. 2
    3. 3
    4. 4"
  puts "Enter all that apply."
  answer = gets.chomp.split(",").map(&:strip).map(&:to_i)

  answers = [1, 2, 3]

    if answer.sort == answers.sort
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect. The correct answer is 2 and 3."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "43. Question 43"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == answers.sort ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts "44. Question 44
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "44. Question 44"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts "45. Question 45
    1. If
    2. Then"
  answer = gets.chomp.to_i

    if answer == 1
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 2
      puts "Please enter a valid option (1-2)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "45. Question 45"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 1 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

=begin  
   Carter Vail is an awesome singer.  
   You really should listen to his surreal shorts.
   Note lyrics above "Dirt Man" and "Gorilla Lullaby" 
   Plus Stunner and Madeline are awesome.  
   Give them a listen. 
   Maybe you discovered your new favorite artist from a program comment.
=end

  puts "46. Question 46
    1. T
    2. F"
  answer = gets.chomp.to_i

    if answer == 2
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 2
      puts "Please enter a valid option (1-2)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "46. Question 46"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 2 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  # Fun fact:  Did you know that # is actually called an octothorpe.

  puts "47. Question 47
    1. 1
    2. 2
    3. 3"
  answer = gets.chomp.to_i

    if answer == 3
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 3
      puts "Please enter a valid option (1-3)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end

  File.open("review_log.txt", "a") do |file|
    file.puts "47. Question 47"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 3 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts "48. Question 48
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 2
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "48. Question 48"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts "49. Question 49
    1. 1
    2. 2
    3. 3
    4. 4"
  puts "Enter all that apply."
  answer = gets.chomp.split(",").map(&:strip).map(&:to_i)

  answers = [2, 3, 4]

    if answer.sort == answers.sort
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect. The correct answer is 2 and 3."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "49. Question 49"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == answers.sort ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts "50. 50. Question 50
    1. 1
    2. 2 
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 3
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "50. Question 50"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

  puts "51. Question 51
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer == 4
      puts "Correct"
      total_correct += 1
    elsif answer < 1 || answer > 4
      puts "Please enter a valid option (1-4)."   
    else
      puts "Incorrect"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "51. Question 51"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

=begin  
   You got yourself a Florida man.
   He fought the silverback gorilla.
   You kept your dirt under your pillow.
   Even if you're a gal and wised up.
   Just sayin' is all. 
   Now you're vibing to Madeline.
   Feeling the melancholy of romantic ideals.
   Everyone thinks the formula works.
   However, it is never the same for everyone.
   What we make is often our own ideal.
   Rather then the truth in front of us.
  
   There's no goodbye
   It feels like the ending - Carter Vail "Madeline"

   Wait a minute... What kind of a guy am I?
   Duh!
   https://www.youtube.com/watch?v=NMV3O7ARoVs  Link to "Madeline"
   Enjoy you nutso source code reader. ;D
=end
  

  score = total_correct * 2
    puts "✅ You got #{total_correct} correct and #{incorrect} incorrect."
    puts "🎯 Your score is: #{score}"
  
  timestamp = Time.now.strftime("%Y-%m-%d %H:%M:%S")

  File.open("review_log.txt", "a") do |file|
    file.puts "✅ You got #{total_correct} correct and #{incorrect} incorrect.
    🎯 Your score is: #{score}"
    file.puts "# Test results generated on: #{timestamp}"
    file.puts "-" * 40
  end   
end

=begin
  Built by Thomas Couch, Grey Knight Software
=end  

def menu 
  loop do 
    puts "\n--- Main Menu ---"
    puts "1. Instructions"
    puts "2. Do test"
    puts "3. Review test"
    puts "4. Exit"
    puts "Select an option:"
    answer = gets.chomp.to_i

    if answer == 1
      instructions   
    elsif answer == 2
      test
    elsif answer == 3
      review 
    elsif answer == 4
      puts "Goodbye! Have a nice day!"
      exit 
    else  
      puts "Invalid option.  Please select: 1, 2, or 3"  
    end
  end    
end        

menu  

