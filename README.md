# docomo-ventilation-announce
換気時間を音声でアナウンスしてくれる。

## 使い方

- `docomo-announce.rb`を編集してAPI_KEYをセットする
- `$ bundle install`
- 開始のお知らせを鳴らす
  - `$ bundle exec ruby docomo-annouce.rb`
- 終了のお知らせを鳴らす
  - `$ bundle exec ruby docomo-annouce.rb end`
- crontab に登録する
  - `$ bundle exec wheneber --update-crontab`

定期実行する時間を変更したい場合は`config/schedule.rb`を編集して下さい。
