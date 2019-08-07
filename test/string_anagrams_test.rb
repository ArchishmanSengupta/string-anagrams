require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/string_anagrams'

describe "string anagrams" do
  describe "basic tests" do
    it "the two strings are anagrams" do
      str1 = "iceman"
      str2 = "cinema"

      string_anagrams(str1, str2).must_equal true
    end

    it "the two strings are  not anagrams" do
      str1 = "iceman"
      str2 = "cinama"

      string_anagrams(str1, str2).must_equal false
    end
  end

  # check for edge cases
  describe "edge cases" do
    # if it's a string parameter, check for empty
    it "first parameter is an empty string" do
      str1 = ""
      str2 = "cinama"

      string_anagrams(str1, str2).must_equal false
    end

    it "second parameter is an empty string" do
      str1 = "hello"
      str2 = ""

      string_anagrams(str1, str2).must_equal false
    end

    it "both empty strings" do
      str1 = ""
      str2 = ""

      string_anagrams(str1, str2).must_equal true
    end

    # if the parameter is an object, check for nil
    it "first parameter is nil" do
      str1 = nil
      str2 = "world"

      string_anagrams(str1, str2).must_equal false
    end

    it "second parameter is nil" do
      str1 = "eggs"
      str2 = nil

      string_anagrams(str1, str2).must_equal false
    end

    it "both nil - not a string, no anagrams" do
      str1 = nil
      str2 = nil

      string_anagrams(str1, str2).must_equal false
    end

    it "single character anagrams" do
      str1 = "e"
      str2 = "e"

      string_anagrams(str1, str2).must_equal true
    end
  end

  describe "additional positive and negative cases" do
    it "anagrams: eat ate" do
      str1 = "eat"
      str2 = "ate"

      string_anagrams(str1, str2).must_equal true
    end
    
    it "anagrams: listen silent" do
      str1 = "listen"
      str2 = "silent"

      string_anagrams(str1, str2).must_equal true
    end

    it "anagrams: earth heart" do
      str1 = "earth"
      str2 = "heart"

      string_anagrams(str1, str2).must_equal true
    end

    it "not anagrams: silent listening" do
      str1 = "silent"
      str2 = "listening"

      string_anagrams(str1, str2).must_equal false
    end

    it "not anagrams: ate teae" do
      str1 = "ate"
      str2 = "teae"

      string_anagrams(str1, str2).must_equal false
    end
  end
end
