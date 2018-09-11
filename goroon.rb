class Goroon < Formula
  desc "Garoon Command Line Interface"
  homepage "https://github.com/tzmfreedom/goroon"

  @@version = "0.1.3"
  version @@version

  option "without-completions", "Disable zsh completions"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/tzmfreedom/goroon/releases/download/v#{@@version}/goroon-#{@@version}-darwin-amd64.tar.gz"
    sha256 '497c4e4a0311ec0d7fcf0f96110b26f6196a4b8a327d73d70b609ec68a09ec08'
  else
    url "https://github.com/tzmfreedom/goroon/releases/download/v#{@@version}/goroon-#{@@version}-darwin-386.tar.gz"
    sha256 '9539012cc65929dd3ea2cd5de0c2d9d4d9e4315ce8f59e6408a0f0e465301229'
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


