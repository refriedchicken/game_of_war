defmodule GameOfWar.Deck do

  @initial_deck [
    %{strength: 2},%{strength: 2},%{strength: 2},%{strength: 2},%{strength: 3},%{strength: 3},%{strength: 3},%{strength: 3},%{strength: 4},%{strength: 4},%{strength: 4},%{strength: 4},
    %{strength: 5},%{strength: 5},%{strength: 5},%{strength: 5},%{strength: 6},%{strength: 6},%{strength: 6},%{strength: 6},%{strength: 7},%{strength: 7},%{strength: 7},%{strength: 7},
    %{strength: 8},%{strength: 8},%{strength: 8},%{strength: 8},%{strength: 9},%{strength: 9},%{strength: 9},%{strength: 9},%{strength: 10},%{strength: 10},%{strength: 10},%{strength: 10},
    %{strength: 11},%{strength: 11},%{strength: 11},%{strength: 11},%{strength: 12},%{strength: 12},%{strength: 12},%{strength: 12},%{strength: 13},%{strength: 13},%{strength: 13},%{strength: 13}
  ]

  def get_deck() do
    @initial_deck
  end
  def shuffle(deck) do
    :random.seed(:os.timestamp)
    deck |> Enum.shuffle |> Enum.shuffle |> Enum.shuffle
  end

  def deal(deck) do
    deal(%{player_1: [], player_2: []}, deck)
  end

  def deal(hands, [first, second | tail]) do
    deal(%{player_1: hands.player_1 ++ [first], player_2: hands.player_2 ++ [second]}, tail)
  end
  def deal(hands, []),  do: hands
end
