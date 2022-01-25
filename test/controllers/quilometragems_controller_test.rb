require "test_helper"

class QuilometragemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quilometragem = quilometragems(:one)
  end

  test "should get index" do
    get quilometragems_url
    assert_response :success
  end

  test "should get new" do
    get new_quilometragem_url
    assert_response :success
  end

  test "should create quilometragem" do
    assert_difference('Quilometragem.count') do
      post quilometragems_url, params: { quilometragem: { addres: @quilometragem.addres, board: @quilometragem.board, city: @quilometragem.city, client: @quilometragem.client, date: @quilometragem.date, finalkm: @quilometragem.finalkm, name: @quilometragem.name, startingkm: @quilometragem.startingkm, state: @quilometragem.state } }
    end

    assert_redirected_to quilometragem_url(Quilometragem.last)
  end

  test "should show quilometragem" do
    get quilometragem_url(@quilometragem)
    assert_response :success
  end

  test "should get edit" do
    get edit_quilometragem_url(@quilometragem)
    assert_response :success
  end

  test "should update quilometragem" do
    patch quilometragem_url(@quilometragem), params: { quilometragem: { addres: @quilometragem.addres, board: @quilometragem.board, city: @quilometragem.city, client: @quilometragem.client, date: @quilometragem.date, finalkm: @quilometragem.finalkm, name: @quilometragem.name, startingkm: @quilometragem.startingkm, state: @quilometragem.state } }
    assert_redirected_to quilometragem_url(@quilometragem)
  end

  test "should destroy quilometragem" do
    assert_difference('Quilometragem.count', -1) do
      delete quilometragem_url(@quilometragem)
    end

    assert_redirected_to quilometragems_url
  end
end
