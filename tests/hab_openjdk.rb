describe command('HAB_LICENSE=accept-no-persist && source results/last_build.env && hab pkg exec ${pkg_ident} java -version') do
  its('exit_status') { should eq 0 }
  # java -version outputs to stderr
  its('stderr') { should include 'OpenJDK Runtime Environment' }
end
