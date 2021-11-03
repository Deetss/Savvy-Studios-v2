require 'rails_helper'

RSpec.describe Gallery, type: :model do
  subject {described_class.new(title: "Test gallery", description: "test description")}

  it 'is not valid without title present' do
    subject.title = nil
    expect(subject).to_not be_valid
  end


  it 'should have a slug' do
      subject.save
      expect(subject.slug).to_not be_nil
  end
end
