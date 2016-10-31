require 'spec_helper'

describe package('google-chrome-stable') do
  it { should be_installed }
end

describe file('/usr/local/share/chromedriver') do
  it { should be_file }
  it { should be_mode 755 }
end

describe file('/usr/bin/chromedriver') do
  it { should exist }
  it { should be_symlink }
end
