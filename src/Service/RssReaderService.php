<?php

namespace App\Service;

class RssReaderService
{
    public function fetchRssFeed(string $url): array
    {
        // Charge le flux RSS
        $xml = @simplexml_load_file($url);

        if ($xml === false) {
            throw new \Exception('Impossible de charger le flux RSS. Vérifiez l\'URL ou la connexion réseau.');
        }

        // Traite les éléments du flux RSS
        $items = [];
        foreach ($xml->channel->item as $item) {
            // Vérifie si l'élément RSS contient une image (via l'élément <media:content>)
            $image = null;
            if (isset($item->children('media', true)->content)) {
                $image = (string)$item->children('media', true)->content->attributes()->url;
            }

            $items[] = [
                'title' => (string)$item->title,
                'link' => (string)$item->link,
                'description' => (string)$item->description,
                'pubDate' => (string)$item->pubDate,
                'image' => $image, // Ajout de l'image
            ];
        }

        return $items;
    }
}
