import 'package:ts_4_6_1_bildgalerie/features/gallery/models/gallery_item.dart';

class GalleryRepo {
  final List<GalleryItem> _galleryItems = [
    GalleryItem(
      imageTitle: 'Bunter Basketball',
      imageDate: '03.06.2023',
      imageDescription:
          'Ein farbenfrohes Basketballfeld im Freien. Im Zentrum steht ein Basketballkorb, dessen weißes Netz im leichten Wind schaukelt. Die Farben des Spielfelds leuchten unter der warmen Abendsonne. Vor vielen Jahren, während eines Sommerabends, trafen sich hier Freunde zu einem unvergesslichen Spiel, bei dem die Sieger den Sonnenuntergang bejubelten.',
      imagePath: 'assets/images/basketball_1.jpeg',
      imageLocation: 'Stadtpark',
      resolution: '1920x1080',
      fileSize: '1.5 MB',
    ),
    GalleryItem(
      imageTitle: 'Adrenalin pur!',
      imageDate: '14.07.2020',
      imageDescription:
          'Ein Skifahrer in voller Montur fliegt mutig über einen schneebedeckten Hügel, während der klare, blaue Himmel im Hintergrund strahlt. Die Sonne scheint hell, beleuchtet die funkelnden Schneeflocken und wirft lange Schatten auf die Piste. An einem perfekten Wintertag vor einigen Jahren, als der Schnee frisch und die Bedingungen ideal waren, führte dieser Sprung zu einem unvergesslichen Moment voller Adrenalin und Freude.',
      imagePath: 'assets/images/ski.jpeg',
      imageLocation: 'Alpen',
      resolution: '2560x1440',
      fileSize: '2.3 MB',
    ),
    GalleryItem(
      imageTitle: 'Achtung Kurve',
      imageDate: '18.06.2022',
      imageDescription:
          'Eine große Gruppe Rennradfahrer legt sich synchron in eine scharfe Kurve, während sie mit beeindruckender Geschwindigkeit die Strecke entlangrasen. Die bunten Trikots der Fahrer leuchten im Sonnenschein, und ihre Konzentration ist greifbar. Vor einigen Jahren, während eines spannenden Wettkampfs an einem sonnigen Frühlingstag, markierte diese Kurve den Wendepunkt des Rennens und wurde zum Schauplatz eines packenden Duells um die Spitze.',
      imagePath: 'assets/images/bike.jpeg',
      imageLocation: 'Stadionstraße',
      resolution: '1920x1080',
      fileSize: '1.2 MB',
    ),
    GalleryItem(
      imageTitle: 'Runners High',
      imageDate: '22.09.2023',
      imageDescription:
          'Unsere acht Läufer bewegen sich hier in einer beeindruckenden Dreiecks-Formation über die Bahnen des sonnigen Sportplatzes am Mauerpark. Alle Athleten sind synchronisiert, ihre Schritte im perfekten Einklang, während sie die rote Tartanbahn unter ihren Füßen spüren. An einem kühlen Herbstmorgen, während eines intensiven Trainings, wurde diese Formation gewählt, um Teamarbeit und Präzision zu perfektionieren, und es war ein Moment, der die Entschlossenheit und den Zusammenhalt der Gruppe widerspiegelte.',
      imagePath: 'assets/images/running.jpeg',
      imageLocation: 'Mauerpark',
      resolution: '1920x1080',
      fileSize: '1.0 MB',
    ),
    GalleryItem(
      imageTitle: 'Swish',
      imageDate: '11.08.2018',
      imageDescription:
          'Ein Foto, das von unten aufgenommen wurde, zeigt einen Basketballkorb mit einem strahlend blauen Himmel im Hintergrund. Die Sonne scheint hell, und das weiße Netz des Korbs hebt sich kontrastreich gegen das Blau ab. An einem klaren Sommernachmittag, vor vielen Jahren, wurde hier ein legendäres Spiel gespielt, bei dem der letzte Korb im goldenen Licht des Abends glänzte.',
      imagePath: 'assets/images/basketball_2.jpeg',
      imageLocation: 'Freizeitpark',
      resolution: '1920x1080',
      fileSize: '1.4 MB',
    ),
    GalleryItem(
      imageTitle: 'Ball Game',
      imageDate: '29.11.2023',
      imageDescription:
          'Die Nahaufnahme zeigt einen gelb-grünen Tennisball, der auf dem glänzenden Boden der Sporthalle liegt. Die Textur des Balls ist deutlich sichtbar, während das gedämpfte Licht der Halle eine ruhige Atmosphäre schafft. An einem regnerischen Nachmittag fand hier ein spannendes Match statt, bei dem dieser Ball im entscheidenden Moment des Spiels eine wichtige Rolle spielte.',
      imagePath: 'assets/images/tennis_1.jpeg',
      imageLocation: 'Sporthalle Nord',
      resolution: '1280x720',
      fileSize: '800 KB',
    ),
    GalleryItem(
      imageTitle: 'Sieg in der Natur',
      imageDate: '02.05.2022',
      imageDescription:
          'Eine beeindruckende Drohnenaufnahme zeigt ein Tennisfeld, das idyllisch mitten im Grünen liegt. Das leuchtend grüne Spielfeld kontrastiert wunderschön mit den umgebenden Bäumen und Wiesen. An einem sonnigen Sommertag vor einigen Jahren wurde hier ein Turnier ausgetragen, bei dem Spieler und Zuschauer gleichermaßen die atemberaubende Naturkulisse genossen.',
      imagePath: 'assets/images/tennis_2.jpeg',
      imageLocation: 'Grüner Wald',
      resolution: '3840x2160',
      fileSize: '3.0 MB',
    ),
  ];
  List<GalleryItem> getAllGalleryItems() {
    return _galleryItems;
  }
}
