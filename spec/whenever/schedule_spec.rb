require 'rails_helper'

describe "Schedule" do
  it 'publish_checkが毎晩実行されるか' do
    schedule = Whenever::Test::Schedule.new(file: 'config/schedule.rb')
    binding.pry

    assert_equal "Movie.publish_check", schedule.jobs[:runner].first[:task]
    assert_equal ["0 0 * * *"], schedule.jobs[:runner].first[:every]
  end
end