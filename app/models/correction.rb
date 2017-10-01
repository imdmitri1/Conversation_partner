class Correction < ApplicationRecord
  belongs_to :sentence
  has_many :trouble_words
  has_one :conversation, through: :sentence
  has_one :user, through: :conversation

  def format_response
    sentence_hash = handle_punctuation.split(" ")
    first_word_capitalized = sentence_hash[0].capitalize
    first_word_not_capitalized = sentence_hash[0].downcase
    last_word = sentence_hash[-1]
    remainder = sentence_hash[1..-1].join(' ')
    if first_word_capitalized == "I"
      if sentence_hash[1] == "am"
        remainder = sentence_hash[2..-1].join(' ')
        response = "Oh you are #{remainder}? Tell me more about the #{last_word}."
      else
        response = "Oh, you #{remainder}?"
      end
    elsif first_word_capitalized == "My"
      response = "Oh, you say your #{remainder}?"
    else
      remainder = first_word_not_capitalized + " " + remainder
      response = "So, you say #{remainder}?"
    end
    response
  end

  def handle_punctuation
    marks = [".", "?", "!"]
    if marks.include?(corrected_sentence[-1])
      result = corrected_sentence.scan(/.*(?=.)/)[0]
    else
      result = corrected_sentence
    end
  end

# select every up to the final punctuation
# txt.scan(/.*(?=.)/).first

end
