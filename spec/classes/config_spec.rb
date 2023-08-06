# frozen_string_literal: true

require 'spec_helper'

describe 'nginx::config' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }
      # let(:pre_condition) { 'include nginx::install' }
      # let(:pre_condition) { 'include nginx::service' }

      it { is_expected.to compile.with_all_deps }
      # is_expected.to contain_class('nginx::service')
    end
  end
end



# describe 'nginx::install' do
#   on_supported_os.each do |os, os_facts|
#     context "on #{os}" do
#       let(:facts) { os_facts }
#       let(:pre_condition) { 'include nginx::service' }

#       it 'installs nginx package' do
#         is_expected.to compile.with_all_deps
#         is_expected.to contain_class('nginx::service')
#         is_expected.to contain_package('nginx').with(
#           ensure: 'installed'
#        )
#       end
#     end
#   end
# end
