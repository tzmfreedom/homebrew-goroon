class Goroon < Formula
  desc "Garoon Command Line Interface"
  homepage "https://github.com/tzmfreedom/goroon"

  @@version = "0.1.1"
  version @@version

  if Hardware::CPU.is_64_bit?
    url "https://github.com/tzmfreedom/goroon/releases/download/v#{@@version}/goroon-#{@@version}-darwin-amd64.tar.gz"
    sha256 'a5acf381c595ecbf144b40cfc178d7b2578b2c8f871221cc0d963a96e0490683'
  else
    url "https://github.com/tzmfreedom/goroon/releases/download/v#{@@version}/goroon-#{@@version}-darwin-386.tar.gz"
    sha256 '231a2cfa97d98f87b8172cdf79df991becdb8750023b3316546196cb350a9848'
  end

  def install
    bin.install 'goroon'
  end

  test do
    system "false"
  end
end


