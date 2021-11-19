require "application_system_test_case"

class AlbumsTest < ApplicationSystemTestCase
  setup do
    @album = albums(:one)
  end

  test "visiting the index" do
    visit albums_url
    assert_selector "h1", text: "Albums"
  end

  test "creating a Album" do
    visit albums_url
    click_on "New Album"

    fill_in "Cover art url", with: @album.cover_art_url
    fill_in "Kind", with: @album.kind
    fill_in "Length", with: @album.length
    fill_in "Name", with: @album.name
    fill_in "Released", with: @album.released
    fill_in "Released at", with: @album.released_at
    click_on "Create Album"

    assert_text "Album was successfully created"
    click_on "Back"
  end

  test "updating a Album" do
    visit albums_url
    click_on "Edit", match: :first

    fill_in "Cover art url", with: @album.cover_art_url
    fill_in "Kind", with: @album.kind
    fill_in "Length", with: @album.length
    fill_in "Name", with: @album.name
    fill_in "Released", with: @album.released
    fill_in "Released at", with: @album.released_at
    click_on "Update Album"

    assert_text "Album was successfully updated"
    click_on "Back"
  end

  test "destroying a Album" do
    visit albums_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Album was successfully destroyed"
  end
end
