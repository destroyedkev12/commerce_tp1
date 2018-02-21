require 'test_helper'

class EtatsCivilsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @etats_civil = etats_civils(:one)
  end

  test "should get index" do
    get etats_civils_url
    assert_response :success
  end

  test "should get new" do
    get new_etats_civil_url
    assert_response :success
  end

  test "should create etats_civil" do
    assert_difference('EtatsCivil.count') do
      post etats_civils_url, params: { etats_civil: { id: @etats_civil.id } }
    end

    assert_redirected_to etats_civil_url(EtatsCivil.last)
  end

  test "should show etats_civil" do
    get etats_civil_url(@etats_civil)
    assert_response :success
  end

  test "should get edit" do
    get edit_etats_civil_url(@etats_civil)
    assert_response :success
  end

  test "should update etats_civil" do
    patch etats_civil_url(@etats_civil), params: { etats_civil: { id: @etats_civil.id } }
    assert_redirected_to etats_civil_url(@etats_civil)
  end

  test "should destroy etats_civil" do
    assert_difference('EtatsCivil.count', -1) do
      delete etats_civil_url(@etats_civil)
    end

    assert_redirected_to etats_civils_url
  end
end
