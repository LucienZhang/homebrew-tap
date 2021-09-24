# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class GotoCli < Formula
    desc "An interactive command-line tool to manage your environments"
    homepage "https://github.com/LucienZhang/goto"
    url "https://github.com/LucienZhang/goto/releases/download/v0.1.0/goto-cli_0.1.0_Darwin_amd64.tar.gz"
    sha256 "07e43ca34019243d3c38e1d00aae0d902d9fb3663a01bd23e8a883474e4607e8"
    license "MIT"

    # depends_on "cmake" => :build

    def install
      bin.install "goto-cli" => "goto"
    end

    test do
      # `test do` will create, run in and delete a temporary directory.
      #
      # This test will fail and we won't accept that! For Homebrew/homebrew-core
      # this will need to be a test that verifies the functionality of the
      # software. Run the test with `brew test goto-cli`. Options passed
      # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
      #
      # The installed folder is not in the path, so use the entire path to any
      # executables being tested: `system "#{bin}/program", "do", "something"`.
      system "true"
    end
  end
