# frozen_string_literal: true

require 'spec_helper'

describe 'nginx' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it 'contains dependency classes' do
        is_expected.to compile.with_all_deps
        is_expected.to contain_class('nginx::install')
        is_expected.to contain_class('nginx::service')
        is_expected.to contain_class('nginx::config')
      end
    end
  end
end
