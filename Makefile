
ken_all.zip:
	curl -O https://www.post.japanpost.jp/zipcode/dl/kogaki/zip/ken_all.zip

KEN_ALL.CSV: ken_all.zip
	unzip -f ken_all.zip

.PHONY: php
php: KEN_ALL.CSV
	php random_pickup.php > output.php

clean:
	-rm ken_all.zip KEN_ALL.CSV output.php

test: php
	php -r '$$addr = include "output.php"; var_dump($$addr[rand(0,count($$addr)-1)]);'
