 
#カレントディレクトリ取得
$path = Split-Path $MyInvocation.MyCommand.Path -parent

# 文字コードをシフトじすにしないといけない
"open localhost"  | Out-File hoge.txt -encoding Default -append
"ftpuser"         | Out-File hoge.txt -encoding Default -append
"ftpuser"         | Out-File hoge.txt -encoding Default -append
"dir"             | Out-File hoge.txt -encoding Default -append
"quit"            | Out-File hoge.txt -encoding Default -append

ftp -s:hoge.txt

del hoge.txt


