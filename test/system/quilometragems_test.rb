require "application_system_test_case"

class QuilometragemsTest < ApplicationSystemTestCase
  setup do
    @quilometragem = quilometragems(:one)
  end

  test "visiting the index" do
    visit quilometragems_url
    assert_selector "h1", text: "Quilometragems"
  end

  test "creating a Quilometragem" do
    visit quilometragems_url
    click_on "New Quilometragem"

    fill_in "Addres", with: @quilometragem.addres
    fill_in "Board", with: @quilometragem.board
    fill_in "City", with: @quilometragem.city
    fill_in "Client", with: @quilometragem.client
    fill_in "Date", with: @quilometragem.date
    fill_in "Finalkm", with: @quilometragem.finalkm
    fill_in "Name", with: @quilometragem.name
    fill_in "Startingkm", with: @quilometragem.startingkm
    fill_in "State", with: @quilometragem.state
    click_on "Create Quilometragem"

    assert_text "Quilometragem was successfully created"
    click_on "Back"
  end

  test "updating a Quilometragem" do
    visit quilometragems_url
    click_on "Edit", match: :first

    fill_in "Addres", with: @quilometragem.addres
    fill_in "Board", with: @quilometragem.board
    fill_in "City", with: @quilometragem.city
    fill_in "Client", with: @quilometragem.client
    fill_in "Date", with: @quilometragem.date
    fill_in "Finalkm", with: @quilometragem.finalkm
    fill_in "Name", with: @quilometragem.name
    fill_in "Startingkm", with: @quilometragem.startingkm
    fill_in "State", with: @quilometragem.state
    click_on "Update Quilometragem"

    assert_text "Quilometragem was successfully updated"
    click_on "Back"
  end

  test "destroying a Quilometragem" do
    visit quilometragems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Quilometragem was successfully destroyed"
  end
end
