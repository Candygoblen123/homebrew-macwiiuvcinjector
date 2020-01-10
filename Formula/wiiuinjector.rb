class Wiiuinjector < Formula
  desc "A script that will inject roms into Wiiu vc games on Catalina."
  homepage "https://github.com/Candygoblen123/macwiiuvcinjector"
  url "https://github.com/Candygoblen123/macwiiuvcinjector/archive/v0.1.0.tar.gz"
  sha256 "59138725c592a47803de980be958d934429758cc897c8e5f05ed469d564cfa5e"

  depends_on "candygoblen123/macwiiuvcinjector/retroinject"
  depends_on "candygoblen123/macwiiuvcinjector/wiiurpxtool"

  def install
    system "mv", "injector.sh", "wiiuinjector"
    bin.install "wiiuinjector", "./tools/"
  end

  test do
    ohai "This is not implemented, but it is on the todo list"
    system "true"
  end
end
