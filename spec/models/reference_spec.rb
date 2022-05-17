require 'rails_helper'

RSpec.describe Reference, type: :model do
  def create_a_reference
    Reference.create(
      name: "MyName",
      url: "MyUrl"
    )
  end
  describe "#valid?" do
    it "is invalid if reference's name is blank" do
      reference = create_a_reference
      expect(reference).to be_valid

      reference.name = ""
      expect(reference).not_to be_valid

      reference.name = nil
      expect(reference).not_to be_valid

      reference = Reference.new
      expect(reference.valid?).to be false
    end
  end
end
