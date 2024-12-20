import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:engv1/student_notifications/starred.dart';
import 'package:engv1/student_notifications/old.dart';
import 'package:engv1/student_notifications/new.dart';
import 'package:engv1/student/notification_list.dart';
import 'package:firebase_core/firebase_core.dart';

class NotificaitonsPage extends StatefulWidget  {
  const NotificaitonsPage({Key? key}) : super(key: key);

  @override
  _NotificaitonsPageState createState() => _NotificaitonsPageState();
}

class _NotificaitonsPageState extends State<NotificaitonsPage> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          tabs: [
            Tab(text: "New"),
            Tab(text: "Starred"),
            Tab(text: "Old"),
          ],
        )
      ),

    body: TabBarView(
        controller: _tabController,
        children: const [
          Center(
              child: NewNotificationPage()),
          Center(
              child: StarredNotificationsPage()),
          Center(
              child: DeletedNotificationsPage()),

        ],
      ),

    );
  }
}