require 'spec_helper'
describe 'polipoproxy' do

  context 'with defaults for all parameters' do
    it { should contain_class('polipoproxy') }
  end
end
