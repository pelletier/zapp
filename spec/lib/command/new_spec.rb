require 'spec_helper'

describe Zapp::Command::New do

  context 'with no app_name specified' do
    before { subject.stub(:output_args_error) }

    it 'should output an error message' do
      subject
        .should_receive(:output_args_error)

      subject.execute []
    end

    it 'should NOT call the #call method' do
      subject
        .should_not_receive(:call)

      subject.execute []
    end
  end
end
