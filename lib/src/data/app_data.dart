import 'package:netflix/src/models/carroseis_model.dart';
import 'package:netflix/src/models/perfil_model.dart';

PerfilModel perfil1 = PerfilModel(
  image: 'assets/images/perfil1.png',
  name: 'Jean',
);

PerfilModel perfil2 = PerfilModel(
  image: 'assets/images/perfil2.png',
  name: 'Juliana',
);

PerfilModel perfil3 = PerfilModel(
  image: 'assets/images/perfil3.png',
  name: 'Fernanda',
);

List<PerfilModel> perfils = [
  perfil1,
  perfil2,
  perfil3,
];

List<CarroselModel> carroseis = [
  CarroselModel(filmes: [
    {
      'nome': 'Megatubarão',
      'img':
          'https://play-lh.googleusercontent.com/FLekl_tcL-b81HJJVBSS68MrS6x2vNvnL0W53M-aKBDLJAiinUOrR0ZafgCcahRv7qs',
    },
    {
      'nome': 'Transformers',
      'img':
          'https://media.fstatic.com/x0n1NIL5fDgWWlS9DIAKLWvhLro=/322x478/smart/filters:format(webp)/media/movies/covers/2011/07/4857b7c5c2c489319044e5e0dfe94e03.jpg',
    },
    {
      'nome': 'Batman',
      'img':
          'https://br.web.img3.acsta.net/medias/nmedia/18/86/98/32/19870786.jpg'
    },
  ], title: 'Melhores filmes'),
  CarroselModel(filmes: [
    {
      'nome': 'Bird Box',
      'img':
          'https://cdn.ome.lt/ei8zH5yTluRRX676jzT56TaEqMI=/308x500/smart/extras/capas/bird-box-barcelona-poster.jpg',
    },
    {
      'nome': 'Demon slayer',
      'img':
          'https://uploads.jovemnerd.com.br/wp-content/uploads/2021/06/demon-slayer-hinokami-chronicles-lancamento-japao.jpg',
    },
    {
      'nome': 'Attack on titan',
      'img':
          'https://www.animesxis.com.br/wp-content/uploads/2017/10/attack-on-titan-movie-season-2.jpg'
    },
  ], title: 'Assistir novamente'),
  CarroselModel(filmes: [
    {
      'nome': 'One piece',
      'img':
          'https://ptanime.com/wp-content/uploads/2021/09/One-Piece-Volume-100_-3-de-setembro-2021-644x1024.jpg',
    },
    {
      'nome': 'Jujutsu Kaizen',
      'img':
          'https://i0.wp.com/otageek.com.br/wp-content/uploads/2020/12/Jujutsu-Kainsen-Otageek-Crunchyroll.jpg?resize=480%2C720&ssl=1',
    },
    {
      'nome': 'Dragon Ball super',
      'img':
          'https://cinepop.com.br/wp-content/uploads/2018/08/dragonball_1.jpg'
    },
  ], title: 'Animes'),
  CarroselModel(filmes: [
    {
      'nome': 'Panico V',
      'img':
          'https://play-lh.googleusercontent.com/LyjuEFK2dMfvDHbV1yCDf5d8euydTI-xetpeI6K0jUTEGYdksk1dMtn7V_b_T4G0Yk_Q3VmArdCTcURnLtLr',
    },
    {
      'nome': 'Freira',
      'img':
          'https://i.pinimg.com/474x/0d/16/87/0d16872b1dcb5d9df8519f7231c1cab0.jpg',
    },
    {
      'nome': 'Invocação do mal',
      'img':
          'https://www.atoupeira.com.br/wp-content/uploads/2021/06/invocacao-do-mal-3-poster-nacional-critica.jpg'
    },
  ], title: 'Melhores de Terror'),
];
