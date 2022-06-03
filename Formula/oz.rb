class Oz < Formula
  @@git_version = "3.3.4589-g2c53f6596c"
  desc "Ozone Command Line Interface"
  homepage "https://www.taktik.com/"
  url "https://maven.taktik.be/repository/releases/com/taktik/ozone/client-cli/#@@git_version/client-cli-#@@git_version.jar"
  version "#@@git_version"
  sha256 "482e63ad59cb2d3db177401902e6cd71a7a472016689171dbf2108f547c5447e"

  bottle :unneeded

  def install
    jar = "client-cli-#@@git_version.jar"
    libexec.install jar
    bin.write_jar_script libexec/"client-cli-#@@git_version.jar", "oz"
  end

  test do
    system "true"
  end
end
