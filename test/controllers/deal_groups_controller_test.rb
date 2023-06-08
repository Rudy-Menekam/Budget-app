require 'test_helper'

class DealGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deal_group = deal_groups(:one)
  end

  test 'should get index' do
    get deal_groups_url
    assert_response :success
  end

  test 'should get new' do
    get new_deal_group_url
    assert_response :success
  end

  test 'should create deal_group' do
    assert_difference('DealGroup.count') do
      post deal_groups_url, params: { deal_group: { deal_id: @deal_group.deal_id, group_id: @deal_group.group_id } }
    end

    assert_redirected_to deal_group_url(DealGroup.last)
  end

  test 'should show deal_group' do
    get deal_group_url(@deal_group)
    assert_response :success
  end

  test 'should get edit' do
    get edit_deal_group_url(@deal_group)
    assert_response :success
  end

  test 'should update deal_group' do
    patch deal_group_url(@deal_group),
          params: { deal_group: { deal_id: @deal_group.deal_id, group_id: @deal_group.group_id } }
    assert_redirected_to deal_group_url(@deal_group)
  end

  test 'should destroy deal_group' do
    assert_difference('DealGroup.count', -1) do
      delete deal_group_url(@deal_group)
    end

    assert_redirected_to deal_groups_url
  end
end
