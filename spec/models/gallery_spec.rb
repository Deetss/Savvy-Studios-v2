require 'rails_helper'

RSpec.describe Gallery, type: :model do
  subject {described_class.new(name: "Test", email: "test@example.com")}

  it 'is not valid without name present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without email present' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with incorrect email format' do
    subject.email = 'test@example...com'
    expect(subject).to_not be_valid
  end
end
