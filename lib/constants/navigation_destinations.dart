import 'package:flutter/material.dart';

import '/constants/route_constants.dart';
import '/models/nav_item.dart';

List<NavItem> destinations = [
  NavItem(
    route: RouteConstants.homeScreen,
    label: 'Home',
    icon: Icon(Icons.home),
  ),
  NavItem(
    route: RouteConstants.emailTemplateScreen,
    label: 'Email Template',
    icon: Icon(Icons.email),
  ),
  NavItem(
    route: RouteConstants.slotConfigurationScreen,
    label: 'Slot Configuration',
    icon: Icon(Icons.lock_clock_rounded),
  ),
  NavItem(
    route: RouteConstants.partiesScreen,
    label: 'Parties',
    icon: Icon(Icons.group),
  ),
];
