require 'rails_helper'

RSpec.describe LearningProposition, type: :model do
  
  it 'Should not create Learning Proposition with less than 2 attendees' do 
    learning_proposition = create(:learning_proposition)
    learning_proposition.min_attendees = 1
    expect(learning_proposition.save).to be false
  end
  
end
