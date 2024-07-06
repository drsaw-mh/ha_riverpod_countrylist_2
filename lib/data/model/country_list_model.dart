class CountryListModel {
  final Flags? flags;
  final Name? name;
  final String? region;

  CountryListModel({
    this.flags,
    this.name,
    this.region,
  });

  CountryListModel.fromJson(Map<String, dynamic> json)
      : flags = (json['flags'] as Map<String, dynamic>?) != null
            ? Flags.fromJson(json['flags'] as Map<String, dynamic>)
            : null,
        name = (json['name'] as Map<String, dynamic>?) != null
            ? Name.fromJson(json['name'] as Map<String, dynamic>)
            : null,
        region = json['region'] as String?;

  Map<String, dynamic> toJson() =>
      {'flags': flags?.toJson(), 'name': name?.toJson(), 'region': region};
}

class Flags {
  final String? png;
  final String? svg;
  final String? alt;

  Flags({
    this.png,
    this.svg,
    this.alt,
  });

  Flags.fromJson(Map<String, dynamic> json)
      : png = json['png'] as String?,
        svg = json['svg'] as String?,
        alt = json['alt'] as String?;

  Map<String, dynamic> toJson() => {'png': png, 'svg': svg, 'alt': alt};
}

class Name {
  final String? common;
  final String? official;
  final NativeName? nativeName;

  Name({
    this.common,
    this.official,
    this.nativeName,
  });

  Name.fromJson(Map<String, dynamic> json)
      : common = json['common'] as String?,
        official = json['official'] as String?,
        nativeName = (json['nativeName'] as Map<String, dynamic>?) != null
            ? NativeName.fromJson(json['nativeName'] as Map<String, dynamic>)
            : null;

  Map<String, dynamic> toJson() => {
        'common': common,
        'official': official,
        'nativeName': nativeName?.toJson()
      };
}

class NativeName {
  final Fra? fra;

  NativeName({
    this.fra,
  });

  NativeName.fromJson(Map<String, dynamic> json)
      : fra = (json['fra'] as Map<String, dynamic>?) != null
            ? Fra.fromJson(json['fra'] as Map<String, dynamic>)
            : null;

  Map<String, dynamic> toJson() => {'fra': fra?.toJson()};
}

class Fra {
  final String? official;
  final String? common;

  Fra({
    this.official,
    this.common,
  });

  Fra.fromJson(Map<String, dynamic> json)
      : official = json['official'] as String?,
        common = json['common'] as String?;

  Map<String, dynamic> toJson() => {'official': official, 'common': common};
}
// class CountryListModel {
//   CountryListModel({
//     required this.flags,
//     required this.name,
//     required this.region,
//   });
//   late final Flags flags;
//   late final Name name;
//   late final String region;

//   CountryListModel.fromJson(Map<String, dynamic> json) {
//     flags = Flags.fromJson(json['flags']);
//     name = Name.fromJson(json['name']);
//     region = json['region'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['flags'] = flags.toJson();
//     _data['name'] = name.toJson();
//     _data['region'] = region;
//     return _data;
//   }
// }

// class Flags {
//   Flags({
//     required this.png,
//     required this.svg,
//     required this.alt,
//   });
//   late final String png;
//   late final String svg;
//   late final String alt;

//   Flags.fromJson(Map<String, dynamic> json) {
//     png = json['png'];
//     svg = json['svg'];
//     alt = json['alt'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['png'] = png;
//     _data['svg'] = svg;
//     _data['alt'] = alt;
//     return _data;
//   }
// }

// class Name {
//   Name({
//     required this.common,
//     required this.official,
//     required this.nativeName,
//   });
//   late final String common;
//   late final String official;
//   late final NativeName nativeName;

//   Name.fromJson(Map<String, dynamic> json) {
//     common = json['common'];
//     official = json['official'];
//     nativeName = NativeName.fromJson(json['nativeName']);
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['common'] = common;
//     _data['official'] = official;
//     _data['nativeName'] = nativeName.toJson();
//     return _data;
//   }
// }

// class NativeName {
//   NativeName({
//     required this.fra,
//   });
//   late final Fra fra;

//   NativeName.fromJson(Map<String, dynamic> json) {
//     fra = Fra.fromJson(json['fra']);
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['fra'] = fra.toJson();
//     return _data;
//   }
// }

// class Fra {
//   Fra({
//     required this.official,
//     required this.common,
//   });
//   late final String official;
//   late final String common;

//   Fra.fromJson(Map<String, dynamic> json) {
//     official = json['official'];
//     common = json['common'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['official'] = official;
//     _data['common'] = common;
//     return _data;
//   }
// }
// /*
// {
//         "flags": {
//             "png": "https://flagcdn.com/w320/wf.png",
//             "svg": "https://flagcdn.com/wf.svg",
//             "alt": ""
//         },
//         "name": {
//             "common": "Wallis and Futuna",
//             "official": "Territory of the Wallis and Futuna Islands",
//             "nativeName": {
//                 "fra": {
//                     "official": "Territoire des îles Wallis et Futuna",
//                     "common": "Wallis et Futuna"
//                 }
//             }
//         },
//         "region": "Oceania"
//     },
// */