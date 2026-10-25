require "test_helper"

class CurrentjoboffersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @currentjoboffer = currentjoboffers(:one)
  end

  test "should get index" do
    get currentjoboffers_url
    assert_response :success
  end

  test "should get new" do
    get new_currentjoboffer_url
    assert_response :success
  end

  test "should create currentjoboffer" do
    assert_difference("Currentjoboffer.count") do
      post currentjoboffers_url, params: { currentjoboffer: { annuel: @currentjoboffer.annuel, description: @currentjoboffer.description, duree_du_contrat: @currentjoboffer.duree_du_contrat, field_id: @currentjoboffer.field_id, job_id: @currentjoboffer.job_id, largepic: @currentjoboffer.largepic, place_id: @currentjoboffer.place_id, post_id: @currentjoboffer.post_id, salaire: @currentjoboffer.salaire, smallpic: @currentjoboffer.smallpic, statut: @currentjoboffer.statut, temps_de_travail: @currentjoboffer.temps_de_travail, type_de_contrat: @currentjoboffer.type_de_contrat } }
    end

    assert_redirected_to currentjoboffer_url(Currentjoboffer.last)
  end

  test "should show currentjoboffer" do
    get currentjoboffer_url(@currentjoboffer)
    assert_response :success
  end

  test "should get edit" do
    get edit_currentjoboffer_url(@currentjoboffer)
    assert_response :success
  end

  test "should update currentjoboffer" do
    patch currentjoboffer_url(@currentjoboffer), params: { currentjoboffer: { annuel: @currentjoboffer.annuel, description: @currentjoboffer.description, duree_du_contrat: @currentjoboffer.duree_du_contrat, field_id: @currentjoboffer.field_id, job_id: @currentjoboffer.job_id, largepic: @currentjoboffer.largepic, place_id: @currentjoboffer.place_id, post_id: @currentjoboffer.post_id, salaire: @currentjoboffer.salaire, smallpic: @currentjoboffer.smallpic, statut: @currentjoboffer.statut, temps_de_travail: @currentjoboffer.temps_de_travail, type_de_contrat: @currentjoboffer.type_de_contrat } }
    assert_redirected_to currentjoboffer_url(@currentjoboffer)
  end

  test "should destroy currentjoboffer" do
    assert_difference("Currentjoboffer.count", -1) do
      delete currentjoboffer_url(@currentjoboffer)
    end

    assert_redirected_to currentjoboffers_url
  end
end
