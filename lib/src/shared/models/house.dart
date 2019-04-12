class House {
  String id;
  String iDtabla;
  String destacado;
  String img;
  String mime;
  String w;
  String h;
  String hasTH;
  String watermark;
  String tabla;
  String pie;
  String tmp;
  String fecha;
  String tam;
  String author;
  String borrar;
  String orden;
  String ponderacionImgs;
  String th;
  bool vertical;

  House({
    this.id,
    this.iDtabla,
    this.destacado,
    this.img,
    this.mime,
    this.w,
    this.h,
    this.hasTH,
    this.watermark,
    this.tabla,
    this.pie,
    this.tmp,
    this.fecha,
    this.tam,
    this.author,
    this.borrar,
    this.orden,
    this.ponderacionImgs,
    this.th,
    this.vertical,
  });

  House.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    iDtabla = json['IDtabla'];
    destacado = json['destacado'];
    img = json['img'];
    mime = json['mime'];
    w = json['w'];
    h = json['h'];
    hasTH = json['hasTH'];
    watermark = json['watermark'];
    tabla = json['tabla'];
    pie = json['pie'];
    tmp = json['tmp'];
    fecha = json['fecha'];
    tam = json['tam'];
    author = json['author'];
    borrar = json['borrar'];
    orden = json['orden'];
    ponderacionImgs = json['ponderacionImgs'];
    th = json['th'];
    vertical = json['vertical'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['IDtabla'] = this.iDtabla;
    data['destacado'] = this.destacado;
    data['img'] = this.img;
    data['mime'] = this.mime;
    data['w'] = this.w;
    data['h'] = this.h;
    data['hasTH'] = this.hasTH;
    data['watermark'] = this.watermark;
    data['tabla'] = this.tabla;
    data['pie'] = this.pie;
    data['tmp'] = this.tmp;
    data['fecha'] = this.fecha;
    data['tam'] = this.tam;
    data['author'] = this.author;
    data['borrar'] = this.borrar;
    data['orden'] = this.orden;
    data['ponderacionImgs'] = this.ponderacionImgs;
    data['th'] = this.th;
    data['vertical'] = this.vertical;
    return data;
  }
}
