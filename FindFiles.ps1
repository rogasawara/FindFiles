 
#カレントディレクトリ取得
$path = Split-Path $MyInvocation.MyCommand.Path -parent


# 文字コードをシフトじすにしないといけない
"open localhost`nftpuser`nftpuser`ndir`nquit"  | Out-File hoge.txt -encoding Default -append


# ここからftpコマンド追記していく








# do ftp command 
ftp -s:hoge.txt
# del txt
del hoge.txt
