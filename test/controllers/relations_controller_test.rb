require 'test_helper'

class RelationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relation = relations(:one)
  end

  test "should get index" do
    get relations_url
    assert_response :success
  end

  test "should get new" do
    get new_relation_url
    assert_response :success
  end

  test "should create relation" do
    assert_difference('Relation.count') do
      post relations_url, params: { relation: { user_id: @relation.user_id, user_invited: @relation.user_invited, visible_born_date: @relation.visible_born_date, visible_email: @relation.visible_email, visible_last_name: @relation.visible_last_name, visible_name: @relation.visible_name, visible_phone: @relation.visible_phone } }
    end

    assert_redirected_to relation_url(Relation.last)
  end

  test "should show relation" do
    get relation_url(@relation)
    assert_response :success
  end

  test "should get edit" do
    get edit_relation_url(@relation)
    assert_response :success
  end

  test "should update relation" do
    patch relation_url(@relation), params: { relation: { user_id: @relation.user_id, user_invited: @relation.user_invited, visible_born_date: @relation.visible_born_date, visible_email: @relation.visible_email, visible_last_name: @relation.visible_last_name, visible_name: @relation.visible_name, visible_phone: @relation.visible_phone } }
    assert_redirected_to relation_url(@relation)
  end

  test "should destroy relation" do
    assert_difference('Relation.count', -1) do
      delete relation_url(@relation)
    end

    assert_redirected_to relations_url
  end
end
