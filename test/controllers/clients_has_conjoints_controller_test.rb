require 'test_helper'

class ClientsHasConjointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clients_has_conjoint = clients_has_conjoints(:one)
  end

  test "should get index" do
    get clients_has_conjoints_url
    assert_response :success
  end

  test "should get new" do
    get new_clients_has_conjoint_url
    assert_response :success
  end

  test "should create clients_has_conjoint" do
    assert_difference('ClientsHasConjoint.count') do
      post clients_has_conjoints_url, params: { clients_has_conjoint: { Clients_Conjoint_id: @clients_has_conjoint.Clients_Conjoint_id, Clients_id: @clients_has_conjoint.Clients_id, DateDebut: @clients_has_conjoint.DateDebut, DateFin: @clients_has_conjoint.DateFin } }
    end

    assert_redirected_to clients_has_conjoint_url(ClientsHasConjoint.last)
  end

  test "should show clients_has_conjoint" do
    get clients_has_conjoint_url(@clients_has_conjoint)
    assert_response :success
  end

  test "should get edit" do
    get edit_clients_has_conjoint_url(@clients_has_conjoint)
    assert_response :success
  end

  test "should update clients_has_conjoint" do
    patch clients_has_conjoint_url(@clients_has_conjoint), params: { clients_has_conjoint: { Clients_Conjoint_id: @clients_has_conjoint.Clients_Conjoint_id, Clients_id: @clients_has_conjoint.Clients_id, DateDebut: @clients_has_conjoint.DateDebut, DateFin: @clients_has_conjoint.DateFin } }
    assert_redirected_to clients_has_conjoint_url(@clients_has_conjoint)
  end

  test "should destroy clients_has_conjoint" do
    assert_difference('ClientsHasConjoint.count', -1) do
      delete clients_has_conjoint_url(@clients_has_conjoint)
    end

    assert_redirected_to clients_has_conjoints_url
  end
end
