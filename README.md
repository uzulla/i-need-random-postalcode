KEN_ALL.CSVからランダムに郵便番号を引いたり、テスト用に100件くらいデータをつくるやつ
====

```
$ make output.php
$ cat output.php
```

## or

```
$ make test
unzip -o ken_all.zip
Archive:  ken_all.zip
  inflating: KEN_ALL.CSV
php random_pickup.php > output.php
php -r '$addr = include "output.php"; var_dump($addr[rand(0,count($addr)-1)]);'
Command line code:1:
array(3) {
  [0] =>
  string(7) "0981607"
  [1] =>
  string(9) "北海道"
  [2] =>
  string(18) "紋別郡興部町"
}

$ make test
unzip -o ken_all.zip
Archive:  ken_all.zip
  inflating: KEN_ALL.CSV
php random_pickup.php > output.php
php -r '$addr = include "output.php"; var_dump($addr[rand(0,count($addr)-1)]);'
Command line code:1:
array(3) {
  [0] =>
  string(7) "3210935"
  [1] =>
  string(9) "栃木県"
  [2] =>
  string(12) "宇都宮市"
}

$ make test
unzip -o ken_all.zip
Archive:  ken_all.zip
  inflating: KEN_ALL.CSV
php random_pickup.php > output.php
php -r '$addr = include "output.php"; var_dump($addr[rand(0,count($addr)-1)]);'
Command line code:1:
array(3) {
  [0] =>
  string(7) "1901201"
  [1] =>
  string(9) "東京都"
  [2] =>
  string(21) "西多摩郡瑞穂町"
}
```
