// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/controller/bloc/customer_bloc/customers_bloc_state.dart';
import 'package:e_commerce_app/controller/services/customers_api_service.dart';
import 'package:e_commerce_app/model/customers_model.dart';

sealed class CustomersEvent {}

class GetCustomersEvent implements CustomersEvent {}

class SearchCustomersEvent implements CustomersEvent {
  final String? serchText;

  SearchCustomersEvent(this.serchText);
}

class AddNewCustomer implements CustomersEvent {
  final CustomersModel? model;

  AddNewCustomer(this.model);
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
    on<AddNewCustomer>((event, emit) async {
      final model = event.model;
      await addCustomer(emit, model!);
      await fetchCustomers(emit);
    });
  }

  Future<void> fetchCustomers(Emitter<CustomersState> emit) async {
    try {
      final customers = await CustomerApiService().getCustomers();
      emit(state.copyWith(customers: customers));
    } catch (e) {
      log(e.toString());
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<void> searchCustomers(
      Emitter<CustomersState> emit, String name) async {
    try {
      final searchCustomer = await CustomerApiService().searchCustomers(name);
      emit(state.copyWith(customers: searchCustomer));
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<void> addCustomer(
      Emitter<CustomersState> emitter, CustomersModel model) async {
    try {
      await CustomerApiService().addNewCustomer(model);
    } catch (e) {
      log(e.toString());
      emit(state.copyWith(error: e.toString()));
    }
  }
}
