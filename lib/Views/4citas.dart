import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Citas extends StatefulWidget {
  @override
  _CitasState createState() => _CitasState();
}

class _CitasState extends State<Citas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mis Tratamientos'),
      ),
      body: calendario(),
    );
  }

  Widget calendario() {
    return SfCalendar(
      view: CalendarView.month,
      dataSource: MeetingDataSource(obtenerfecha()),
      monthViewSettings: MonthViewSettings(
        showAgenda: true,
        agendaViewHeight: 400,
      ),
    );
  }
}

List<Appointment> obtenerfecha() {
  List<Appointment> tratamientos = <Appointment>[];
  final DateTime hoy = DateTime.now();
  DateTime tiempoinicio = DateTime(hoy.year, hoy.month, hoy.day, 9, 0, 0);
  DateTime tiempofinal = tiempoinicio.add(const Duration(hours: 1));

  tratamientos.add(Appointment(
    startTime: tiempoinicio,
    endTime: tiempofinal,
    subject: 'Tratamiento 1 - Doctor: Juan Perez',
    color: Colors.blue,
  ));

  tiempoinicio = DateTime(hoy.year, hoy.month, hoy.day, 10, 0, 0);
  tiempofinal = tiempoinicio.add(const Duration(hours: 1));

  tratamientos.add(Appointment(
    startTime: tiempoinicio,
    endTime: tiempofinal,
    subject: 'Tratamiento 2 - Doctor: Juan Perez',
    color: Colors.red,
  ));

  tiempoinicio = DateTime(hoy.year, hoy.month, hoy.day, 13, 0, 0);
  tiempofinal = tiempoinicio.add(const Duration(hours: 1));

  tratamientos.add(Appointment(
    startTime: tiempoinicio,
    endTime: tiempofinal,
    subject: 'Tratamiento 3 - Doctor: Juan Perez',
    color: Colors.purple[400],
  ));

  return tratamientos;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> fuente) {
    appointments = fuente;
  }
}
