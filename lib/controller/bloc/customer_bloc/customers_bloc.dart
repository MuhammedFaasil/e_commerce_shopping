import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/controller/bloc/customer_bloc/customers_bloc_state.dart';
import 'package:e_commerce_app/controller/services/customers_api_service.dart';
import 'package:e_commerce_app/controller/services/customers_search_service.dart';

sealed class CustomersEvent {}

class GetCustomersEvent implements CustomersEvent {}

class SearchCustomersEvent implements CustomersEvent {
  final String? serchText;

  SearchCustomersEvent(this.serchText);
}

class CustomersBloc extends Bloc<CustomersEvent, CustomersState> {
  CustomersBloc()
      : super(
          CustomersState(customers: null, error: null),
        ) {
    on<GetCustomersEvent>((event, emit) async {
      await fetchCustomers(emit);
    });
    on<SearchCustomersEvent>(
      (event, emit) async {
        final searchText = event.serchText;
        await searchCustomers(emit, searchText!);
      },
    );
  }

  Future<void> fetchCustomers(Emitter<CustomersState> emit) async {
    try {
      final customers = await CustomerApiService().getCustomers();
      emit(state.copyWith(customers: customers));
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<void> searchCustomers(
      Emitter<CustomersState> emit, String name) async {
    try {
      final searchCustomer =
          await CustomerSearchApiService().searchCustomers(name);
      emit(state.copyWith(customers: searchCustomer));
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }
}
