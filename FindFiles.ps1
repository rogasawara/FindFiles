# FTP でいろいろ実験

#カレントディレクトリ取得
$path = Split-Path $MyInvocation.MyCommand.Path -parent

# 文字コードをシフトじすにしないといけない　→　-encoding Default
"open localhost`nftpuser`nftpuser`n cd hoge"  | Out-File hoge.txt -encoding Default -append

# ここからftpコマンド追記していく
# ファイルをＦＴＰでゲットしてリネームしてまたあげる

"get memo.txt `n bye" | Out-File hoge.txt -encoding Default -append

# コマンド実行
ftp -s:hoge.txt

# del txt
del hoge.txt

# リネーム
Rename-Item memo.txt -newName Test01.txt

# もっかいテキスト追加
"open localhost`nftpuser`nftpuser`n cd hoge `n put Test01.txt `n bye"  | Out-File hoge.txt -encoding Default -append

# からの実行からの削除
ftp -s:hoge.txt
del hoge.txt


