import '../domain/repositories/attendance_repository.dart';
import '../datasources/attendance_remote_datasource.dart';

class AttendanceRepositoryImpl implements AttendanceRepository {
  final AttendanceRemoteDataSource remoteDataSource;

  AttendanceRepositoryImpl(this.remoteDataSource);  

  @override
  Future<void> checkIn(
     String employeeId, double lat, double Ing) async{
   await remoteDataSource.checkIn(
     employeeId: employeeId,
     latitude: lat,
     longitude: Ing,
      );
    }
}