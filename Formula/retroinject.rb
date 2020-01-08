class Retroinject < Formula
  desc "My version of the retroinject tool, open-source and written in C, with help by moonshadow565"
  homepage "https://github.com/Morilli/Retroinject_C"
  url "https://github.com/Morilli/Retroinject_C/archive/v1.0.tar.gz"
  sha256 "994fd7a682d5bf3ece5e6a5c992a15c3360b4f957d73cd55e5afca595cb49b1a"

  depends_on "gcc" => :build

  def install
    # use gcc to compile, give it executeable privlages, and install it to bin
    system "gcc", "-std=c18", "-Wall", "-s", "-Os", "./retroinject.c", "-o", "retroinject"
    bin.install "./retroinject"
  end

  test do
    # can not do a proper test due to the fact that this program processes closed source, copyrighted files
    # As far as I know, there is no "test" or "template" files for us to use here, so we just test for the output help message
    assert_equal "Retroinject_C, a C version of the retroinject utility. Injects a rom file into an elf file.\n" + "Syntax: ./retroinject path/to/input.elf path/to/input.sfc path/to/output.elf", shell_output("#{bin}/retroinject --help").strip
  end
end
