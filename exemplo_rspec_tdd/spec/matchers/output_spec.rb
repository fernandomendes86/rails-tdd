describe 'Matcher output' do
  
  it { expect { puts "ruby" }.to output.to_stdout }
  it { expect { print "ruby" }.to output("ruby").to_stdout }
  it { expect { print "ruby on rails" }.to output(/ruby/).to_stdout }

  it { expect { warn "ruby" }.to output.to_stderr }
  it { expect { warn "ruby" }.to output("ruby\n").to_stderr }
  it { expect { warn "ruby on rails" }.to output(/ruby/).to_stderr }


end