# ansibleとかchefとかなしで即座に環境を構築するやつ

## 目的
vagrant等で立てた環境に対して最低限の設定を一括で行う  
emacs,vim,zsh等の設定ファイルの設置  
コマンドの一括インストール  

## 対応パッケージ管理システム
- apt   
Debian系Linux  
- yum    
Red Hat系Linux
- homebrew    
MAC OS  

## 実行
sh install-package.sh  
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
- CentOS release 6.6 (Final)  
yum  
- Linux Mint 17 Cinnamon  
apt  

## その他のパッケージ管理システム
### 今後入れる可能性があるもの  
- portage  
Gentoo Linux  
- pacman  
Arch Linux  
- YaST  
openSUSE  

 
