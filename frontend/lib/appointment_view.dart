import 'package:flutter/material.dart';
import 'package:frontend/appointment.dart';
import 'appointment.dart';

class AppointmentView extends StatefulWidget {
  final appointments;

  AppointmentView(this.appointments);

  @override
  State<AppointmentView> createState() => _AppointmentViewState();
}

class _AppointmentViewState extends State<AppointmentView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: widget.appointments.length * 2,
      itemBuilder: ((context, i) {
        if (i.isOdd) {
          return Container(height: 10, color: Colors.white);
        }

        final index = i ~/ 2;
        return widget.appointments[index];
      }),
    );
  }
}
