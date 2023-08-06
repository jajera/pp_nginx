# frozen_string_literal: true

require 'spec_helper'

describe 'nginx::install' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile.with_all_deps }
      it { is_expected.to contain_package('nginx').only_with_ensure('installed') }
      it { is_expected.to contain_service('nginx').with('ensure' => 'running', 'enable' => true, 'hasstatus' => true, 'hasrestart' => true).that_requires('Package[nginx]') }
    end
  end
end
