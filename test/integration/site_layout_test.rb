require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2  #rails inserts the value of root_path
    assert_select "a[href=?]", help_path            #in place of the question mark
    assert_select "a[href=?]", about_path           #in this line <a href="/about">...</a>
    assert_select "a[href=?]", contact_path         #the count 2 is because there are two links to home

  end
end
