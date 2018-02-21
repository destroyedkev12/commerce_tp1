require 'test_helper'

class ClientsEtatsCivilsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clients_etats_civil = clients_etats_civils(:one)
  end

  test "should get index" do
    get clients_etats_civils_url
    assert_response :success
  end

  test "should get new" do
    get new_clients_etats_civil_url
    assert_response :success
  end

  test "should create clients_etats_civil" do
    assert_difference('ClientsEtatsCivil.count') do
      post clients_etats_civils_url, params: { clients_etats_civil: { Clients_id: @clients_etats_civil.Clients_id, DateDebut: @clients_etats_civil.DateDebut, DateFin: @clients_etats_civil.DateFin, EtatsCivil_id: @clients_etats_civil.EtatsCivil_id } }
    end

    assert_redirected_to clients_etats_civil_url(ClientsEtatsCivil.last)
  end

  test "should show clients_etats_civil" do
    get clients_etats_civil_url(@clients_etats_civil)
    assert_response :success
  end

  test "should get edit" do
    get edit_clients_etats_civil_url(@clients_etats_civil)
    assert_response :success
  end

  test "should update clients_etats_civil" do
    patch clients_etats_civil_url(@clients_etats_civil), params: { clients_etats_civil: { Clients_id: @clients_etats_civil.Clients_id, DateDebut: @clients_etats_civil.DateDebut, DateFin: @clients_etats_civil.DateFin, EtatsCivil_id: @clients_etats_civil.EtatsCivil_id } }
    assert_redirected_to clients_etats_civil_url(@clients_etats_civil)
  end

  test "should destroy clients_etats_civil" do
    assert_difference('ClientsEtatsCivil.count', -1) do
      delete clients_etats_civil_url(@clients_etats_civil)
    end

    assert_redirected_to clients_etats_civils_url
  end
end
