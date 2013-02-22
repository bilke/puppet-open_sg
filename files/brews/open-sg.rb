require 'formula'

class OpenSg < Formula
  head 'https://github.com/bilke/OpenSG-1.8.git'
  homepage 'http://www.opensg.org/wiki'

  version "1.8-boxen1"

  depends_on 'libtiff'
  depends_on 'jpeg'

  def install
    ENV.deparallelize
    ENV.no_optimization
    system "./configure", "--prefix=#{prefix}", "--enable-glut", "--enable-tif", "--enable-jpg"
    Dir.chdir 'Builds/i386-apple-darwin-g++'
    system "make opt"
    system "make install"
  end
end