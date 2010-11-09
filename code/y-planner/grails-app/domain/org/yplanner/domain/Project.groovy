package org.yplanner.domain

class Project {

  static constraints = {
  }

  // currently from xplanner... need to morph to our needs
  Long projectId
  String name
  Collection iterations = new HashSet()
  Collection notificationReceivers = new TreeSet()
  String description
  boolean archived
  
}
