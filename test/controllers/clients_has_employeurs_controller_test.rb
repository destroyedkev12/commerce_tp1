require 'test_helper'

class ClientsHasEmployeursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clients_has_employeur = clients_has_employeurs(:one)
  end

  test "should get index" do
    get clients_has_employeurs_url
    assert_response :success
  end

  test "should get new" do
    get new_clients_has_employeur_url
    assert_response :success
  end

  test "should create clients_has_employeur" do
    assert_difference('ClientsHasEmployeur.count') do
      post clients_has_employeurs_url, params: { clients_has_employeur: { Clients_id: @clients_has_employeur.Clients_id, DateDebut: @clients_has_employeur.DateDebut, DateFin: @clients_has_employeur.DateFin, Employeurs_id: @clients_has_employeur.Employeurs_id } }
    end

    assert_redirected_to clients_has_employeur_url(ClientsHasEmployeur.last)
  end

  test "should show clients_has_employeur" do
    get clients_has_employeur_url(@clients_has_employeur)
    assert_response :success
  end

  test "should get edit" do
    get edit_clients_has_employeur_url(@clients_has_employeur)
    assert_response :success
  end

  test "should update clients_has_employeur" do
    patch clients_has_employeur_url(@clients_has_employeur), params: { clients_has_employeur: { Clients_id: @clients_has_employeur.Clients_id, DateDebut: @clients_has_employeur.DateDebut, DateFin: @clients_has_employeur.DateFin, Employeurs_id: @clients_has_employeur.Employeurs_id } }
    assert_redirected_to clients_has_employeur_url(@clients_has_employeur)
  end

  test "should destroy clients_has_employeur" do
    assert_difference('ClientsHasEmployeur.count', -1) do
      delete clients_has_employeur_url(@clients_has_employeur)
    end

    assert_redirected_to clients_has_employeurs_url
  end
end
