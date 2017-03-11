class Goroon < Formula
  desc "Garoon Command Line Interface"
  homepage "https://github.com/tzmfreedom/goroon"

  @@version = "0.1.0"
  version @@version

  if Hardware::CPU.is_64_bit?
    @@binname = 'goroon-darwin64'
    url "https://github.com/tzmfreedom/goroon/releases/download/v#{@@version}/#{@@binname}"
    sha256 '2ac1b4da1ae01bcdd5915e067c06de1f71c6205f052a1641cd74af6aaa2eda8e'
  else
    @@binname = 'goroon-darwin386'
    url "https://github.com/tzmfreedom/goroon/releases/download/v#{@@version}/#{@@binname}"
    sha256 '0059b5e4cd06f1ad17e08f9ebb6c5fb223f56b26c75f44c98193e91af03bb33b'
  end

  def install
    mv @@binname, 'goroon'
    bin.install 'goroon'
  end

  test do
    system "false"
  end
end

