ElevatedButton(
  onPressed: () {
    context.read<AttendanceViewModel>().checkIn();
    },
    child:  Text("Check In"),
);