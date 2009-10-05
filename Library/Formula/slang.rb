require 'brewkit'

class Slang <Formula
  url 'ftp://ftp.fu-berlin.de/pub/unix/misc/slang/v2.2/slang-2.2.0.tar.gz'
  md5 '81cd7456c70a21937497f4b04b77433c'
  homepage 'www.s-lang.org'


  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make"
    system "make install"
  end
end
