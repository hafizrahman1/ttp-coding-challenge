def getClosingParen(sentence, openingParenIndex)
  # counter for determining the opening and closing parenthesis
  openParenth = 0 
  # truncate string to start at the open parenthesis position to end
  searchString = sentence[openingParenIndex..-1]
  # turn string into array for iteration
  searchString.split("").each_with_index do |character, index|
    # increment count for an opened parenthesis
    if character == "("
      openParenth += 1
    # decrement count for a closed parenthesis
    elsif character == ")"
      openParenth -= 1
      # when we have an even amount of opened and closed parenthesis
      if openParenth == 0
        # return the position of this character
        return index + openingParenIndex
      end
    end
  end
end
