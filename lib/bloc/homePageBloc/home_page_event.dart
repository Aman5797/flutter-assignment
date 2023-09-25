part of 'home_page_bloc.dart';

abstract class HomePageEvent extends Equatable {
  const HomePageEvent();

  @override
  List<Object> get props => [];
}

class GetProductsList extends HomePageEvent {
  const GetProductsList();
}

class GetMoreProductsList extends HomePageEvent {
  const GetMoreProductsList();
}
