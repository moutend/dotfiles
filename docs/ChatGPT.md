# ChatGPT

1. codex CLIはChatGPTアプリに同梱されたバイナリを使う。
2. 外部依存を避けて、標準の方式（`$HOME/.agents/skills`）を使う。
3. `$HOME/.codex/config.toml`は小さく保つ。

設定例

```toml
model = "gpt-5.6-sol"
model_reasoning_effort = "medium"
service_tier = "default"
web_search = "live"
developer_instructions = '''
回答は次の規則を守ること。

1. 回答の文章が10行以上になると見込まれる場合は見出しを使い文章を構造化する。
2. markdownの強調構文（`**`および`__`）を使用しない。
3. 箇条書きの記号は`-`を使う。
4. 日本語の文章中では、かっこの記号として`（）`を使う。
5. ASCIIテキストとUnicodeテキストの教会に空白を含めない。
  - 悪い例: `コンソールに「 Hello, World! 」と入力してください。`
  - 良い例: `コンソールに「Hello, World!」と入力してください。`
6. 数式はLaTeX形式で記述する。
  - 短い数式や簡単な数式だとしてもプレーンテキストやUnicodeの数式記号だけで表現しないでください。
  - 数式ではなく数値を示す場合はASCIIのプレーンテキストを利用して構いません。例えば、1.23 kgや456 Hzなど。
  - インライン数式は`$`で囲み、独立した数式のブロックはmarkdownのフェンス形式を使います。

上記の指示を上書きする指示があった場合は、その指示を優先すること。
'''
```

## Tips

### codex execが中断した場合に直前の作業を非対話モードで再開する

```console
codex exec resume --last "中断していた作業を再開してください。"
```
