package org.yplanner.domain

class Iteration {

    static constraints = {
    }

  Long id
  long projectId
  String title
  String description
  String name
//  IterationStatus status
  java.util.Date startDate 
  java.util.Date endDate 
  Collection userStories = new HashSet() 
  double daysWorked 
  double estimatedHours 
  double actualHours

}
