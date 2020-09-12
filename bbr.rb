

  puts "BAKERY BATCH RECIPES"
  puts "What would you like to do? (add, edit, delete, nothing)"
  action = gets.chomp.downcase
  case action
  when "add"
    puts "What is the name of your dish?"
    name = gets.chomp
    puts "What are the ingredients for your dish?"
    ing = gets.chomp
    puts "What are the instructions for your dish?"
    inst = gets.chomp
    dishes = Hash.new
    dishes[name] = Hash.new
    dishes[name]["Ingredients"] = ing
    dishes[name]["Instructions"] = inst
    puts "Your dish has been added!"
  when "edit"
    puts dishes
    puts "What dish would you like to edit?"
    dishtoedit = gets.chomp
    puts "What section would you like to edit?(ingredients, instructions)"
    choice = gets.chomp.downcase
      if choice == "ingredients"
        puts "What ingredients are in your dish?"
        ingr = gets.chomp
        dishes ["#{dishtoedit}"]["Ingredients"]= ingr
        puts "Your ingredients have been updated!"
      elsif choice == "instructions"
        puts "What are the instructions for your dish?"
        instr = gets.chomp
        dishes ["#{dishtoedit}"]["Instructions"] = instr
        puts "Your instructions have been updated!"
      else
        puts "I do not understant your request.."
      end
    when "delete"
      puts dishes
      puts "What dish would you like to delete?"
      deletethatmfer = gets.chomp
      dishes["#{deletethatmfer}"].delete
      puts "Your dish has been deleted."
    when "nothing"
      puts "Thank you for visiting!"
    else
      puts " I dont understand your request.."
    end
