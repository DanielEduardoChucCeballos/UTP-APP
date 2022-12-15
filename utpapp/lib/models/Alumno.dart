import 'package:flutter/material.dart';

class Alumno {
  var nomalumno, nomgrupo, nomasignatura,momento,calificacion, calificacion_base,asistencia;
  

  Alumno({
    required this.nomgrupo,
    required this.nomalumno,
    required this.momento,
    required this.calificacion,
    required this.nomasignatura,
    required this.calificacion_base,
    required this.asistencia,
  });
  factory Alumno.fromJson(Map<String, dynamic> json) {
    return Alumno(
        nomgrupo: json['nomgrupo'],
        nomalumno: json['nomalumno'],
        momento: json['momento'],
        nomasignatura: json['nomasignatura'],
        calificacion: json['calificacion'],
        calificacion_base: json['calificacion_base'],
        asistencia: json['asistencia']);
  }
}

