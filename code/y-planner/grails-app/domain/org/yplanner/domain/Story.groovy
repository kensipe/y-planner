package org.yplanner.domain

class Story {

    static constraints = {
    }
  
   String name
   String description
   int trackerId
   int iterationId
   Collection tasks = new HashSet()
   Collection features = new HashSet()
//   Person customer
  // I want flexability here... it can be assigned to a person in the project... or just be text of the name (which should be remembered for future entry)
  
   double estimatedHours
   double estimatedHoursCache
   double actualHours
   double postponedHours
   double tasksEstimateAtIterationStart
   int priority
  
//   Disposition disposition = Disposition.PLANNED
  
}
