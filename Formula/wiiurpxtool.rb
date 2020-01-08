class Wiiurpxtool < Formula
  desc "Compress/decompress RPL/RPX files for Wii U"
  homepage "https://github.com/Candygoblen123/wiiurpxtool"
  url "https://github.com/Candygoblen123/wiiurpxtool/archive/v1.3-mac.tar.gz"
  sha256 "cd7e0675bba6fae9ef5f94fb0eee4b81af6f8b9c9ffe88b65eccb41161d47788"

  # depends_on "cmake" => :build

  def install
    system "clang++", "-o", "wiiurpxtool", "wiiurpxtool.cpp", "-lz"
    bin.install "wiiurpxtool"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test wiiurpxtool`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "true"
  end
end
