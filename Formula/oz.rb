class Oz < Formula
  @@git_version = "3.3.4590-g170493e3ad"
  desc "Ozone Command Line Interface"
  homepage "https://www.taktik.com/"
  url "https://maven.taktik.be/repository/releases/com/taktik/ozone/client-cli/#@@git_version/client-cli-#@@git_version.jar"
  version "#@@git_version"
  sha256 "f6871d7144c2d305637442563556ab0b98b3a8b9f603d67887dcb0167a7e994f"

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
