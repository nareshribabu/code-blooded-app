library my_project.fullplanbackend;

extension Ex on double {
  double toPrecision(int n) => double.parse(toStringAsFixed(n));
}

//Variables to get information from the screen
List <String> daysPerWeek; //Monday, Tuesday, etc.

List <DateTime> startEndDates;

//using the start and end dates and how many days per week they are available calculate the total available days
int availableDays;

// Total Available hours: based on hours per day and the total available days
double totalAvailableHours;
int hours;
int minutes;

//Slider numbers
List<int> sliderNumbers = [0, 0, 0, 0, 0, 0, 0];

//Time per each topic based on sliders
List<double> listOfTimeForEachTopic;

// Output Time
List<List<int>> outputTime = [[0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0]];

//Review Days
List<int> reviewTime = [0, 0];


class FullPlanBackend {


  // Given the start date and end date, this function calculates how many days of a particular day are in that date range
  int totalDays (int startYear, int startMonth, int startDay, int endYear, int endMonth, int endDay, int dayOfTheWeek) {

    // take in as arguments the start date and end date
    DateTime startDate = DateTime.utc(startYear, startMonth, startDay);
    DateTime endDate = DateTime.utc(endYear, endMonth, endDay);

    DateTime currentDay = startDate;

    int totalDaysVar = 0;

    while(currentDay.isBefore(endDate)) {

      if (currentDay.weekday == dayOfTheWeek) {
        print("Current Day: ${currentDay}");
        totalDaysVar += 1;
      }
      currentDay = currentDay.add(Duration(days: 1));

    }

    if (currentDay.weekday == dayOfTheWeek) {
      print("Current Day: ${currentDay}");
      totalDaysVar += 1;
    }


    return totalDaysVar;
  }

// Convert Days to Int
  int convertDaysToInts (String whichDay) {

    int day = 0;

    if (whichDay == "Monday") {
      day = 1;
    }
    else if (whichDay == "Tuesday") {
      day = 2;
    }
    else if (whichDay == "Wednesday") {
      day = 3;
    }
    else if (whichDay == "Thursday") {
      day = 4;
    }
    else if (whichDay == "Friday") {
      day = 5;
    }
    else if (whichDay == "Saturday") {
      day = 6;
    }
    else if (whichDay == "Sunday") {
      day = 7;
    }


    return day;

  }

// Gets the total amount of available days
//Will eventually require date input
//Count how many days there are in the given time (how many mondays are in the between the 2 days)
  int totalAvailableDays (List<String> list, int startYear, int startMonth, int startDay, int endYear, int endMonth, int endDay) {


    int totalAvailDays = 0;
    int days = 0;
    int dayOfWeek = 0;
    // int i = 0;

    // for (var i = 0; i < list.length; i++) {
    for (var i in list) {

      dayOfWeek = convertDaysToInts (i);

       print("Day: ${i}");

      days = totalDays(startYear, startMonth, startDay, endYear, endMonth, endDay, dayOfWeek);
      print("Total Days in the time period: ${i}: ${days}");

      totalAvailDays = totalAvailDays + days;


    }


    return totalAvailDays;

  }

//Get the total hours per day
  double totalHours (int totalDays, int hours, int minutes) {

    double totalHours = 0;

    double time = hours + (minutes / 60);

    totalHours = totalDays * time;


    return totalHours;

  }

//Sliders stats are used to calculate time per each topic
  List<double> timePerEachTopic (List<int> sliders, double totalHours) {

    List<double> returnList = [0, 0, 0, 0, 0, 0, 0];
    List<double> percentages = [0.24, 0.20, 0.16, 0.12, 0.08, 0.04];


    for (int i = 0; i < sliders.length; i++) {

      returnList[i] = totalHours * percentages[sliders[i]];

    }


    return returnList;

  }


//Convert to hours and minutes from a double number
  List <int> listOfHoursAndMinutes (double time) {

    List<int> returnList = [0, 0];

    //2.54
    print(time.floor());
    returnList[0] = time.floor();

    returnList[1] = ((time - time.floor()) * 60).ceil();

    return returnList;

  }

//Total of all the times in the topics and calculates how much review time there is
  double reviewDays (List<double> times, double availableTime) {

    double reviewTime = 0;
    double total = 0;


    for (int i = 0; i < times.length; i++) {

      total = total + times[i];

    }

    print("Total: ${total}");
    print("Available Time: ${availableTime}");

    reviewTime = availableTime - total;

    print("Review Time: ${reviewTime}");

    if (reviewTime < 0) {
      reviewTime = 0;
    }


    return reviewTime;
  }



// Setters and getter for daysPerWeek
  List<String> getdaysPerWeek () {
    return daysPerWeek;
  }

  void setdaysPerWeek (List<String> itsAList) {
    daysPerWeek = itsAList;
  }

// Setters and getter for startEndDates
  List<DateTime> getstartEndDates () {
    return startEndDates;
  }

  void setstartEndDates (List<DateTime> itsAList) {
    startEndDates = itsAList;
  }

  //Setters and getter for availableDays
  int getavailableDays () {
    return availableDays;
  }


  void setavailableDays (List<String> days, int startYear, int startMonth, int startDay, int endYear, int endMonth, int endDay) {
    availableDays = totalAvailableDays (days, startYear, startMonth, startDay, endYear, endMonth, endDay);
  }

  //Setters and getter for totalAvailableHours
  double getTotalAvailableHours () {
    return totalAvailableHours;
  }

  void setTotalAvailablehours (int hours, int minutes) {
    totalAvailableHours = totalHours (availableDays, hours, minutes);
  }

  //Set and get hours
  int getHours () {
    return hours;
  }

  //Set and get minutes
  void setHours (int sent) {
    hours = sent;
  }

  //Set and get minutes
  int getMinutes () {
    return minutes;
  }

  //Set and get minutes
  void setMinutes (int sent) {
    minutes = sent;
  }

  //Slider getters and setters
  List<int> getSliderNumbersArrays () {
    return sliderNumbers;
  }

  void setSliderNumbers (int value, int index) {
    sliderNumbers[index] = value;
  }

  //Time for each topic based on sliders
  List<double> getListOfTimeForEachTopic () {
    return listOfTimeForEachTopic;
  }

  void setListOfTimeForEachTopic () {
    listOfTimeForEachTopic = timePerEachTopic (sliderNumbers, totalAvailableHours);
  }

  //Output Time for each topic
  List<List<int>> getOutputTime () {
    return outputTime;
  }

  List<List<int>> outputTime = [[0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0]];
  void setOutputTime () {
    for (int i = 0; i < listOfTimeForEachTopic.length; i++) {
      outputTime[i] = listOfHoursAndMinutes(listOfTimeForEachTopic[i]);
    }
  }

  //Review Time Setters and Getters
  List<int> getReviewTime () {
    return reviewTime;
  }

  void setReviewTime () {
     double review = reviewDays (listOfTimeForEachTopic, totalAvailableHours);

     reviewTime = listOfHoursAndMinutes(review);
     print(listOfHoursAndMinutes(review));

  }

// void main() {
//     print(finalHoursAndMinutes);
// }

// void main() {
//
//   int availableDays = 0;
//   int days = 0;
//
//   double availableHours = 0;
//
//   List<String> daysOfTheWeek = ["Monday", "Friday", "Sunday"];
//
//   availableDays = totalAvailableDays (daysOfTheWeek);
//   print("This is how many days are actually available:");
//   print(availableDays);
//
//   availableHours = totalHours (availableDays, 2, 0);
//   print("This is how many hours the user is available:");
//   print(availableHours);
//
//   //In this order: Arrays, LinkedList, Graphs, Strings, Sorting, Hashmaps, Trees
//   List<int> sliderNumbers = [5, 2, 3, 4, 2, 2, 0];
//
//   //In order: time for each topic
//   List<double> listOfTimeForEachTopic = timePerEachTopic (sliderNumbers, availableHours);
//
//   print(listOfTimeForEachTopic);
//
//   List <int> properTime = [0,0];
//   for (int i = 0; i < listOfTimeForEachTopic.length; i++) {
//     properTime = listOfHoursAndMinutes(listOfTimeForEachTopic[i]);
//     print(properTime);
//   }
//
//
//   double review = reviewDays (listOfTimeForEachTopic, availableHours);
//   print(review);
//
//   print(listOfHoursAndMinutes(review));
//
// }


}