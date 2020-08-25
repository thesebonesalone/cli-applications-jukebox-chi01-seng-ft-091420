# Add your code here


def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  count = 1
  songs.each do |index|
    puts "#{count}. #{index}"
    count += 1
  end
end

def exit_jukebox
  puts "Goodbye"
end
def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  if input. length < 2
    input = input.to_i - 1
    if input < songs.length
      answer = songs[input]
      puts answer
      return answer
    else
      puts "Invalid input, please try again."
      return nil
    end
  else
    songs.each do |index|
      if index == input
        puts index
        return index
      end
    end
    puts "Invalid input, please try again."
  end
end