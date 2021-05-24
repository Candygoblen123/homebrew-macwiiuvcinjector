class Wiiuinjector < Formula
  desc "A script that will inject roms into Wiiu vc games on Catalina."
  homepage "https://github.com/Candygoblen123/macwiiuvcinjector"
  url "https://github.com/Candygoblen123/macwiiuvcinjector/releases/download/0.2.0/injector-0.2.0.zip"
  sha256 "961b99d87d65100aed3dfee20df8f047b08b66aab57922ae28c3e6cae31a33c0"
  version "0.2.0"

  depends_on "java"

  def install
      mv "Products/usr/local/bin/injector", "Products/usr/local/bin/wiiuinjector"
      prefix.install Dir["Products/usr/local/bin/tools"]
      bin.install "Products/usr/local/bin/wiiuinjector"
      bin.install_symlink "#{prefix}/tools"
  end

  test do

  end
end
