# command_strage
このリポジトリは自作したコマンドを置いておくためのものである。
# frequency_comparisonコマンド
![test](https://github.com/nanano35/command_strage/actions/workflows/test.yml/badge.svg)

渡されたテキストにおいて、アルファベットの"e"は"z"の何倍存在するかを表示する。
## 使用例
$ cat sample_text.txt | ./frequency_comparison<br>
4.62
## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.10~3.14
## テスト環境
- Ubuntu 24.04 LTS
## 著作権とLICENSE
- このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
- © 2026 Yoshiaki Iwasawa
### 使用例で使用したsample_text.txtの中身
The small café on the corner serves amazing espresso and warm croissants every morning. Yesterday, a breezy afternoon arrived, bringing a dozen hungry customers seeking shelter from the sudden drizzle. While jazz music played softly in the background, everyone enjoyed their cozy seats and watched the rain fall outside.
- 上記のsample_text.txtはGoogle Geminiにより作成。 
