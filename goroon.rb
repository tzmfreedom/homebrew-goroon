class Goroon < Formula
  desc "Garoon Command Line Interface"
  homepage "https://github.com/tzmfreedom/goroon"

  @@version = "0.1.0"
  version @@version

  if Hardware::CPU.is_64_bit?
    url "https://github.com/tzmfreedom/goroon/releases/download/v#{@@version}/goroon-#{@@version}-darwin-amd64.tar.gz"
    sha256 'b0ce37342eaf7d0f0bc3c65f8d84160d72f055a6d8ce4b62a4c56a7945e55301'
  else
    url "https://github.com/tzmfreedom/goroon/releases/download/v#{@@version}/goroon-#{@@version}-darwin-386.tar.gz"
    sha256 'a87215244d4dfc6f8866b683ecd85554a3fc5722483b8172213f63196f332138'
  end

  def install
    bin.install 'goroon'
  end

  test do
    system "false"
  end
end


