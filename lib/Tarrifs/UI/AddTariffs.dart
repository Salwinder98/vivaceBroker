import 'package:bima/Tarrifs/Service/TariffService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pattern_formatter/numeric_formatter.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';


class AddTariff extends StatefulWidget {
  @override
  _AddTariff createState() => _AddTariff();
}

class _AddTariff extends State<AddTariff> {
  final _formKey = GlobalKey<FormState>();
  List _car_makes = ['Mercedes','BMW','HONDA'];
  List _broker = ['Renfrew','Nacora Insurance Brokers Ltd'];
  int
  sumInsuredFrom,
      sumInsuredTo,
      engineCapacityFrom,
      engineCapacityTo,
      yearFrom,
      yearTo,
      vehicleMakeId,
      brockerId,
      productId;
  double rate;
  String brokerName, makeId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          centerTitle: true,
          title: new Text("Tarrifs"),
          automaticallyImplyLeading: true


      ),
      body: Container(
        padding: const EdgeInsets.all(50),
        child: Form(
            key: _formKey,
            child: Builder(
                builder: (context) => ListView(children: <Widget>[
                  Column(
                    children: [
                      Text(
                        "shhshshs",
                        //  widget.productEntity.productName,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text("shhshshs",
                        // widget.tarifEntity.brokerName ?? '',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "shhshshs",
                        // widget.tarifEntity.makeId ?? '',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text("shhshshs",
                        //widget.tarifEntity.rate.toString() + ' %',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        ' ',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                      padding: const EdgeInsets.all(8),
                      child: Row(children: <Widget>[
                        new Flexible(
                          child: new TextFormField(
                            inputFormatters: [
                              ThousandsFormatter()
                            ],
                            keyboardType: TextInputType.number,
                            /*  initialValue: widget
                              .tarifEntity.sumInsuredFrom
                              .toString(),*/
                            onChanged: (value) {
                              setState(() {
                                this.sumInsuredFrom = int.parse(
                                    value.replaceAll(',', ''));
                                //int.parse(value);
                              });
                            },
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Sum Insured from -CAD',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(),
                              ),
                              contentPadding: EdgeInsets.fromLTRB(
                                  20.0, 5.0, 20.0, 5.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        new Flexible(
                          child: new TextFormField(
                            inputFormatters: [
                              ThousandsFormatter()
                            ],
                            keyboardType: TextInputType.number,
                            /*   initialValue: widget
                              .tarifEntity.sumInsuredTo
                              .toString(),*/
                            onChanged: (value) {
                              setState(() {
                                this.sumInsuredTo =
                                    int.parse(value.replaceAll(',', ''));
                              });
                            },
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Sum Insured To -CAD',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(),
                              ),
                              contentPadding: EdgeInsets.fromLTRB(
                                  20.0, 5.0, 20.0, 5.0),
                            ),
                          ),
                        ),
                      ])),
                  Container(
                      padding: const EdgeInsets.all(8),
                      child: Row(children: <Widget>[
                        new Flexible(
                          child: new TextFormField(
                            inputFormatters: [
                              ThousandsFormatter()
                            ],
                            keyboardType: TextInputType.number,
                            /* initialValue: widget
                              .tarifEntity.engineCapacityFrom
                              .toString(),*/
                            onChanged: (value) {
                              setState(() {
                                this.engineCapacityFrom =
                                    int.parse(value.replaceAll(',', ''));
                              });
                            },
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText:
                              'Engine Capacity From -CC',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(),
                              ),
                              contentPadding: EdgeInsets.fromLTRB(
                                  20.0, 5.0, 20.0, 5.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        new Flexible(
                          child: new TextFormField(
                            inputFormatters: [
                              ThousandsFormatter()
                            ],
                            keyboardType: TextInputType.number,
                            /*  initialValue: widget
                              .tarifEntity.engineCapacityTo
                              .toString(),*/
                            onChanged: (value) {
                              setState(() {
                                this.engineCapacityTo =
                                    int.parse(value.replaceAll(',', ''));
                              });
                            },
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Engine Capacity To -CC',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(),
                              ),
                              contentPadding: EdgeInsets.fromLTRB(
                                  20.0, 5.0, 20.0, 5.0),
                            ),
                          ),
                        ),
                      ])),
                  Container(
                      padding: const EdgeInsets.all(8),
                      child: Row(children: <Widget>[
                        new Flexible(
                          child: DropdownButtonFormField(
                            decoration: const InputDecoration(
                              hintText: 'Choose Year  From -CC',
                              labelText: 'Year From',
                            ),
                            /*  value: widget.tarifEntity.yearFrom ??
                              yearFrom,*/
                            items: [
                              DropdownMenuItem(
                                child: Text("2010"),
                                value: 2010,
                              ),
                              DropdownMenuItem(
                                child: Text("2015"),
                                value: 2015,
                              ),
                              DropdownMenuItem(
                                child: Text("2020"),
                                value: 2020,
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                yearFrom = value;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        new Flexible(
                          child: DropdownButtonFormField(
                            decoration: const InputDecoration(
                              hintText: 'Choose Year To',
                              labelText: 'Year To',
                            ),
                            // value: widget.tarifEntity.yearTo,
                            items: [
                              DropdownMenuItem(
                                child: Text("2010"),
                                value: 2010,
                              ),
                              DropdownMenuItem(
                                child: Text("2015"),
                                value: 2015,
                              ),
                              DropdownMenuItem(
                                child: Text("2020"),
                                value: 2020,
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                yearTo = value;
                              });
                            },
                          ),
                        ),
                      ])),
                  Container(
                      padding: const EdgeInsets.all(8),
                      child: Row(children: <Widget>[
                        new Flexible(
                          child: SearchableDropdown(
                            hint: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text("Choose Vehicle Type"),
                            ),
                            isExpanded: true,
                            searchHint: "Select Vehicle",
                            // value: widget.tarifEntity.makeId,
                            items: _car_makes.map((vehicle) {
                              return new DropdownMenuItem(
                                child: Text('$vehicle'),
                                value: vehicle,
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                makeId = value;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        new Flexible(
                          child: DropdownButtonFormField(
                            // autovalidate: false,
                              decoration: const InputDecoration(
                                hintText: 'Choose Broker',
                                labelText: 'Broker',
                              ),
                            //  value: widget.tarifEntity.brokerName,
                              items: _broker.map((broker) {
                                return new DropdownMenuItem(
                                  child: Text('$broker'),
                                  value: broker,
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  brokerName = value;
                                });
                              },
                          ),
                        ),
                      ])),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: new TextFormField(
                      /* initialValue:
                      widget.tarifEntity.rate.toString(),*/
                        onChanged: (value) {
                          setState(() {
                            this.rate = double.parse(value);
                          });
                        },
                        keyboardType: TextInputType.number,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Tariff Rate -%',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(),
                          ),
                          contentPadding: EdgeInsets.fromLTRB(
                              20.0, 5.0, 20.0, 5.0),
                        )),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    height: 50.0,
                    width: 50.0,
                    margin: EdgeInsets.symmetric(
                        vertical: 50.0, horizontal: 10.0),
                    child: RaisedButton(
                      elevation: 1.0,
                      color: Colors.green,
                      onPressed: () {
                        //call save function here.
                        /* if (widget.action.contains('NEW')) {
                        productId =
                            widget.productEntity.productId;
                      }
                      if (widget.action.contains('UPDATE')) {
                        productId =
                            widget.tarifEntity.productId;
                        if (sumInsuredFrom == null) {
                          sumInsuredFrom =
                              widget.tarifEntity.sumInsuredFrom;
                        }
                        if (sumInsuredTo == null) {
                          sumInsuredTo =
                              widget.tarifEntity.sumInsuredTo;
                        }
                        if (engineCapacityFrom == null) {
                          engineCapacityFrom = widget
                              .tarifEntity.engineCapacityFrom;
                        }
                        if (engineCapacityTo == null) {
                          engineCapacityTo = widget
                              .tarifEntity.engineCapacityTo;
                        }
                        if (yearFrom == null || yearFrom == 0) {
                          yearFrom =
                              widget.tarifEntity.yearFrom;
                        }
                        if (yearTo == null || yearTo == null) {
                          yearTo = widget.tarifEntity.yearTo;
                        }
                        if (makeId == null) {
                          makeId = widget.tarifEntity.makeId;
                        }
                        if (brokerName == null) {
                          brokerName =
                              widget.tarifEntity.brokerName;
                        }
                        if (rate == null || rate == 0) {
                          rate = widget.tarifEntity.rate;
                        }
                      }*/
                        if (_formKey.currentState.validate()) {
                        TariffService()
                              .validateTarifForm(
                             sumInsuredFrom,
                              sumInsuredTo,
                              yearFrom,
                              yearTo,
                              engineCapacityFrom,
                              engineCapacityTo,
                              makeId,
                              brokerName,
                              rate,
                              context,
                              _formKey);

                      }
                      },
                      child: Text(
                        "SAVE",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 17.0,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ]))),
      ),
    );
  }
}
