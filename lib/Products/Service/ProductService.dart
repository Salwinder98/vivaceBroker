import 'package:bima/Common/Model/CollectionModel.dart';
import 'package:bima/Products/Model/ProductModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class ProductService{
CollectionModel _collectionModel = new CollectionModel();
ProductModel _productModel = new ProductModel();


  saveProduct(
      String productCode,
      String productName,
      String productCategoryName,
      String productStatus){

try{
    FirebaseFirestore.instance
        .collection(CollectionModel().products)
        .get()
        .then((querySnapshot) {
      querySnapshot.docs.forEach((result) {
        var resultID= result["ProductId"].toString();
        var docId= int.parse(resultID)+1;

        FirebaseFirestore.instance
            .collection(_collectionModel.products)
            .doc(docId.toString())
            .set({
          _productModel.productId:docId,
          _productModel.productCode:productCode,
          _productModel.productName:productName,
          _productModel.productCategoryId:docId,
          _productModel.productCategoryName:productCategoryName,
          _productModel.productStatus:productStatus

        });
      });
    });
} catch (e) {
  print(e);
}

  }

}
