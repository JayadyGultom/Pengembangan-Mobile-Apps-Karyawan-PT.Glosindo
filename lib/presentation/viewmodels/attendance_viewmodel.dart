import '../state/attendance_state.dart';
import '../../domain/usecases/check_in_usecase.dart';
import 'package:flutter/material.dart';

class AttendanceViewModel extends ChangeNotifier{
  AttendanceState state = AttendanceInitial();
  final CheckInUseCase checkInUseCase;

  AttendanceViewModel(this.checkInUseCase);

  Future<void> checkIn() async {
    state = AttendanceLoading();
    notifyListeners();

    try {
      await checkInUseCase.execute(
        "EMP001",
        -6.59,
        106.81,
      );
      state = AttendanceSuccess();
    } catch (e) {
      state = AttendanceError("gagal check-in");
    }

    notifyListeners();
  }
}