defmodule GameOfWar.Game do
  alias GameOfWar.Deck
  def play() do
     IO.puts Deck.get_deck |> Deck.shuffle |>  Deck.deal() |> turn()
  end

  def turn(%{player_1: [p1_card | p1_cards], player_2: [p2_card | p2_cards]} = state) do
    cond do
      p1_card.strength == p2_card.strength -> turn(%{ state | player_1: p1_cards, player_2: p2_cards}) #delete the tied cards
      p1_card.strength > p2_card.strength -> turn(%{ state | player_1: p1_cards ++ [p1_card, p2_card], player_2: p2_cards})
      true -> turn(%{ state | player_1: p1_cards, player_2: p2_cards ++ [p1_card, p2_card]})
    end
  end

  def turn(%{player_1: [], player_2: [_]}), do: "Game Over Player 2 Wins"
  def turn(%{player_1: [_], player_2: []}), do: "Game Over Player 1 Wins"
end
