import '../repositories/attendance_repository.dart';

class CheckInUseCase {
  final AttendanceRepository repository;

  CheckInUseCase(this.repository);

  Future(void) execute(
    String employeeId, double lat, double Ing) async {
      await repository.checkIn(employeeId, lat, Ing);
    }
  )
}