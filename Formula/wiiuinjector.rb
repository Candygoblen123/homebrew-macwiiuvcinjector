class Wiiuinjector < Formula
  desc "A script that will inject roms into Wiiu vc games on Catalina."
  homepage "https://github.com/Candygoblen123/macwiiuvcinjector"
  url "https://github.com/Candygoblen123/macwiiuvcinjector/archive/0.1.tar.gz"
  sha256 "da20d172d7bc13f8b95a22b8efb3dc762b2d79ee8253bd25fa440b77e1c370fc"

  depends_on "candygoblen123/macwiiuvcinjector/retroinject"

  def install
    system "mv", "injector.sh", "wiiuinjector"
    bin.install "wiiuinjector", "./tools/"
  end

  test do
    ohai "This is not implemented, but it is on the todo list"
    system "true"
  end
end
