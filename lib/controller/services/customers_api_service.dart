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
}