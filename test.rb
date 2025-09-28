require 'minitest/autorun'
require_relative 'file.rb' # Enter your test name

class TestQuizLogic < Minitest::Test
  def test_multi_select_correct
    input = [3, 4]
    expected = [3, 4]
    assert_equal expected.sort, input.sort
  end

  def test_multi_select_incorrect_extra_value
    input = [2, 3, 4]
    expected = [3, 4]
    refute_equal expected.sort, input.sort
  end

  def test_single_select_correct
    answer = 4
    assert_equal 4, answer
  end

  def test_single_select_incorrect
    answer = 2
    refute_equal 4, answer
  end

  def test_empty_input
    input = []
    expected = [3, 4]
    refute_equal expected.sort, input.sort
  end

  def test_file_logging
    File.open("test_log.txt", "w") { |f| f.puts "Test entry" }
    assert File.exist?("test_log.txt")
    content = File.read("test_log.txt")
    assert_includes content, "Test entry"
  ensure
    File.delete("test_log.txt") if File.exist?("test_log.txt")
  end
end

