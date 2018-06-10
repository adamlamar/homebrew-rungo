class Rungo < Formula
  desc "Simple shim to run a specific version of Go."
  homepage "https://github.com/adamlamar/rungo"
  url "https://github.com/adamlamar/rungo/releases/download/0.0.7/rungo-0.0.7-osx-amd64.tar.gz"
  sha256 "1477d384e5633f829f8096f75c06d928b70792e9222cf73d106e623d0fc936f5"

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
