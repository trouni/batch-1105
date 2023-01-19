class SlotMachine
  SYMBOLS = %w[🤩 ⭐️ 🛎 7️⃣ 🍒].reverse

  def initialize(reels = %w[🤩 🤩 🤩])
    @reels = reels
  end

  def play
    60.times do
      @reels = @reels.map { SYMBOLS.sample }
      print @reels.join("\t") + "\r"
      # \r is the 'return carriage' character to return to the beginning of the line
      $stdout.flush # clears the line in the terminal
      sleep(0.03)
    end
    sleep(0.5)
    @reels = @reels.map { SYMBOLS.sample }
  end

  def score
    if three_of_the_same?
      # {
      #   🤩: 50,
      #   ⭐️: 40,
      #   # ...
      # }
      unique_symbol = @reels.sample
      value_of(unique_symbol) * 10
    elsif two_of_the_same_plus_joker?
      # 1. Find the duplicated symbol
      # ["⭐️", "🛎", "🛎"].sort => ["⭐️", "🛎", "🛎"]
      # ["🛎", "⭐️", "🛎"].sort => ["⭐️", "🛎", "🛎"]
      # ["🛎", "🛎", "⭐️"].sort => ["⭐️", "🛎", "🛎"]
      duplicated_symbol = @reels.sort[1]
      value_of(duplicated_symbol) * 5
    else
      0
    end
  end

  def three_of_the_same?
    @reels.uniq.size == 1
  end

  def two_of_the_same_plus_joker?
    @reels.uniq.size == 2 && @reels.include?('🤩')
  end

  def value_of(symbol)
    # %w[🤩 ⭐️ 🛎 7️⃣ 🍒].reverse
    SYMBOLS.index(symbol) + 1
  end
end