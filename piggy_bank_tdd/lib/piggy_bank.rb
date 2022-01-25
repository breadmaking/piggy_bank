class PiggyBank

  total = 0

  def deposit(coin)
    total += coin
  end

  def shake(total)
    if total > 0
      return 'cling'
    else
      return 'silence'
    end
  end

  def break(total)
    return total
  end
end