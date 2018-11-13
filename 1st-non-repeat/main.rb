# https://www.geeksforgeeks.org/given-a-string-find-its-first-non-repeating-character/

class FirstNonRepeat
  def self.call(str)
    no_repeats = []
    all = []

    str.each_char do |c|
      if !all.include?(c)
        no_repeats << c
        all << c
      else
        no_repeats.delete(c)
      end

    end
    no_repeats.first
  end
end

class FirstNonRepeatFast
  def self.call(str)
    no_repeats = []
    all = {}
    repeats = []

    # O(n)
    str.each_char do |c|
      if all[c].nil?
        no_repeats << c
        all[c] = 1
      else
        repeats << c
      end
    end

    # O(1) ? check ruby impl
    (no_repeats - repeats).first
  end
end


string = 'GeeksQuiz'
string = 'GeeksForGeeks'
puts FirstNonRepeat.call(string)
puts FirstNonRepeatFast.call(string)
