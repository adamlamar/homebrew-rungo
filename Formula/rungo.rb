class Rungo < Formula
  desc "Simple shim to run a specific version of Go."
  homepage "https://github.com/adamlamar/rungo"
  url "https://github.com/adamlamar/rungo/releases/download/0.0.5/rungo-0.0.5-osx.tar.gz"
  sha256 "97a30168aa2ec6e0fdf6e01e861cabaf3da5fdf380826a13aa7a2633a9238277"

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
