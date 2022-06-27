require 'date'
class Item
  attr_accessor :id, :publish_date, :archived
  attr_reader :label, :genre, :author

  def initialize(publish_date, archived: false)
    @id = Random.rand(1..100)
    @publish_date = publish_date
    @archived = archived
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  def can_be_archived?
    my_date = Date.parse(@publish_date)
    difference = Date.today.year - my_date.year
    difference > 10
  end

  def label=(label)
    @label = label
    label.items.push(self) unless label.items.include?(self)
  end

  def genre=(genre)
    @genre = genre
    genre.add_item(self) unless genre.items.include?(self)
  end

  def author=(author)
    @author = author
    author.items.push(self) unless author.items.include?(self)
  end

  private :can_be_archived?
end
