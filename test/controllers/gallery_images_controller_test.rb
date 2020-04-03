require 'test_helper'

class GalleryImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get destroy" do
    get gallery_images_destroy_url
    assert_response :success
  end

end
