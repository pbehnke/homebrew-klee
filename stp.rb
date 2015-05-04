class Stp < Formula
  homepage "http://stp.github.io/stp/"
  head "https://github.com/stp/stp.git"

  depends_on "pbehkne/klee/minisat"
  depends_on "boost"
  depends_on "cmake"

  def install
  	mkdir 'build' do
    	system "cmake", "..", *std_cmake_args, "-DBUILD_SHARED_LIBS:BOOL=OFF", "-DENABLE_PYTHON_INTERFACE:BOOL=OFF"
  		system "make", "install"
    end
  end
end
