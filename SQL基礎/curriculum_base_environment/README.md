# 事前準備
### SSHの設定
以下、SSH・GitHubの接続設定の資料になります。
接続設定ができ次第、SSHでクローンしてください。

<br />

### ローカルとGitHubの接続設定
自分のローカルPCとGitHubをSSHで接続できるように設定を行います。
ローカルPCでSSHで利用する鍵を作成し、作成した鍵をGitHubに登録してください。

<br />

### ssh鍵作成
sshディレクトリに移動します(※ない場合は`$ mkdir ~/.ssh`で作成ししてください)。

`$ cd ~/.ssh`

鍵作成のコマンドを打ちます。
`$ ssh-keygen -t rsa`

下記内容を聞かれるので、全てenterを打ってください。
```
Enter file in which to save the key (/Users/(username)/.ssh/id_rsa):
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
```

下記コマンドで作成した鍵を確認しましょう。（id_rsaとid_rsa.pubがあればokです）
`$ ls`

<br />

### GitHubに登録
先ほど作成した鍵をGitHubに登録してください。

`$ cat id_rsa.pub`で内容を表示してコピーします。
```
ssh-rsa abcxyz....
```

GitHubの右上のアイコンから「Settings」を開き、左メニューの「SSH and GPG keys」をクリックしてください。

[![Image from Gyazo](https://t.gyazo.com/teams/startup-technology/702a52ab18615f8115705d02112f29d7.png)](https://startup-technology.gyazo.com/702a52ab18615f8115705d02112f29d7)

<br />

[![Image from Gyazo](https://t.gyazo.com/teams/startup-technology/389e3ef6fa6976418346a0e0c2fb80b9.png)](https://startup-technology.gyazo.com/389e3ef6fa6976418346a0e0c2fb80b9)

<br />

「New SSH key」をクリックし、コピーした内容を「key」のところにペーストして登録してください。（「title」は任意のもので大丈夫です）
[![Image from Gyazo](https://t.gyazo.com/teams/startup-technology/0cd22afca02c4153a01896e04f5c5d73.png)](https://startup-technology.gyazo.com/0cd22afca02c4153a01896e04f5c5d73)

<br />

### 接続確認
ローカルPCからGitHubに接続できるかこちらのコマンドで確認してください。
`$ ssh -T git@github.com`

下記が返ってくればokです。
```
Hi アカウント名! You've successfully authenticated, but GitHub does not provide shell access.
```

<br /><br /><br />

# 環境構築
## 作業ディレクトリに移動
クローン後、以下の操作を行って作業ディレクトリに移動してください。
```
$ cd get_info_by_sql
```

<br />

## コンテナイメージのビルド
Dokcer Desktopアプリを立ち上げて、作業ディレクトリ上で以下のコマンドを実行してください。
```
$ docker build . -t get_info_by_sql
```

<br />

## コンテナ作成&起動
ビルドしたコンテナイメージからコンテナを起動してください。（以下のコマンドは3306ポートを疏通します）
```
$ docker run -d --name get_info_by_sql -p 3306:3306 get_info_by_sql
```

<br />

## コンテナ内に入る
以下のコマンドを実行してコンテナ内に移動してください。
```
$ docker exec -it get_info_by_sql bash
```

<br />

## 初期データの作成
コンテナ内で下記コマンド(初期データ作成sql)を実行してください。
```
# mysql -pcollege < employees.sql
```

<br />

## データベースへのログイン
コンテナ内で下記コマンド(データベースへのログイン)を実行してください。
```
# mysql -pcollege
```

※ログイン後、プロンプトが`mysql> `になる

<br />

## データベースの確認
データベースへのログイン後、`show databases;`を実行してemployeesデータベースが作成されていることを確認してください。
```
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| employees          |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.01 sec)
```

<br />

## データベースの選択
上記確認後、use employees;を実行した後、以下の"カリキュラムの課題(テスト)に取り組む"に進んでください。
```
mysql> use employees;
```

<br />

## カリキュラムの課題(テスト)に取り組む
<a href="https://dev.mysql.com/doc/employee/en/sakila-structure.html" target="_blank">関連資料(ER図)</a>を元に、カリキュラムの"テスト"にある問いに取り組んでください。

<br /><br /><br />

# 後片付け（途中で終了する場合も含む）
## データベースからログアウト
以下のコマンドを実行してデータベースからログアウトしてください。
```
mysql> exit
```

<br />

## コンテナからローカルに戻る
データベースからログアウトを実行したら以下のコマンドを実行してください。
```
# exit
```

<br />

## コンテナの停止
コンテナからローカルに戻るを実行したら以下のコマンドを実行してください。
```
$ docker stop get_info_by_sql
```

<br />

## コンテナの削除
コンテナが停止した状態で以下のコマンドを実行してください。
```
$ docker rm get_info_by_sql
```

<br />

## コンテナイメージの削除
コンテナが削除された状態で以下のコマンドを実行してください。
```
$ docker rmi get_info_by_sql mysql:5.7
```

<br /><br /><br />

# 再度取り組む場合
再度取り組む場合は、以下の手順を行ってください。
※上記の後片付けを行った上で実行してください。
```
$ docker build . -t get_info_by_sql
$ docker run -d --name get_info_by_sql -p 3306:3306 get_info_by_sql
$ docker exec -it get_info_by_sql bash

# mysql -pcollege < employees.sql

mysql> show databases;
mysql> use employees;
```
