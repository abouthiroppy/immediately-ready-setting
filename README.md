# 即座に環境を構築する

## 目的
vagrant等で立てた環境に対して最低限の設定を一括で行う  
emacs,vim,zsh等の設定ファイルの設置  
コマンドの一括インストール  

## 実行
bash install-package.sh   
注意: Ubuntuの場合,/bin/shがbashのシンボリックリンクではなくdashなのでbashで実行  

## 各ファイル
- install-package.sh  
実行ファイル
- package-list  
インストールするコマンドのリスト

## テスト済みOS
- ubuntu-14.04  
apt
- OS X Yosemite 10.10  
brew
