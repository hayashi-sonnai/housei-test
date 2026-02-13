# GitHub organization 管理##

[English version](lang/english/README.md)

DAC の GitHub organization の現状の管理
<https://github.com/DAConsortium>

# リポジトリ更新手順

比較的作業が多そうなユーザとリポジトリ追加については [Contribution Guide](CONTRIBUTING.md) に記載しているので参照のこと

# 全般的な注意事項

- DAC 業務で扱うデータ、ソースコード類を特別の指定がない限り DAC の GitHub Organization である、
github.com/DAConsortium 以外で扱わないこと
  - 個人アカウントのリポジトリや別 GitHub Organization のリポジトリ、異なる Git Hosting Service
  に commit, push しないこと
    - public / private の visibility や GitHub かそれ以外かを問わない
    - git clone した内容を外部のリポジトリに push しないこと
  - Git 以外の Version Control System に commit などしないこと
- API Key や Private key などの credential や secret に属する情報を cleartext のまま commit,
push しないこと
- GitHub API の rate limit 対応のため、マージは基本的に1日1回まとめて行います

# コミット時の注意

コミットメッセージは[Conventional Commits](https://www.conventionalcommits.org/)に従い英語の
命令形で記載すること

# member

## メンバー作成

- GitHub ユーザは各個人で取得する。
- Case Sensitive (大文字小文字区別します)
- 無償アカウントは1人1つであるので、既存で無償アカウントがあればそれを利用するのが望ましい。
  - Pro マークが無ければ、Orgに所属しても無償アカウントのままである。
- GitHub アカウントのメールアドレス認証は必ず済ませておくこと。
  - 招待メールは認証したアドレスに届く。
- GitHub アカウントの2FAを有効化済みである、もしくは対応可能であること。
- GitHub アカウントを他の人と使いまわしをしないこと。
- DAC テナントの Azure AD アカウントを保有していること。
  - 招待後に https://github.com/orgs/DAConsortium/sso へアクセスすること。

### メールアドレス

- GitHub 登録のメールアドレスと gitconfig の `user.email` は揃えておくこと

- GitHub が提供する noreply email address の利用も可能です

- GitHub 登録のメールアドレスと Azure AD アカウントの ID は一致している必要ありません

- DAC organization のリポジトリに関する通知は、 DAC テナントの会社アドレスに限るようにする予定があります。
  - メール通知が必要な場合は、登録するアドレスに注意すること。

## organization への所属

https://github.com/DAConsortium/github-membership

で管理。すでにアクセスできる DAC 社員がPRを出す運用とする

invitation を一定期間放置された場合は、 `membership_*.tf` から削除し invitation を無効にします

ユーザの所属会社/属性によってリポジトリの権限を変更するので所属時は必ず会社名を明記すること

ライセンス消費を価値あるものにするため、 commit, push などをせずに参照だけのユーザや参照すらしないユーザの所属を断ったり、  
すでに所属していても出ていってもらう事がある

### 申請時に必要な情報

- GitHub アカウント名
  - 権限付与の確認のため所属会社も書くこと
- 所属先 team

以下の様に記述すること
- `membership_*.tf` に `github_membership` の内容を記載すること
  - 各部署ごとにファイルを分割しているので、所属もしくは契約部署のファイルに入れること
  - github_membership の username における`#` 以降は対象者の姓名及び所属会社を書くこと
    - 出向社員は出向元、業務委託者は契約先/所属元の記載を想定しています
    - 出向社員は権限的に社員と同様に扱います
- `github_team_members` の内容は、`team_members_*.tf` に記載すること
  - チームに属さない場合は、権限なしになる
    - 意味がないためteam無所属は許可しない
  - role は member とすること
- Conflict 避けのため、`membership_*.tf`はAzure AD のアドレスのlocal-part,  
`team_members_*.tf` は、GitHubアカウント名の昇順で整列しているので、適切な箇所に挿入すること

```terraform
resource "github_membership" "johndoe" {
  username = "johndoe" # john-doe (firstname-familyname) / DAC (user belongs company)
}
```

```terraform
module "foobar_team_members" {
  source  = "./modules/github_team_members"
  team_id = module.foobar.github_team.id
  members = {
    (github_membership.johndoe.username) = "member",
    ...
  }
}

```

## organization からのメンバー削除

DAC からの離職時に organization から削除する。  
基本的に各プロダクト側でPRをしてもらう。

また、過去３ヶ月間、以下のアクションを行なっていないユーザは登録を解除する。

- コミットをデフォルトブランチにマージ・プッシュしていない
- PR or Issueを作成していない
- PR or Issueにコメントしていない

※ただし過去３ヶ月以前に追加されたメンバーに限る

## 権限

標準では何も権限を持たない。そのため、 team 無所属設定は行わない。

正社員、出向社員と必要に応じて一部業務委託者には全 private repository の read 権限を付与する。

## アカウント名変更

githubアカウント名で organization への所属を管理している。

そのため、 organization 所属中にgithubアカウント名を変更した場合は、アカウント名変更したユーザの責任において  
membership 設定を変更後のアカウント名で書き換えること。

# team

権限を管理するための単位

## 単位

原則プロダクトで1つのteamを作成し、 各 repository は原則1つの team へ所属する  
また、 DAC 社員全員が所属する team(DAC-regular) へ社員の場合は参加させることを忘れないこと  
GitHub Advanced Security 関連情報アクセス用 team (security-managers) を設定している。  
この team は、全 repository への参照権限以上を持つため、  
少なくとも DAC-regular に参加していないアカウントへの参加を許可しない  
maintainer 権限は organization owner 以外付与しない

## member

memberは1以上のteamに所属する  
構成上teamに所属しないことも可能だが全てのリポジトリへの書き込み権限が無い状態となる  
ライセンスを無駄に消費する状態となるためteam無所属は許可しない

## 権限管理

原則 member へは team 内 repository への write の権限を付与する。外部連携などのために、  
admin 権限を持たせる場合は、別に管理用の admin-team を作成する。

CircleCI との連携時は admin 権限を持つ ユーザが行ったほうが無難。

## memberとrepositoryの変更

team への member と repository の変更もPRで回すようにする

# repository

## creation

- repository の作成時は、 `repository_*.tf` への設定追加、team への repository 追加まで行う。
- public repository を作成する時は commit する内容に注意が必要。
- 各プロダクトの team の他に DAC 社員全員が所属する team(DAC-regular) へ読み取り権限を付与することを忘れないこと。
- sre-admins team への admin 権限付与も行うこと。
- Conflict 避けのため、`team_repository_*.tf` は、repository 名の昇順で整列している。

```terraform
module "example" {
  source = "./modules/github_repository"

  name        = "example"
  visibility  = "private"   #optional (default: "private")
  is_archived = false       #optional (default: false)
  topics      = ["foo"]     #optional (default: []) ※作成時のみ反映
}
```

team_repository への記載例は以下となる

```terraform
resource "github_team_repository" "foobar_example" {
  team_id    = module.foobar.github_team.id
  repository = module.example.github_repository.name
  permission = "push"
}
```

dac-regular は以下の通り

```terraform
resource "github_team_repository" "dac-regular_example" {
  team_id    = module.dac-regular.github_team.id
  repository = module.example.github_repository.name
  permission = "pull"
}
```

すでに作成されているrepositoryの場合は data_repository.tf に設定を記載する

```terraform
data "github_repository" "somerepository" {
  full_name = "DAConsortium/somerepository"
}
```

他のtfファイルからは、repository名をべた書きにせずに全て参照のかたちにする

## リポシトリ権限

SRE が team に所属していない reposotiry を所属させた上で、repository に付与されている admin 権限を剥奪することがある。

また当面以下のようにする

- repository 削除の権限は owner のみにしておく
- repository visibility 変更権限も owner のみにしておく

## repository rename

repository と team の関連付けも名前で管理している。  
rename を行った時は、 rename をした人の責任において、設定ファイルを書き換えること。

## deleting or archiving or fork or owner transfer

SRE メンバーに依頼してください

# 参考

https://help.github.com/articles/repository-permission-levels-for-an-organization/
https://help.github.com/articles/permission-levels-for-an-organization/
