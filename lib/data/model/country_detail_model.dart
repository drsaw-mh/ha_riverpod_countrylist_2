class CountryDetailModel {
  final Flags? flags;
  final Name? name;
  final List<String>? capital;
  final String? region;
  final String? subregion;
  final int? population;

  CountryDetailModel({
    this.flags,
    this.name,
    this.capital,
    this.region,
    this.subregion,
    this.population,
  });

  CountryDetailModel.fromJson(Map<String, dynamic> json)
      : flags = (json['flags'] as Map<String, dynamic>?) != null
            ? Flags.fromJson(json['flags'] as Map<String, dynamic>)
            : null,
        name = (json['name'] as Map<String, dynamic>?) != null
            ? Name.fromJson(json['name'] as Map<String, dynamic>)
            : null,
        capital = (json['capital'] as List?)
            ?.map((dynamic e) => e as String)
            .toList(),
        region = json['region'] as String?,
        subregion = json['subregion'] as String?,
        population = json['population'] as int?;

  Map<String, dynamic> toJson() => {
        'flags': flags?.toJson(),
        'name': name?.toJson(),
        'capital': capital,
        'region': region,
        'subregion': subregion,
        'population': population
      };
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
  final Mya? mya;

  NativeName({
    this.mya,
  });

  NativeName.fromJson(Map<String, dynamic> json)
      : mya = (json['mya'] as Map<String, dynamic>?) != null
            ? Mya.fromJson(json['mya'] as Map<String, dynamic>)
            : null;

  Map<String, dynamic> toJson() => {'mya': mya?.toJson()};
}

class Mya {
  final String? official;
  final String? common;

  Mya({
    this.official,
    this.common,
  });

  Mya.fromJson(Map<String, dynamic> json)
      : official = json['official'] as String?,
        common = json['common'] as String?;

  Map<String, dynamic> toJson() => {'official': official, 'common': common};
}
