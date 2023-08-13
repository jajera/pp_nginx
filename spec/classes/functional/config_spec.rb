# frozen_string_literal: true

require 'spec_helper'

describe 'nginx::config' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }
      let(:pre_condition) { '
        class { "nginx::install": }
        class { "nginx::service": }
      ' }
      it 'creates the file /var/www/html/index.html' do
        is_expected.to contain_file('/var/www/html/index.html').with(
          ensure: 'file',
          content: 'Hello, World!'
        )
      end
    end
  end
end
