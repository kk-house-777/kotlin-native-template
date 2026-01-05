class KotlinNativeTemplate < Formula
  desc "Kotlin Native project template generator"
  homepage "https://github.com/kk-house-777/kotlin-native-template"
  url "https://github.com/kk-house-777/kotlin-native-template/archive/refs/tags/0.0.4.tar.gz"
  # curl -L https://github.com/kk-house-777/kotlin-native-template/archive/refs/tags/0.0.4.tar.gz | shasum -a 256
  sha256 "747b4a8181444e35ade9d7ba6c91e33e4c25ef236f6402e2962e3b3a5c1fcbcd" # リリース時に更新
  license "MIT"

  def install
    # generateスクリプトをbinにインストール
    bin.install "generate" => "kotlin-native-template"

    # テンプレートファイルをshareにインストール
    (share/"kotlin-native-template").install Dir["template/*"]
  end

  test do
    # テンプレートディレクトリが存在することを確認
    assert_predicate share/"kotlin-native-template", :exist?
    assert_predicate share/"kotlin-native-template/build.gradle.kts", :exist?
  end
end