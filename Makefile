
ken_all.zip:
	curl -O https://www.post.japanpost.jp/zipcode/dl/kogaki/zip/ken_all.zip

KEN_ALL.CSV: ken_all.zip
	unzip -o ken_all.zip

.PHONY: output.php
output.php: KEN_ALL.CSV
	php random_pickup.php > output.php

clean:
	-rm ken_all.zip KEN_ALL.CSV output.php

test: output.php
	php -r '$$addr = include "output.php"; var_dump($$addr[rand(0,count($$addr)-1)]);'
