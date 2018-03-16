require 'awspec'
require 'aws-sdk'
require 'rhcl'

test_main_fixture = Rhcl.parse(File.open('test/fixtures/main.tf'))
vpc_name = test_main_fixture['module']['vpc']['name']
vpc_cidr = test_main_fixture['module']['vpc']['cidr']

describe vpc(vpc_name.to_s) do
  it { should exist }
  its('cidr_block') { should eq vpc_cidr }
end
