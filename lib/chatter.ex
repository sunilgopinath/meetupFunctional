defmodule Chatter do
  def converse({:hello, name, employer}) do
    IO.puts "Hi #{name}. Nice to meet you. I hear you work for #{employer}."
  end

  def converse({:small_talk, name, fav_hobby}) do
    IO.puts "Hey #{name}, have you been doing much #{fav_hobby} lately?"
  end

  def converse({:goodbye, name}) do
    IO.puts "#{name}, great to talk to you today, goodbye."
  end
end
