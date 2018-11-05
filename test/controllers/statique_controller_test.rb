require 'test_helper'

class StatiqueControllerTest < ActionDispatch::IntegrationTest
  include SessionsHelper

  
  test "show right navbar links" do 
    get root_url
    assert_response :success
    if logged_in?
      assert_select 'a[href=?]', '/', text: "Home"
      assert_select 'a[href=?]', '/logout',text: "Déconnexion"
      assert_select 'a[href=?]', '/club',text: "Club"
    else 
      assert_select 'a[href=?]', '/login', text: "Connexion"
      assert_select 'a[href=?]', '/signup', text: "Inscription"
      assert_select 'a[href=?]', '/' ,text: "Home"
    end
  end

  test "Check /club logged_in?" do 
    get club_path
    assert_response :success
    if logged_in?
      assert_select 'a[href=?]', '/logout',text: "Déconnexion"
    else
      assert_select 'a[href=?]', '/login', text: "Connexion"
      assert_select 'a[href=?]', '/signup', text: "Inscription"
    end
  end
end
