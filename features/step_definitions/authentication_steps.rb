Then(/^I should be able to authenticate$/) do
  assert_equal 200, @client.employee_list!.code
end
