defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map()
  def count(sentence) do
    words = String.split(sentence)
    Enum.reduce(words, %{}, &check_word_count/2)
  end

  defp check_word_count(word, words_count)
    cond do
      words_count = word -> words_count[word] ++ 
  end
end
