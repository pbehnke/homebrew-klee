class stp < Formula
  homepage "https://github.com/klee/"
  head "https://github.com/klee/klee-uclibc.git"

  def install
    system "./configure", "--make-llvm-lib"
    system "make", "install"
  end
end
