import 'package:flutter/material.dart';

class Promedio {
  var nomalumno, nomgrupo, momento,promedio_base, promedio;
  

  Promedio({
    required this.nomgrupo,
    required this.nomalumno,
    required this.momento,
    required this.promedio,
    required this.promedio_base,



  });
  factory Promedio.fromJson(Map<String, dynamic> json) {
    return Promedio(
        nomgrupo: json['nomgrupo'],
        nomalumno: json['nomalumno'],
        momento: json['momento'],
        promedio: json['promedio'],
        promedio_base: json['promedio_base']);
  }
}

