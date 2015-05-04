class Stp < Formula
  homepage "http://stp.github.io/stp/"
  url "http://www.doc.ic.ac.uk/~cristic/klee/stp-r940.tgz"
  version "940"
  sha256 "baf2cdeaf0f6688f871156c692e946110626350af9af65d6d93566d2ee09e08a"

  def install
    system "./scripts/configure", "--with-cryptominisat2",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
