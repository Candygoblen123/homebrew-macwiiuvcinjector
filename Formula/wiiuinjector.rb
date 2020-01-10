class Wiiuinjector < Formula
  desc "A script that will inject roms into Wiiu vc games on Catalina."
  homepage "https://github.com/Candygoblen123/macwiiuvcinjector"
  url "https://github.com/Candygoblen123/macwiiuvcinjector/archive/v0.1.1.tar.gz"
  sha256 "67336ddddb91d0903a5f766ebddfe01982b2e92c58a298de1e8a543a47631eee"

  depends_on "candygoblen123/macwiiuvcinjector/retroinject"
  depends_on "candygoblen123/macwiiuvcinjector/wiiurpxtool"
  depends_on :java

  def install
    system "mv", "injector.sh", "wiiuinjector"
    bin.install "wiiuinjector"
    prefix.install "tools/"
    bin.install_symlink "#{prefix}/tools"
  end

  test do
    ohai "This is not implemented, but it is on the todo list"
    system "true"
  end
end
