class GotoCli < Formula
  desc "Goto is an interactive command-line tool to manage your environments"
  homepage "https://github.com/LucienZhang/goto"
  url "https://github.com/LucienZhang/goto.git",
      tag:      "v1.1.0",
      revision: "be49b6e846ed963306d9893304a662fb08ff5802"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X github.com/LucienZhang/goto/configs.Version=#{version}"),
                          "-o", bin/"goto", "main.go"
  end

  test do
    version_out = shell_output("#{bin}/goto --version")
    assert_match "goto version " + version.to_s, version_out
  end
end
