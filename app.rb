def greet_user(name)
  if name
    puts "Hello, #{name}!"
  else
    puts "Hello, guest!"
  end
end

greet_user("ian")
