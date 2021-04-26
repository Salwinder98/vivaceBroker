import 'package:bima/Products/Service/ProductService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AddProduct extends StatefulWidget {
@override
_AddProductUIState createState() => _AddProductUIState();
}

class _AddProductUIState extends State<AddProduct> {
  final _formKey = GlobalKey<FormState>();
  List _productcategory = ['Motor Private','Motor Commercial'];
  String productCode, productName, productStatus, productCategoryName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("Products"),
        automaticallyImplyLeading: true


      ),
      body: Container(
          padding: const EdgeInsets.all(25.0),
          child: Form(
            key: _formKey,
            child: Center(
              child: Container(
                height: 800,
                width: 600,
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          ' ',
                          style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextFormField(
                          // initialValue: widget.productEntity.productCode,
                          decoration: const InputDecoration(
                            hintText: 'Enter Product Code',
                            labelText: 'Product Code',
                          ),
                          validator: (value) {
                            if (value == null) {
                              return 'Please Enter Product Code';
                            } else {
                              return null;
                            }
                          },
                          /*  onSaved: (input) => productCode = input,
                      onChanged: (value) {
                        this.productCode = value;
                      },*/
                        ),
                        TextFormField(
                          //  initialValue: widget.productEntity.productName,
                          decoration: const InputDecoration(
                            hintText: 'Enter Product Name',
                            labelText: 'Product Name',
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please Enter Product Name';
                            }
                            return null;
                          },
                           onSaved: (input) => productName = input,
                      onChanged: (value) {
                        this.productName = value;
                      },
                        ),
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Container(
                            child: DropdownButtonFormField(
                              decoration: const InputDecoration(
                                hintText: 'Choose Product Category',
                                labelText: 'Category',
                              ),
                              // value: widget.productEntity.productCategoryName,
                              items: _productcategory.map((productCategory) {
                            return new DropdownMenuItem(
                              child: Text('$productCategory'),
                              value: productCategory,
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              productCategoryName = value;
                            });
                          },
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Container(
                            child: DropdownButtonFormField(
                              decoration: const InputDecoration(
                                hintText: 'Choose Product Status',
                                labelText: 'Status',
                              ),
                              // value: widget.productEntity.productStatus,
                          items: [
                            DropdownMenuItem(
                              child: Text("ENABLED"),
                              value: 'ENABLED',
                            ),
                            DropdownMenuItem(
                              child: Text("DISABLED"),
                              value: 'DISABLED',
                            ),
                          ],
                          onChanged: (value) {
                            setState(() {
                              productStatus = value;
                            });
                          },
                            ),
                          ),
                        ),
                        Center(
                          child: new Container(

                            //padding: const EdgeInsets.only(left: 150.0, top: 40.0),

                              child: new RaisedButton(
                                color: Colors.green,
                                child: const Text(
                                  'SAVE',
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {

                              /*  if (productCode == null) {
                                  productCode = widget
                                      .productEntity.productCode
                                      .toString();
                                }
                                if (productName == null) {
                                  productName = widget
                                      .productEntity.productName
                                      .toString();
                                }
                                if (productCategoryName == null) {
                                  productCategoryName = widget
                                      .productEntity.productCategoryName;
                                }
                                if (productStatus == null) {
                                  productStatus = widget
                                      .productEntity.productStatus
                                      .toString();
                                }*/

                              if (_formKey.currentState.validate()) {
                                ProductService().saveProduct('Motor', productName,  productCategoryName, productStatus);

                                }
                              }

                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
      ),

    );
  }
}
