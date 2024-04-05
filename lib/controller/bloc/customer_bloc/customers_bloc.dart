import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/controller/bloc/customer_bloc/customers_bloc_state.dart';
import 'package:e_commerce_app/controller/services/customers_api_service.dart';

sealed class CustomersEvent {}

class GetCustomersEvent implements CustomersEvent {}

class CustomersBloc extends Bloc<CustomersEvent, CustomersState> {
  bool streamLoaded = false;
  CustomersBloc()
      : super(
          CustomersState(customers: null, error: null),
        ) {
    on<GetCustomersEvent>((event, emit) async {
      await fetchCustomers(emit);
    });
  }

  Future<void> fetchCustomers(Emitter<CustomersState> emit) async {
    try {
      final customers = await CustomerApiService().getCustomers();
      emit(state.copyWith(customers: customers));
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }
}
