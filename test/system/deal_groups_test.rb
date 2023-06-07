require 'application_system_test_case'

class DealGroupsTest < ApplicationSystemTestCase
  setup do
    @deal_group = deal_groups(:one)
  end

  test 'visiting the index' do
    visit deal_groups_url
    assert_selector 'h1', text: 'Deal groups'
  end

  test 'should create deal group' do
    visit deal_groups_url
    click_on 'New deal group'

    fill_in 'Deal', with: @deal_group.deal_id
    fill_in 'Group', with: @deal_group.group_id
    click_on 'Create Deal group'

    assert_text 'Deal group was successfully created'
    click_on 'Back'
  end

  test 'should update Deal group' do
    visit deal_group_url(@deal_group)
    click_on 'Edit this deal group', match: :first

    fill_in 'Deal', with: @deal_group.deal_id
    fill_in 'Group', with: @deal_group.group_id
    click_on 'Update Deal group'

    assert_text 'Deal group was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Deal group' do
    visit deal_group_url(@deal_group)
    click_on 'Destroy this deal group', match: :first

    assert_text 'Deal group was successfully destroyed'
  end
end
