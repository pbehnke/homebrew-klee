class Klee < Formula
  homepage "http://klee.github.io/"
  head "https://github.com/klee/klee.git"

  depends_on "pbehnke/klee/stp"
  depends_on "pbehnke/klee/klee-uclibc"

  def install
    system "make", "install"
  end
end
