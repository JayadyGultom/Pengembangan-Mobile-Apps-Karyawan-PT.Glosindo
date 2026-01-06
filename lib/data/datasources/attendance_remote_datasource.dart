import '../network/api_client.dart';
import '../network/api_endpoint.dart';

class attendanceRemoteDataSource {
  final ApiClient apiclient;

  AttendanceRemoteDataSource(this.apiClient);

  Future<void> checkIn({
    required String employeeId,
    required double latitude,
    required double longitude,
  }) async {
    await apiClient.dio.post(
      ApiEndpoint.checkin,
      data: {
        "employee_id": employeeId,
        "latitude": latitude,
        "longitude": longitude,
      },
    );
  }
}