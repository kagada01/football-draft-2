require 'test_helper'

class MyTeamControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get my_team_index_url
    assert_response :success
  end

end
