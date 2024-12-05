<?php

require_once __DIR__ . '/vendor/autoload.php';

use SimplePie\SimplePie;

$feed = new SimplePie();
$feed->set_feed_url('https://hnrss.org/frontpage');
$feed->init();

foreach ($feed->get_items(0, 5) as $item) {
    echo $item->get_title() . "\n";
    echo $item->get_link() . "\n\n";
}
