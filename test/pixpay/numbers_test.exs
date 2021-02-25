defmodule Pixpay.NumbersTest do
  use ExUnit.Case

  alias Pixpay.Numbers

  describe "sum_from_file/1" do
    test "Quando houver um arquivo, ler o conteúdo, converter, somar e retornar resultado!" do
      {:ok, %{result: response}} = Numbers.sum_from_file("numbers")

      assert response == 221
    end

    test "Quando não houver um arquivo, retornar um erro!" do
      {:error, %{message: response}} = Numbers.sum_from_file("sasas")

      assert response == "Entrada Inválida!"
    end
  end
end
