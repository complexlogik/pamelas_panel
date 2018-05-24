require 'test_helper'

class CohortControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cohort_index_url
    assert_response :success
  end

end
