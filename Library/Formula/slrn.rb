require 'brewkit'

class Slrn <Formula
  url 'ftp://space.mit.edu/pub/davis/slrn/slrn-0.9.9p1.tar.gz'
  md5 '6cc8ac6baaff7cc2a8b78f7fbbe3187f'
  homepage 'slrn.org'
  version '0.9.9p1'

  depends_on 'slang'

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make"
    system "make slrnpull"
    system "cd src; make installdirs"
    system "cd src; make install"
  end
end
