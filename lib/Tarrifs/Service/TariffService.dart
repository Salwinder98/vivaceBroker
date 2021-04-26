import 'package:bima/AlertDialog/AlertDialog.dart';
import 'package:flutter/cupertino.dart';

class TariffService{
  validateTarifForm(
      int sumInsuredFrom,
      int sumInsuredTo,
      int yearFrom,
      int yearTo,
      int engineCapacityFrom,
      int engineCapacityTo,
      String make,
      String brokerName,
      double rate,
      BuildContext context,
      GlobalKey<FormState> _formKey) {
    final pattern = r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$';
    RegExp re = new RegExp(pattern);

    if (sumInsuredFrom == null ||
        sumInsuredTo == null ||
        yearFrom == null ||
        yearTo == null ||
        engineCapacityFrom == null ||
        engineCapacityTo == null ||
      //  brockerId == null ||
        rate == null) {
      AlerDialog().alertDialog(
          context, 'Empty Fileds', 'Kindly ensure all fields are filled ');
    } else if (re.hasMatch(sumInsuredFrom.toString()) == false ||
        re.hasMatch(sumInsuredTo.toString()) == false ||
        re.hasMatch(engineCapacityFrom.toString()) == false ||
        re.hasMatch(engineCapacityTo.toString()) == false ||
        re.hasMatch(rate.toString()) == false) {
      AlerDialog().alertDialog(context, 'Invalid Values',
          'Some fields have invalid values , correct them and try again');
    } else if (sumInsuredFrom > sumInsuredTo ||
        engineCapacityFrom > engineCapacityTo ||
        yearFrom > yearTo) {
      AlerDialog().alertDialog(context, 'Inavalid Range',
          'Value from can not be greater than value to ');
    }
  }

}
