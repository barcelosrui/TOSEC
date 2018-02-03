require 'test_helper'

class RolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @r = roles(:one)
  end

  test "should get index" do
    get roles_url
    assert_response :success
  end

  test "should get new" do
    get new_role_url
    assert_response :success
  end

  test "should get show" do
    get role_url(@r)
    assert_response :success
  end

  test "should get edit" do
    get edit_role_url(@r)
    assert_response :success
  end
  test "should destroy role" do
    assert_difference('Role.count', -1) do
      delete role_url(@r)
    end
 
    assert_redirected_to roles_path
  end
  test "should update role" do
    patch role_url(@r), params: { role: { name: "updated"} }
 
    assert_redirected_to role_url(@r)
    # Reload association to fetch updated data and assert that title is updated.
    @r.reload
    assert_equal "updated", @r.name
  end
end
