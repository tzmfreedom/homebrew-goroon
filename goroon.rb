class Goroon < Formula
  desc "Garoon Command Line Interface"
  homepage "https://github.com/tzmfreedom/goroon"

  @@version = "0.1.2"
  version @@version

  option "without-completions", "Disable zsh completions"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/tzmfreedom/goroon/releases/download/v#{@@version}/goroon-#{@@version}-darwin-amd64.tar.gz"
    sha256 '9ee8c94092deae6cc3a0a94d8d50c40e5064d45f74badb41d61925835077e86a'
  else
    url "https://github.com/tzmfreedom/goroon/releases/download/v#{@@version}/goroon-#{@@version}-darwin-386.tar.gz"
    sha256 '4fd36e7c3ceea41f53fab1e9bc03c3ec509756708d7d474e4f07c28778a246fc'
  end

  def install
    bin.install 'goroon'
    if build.with? 'completions'
      zsh_completion.install '_goroon'
    end
  end

  test do
    system "false"
  end
end


