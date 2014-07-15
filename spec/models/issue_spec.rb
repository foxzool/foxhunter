describe Issue do

  let(:issue) { FactoryGirl.create :issue}

  context 'should valid' do
    it { expect(issue).to be_valid }

    it 'name can not be blank' do
      issue.name = nil
      expect(issue).not_to be_valid
    end
  end

end
