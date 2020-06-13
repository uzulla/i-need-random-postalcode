<?php
$file = new SplFileObject("KEN_ALL.CSV");

echo '<?php return [' . PHP_EOL;
while (!$file->eof()) {
    $sjis = $file->fgets();
    if (1 === rand(0, 1000)) {
        $utf8str = mb_convert_encoding($sjis, "UTF-8", "SJIS-win");
        $list = explode(",", $utf8str);
        echo "[$list[2], $list[6], $list[7]]," . PHP_EOL;
    }
}
echo "];";
