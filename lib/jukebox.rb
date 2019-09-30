def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each.with_index(1) {|song,index|
    puts "#{index}. #{song}"
  }
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip.to_i
  if(Integer(input))
    if(songs.include?(songs[input-1]))
      puts songs[input-1]
    else
      puts "Invalid input, please try again"
    end
  else
    if(songs.include?(input))
      puts input
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit
end
