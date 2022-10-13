import 'package:chantiers/models/chantier.dart';
import 'package:chantiers/models/payement.dart';

class Worker{
  String? nom;
  String? telephone;
  List<payement>? payements ;
  String? dateDepart;
  List<Chantier>? chantiers;

  Worker(this.nom, this.telephone, this.payements, this.dateDepart,
      this.chantiers);
}