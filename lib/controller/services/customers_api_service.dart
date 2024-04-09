import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:e_commerce_app/model/customers_model.dart';
import 'package:e_commerce_app/utils/api_utils.dart';

class CustomerApiService {
  final Dio dio = Dio();

  Future<List<CustomersModel>> getCustomers() async {
    try {
      Response response = await dio.get(ApiUtils.customersBaseUrl);
      if (response.statusCode == 200) {
        final data = response.data;
        final datas = <CustomersModel>[];
        for (var customer in data['data']) {
          datas.add(CustomersModel.fromJson(customer));
        }
        return datas;
      } else {
        throw Exception('Failed');
      }
    } catch (e) {
      throw Exception('Failed to fetch products $e');
    }
  }

  Future<List<CustomersModel>> searchCustomers(String name) async {
    try {
      Response response = await dio
          .get(ApiUtils.customersBaseUrl + ApiUtils.searchCustomerUrl + name);
      if (response.statusCode == 200) {
        final data = response.data;
        final datas = <CustomersModel>[];
        for (var customer in data['data']) {
          datas.add(CustomersModel.fromJson(customer));
        }
        return datas;
      } else {
        throw Exception('failed');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> addNewCustomer(CustomersModel model) async {
    try {
      final dio = Dio(BaseOptions(
        validateStatus: (_) => true,
      ));
      const baseUrl = 'http://143.198.61.94/api/customers/';

      dio.options.baseUrl = baseUrl;

      final data = {
        "name": model.name,
        "profile_pic": model.profilePic,
        "mobile_number": model.mobileNumber,
        "email": model.email,
        "street": model.street,
        "street_two": model.streetTow,
        "city": model.city,
        "pincode": model.pincode,
        "country": model.country,
        "state": model.state,
      };

      final response = await dio.post(
        baseUrl,
        data: data,
      );

      if (response.statusCode == 201) {
        log('Customer added successfully!');
      } else {
        log('Error adding customer: ${response.statusCode}');
        log('${response.data}');
      }
    } catch (error) {
      log('Error: $error');
    }
  }
}
