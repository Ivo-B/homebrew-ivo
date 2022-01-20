require 'formula'

class Sshpass < Formula
  url 'https://sourceforge.net/projects/sshpass/files/sshpass/1.08/sshpass-1.08.tar.gz'
  homepage 'https://sourceforge.net/projects/sshpass'

  depends_on 'gnu-sed'

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system "sshpass"
  end
end
