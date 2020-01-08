class Wiiuinjector < Formula
  desc "A script that will inject roms into Wiiu vc games on Catalina."
  homepage "https://github.com/Candygoblen123/macwiiuvcinjector"
  url "https://github.com/Candygoblen123/macwiiuvcinjector/archive/0.1.tar.gz"
  sha256 "da20d172d7bc13f8b95a22b8efb3dc762b2d79ee8253bd25fa440b77e1c370fc"

  # depends_on "cmake" => :build

  def install
    #system "mkdir", "/usr/local/Cellar/wiiuinjector"
    #system "mkdir", "/usr/local/Cellar/wiiuinjector/1.0"
    system "mkdir", "#{prefix}/bin"
    system "mv", "injector.sh", "#{prefix}/bin/wiiuinjector"
    system "mv", "tools/", "#{prefix}/bin/tools"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test wiiuinjector`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
