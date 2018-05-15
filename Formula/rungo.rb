class Rungo < Formula
  desc "Simple shim to run a specific version of Go."
  homepage "https://github.com/adamlamar/rungo"
  url "https://github.com/adamlamar/rungo/releases/download/0.0.2/rungo-0.0.2-osx.tar.gz"
  sha256 "1cdd3fc16c0a8f9abcd44c2dd98fafc5f747d13429234d0f8e37b8d5cc8c5f49"

  def install
    bin.install 'rungo'
    bin.install_symlink 'rungo' => 'go'
    bin.install_symlink 'rungo' => 'godoc'
    bin.install_symlink 'rungo' => 'gofmt'
  end

  test do
    system "#{bin}/rungo version"
    system "#{bin}/go version"
    system "#{bin}/godoc version"
    system "#{bin}/gofmt version"
  end
end
