require 'test_helper'

class ProfileHasInstrumentsControllerTest < ActionController::TestCase
  setup do
    @profile_has_instrument = profile_has_instruments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profile_has_instruments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile_has_instrument" do
    assert_difference('ProfileHasInstrument.count') do
      post :create, profile_has_instrument: { instrument_id: @profile_has_instrument.instrument_id, profile_id: @profile_has_instrument.profile_id }
    end

    assert_redirected_to profile_has_instrument_path(assigns(:profile_has_instrument))
  end

  test "should show profile_has_instrument" do
    get :show, id: @profile_has_instrument
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile_has_instrument
    assert_response :success
  end

  test "should update profile_has_instrument" do
    patch :update, id: @profile_has_instrument, profile_has_instrument: { instrument_id: @profile_has_instrument.instrument_id, profile_id: @profile_has_instrument.profile_id }
    assert_redirected_to profile_has_instrument_path(assigns(:profile_has_instrument))
  end

  test "should destroy profile_has_instrument" do
    assert_difference('ProfileHasInstrument.count', -1) do
      delete :destroy, id: @profile_has_instrument
    end

    assert_redirected_to profile_has_instruments_path
  end
end
