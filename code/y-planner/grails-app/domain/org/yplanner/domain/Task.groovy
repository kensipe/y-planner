package org.yplanner.domain

class Task {

  static constraints = {
  }

  int acceptorId
  int pairId
  String name
  String description
  int completionFlag
  String type
  String disposition
  double originalEstimatedHours
  double estimatedHours
  Date createdDate
  Story story
  Collection timeEntries = new HashSet()
}
