defmodule Pixpay.Numbers do
  def sum_from_file(filename) do
    "#{filename}.csv"
    |> File.read()
    |> handle_exception_file()
  end

  defp handle_exception_file({:ok, file}) do
    result =
      file
      |> String.trim("\n")
      |> String.split(",")
      |> Enum.map(fn number -> String.to_integer(number) end)
      |> Enum.sum()

    {:ok, %{result: result}}
  end

  defp handle_exception_file({:error, __params}), do: {:error, "Entrada Inválida!"}
end
