# frozen_string_literal: true

require 'spec_helper'

describe 'nginx::service' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }
      let(:pre_condition) { 'include nginx::install' }

      it 'enables and starts nginx service' do
        is_expected.to contain_service('nginx').with(
          ensure: 'running',
          enable: true,
          hasstatus: true,
          hasrestart: true
       )
      end
    end
  end
end
