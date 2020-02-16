# copyright: 2018, The Authors

title "sample section"

control 'dotnet-check-version' do
 describe command('dotnet') do
    it { should exist }
    its('property') { should eq 'value' }
 end
end

control 'dotnet-check-version' do
  describe command('dotnet --list-runtimes') do
    its('stdout') { should include "Microsoft.AspNetCore.App 3.1.0" }
    its('stdout') { should_not include "Microsoft.NETCore.App  3.1.0" }
  end
 end

 
#Microsoft.AspNetCore.App 3.1.0 [/usr/share/dotnet/shared/Microsoft.AspNetCore.App]
#Microsoft.NETCore.App 3.1.0 [/usr/share/dotnet/shared/Microsoft.NETCore.App]
