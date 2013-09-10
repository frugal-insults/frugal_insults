RSpec::Matchers.define :have_submit_button do |value|
  match do |actual|
    puts actual.class
    actual.should have_selector("input[type=submit][value='#{value}']")
  end
end
