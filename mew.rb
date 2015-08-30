# Note:
#   To install git-head of mew:
#   brew install --ignore-dependencies --HEAD mew
# If you omit --ignore-dependencies, brew will try to install Emacs head as well.
require 'formula'

class Mew < Formula
  url 'http://www.mew.org/Release/mew-6.7.tar.gz'
  homepage 'http://www.mew.org'
  sha1 '10e555228c22e5c78d23d94fa9cd77e5de562127'

  depends_on 'emacs'
  head 'git://github.com/kazu-yamamoto/Mew.git'

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make install"
    system "make install-info"
    system "make install-jinfo"
  end

  def test
    # this will fail we won't accept that, make it test the program works!
    system "/usr/bin/false"
  end
end
