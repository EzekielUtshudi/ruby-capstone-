require_relative '../classes/author'
require_relative '../item'
require 'yaml'

describe Author do
  before :each do
    @author = Author.new 'Victor', 'Lemba'
    @item = Item.new '2002-01-01'
  end

  it '@author should be an instance of Author class' do
    expect(@author).to be_an_instance_of Author
  end

  it 'author first name to be "Victor"' do
    @first_name == 'Victor'
  end

  it 'author last name to be "Lemba"' do
    @last_name == 'Lemba'
  end

  it 'author last name to be "Lemba"' do
    @last_name == 'Lemba'
  end

  it 'should return the item passed into genre items array' do
    @author.add_item(@item)
    expect(@author.items[0]).to eq(@item)
  end
end
