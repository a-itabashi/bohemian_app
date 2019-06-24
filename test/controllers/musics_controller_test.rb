require 'test_helper'

class MusicsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get musics_show_url
    assert_response :success
  end

end
