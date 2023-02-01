import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/plan.dart';

class Plans with ChangeNotifier {
  final List<Plan> plans = [
    Plan(id: 1, title: 'Flu'),
    Plan(id: 2, title: 'Headache'),
    Plan(id: 3, title: 'Stomachache')
  ];
}
