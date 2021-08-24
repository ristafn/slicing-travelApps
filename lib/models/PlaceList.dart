class Place {
  final String name;
  final String img;
  final String desc;

  Place({
    required this.name,
    required this.img,
    required this.desc,
  });

  static List placeList = [
    Place(name: 'Raja Ampat', img: 'ampat', desc: 'ampat'),
    Place(name: 'Bali', img: 'bali', desc: 'bali'),
    Place(name: 'Gunung Bromo', img: 'bromo', desc: 'bromo'),
    Place(name: 'Pulau Komodo', img: 'komodo', desc: 'komodo'),
  ];
}
