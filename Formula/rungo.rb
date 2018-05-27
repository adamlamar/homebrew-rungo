class Rungo < Formula
  desc "Simple shim to run a specific version of Go."
  homepage "https://github.com/adamlamar/rungo"
  url "https://github.com/adamlamar/rungo/releases/download/0.0.4/rungo-0.0.4-osx.tar.gz"
  sha256 "321ebe23a099e39aa6d07a6dd77fa304ad489f3ed0b038cfc4f59275dd91c26b"

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
