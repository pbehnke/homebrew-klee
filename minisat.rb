class Ministat < Formula
  homepage "https://github.com/stp/"
  head "https://github.com/stp/minisat.git"

  def install
  	Dir.mkdir 'default'
  	cd 'build' do
  		system "cmake", ".", *std_cmake_args
  		system "make", "install"
	end    
  end
end