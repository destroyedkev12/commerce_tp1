require 'test_helper'

class ClientsHasEnfantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clients_has_enfant = clients_has_enfants(:one)
  end

  test "should get index" do
    get clients_has_enfants_url
    assert_response :success
  end

  test "should get new" do
    get new_clients_has_enfant_url
    assert_response :success
  end

  test "should create clients_has_enfant" do
    assert_difference('ClientsHasEnfant.count') do
      post clients_has_enfants_url, params: { clients_has_enfant: { Clients_id: @clients_has_enfant.Clients_id, Enfants_id: @clients_has_enfant.Enfants_id, Lien: @clients_has_enfant.Lien } }
    end

    assert_redirected_to clients_has_enfant_url(ClientsHasEnfant.last)
  end

  test "should show clients_has_enfant" do
    get clients_has_enfant_url(@clients_has_enfant)
    assert_response :success
  end

  test "should get edit" do
    get edit_clients_has_enfant_url(@clients_has_enfant)
    assert_response :success
  end

  test "should update clients_has_enfant" do
    patch clients_has_enfant_url(@clients_has_enfant), params: { clients_has_enfant: { Clients_id: @clients_has_enfant.Clients_id, Enfants_id: @clients_has_enfant.Enfants_id, Lien: @clients_has_enfant.Lien } }
    assert_redirected_to clients_has_enfant_url(@clients_has_enfant)
  end

  test "should destroy clients_has_enfant" do
    assert_difference('ClientsHasEnfant.count', -1) do
      delete clients_has_enfant_url(@clients_has_enfant)
    end

    assert_redirected_to clients_has_enfants_url
  end
end
