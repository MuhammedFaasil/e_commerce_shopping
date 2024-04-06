import 'package:dio/dio.dart';
import 'package:e_commerce_app/model/customers_model.dart';
import 'package:e_commerce_app/utils/api_utils.dart';

class CustomerSearchApiService {
  final Dio dio = Dio();

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
        return data;
      } else {
        throw Exception('failed');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
