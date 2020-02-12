# clock_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/clock'

Minitest::Reporters.use!

describe "clock" do 
  it "returns a string" do 
    # Arrange
    hours = 11
    minutes = 11
    seconds = 11
    # Act
    output = clock(hours, minutes, seconds)
    # Assert
    # must_be_instance_of is a method with a parameter of String
    expect(output).must_be_instance_of String
  end

  it "returns a value in HH:MM:SS format" do
    # Arrange and Act
    output = clock(11, 11, 11)
    # Assert
    expect(output).must_equal "11:11:11"
  end

  # Positive Edge Cases
  # numbers less than 10
  it "returns a value with leading 0s for numbers under 10" do
    output = clock(9, 8, 7)
    expect(output).must_equal "09:08:07"
  end
  
  # minutes and seconds == 0
  it "returns a value in HH:MM:SS format when minutes and/or seconds are 0" do
    
  end

  # Negative edge cases
  # Hours, minutes, seconds nil
  it "raises ArgumentError when hours, minutes, or seconds are nil" do
    expect{clock(nil, nil, nil)}.must_raise ArgumentError
    expect{clock(nil, 0, 0)}.must_raise ArgumentError
    expect{clock(1, nil, 0)}.must_raise ArgumentError
    expect{clock(1, 0, nil)}.must_raise ArgumentError
  end

  # hours between 12 and 24 (military time)

end