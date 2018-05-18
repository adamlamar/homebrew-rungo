class Rungo < Formula
  desc "Simple shim to run a specific version of Go."
  homepage "https://github.com/adamlamar/rungo"
  url "https://github.com/adamlamar/rungo/releases/download/0.0.3/rungo-0.0.3-osx.tar.gz"
  sha256 "ce251a5e702e17b3ab1648d962a52fd4bc55a77ab7eb0a14e861672c97c9e181"

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
