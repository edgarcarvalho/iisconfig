require 'spec_helper'
describe 'iisconfig' do

  context 'with defaults for all parameters' do
    it { should contain_class('iisconfig') }
  end
end
