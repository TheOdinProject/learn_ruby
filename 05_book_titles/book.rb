class Book
  attr_reader :title

  def title=(title)
    @title = capitalizer(title)
  end

  private

  def capitalizer(title)
    ignore = %w[a an the and but or nor at by for from in into of off on onto out over up with to o']
    title.capitalize.split.map { |w| ignore.include?(w) ? w : w.capitalize }.join(' ')
  end
end
