require "application_system_test_case"

class ProspectsTest < ApplicationSystemTestCase
  setup do
    @prospect = prospects(:one)
  end

  test "visiting the index" do
    visit prospects_url
    assert_selector "h1", text: "Prospects"
  end

  test "creating a Prospect" do
    visit prospects_url
    click_on "New Prospect"

    fill_in "Age", with: @prospect.age
    fill_in "Disease", with: @prospect.disease
    fill_in "Familydisease", with: @prospect.familydisease
    fill_in "Gender", with: @prospect.gender
    fill_in "Height", with: @prospect.height
    fill_in "Tobacco", with: @prospect.tobacco
    fill_in "Weight", with: @prospect.weight
    fill_in "Zipcode", with: @prospect.zipcode
    click_on "Create Prospect"

    assert_text "Prospect was successfully created"
    click_on "Back"
  end

  test "updating a Prospect" do
    visit prospects_url
    click_on "Edit", match: :first

    fill_in "Age", with: @prospect.age
    fill_in "Disease", with: @prospect.disease
    fill_in "Familydisease", with: @prospect.familydisease
    fill_in "Gender", with: @prospect.gender
    fill_in "Height", with: @prospect.height
    fill_in "Tobacco", with: @prospect.tobacco
    fill_in "Weight", with: @prospect.weight
    fill_in "Zipcode", with: @prospect.zipcode
    click_on "Update Prospect"

    assert_text "Prospect was successfully updated"
    click_on "Back"
  end

  test "destroying a Prospect" do
    visit prospects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prospect was successfully destroyed"
  end
end
