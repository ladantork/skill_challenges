def to_do(text)
  if text.include?("#TODO")
    return true
 else
  fail "It is not a todo"
  end
end