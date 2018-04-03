class Rungo < Formula
  desc "Simple shim to run a specific version of Go."
  homepage "https://github.com/adamlamar/rungo"
  url "https://github.com/adamlamar/rungo/releases/download/0.0.1/rungo-0.0.1-osx.tar.gz"
  sha256 "111e74cda33f82852f40797eaa869f3748d289e0d7dd42c48bc8e7d56151f899"

  def install
    bin.install 'rungo'
    bin.install_symlink 'rungo' => 'go'
    bin.install_symlink 'rungo' => 'godoc'
  end

  test do
    system "#{bin}/rungo version"
    system "#{bin}/go version"
    system "#{bin}/godoc version"
  end
end
