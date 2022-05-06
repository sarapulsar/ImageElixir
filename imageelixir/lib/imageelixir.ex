defmodule Imageelixir do
  def grayscale(imagen) do # genera imagen grises
    :wx.new()
    img = :wxImage.new(imagen)
    :wxImage.saveFile(:wxImage.convertToGreyscale(img), "gray.jpg")
    :wx.destroy()
  end

  def image(imagen_gray) do # Imageelixir.image("gray.jpg")
    :wx.new()
    data =
      imagen_gray
      |> :wxImage.new()
      |> :wxImage.getData()
      |> :binary.bin_to_list()
      |> List.to_charlist()
      |> to_string()
    :wx.destroy()
    IO.puts("Is it a map? #{is_map(data)}")
    IO.puts("Is it a bitstring? #{is_bitstring(data)}")
    IO.puts("Is it a binary? #{is_binary(data)}")
    IO.puts("Is it a list? #{is_list(data)}")
    IO.inspect("Data: #{data}")
    {:ok, file} = File.open("data.txt", [:write, :binary])
    File.write("data.txt", data, [:utf8])
  end
end
