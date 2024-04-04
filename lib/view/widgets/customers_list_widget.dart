import 'package:e_commerce_app/controller/services/customers_api_service.dart';
import 'package:flutter/material.dart';

class CustomersListViewWidget extends StatelessWidget {
  const CustomersListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final customerApiService = CustomerApiService();
    return FutureBuilder(
      future: customerApiService.getCustomers(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.separated(
            physics: const ClampingScrollPhysics(),
            shrinkWrap: true,
            itemCount: 8,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(16),
                height: 115,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 7,
                          spreadRadius: 1),
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 80,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.red),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Center(
                      child: Container(
                        width: .8,
                        height: 70,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                              Colors.transparent,
                              Colors.grey,
                              Colors.transparent
                            ])),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          snapshot.data![index].name!,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          "ID : ${snapshot.data![index].id}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                        Text(
                          snapshot.data![index].street!,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                        RichText(
                            text: const TextSpan(
                                text: 'Due Amount:',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                children: [
                              TextSpan(
                                  text: ' \$500',
                                  style: TextStyle(color: Colors.red))
                            ]))
                      ],
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const CircleAvatar(
                            radius: 10,
                            backgroundColor: Color(0xFF17479b),
                            child: Center(
                              child: Icon(
                                Icons.phone,
                                color: Colors.white,
                                size: 13,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            'asset/images/whatsapp_icon.png',
                            height: 20,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
              height: 16,
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
