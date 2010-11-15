package org.yplanner.domain

class Project {

	// static mapping = {
	// 		projectId generator: 'increment'
	// 	}
	
  static constraints = {
  }

  // currently from xplanner... need to morph to our needs
  Long id
  String name
  Collection iterations = new HashSet()
  Collection notificationReceivers = new TreeSet()
  String description
  boolean archived
  
}
