require 'spec_helper'
describe 'vz_console' do
  context 'with default values for all parameters' do
    it { should contain_class('vz_console') }
  end
end
