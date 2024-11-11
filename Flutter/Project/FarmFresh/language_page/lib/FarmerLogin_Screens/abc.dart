import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AvailabilitySchedulePage(),
    );
  }
}

class DayAvailability {
  DateTime date;
  TimeOfDay? startTime;
  TimeOfDay? endTime;
  bool isDayOff;

  DayAvailability({
    required this.date,
    this.startTime,
    this.endTime,
    this.isDayOff = false,
  });
}

class AvailabilitySchedulePage extends StatefulWidget {
  @override
  _AvailabilitySchedulePageState createState() =>
      _AvailabilitySchedulePageState();
}

class _AvailabilitySchedulePageState extends State<AvailabilitySchedulePage> {
  Map<DateTime, DayAvailability> schedule = {};
  DateTime _selectedDay = DateTime.now();

  Future<void> _pickTime(DayAvailability availability, bool isStartTime) async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (pickedTime != null) {
      setState(() {
        if (isStartTime) {
          availability.startTime = pickedTime;
        } else {
          availability.endTime = pickedTime;
        }
      });
    }
  }

  void _toggleDayOff(DayAvailability availability) {
    setState(() {
      availability.isDayOff = !availability.isDayOff;
      if (availability.isDayOff) {
        availability.startTime = null;
        availability.endTime = null;
      }
    });
  }

  void _saveSchedule(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ScheduleSummaryPage(schedule: schedule),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Availability Schedule"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.green.shade400, Colors.green.shade800],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: TableCalendar(
              focusedDay: _selectedDay,
              firstDay: DateTime.now().subtract(Duration(days: 30)),
              lastDay: DateTime.now().add(Duration(days: 365)),
              calendarFormat: CalendarFormat.month,
              selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  if (!schedule.containsKey(_selectedDay)) {
                    schedule[_selectedDay] =
                        DayAvailability(date: _selectedDay);
                  }
                });
              },
              calendarStyle: CalendarStyle(
                todayDecoration: const BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                ),
                selectedDecoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.green, width: 2),
                ),
                defaultTextStyle: TextStyle(color: Colors.white),
                weekendTextStyle: TextStyle(color: Colors.redAccent),
              ),
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                leftChevronIcon: Icon(Icons.chevron_left, color: Colors.white),
                rightChevronIcon:
                    Icon(Icons.chevron_right, color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: schedule.containsKey(_selectedDay)
                ? buildAvailabilityCard(schedule[_selectedDay]!)
                : Center(
                    child: Text(
                      "Select a date to set availability",
                      style: TextStyle(color: Colors.green, fontSize: 16),
                    ),
                  ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () => _saveSchedule(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade800,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                child: Text(
                  "Save & View Schedule",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildAvailabilityCard(DayAvailability availability) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.calendar_today, color: Colors.green),
                    SizedBox(width: 8),
                    Text(
                      "${availability.date.toLocal()}".split(' ')[0],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    Spacer(),
                    Checkbox(
                      value: availability.isDayOff,
                      onChanged: (_) => _toggleDayOff(availability),
                      activeColor: Colors.green,
                    ),
                    Text("Day Off"),
                  ],
                ),
                if (!availability.isDayOff)
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("Start: ", style: TextStyle(fontSize: 16)),
                          TextButton(
                            onPressed: () => _pickTime(availability, true),
                            child: Text(
                              availability.startTime?.format(context) ??
                                  "Select",
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("End: ", style: TextStyle(fontSize: 16)),
                          TextButton(
                            onPressed: () => _pickTime(availability, false),
                            child: Text(
                              availability.endTime?.format(context) ?? "Select",
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ScheduleSummaryPage extends StatelessWidget {
  final Map<DateTime, DayAvailability> schedule;

  ScheduleSummaryPage({required this.schedule});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Saved Schedule"),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: schedule.keys.length,
        itemBuilder: (context, index) {
          final date = schedule.keys.elementAt(index);
          final availability = schedule[date]!;

          return Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: Icon(Icons.date_range, color: Colors.green),
              title: Text("${date.toLocal()}".split(' ')[0],
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: availability.isDayOff
                  ? Text("Day Off", style: TextStyle(color: Colors.redAccent))
                  : Text(
                      "Start: ${availability.startTime?.format(context) ?? 'Not Set'}, "
                      "End: ${availability.endTime?.format(context) ?? 'Not Set'}",
                      style: TextStyle(color: Colors.black54),
                    ),
            ),
          );
        },
      ),
    );
  }
}
