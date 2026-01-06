abstract class AttendanceStaten {}

class AttendanceInitial extends AttendanceState {}
class AttendanceLoading extends AttendanceState {}
class AttendanceSuccess extends AttendanceState {}
class AttendanceError extends AttendanceState {
    final string message;
    AttendanceError(this.message);
}