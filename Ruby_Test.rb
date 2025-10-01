
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
  answer = nil

  
 #  The core logic is that each test is run and with the end separates rather than loading all at once. With the score tracking it 
 #  will auto display at the end by tracking score in the background. You could show score by puts score at the end of the if/else 
 #  answer method. In addition, each is followed by a method to copy the question and answer from quiz taker to a .txt file that is dated 
 #  at the end. Date will follow YYYY-MM-DD Time HH:MM:SS in 24 hour format. Should you need to add: Below is your standard block. 
 #  puts "1. Question 1 
 #  1. 1 
 #  2. 2 
 #  3. 3 
 #  4. 4" 
 #  answer = gets.chomp.to_i 
 #  The section above is a question it is followed by command answer = gets.chomp.to_i. This tells it to ask an answer from user 
 #  gets <-- allows to get the answer .chomp <--- prevents a line break after as is standard to line break .to_i <--- changes answer 
 #  to integer in Ruby. If we don't do that the program will not accept the numbers inserted as an answer. answer <---- this says that 
 #  the answer derived is what the tester chose if answer.between?(1, 4) break else puts "Please enter a valid option (1-4)." end end 
 #  if answer == 4 
 #    puts "Correct. Good job!" 
 #    total_correct += 1 
 #  else 
 #    puts "Incorrect. The correct answer is 4." 
 #    incorrect += 1 
 #  end 
 #  This section checks the answer. Showing if correct, it adds one to the total correct which is in turn used to derive ending score 
 #  The else means if it is anyting else it will count as incorrect and wil add one to the incorrect file. Change these as needed for 
 #  question. The beginning if answer.between?(1, 4) Checks to see the answer is between 1 and 4 if so that section breaks and proceeds 
 #  to the next in order check answer if not it enters please enter a valid option between numbers listed and the loop do above the 
 #  question loops the question back. 
 #  File.open("review_log.txt", "a") do |file| 
 #   file.puts "1. Question 1" 
 #    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}" 
 #    file.puts "-" * 40 
 #  end 
 #  This section is about creating the answer text file. The first tells it how to name the a means to ammend and the do |file| 
 #    it means the actions are to be performed on that file. The puts after tells it to put the question in file followed by user answer 
 #    and result the final bit separates each question with 40 - puts This creates a space between questions. The puts command purpose is 
 #    to put what follows on screen but without anything to put on screen it creates a line break. If we wish to show anything that isn't 
 #    a problem but "Around what you want to put" if you want to add quotes into the thing you want put in the quotes \"\" do that the \ 
 #   functions as an escape clause so it knows to print but is not part of the syntax "" needed for putting the string on screen. 
 #    String - Text file you wish computer to display in quotes in program. Now you understand the code and update as needed the bottom 
 #    includes how total score is calculated plus a time date stamp when finished but I would advise against alteration. To add blocks 
 #    copy and paste the block section as shown here and fill in your own info you only need question and answer alterations to keep the 
 #    review file if you wish to change it feel free to put name in there word_word_number.txt or similar to create the rest alter your 
 #    questions and answers as needed. Look at that you can program a computer now. Enjoy! 
 #    puts "15. Question 15 
 #           1. 1 
 #          2. 2 
 #           3. 3 
 #           4. 4" 
 #           puts "Enter all that apply (e.g., 1,2,4):" 
 #           input = gets.chomp 
 #           answer = input.split(",").map(&:strip).map(&:to_i) 
 #  This allows the handling of multi select answers. Answer equals the users answers. Here we have split up to input and 
 #  made the input the answer. Here we use gets.chomp to grab the answer answer then uses the input derived to parse so it is 
 #  understood the answers are to appear so needing comma, strip this reads the whole set as one and compares against array and 
 #            to_i to convert to an integer           
 #            if answer.all? { |a| a.between?(1, 4) } 
 #              break 
 #            else 
 #              puts "Please enter only numbers between 1 and 4, separated by commas." 
 #            end 
 #          end 
 #  This section checks to make sure that each integer in the array falls into parameter and returns back the message 
 #  Please enter only numbers between 1 and 4, separated by commas. With loop do it repeats the question back.         
 #            answers = [2, 3] 
 #            if answer.sort == answers.sort 
 #              puts "Correct. You know your Medicare. Good job!" 
 #              total_correct += 1 
 #            else 
 #              puts "Incorrect. The correct answer is 2 and 3." 
 #              incorrect += 1 
 #            end 
 #  Here above the correct answers are displayed the answer and the array are sorted to check between them and returned to see 
 # correct answer check.
 #            File.open("review_log.txt", "a") do |file| 
 #              file.puts "15. Question 15" 
 #              file.puts "User Answer: #{answer}" 
 #              file.puts "Result: #{answer == answers.sort ? 'Correct' : 'Incorrect'}" 
 #              file.puts "-" * 40 
 #            end 
 #  The above here is the tracking it creates file review_log.txt and amends each question to it as it goes the do |file| is 
 #  the orders below added to the file. 
 #            score = total_correct * 2 
 #            puts "✅ You got #{total_correct} correct and #{incorrect} incorrect." 
 #            puts "🎯 Your score is: #{score}" 
 #            timestamp = Time.now.strftime("%Y-%m-%d %H:%M:%S") 
 #            File.open("review_log.txt", "a") do |file| 
 #              file.puts "✅ You got #{total_correct} correct and #{incorrect} incorrect. 🎯 Your score is: #{score}" 
 #              file.puts "# Test results generated on: #{timestamp}" 
 #              file.puts "-" * 40 
 #            end 
 #          end 
 #  Here is final scoring logic at ~50 questions we multiply total correct by 2 and that gets percentage of test based on ~50 
 #  and fairly goodd percentage score. Score is then printed and time stamped YYYY-MM-DD time is 24 hours with HH:MM:SS then the 
 #  last bit logs to review_log.txt

 loop do
  puts "1. Question 1 
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

     if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4 
      puts "Correct. Well done!"
      total_correct += 1
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

 loop do  
  puts "2. Question 2
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end

    if answer == 4
      puts "Correct. Keep going!"
      total_correct += 1
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

 loop do  
  puts "3. Question 3
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct. Good job!"
      total_correct += 1
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

 loop do  
  puts "4. Question 4
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct. You got this!"
      total_correct += 1
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

 loop do   
  puts "5. Question 5
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
    
    if answer == 4
      puts "Correct. You are crushing it!"
      total_correct += 1
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

 loop do   
  puts "6. Question 6
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct. You know Medicare!"
      total_correct += 1
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

 loop do   
  puts "7. Question 7
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct. You got this, keep going forward."
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 4."
      incorrect += 1
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "7. Question 7"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts 

 loop do   
  puts "8. Question 8
    1. 1
    2. 2
    3. 3"
  answer = gets.chomp.to_i

    if answer.between?(1, 3)
      break
    else
      puts "Please enter a valid option (1-3)."
    end
  end
  
    if answer == 3
      puts "Correct. You got this, no doubt!"
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 3."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "8. Question 8"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 3 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

 loop do   
  puts "9. Question 9
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct. You are passing so far with flying colors."
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "9. Question 9"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

 loop do   
  puts "10. Question 10
    1. 1
    2. 2
    3. 3"
  answer = gets.chomp.to_i

    if answer.between?(1, 3)
      break
    else
      puts "Please enter a valid option (1-3)."
    end
  end
  
    if answer == 3
      puts "Correct. You know your coverage."
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 3."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "10. Question 10"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 3 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts 

 loop do   
  puts "11. Question 11
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct. You know what you are doing, keep going!"
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "11. Question 11"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts 

 loop do   
  puts "12. Question 12
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct.  Nobody is fooling you, Winner!"
      total_correct += 1
    else
      puts "Incorrect.  The correct answer is 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "12. Question 12"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts 

  
 #  You don't need a 100 people to fight a silverback gorilla 
 #  You need one brave man from Florida with the tattoo of an eagle 
 #  Pump him up with meth adrenaline will do the rest 
 #  and the other 99 will be just fine


 loop do 
  puts "13. Question 13
    1. 1
    2. 2
    3. 3"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end  
    
    if answer == 1
      puts "Correct.  You got it."
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 1"
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "13. Question 13"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 1 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts 

 loop do   
  puts "14. Question 14
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct. You know your plans."
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "14. Question 14"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts 

 loop do   
  puts "15. Question 15
    1. 1
    2. 2
    3. 3
    4. 4"
  puts "Enter all that apply (e.g., 1,2,4):"
  input = gets.chomp
  answer = input.split(",").map(&:strip).map(&:to_i)

  
    if answer.all? { |a| a.between?(1, 4) }
      break
    else
      puts "Please enter only numbers between 1 and 4, separated by commas."
    end
  end 
    
  answers = [2, 3]
  
    if answer.sort == answers.sort
      puts "Correct. You know your Medicare. Good job!"
      total_correct += 1
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

 loop do   
  puts "16. Question 16
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct. Winner!"
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "16. Question 16"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts 

 loop do   
  puts "17. Question 17
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
    
    if answer == 4
      puts "Correct.  Keep it up!"
      total_correct += 1
    else
      puts "Incorrect. THe correct answer is 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "17. Question 17"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts 

 loop do   
  puts "18. Question 18
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct.  You are going the distance!"
      total_correct += 1
    else
      puts "Incorrec. The correct answer is 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "18. Question 18"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

 loop do   
  puts "19. Question 19
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct. Keep going, you're doing it!"
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "19. Question 19"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

 loop do   
  puts "20. Question 20
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct.  You got this, keep going!"
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "20. Question 20"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

 loop do   
  puts "21. Question 21
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct, Keep it up."
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 4."
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

 loop do   
  puts '22. Question 22
    1. 1
    2. 2
    3. 3
    4. 4'
  puts "Enter all that apply (e.g., 1,2,4):"
  input = gets.chomp
  answer = input.split(",").map(&:strip).map(&:to_i)

  
    if answer.all? { |a| a.between?(1, 4) }
      break
    else
      puts "Please enter only numbers between 1 and 4, separated by commas."
    end
  end 
    
  answers = [1, 2, 4]
  
    if answer.sort == answers.sort
      puts "Correct.  Way to go!"
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 1, 2, and 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "22. Question 22"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == answers.sort ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

 loop do   
  puts "23. Question 23
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct. Well done!"
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "23. Question 23"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

 loop do   
  puts "24. Question 24
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct. Good Job!"
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "24. Question 24"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

 loop do   
  puts "25. Question 25
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct. You know the regulations.  You got this test."
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "25. Question 25"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

 loop do   
  puts "26. Question 26
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct.  AEP doesn't fool you."
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "26. Question 26"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

 loop do   
  puts "27. Question 27 
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct. Number 1!!!!"
      total_correct += 1
    else
      puts "Incorrect.  The correct answer is 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "27. Question 27"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts 

 loop do   
  puts "28. Question 28
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct.  You have made it far,  Keep going!"
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "28. Question 28"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts 

 loop do   
  puts "29. Question 29
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct. Keep it up."
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "29. Question 29"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts 


 #  I am a guy so I..... 
 #  keep a little dirt under my pillow for the dirt man. 
 #  In case he comes to town. 
 #  Keep a little dirt under my pillow for the dirt man. 
 #  So he won't take me down.
 #  To his lair 
 #  Deep under the mountain 
 #  Underground
 #  That's where he keeps his dirt.


 loop do 
  puts "30. Question 30
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct. You are winning at this test."
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "30. Question 30"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts 

 loop do   
  puts "31. Question 31 
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct. You are rounding the questions.  Keep going you're going to score that cert."
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "31. Question 31"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts 

 loop do   
  puts "32. Question 32
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct. You have all the questions, don't you?"
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "32. Question"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts 

  # Comments are the zest of code.  Allowing explanation of logic and programmer personality.

 loop do   
  puts "33. Question 33
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct. Nobody fools you.  You got this test!"
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "33. Question 33"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

 loop do   
  puts "34 Question 34
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct. Ain't nothing slowing you down.  Keep going!"
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "34 Question 34"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

 loop do   
  puts "35. SQuestion 35
    1. 1
    2. 2
    3. 3
    4. 4"
  puts "Enter all that apply (e.g., 1,2,4):"
  input = gets.chomp
  answer = input.split(",").map(&:strip).map(&:to_i)

  
    if answer.all? { |a| a.between?(1, 4) }
      break
    else
      puts "Please enter only numbers between 1 and 4, separated by commas."
    end
  end 
    
  answers = [1, 2, 3, 4]
  
    if answer.sort == answers.sort
      puts "Correct.  You got them all.  Way to go!"
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 1, 2, 3, and 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "35. SQuestion 35"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == answers.sort ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts
  # Pillow
  # A little dirt

 loop do   
  puts "36. Question 36
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct. You got these and know that cert is yours.  Keep going."
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "36. Question 36"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

 loop do   
  puts "37. Question 37
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct. You are on a streak."
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "37. Question 37"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

 loop do   
  puts '38. Question 38
    1. 1
    2. 2
    3. 3
    4. 4'
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct. You don't tripped in compliance.  Keep winning!"
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 4."
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

 loop do   
  puts "39. Question 39
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct. You keep going superstar."
      total_correct += 1
    else
      puts "Incorrect.  The correct answer is 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "39. Question 39"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

 loop do   
  puts "40. Question 40
    1. 1
    2. 2
    3. 3
    4. 4"
  puts "Enter all that apply (e.g., 1,2,4):"
  input = gets.chomp
  answer = input.split(",").map(&:strip).map(&:to_i)

  
    if answer.all? { |a| a.between?(1, 4) }
      break
    else
      puts "Please enter only numbers between 1 and 4, separated by commas."
    end
  end 
    
  answers = [3, 4]
  
    if answer.sort == answers.sort
      puts "Correct. You're no fool when it comes to gifts. Keep going."
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 3 and 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "40. Question 40"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == answers.sort ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

 loop do   
  puts "41. Question 41
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct.  You are the education master."
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "41. Question 41"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

 loop do   
  puts "42. Question 42
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct. You aren't fooled.  You keep going ahead."
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "42. Question 42"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

 loop do   
  puts "43. Question 43
    1. 1
    2. 2
    3. 3
    4. 4"
  puts "Enter all that apply (e.g., 1,2,4):"
  input = gets.chomp
  answer = input.split(",").map(&:strip).map(&:to_i)

  
    if answer.all? { |a| a.between?(1, 4) }
      break
    else
      puts "Please enter only numbers between 1 and 4, separated by commas."
    end
  end 
    
  answers = [1, 2, 3]

    if answer.sort == answers.sort
      puts "Correct.  Winning at marketing."
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 1, 2, and 3."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "43. Question 43"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == answers.sort ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

 loop do   
  puts "44. Question 44
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct.  You know about contacting members."
      total_correct += 1
    else
      puts "Incorrect.  The correct answer is 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "44. Question 44"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

 loop do   
  puts "45. Question 45
    1. 1
    2. 2"
  answer = gets.chomp.to_i

    if answer.between?(1, 2)
      break
    else
      puts "Please enter a valid option (1-2)."
    end
  end
  
    if answer == 1
      puts "Correct. Sneaky, sneaky but you got it."
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 1."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "45. Question 45"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 1 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

 
 #  Carter Vail is an awesome singer.  
 #  You really should listen to his surreal shorts.
 #  Note lyrics above "Dirt Man" and "Gorilla Lullaby" 
 #  Plus Stunner and Madeline are awesome.  
 #  Give them a listen. 
 #  Maybe you discovered your new favorite artist from a program comment.


 loop do 
  puts "46. Question 46
    1. 1
    2. 2"
  answer = gets.chomp.to_i

    if answer.between?(1, 2)
      break
    else
      puts "Please enter a valid option (1-2)."
    end
  end
  
    if answer == 2
      puts "Correct.  You trusted your gut and got it."
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 2."
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

 loop do   
  puts "47. Question 47
    1. 1
    2. 2
    3. 3"
  answer = gets.chomp.to_i

    if answer.between?(1, 3)
      break
    else
      puts "Please enter a valid option (1-3)."
    end
  end
  
    if answer == 3
      puts "Correct.  You are crushing it."
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 3."
      incorrect += 1 
  end

  File.open("review_log.txt", "a") do |file|
    file.puts "47. Question 47"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 3 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

 loop do   
  puts "48. Question 48
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct.  Nothing slips by you."
      total_correct += 1
    else
      puts "Incorrect.  The correct answer was 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "48. Question 48"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

 loop do   
  puts "49. Question 49
    1. 1
    2. 2
    3. 3
    4. 4"
  puts "Enter all that apply (e.g., 1,2,4):"
  input = gets.chomp
  answer = input.split(",").map(&:strip).map(&:to_i)

  
    if answer.all? { |a| a.between?(1, 4) }
      break
    else
      puts "Please enter only numbers between 1 and 4, separated by commas."
    end
  end 
    
  answers = [2, 3, 4]
  
    if answer.sort == answers.sort
      puts "Correct.  You knew that was tricky."
      total_correct += 1
    else
      puts "Incorrect. The correct answer is 2, 3, 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "49. Question 49"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == answers.sort ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

 loop do   
  puts "50. Question 50
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct.  You got it that was a tough one."
      total_correct += 1
    else
      puts "Incorrect.  The correct answer is 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "50. Question 50"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

 loop do   
  puts "51. Question 51
    1. 1
    2. 2
    3. 3
    4. 4"
  answer = gets.chomp.to_i

    if answer.between?(1, 4)
      break
    else
      puts "Please enter a valid option (1-4)."
    end
  end
  
    if answer == 4
      puts "Correct. Awesome! You got it."
      total_correct += 1
    else
      puts "Incorrect.  The correct answer was 4."
      incorrect += 1 
  end
  
  File.open("review_log.txt", "a") do |file|
    file.puts "51. Question 51"
    file.puts "User Answer: #{answer}"
    file.puts "Result: #{answer == 4 ? 'Correct' : 'Incorrect'}"
    file.puts "-" * 40
  end

  puts

 
 #  You got yourself a Florida man.
 #  He fought the silverback gorilla.
 #  You kept your dirt under your pillow.
 #  Even if you're a gal and wised up.
 #  Just sayin' is all. 
 #  Now you're vibing to Madeline.
 #  Feeling the melancholy of romantic ideals.
 #  Everyone thinks the formula works.
 #  However, it is never the same for everyone.
 #  What we make is often our own ideal.
 #  Rather then the truth in front of us.
  
 #  There's no goodbye
 #  It feels like the ending - Carter Vail "Madeline"

 #  Wait a minute... What kind of a guy am I?
 #  Duh!
 #  https://www.youtube.com/watch?v=NMV3O7ARoVs  Link to "Madeline"
 #  Enjoy you nutso source code reader. ;D

  

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
      puts "Invalid option.  Please select: 1, 2, 3, or 4"  
    end
  end    
end        

menu  
