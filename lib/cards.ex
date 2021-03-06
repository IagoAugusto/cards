defmodule Cards do

  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten",
    "Jack", "Queen", "King"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for value <- values, suit <- suits do
      "#{suit} of #{value}"
    end 
  end
  
  def shuffle deck do
    Enum.shuffle deck
  end

  def contains? deck, card do
    Enum.member? deck, card
  end
  
  def deal deck, hand_size do
    { hand, rest_deck } = Enum.split deck, hand_size
    hand
  end

end
