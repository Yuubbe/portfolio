<?php

namespace App\Controller;

use App\Service\RssReaderService;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class VeilleController extends AbstractController
{
    #[Route('/veille', name: 'rss_feed')]
    public function index(RssReaderService $rssReaderService): Response
    {
        $rssFeedUrl = 'https://www.developpez.com/index/rss';

        try {
            $articles = $rssReaderService->fetchRssFeed($rssFeedUrl);
        } catch (\Exception $e) {
            $articles = [];
            $this->addFlash('error', 'Erreur lors du chargement du flux RSS : ' . $e->getMessage());
        }

        return $this->render('veille/index.html.twig', [
            'articles' => $articles,
        ]);
    }
}
