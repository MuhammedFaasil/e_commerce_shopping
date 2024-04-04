import 'package:e_commerce_app/controller/services/product_api_services.dart';
import 'package:e_commerce_app/utils/api_utils.dart';
import 'package:flutter/material.dart';

class ProductGridviewWidget extends StatelessWidget {
  const ProductGridviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final productApiService = ProductApiService();
    return FutureBuilder(
      future: productApiService.getProducts(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return GridView.builder(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              mainAxisExtent: 140,
            ),
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 6,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10, color: Colors.grey.withOpacity(.30))
                      ]),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    child: Column(
                      children: [
                        Center(
                            child: SizedBox(
                          height: 75,
                          width: 80,
                          child: Image(
                              image: NetworkImage(ApiUtils.productBaseUrl +
                                  snapshot.data![index].image)),
                        )),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  snapshot.data![index].name,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(snapshot.data![index].price.toString()),
                              ],
                            ),
                            const Expanded(child: SizedBox()),
                            Container(
                              height: 20,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: const Color(0xFF17479b),
                              ),
                              child: const Center(
                                child: Text(
                                  'Add',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
