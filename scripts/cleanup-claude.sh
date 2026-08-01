#!/usr/bin/env bash

set -xeuo pipefail

# アプリ本体
sudo rm -rf "/Applications/Claude.app"
rm -rf "$HOME/Applications/Claude.app"

# メインのアプリデータ
rm -rf "$HOME/Library/Application Support/Claude"
# キャッシュと自動更新データ
rm -rf "$HOME/Library/Caches/Claude"
rm -rf "$HOME/Library/Caches/com.anthropic.claudefordesktop"
rm -rf "$HOME/Library/Caches/com.anthropic.claudefordesktop.ShipIt"
# ログ
rm -rf "$HOME/Library/Logs/Claude"
rm -f "$HOME/Library/Logs/DiagnosticReports"/Claude*

# macOS設定
defaults delete com.anthropic.claudefordesktop 2>/dev/null || true
rm -f "$HOME/Library/Preferences/com.anthropic.claudefordesktop.plist"
rm -f "$HOME/Library/Preferences/ByHost"/com.anthropic.claudefordesktop.*.plist

# HTTP、WebKit、保存済みウインドウ状態
rm -rf "$HOME/Library/HTTPStorages/com.anthropic.claudefordesktop"
rm -rf "$HOME/Library/WebKit/com.anthropic.claudefordesktop"
rm -rf "$HOME/Library/Saved Application State/com.anthropic.claudefordesktop.savedState"

# 将来または別ビルドで作成された可能性があるコンテナ
rm -rf "$HOME/Library/Containers/com.anthropic.claudefordesktop"

# 設定キャッシュを再読み込み
killall cfprefsd 2>/dev/null || true
