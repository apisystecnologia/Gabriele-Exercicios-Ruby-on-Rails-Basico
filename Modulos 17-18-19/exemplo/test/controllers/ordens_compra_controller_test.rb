require 'test_helper'

class OrdensCompraControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ordens_compra_index_url
    assert_response :success
  end

end
