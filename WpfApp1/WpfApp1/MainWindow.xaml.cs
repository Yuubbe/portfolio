using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace GenshinMenu
{
    public partial class MainWindow : Window
    {
        private MediaPlayer backgroundMusicPlayer;

        public MainWindow()
        {
            InitializeComponent();
            backgroundMusicPlayer = new MediaPlayer();
            backgroundMusicPlayer.Open(new Uri("C:/Users/gambvin/Downloads/L’Étoile D’Afrique x Les Trompettes D’Afrique.mp3"));
            backgroundMusicPlayer.Volume = 0.5; // Définir le volume initial à 50%
        }

        
    }
}
