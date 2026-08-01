# WSL

## 1. WSLのインストール

Windows 11では、WSLのインストールが非常に簡単になりました。管理者権限でPowerShellまたはコマンドプロンプトを開き、以下のコマンドを実行します。

```console
wsl --install
```
このコマンドは、WSLに必要なすべてのコンポーネント（WSLプラットフォーム、仮想マシンプラットフォーム、およびUbuntuディストリビューション）を自動的にインストールします。インストール後: インストールが完了したら、PCを再起動する必要があります。

## 手動インストール（必要な場合）
上記の方法で問題が発生した場合や、特定のディストリビューションをインストールしたい場合は、手動でコンポーネントを有効にすることができます。
仮想マシンプラットフォームとWSLの有効化:
管理者権限でPowerShellを開き、以下のコマンドを実行します。
```console
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```
PCの再起動: コマンド実行後、PCを再起動します。
Linuxディストリビューションのインストール:
Microsoft Storeを開き、「Linux」または「WSL」と検索します。希望するLinuxディストリビューション（例: Ubuntu、Debian、openSUSEなど）を選択し、「入手」をクリックしてインストールします。
## 2. WSLの初期設定

インストールしたLinuxディストリビューションを初めて起動すると、ユーザー名とパスワードの設定を求められます。
スタートメニューからインストールしたLinuxディストリビューション（例: Ubuntu）を起動します。
初回起動時に、新しいUNIXユーザー名を入力します。
そのユーザーのパスワードを入力し、確認のために再度入力します。
これで、WSL環境のセットアップは完了です。

## 3. WSLの利用方法

WSLがインストールされ、初期設定が完了したら、様々な方法で利用できます。

### a. Linuxコマンドラインの利用

スタートメニューからインストールしたLinuxディストリビューション（例: Ubuntu）を起動します。これにより、Linuxのシェルが開き、通常のLinuxコマンドを実行できるようになります。
例:

```Bash
sudo apt update
sudo apt upgrade
```

### b. Windowsファイルシステムへのアクセス

WSL環境からWindowsのファイルにアクセスできます。Windowsのドライブは /mnt ディレクトリ以下にマウントされます。
例:

- Cドライブは /mnt/c
- Dドライブは /mnt/d

```Bash
cd /mnt/c/Users/<YourWindowsUserName>/Documents
```

### c. WSLファイルシステムへのアクセス（Windowsから）

エクスプローラーからWSLのファイルにアクセスするには、アドレスバーに \\wsl$ と入力します。インストールされているディストリビューションが表示され、その中に入るとLinuxのファイルシステムにアクセスできます。
例: \\wsl$\Ubuntu

### d. WindowsアプリケーションとLinuxアプリケーションの連携

LinuxからWindowsアプリケーションの実行:
WSLのシェルから、Windowsの実行可能ファイル（.exe）を直接起動できます。

```Bash
explorer.exe .  # 現在のLinuxディレクトリをWindowsのエクスプローラーで開く
notepad.exe my_file.txt # Windowsのメモ帳でファイルを開く
```

### VS Codeとの連携:

Visual Studio Code（VS Code）はWSLと非常に強力に連携します。VS Codeをインストールし、Remote - WSL拡張機能を導入することで、WSL内のファイルを直接編集したり、WSL環境で開発を行ったりすることができます。
VS Codeを開いた状態でWSLのターミナルから以下のコマンドを実行すると、現在のWSLディレクトリをVS Codeで開くことができます。

```Bash
code .
```

### e. WSL 2へのアップグレード（通常は自動）

wsl --install コマンドでインストールした場合、通常は自動的にWSL 2モードでインストールされます。WSL 2は、WSL 1よりも高いファイルI/Oパフォーマンスと完全なシステムコール互換性を提供します。
現在使用しているWSLのバージョンを確認するには、以下のコマンドを実行します。

```console
wsl -l -v
```

もしディストリビューションがWSL 1で実行されている場合は、以下のコマンドでWSL 2に変換できます（YourDistroName を実際のディストリビューション名に置き換えてください）。

```console
wsl --set-version YourDistroName 2
```

また、今後インストールするディストリビューションのデフォルトバージョンをWSL 2にするには、以下のコマンドを実行します。

```console
wsl --set-default-version 2
```

これで、Windows 11でWSLをインストールし、基本的な利用を開始するための手順は完了です。開発作業やLinux環境での実験に役立ててください。

```bash
sudo apt update
sudo apt upgrade
```
