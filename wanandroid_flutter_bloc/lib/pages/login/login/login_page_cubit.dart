import 'package:bloc/bloc.dart';

import 'login_page_state.dart';

class LoginPageCubit extends Cubit<LoginPageState> {
  LoginPageCubit() : super(LoginPageState().init());
}
