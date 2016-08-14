# Note:
#   To install git-head of mew:
#   brew install --ignore-dependencies --HEAD mew
# If you omit --ignore-dependencies, brew will try to install Emacs head as well.
require 'formula'

class Mew < Formula
  url 'http://www.mew.org/Release/mew-6.7.tar.gz'
  homepage 'http://www.mew.org'
  sha256 '7e801f53feb37a1d1b755c1e5ce67cf865bb96be42dfc5487f7b9c3f859fdf0d'

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
