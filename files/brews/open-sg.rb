require 'formula'

class OpenSg < Formula
  url 'https://github.com/bilke/OpenSG-1.8/archive/1.8.zip'
  md5 '8655d6296456c4e52bed57455154662f'
  head 'https://github.com/bilke/OpenSG-1.8.git'
  homepage 'http://www.opensg.org/wiki'

  version "1.8-boxen2"

  depends_on 'libtiff'
  depends_on 'jpeg'
  depends_on 'libpng'

  def install
    ENV.deparallelize
    ENV.no_optimization
    system "./configure", "--prefix=#{prefix}", "--enable-glut", "--enable-tif", "--enable-jpg", "--enable-png"
    Dir.chdir 'Builds/i386-apple-darwin-g++'
    system "make opt"
    system "make install"
  end
end
