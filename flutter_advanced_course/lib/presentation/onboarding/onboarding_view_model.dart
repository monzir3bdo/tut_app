import 'package:flutter_advanced_course/presentation/base/base_view_model.dart';

class OnBoardingViewModel extends BaseViewModel
    with OnBoardingViewModelInputs, OnBoardingViewModelOutputs {
  @override
  start() {}
  @override
  dispose() {}
  @override
  goNext() {}
  @override
  goPrevious() {}
  @override
  onChanged(int index) {}
}

abstract class OnBoardingViewModelInputs {
  void goNext() {}
  void goPrevious() {}
  void onChanged(int index) {}
}

abstract class OnBoardingViewModelOutputs {}
