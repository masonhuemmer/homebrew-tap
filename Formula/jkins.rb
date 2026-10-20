class Jkins < Formula
  desc "Native Go Jenkins CLI with an encrypted local vault"
  homepage "https://github.com/masonhuemmer/jkins"
  version "2.462.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/masonhuemmer/jkins/releases/download/v2.462.4/jkins_2.462.4_darwin_arm64.tar.gz"
      sha256 "db34b3a235815880174ceecb0434e24b65c257fe77f311cda074f6bb765998e5"
    else
      url "https://github.com/masonhuemmer/jkins/releases/download/v2.462.4/jkins_2.462.4_darwin_amd64.tar.gz"
      sha256 "e7b4eb80fe79c39bf7e7fff7c51bfc371751923e958595b34804c91d9e46d25f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/masonhuemmer/jkins/releases/download/v2.462.4/jkins_2.462.4_linux_arm64.tar.gz"
      sha256 "dd59a12603846dbb5983776d063283f354fabc418ebda9efe68682d2c0c906ed"
    else
      url "https://github.com/masonhuemmer/jkins/releases/download/v2.462.4/jkins_2.462.4_linux_amd64.tar.gz"
      sha256 "164a5fafcdb724f98457ae7c56da72a96b84f282d07d662bf286fb01ce194143"
    end
  end

  def install
    bin.install "jkins"
  end

  test do
    assert_match "jkins v#{version}", shell_output("#{bin}/jkins --version")
  end
end
