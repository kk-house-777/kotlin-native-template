class KotlinNativeTemplate < Formula
  desc "Kotlin Native project template generator"
  homepage "https://github.com/kk-house-777/kotlin-native-template"
  url "https://github.com/kk-house-777/kotlin-native-template/archive/refs/tags/0.0.4.tar.gz"
  # curl -L https://github.com/kk-house-777/kotlin-native-template/archive/refs/tags/0.0.4.tar.gz | shasum -a 256
  sha256 "e0f755becef0ee2c0d8f5471e2c994bea4d1b113b22864d839cab3fcc455f9ff" # リリース時に更新
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