 
#カレントディレクトリ取得
$path = Split-Path $MyInvocation.MyCommand.Path -parent


# 文字コードをシフトじすにしないといけない
"open localhost`nftpuser`nftpuser`n cd hoge"  | Out-File hoge.txt -encoding Default -append


# ここからftpコマンド追記していく
# ファイルをＦＴＰでゲットしてリネームしてまたあげる


"get memo.txt `n bye" | Out-File hoge.txt -encoding Default -append

ftp -s:hoge.txt

# del txt
#del hoge.txt

Rename-Item memo.txt -newName Test01.txt

#"put Test01.txt" | Out-File hoge.txt -encoding Default -append


# do ftp command 
#

