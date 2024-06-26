import 'package:dio/dio.dart';
import 'package:e_commerce_app/model/product_model.dart';
import 'package:e_commerce_app/utils/api_utils.dart';

class ProductApiService {
  final Dio dio = Dio();

  Future<List<Products>> getProducts() async {
    try {
      Response response = await dio.get(ApiUtils.productBaseUrl);
      if (response.statusCode == 200) {
        final data = response.data;
        final datas = <Products>[];
        for (var product in data['data']) {
          datas.add(Products.fromJson(product));
        }
        return datas;
      } else {
        throw Exception('Failed');
      }
    } catch (e) {
      throw Exception('Failed to fetch products $e');
    }
  }

  
  Future<List<Products>> searchCustomers(String name) async {
    try {
      Response response = await dio
          .get(ApiUtils.productBaseUrl + ApiUtils.searchCustomerUrl + name);
      if (response.statusCode == 200) {
        final data = response.data;
        final datas = <Products>[];
        for (var customer in data['data']) {
          datas.add(Products.fromJson(customer));
        }
        return datas;
      } else {
        throw Exception('failed');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
