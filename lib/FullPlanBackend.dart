library my_project.fullplanbackend;

// Backend implementation of the full plan component logic of code-blooded

extension Ex on double {
  double toPrecision(int n) => double.parse(toStringAsFixed(n));
}

// Variables to get information from the screen
List<String> daysPerWeek; //Monday, Tuesday, etc.

List<DateTime> startEndDates;

// using the start and end dates and how many days per week they are available calculate the total available days
int availableDays;

// Total Available hours: based on hours per day and the total available days
double totalAvailableHours;
int hours;
int minutes;

// Slider numbers
List<int> sliderNumbers = [0, 0, 0, 0, 0, 0, 0];

// Time per each topic based on sliders
List<double> listOfTimeForEachTopic;

// Output Time
List<List<int>> outputTime = [
  [0, 0],
  [0, 0],
  [0, 0],
  [0, 0],
  [0, 0],
  [0, 0],
  [0, 0]
];

//Review Days
List<int> reviewTime = [0, 0];

// My Progress Link to the checklist
double arrayProgress = 0.9;

bool checked;

class FullPlanBackend {
  // Given the start date and end date, this function calculates how many days of a particular day are in that date range
  int totalDays(int startYear, int startMonth, int startDay, int endYear,
      int endMonth, int endDay, int dayOfTheWeek) {
    // take in as arguments the start date and end date
    DateTime startDate = DateTime.utc(startYear, startMonth, startDay);
    DateTime endDate = DateTime.utc(endYear, endMonth, endDay);

    DateTime currentDay = startDate;

    int totalDaysVar = 0;

    while (currentDay.isBefore(endDate)) {
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
  int convertDaysToInts(String whichDay) {
    int day = 0;

    if (whichDay == "Monday") {
      day = 1;
    } else if (whichDay == "Tuesday") {
      day = 2;
    } else if (whichDay == "Wednesday") {
      day = 3;
    } else if (whichDay == "Thursday") {
      day = 4;
    } else if (whichDay == "Friday") {
      day = 5;
    } else if (whichDay == "Saturday") {
      day = 6;
    } else if (whichDay == "Sunday") {
      day = 7;
    }

    return day;
  }

// Gets the total amount of available days
// Will eventually require date input
//  Count how many days there are in the given time (how many mondays are in the between the 2 days)
  int totalAvailableDays(List<String> list, int startYear, int startMonth,
      int startDay, int endYear, int endMonth, int endDay) {
    int totalAvailDays = 0;
    int days = 0;
    int dayOfWeek = 0;
    // int i = 0;

    // for (var i = 0; i < list.length; i++) {
    for (var i in list) {
      dayOfWeek = convertDaysToInts(i);

      print("Day: ${i}");

      days = totalDays(startYear, startMonth, startDay, endYear, endMonth,
          endDay, dayOfWeek);
      print("Total Days in the time period: ${i}: ${days}");

      totalAvailDays = totalAvailDays + days;
    }

    return totalAvailDays;
  }

// Get the total hours per day
  double totalHours(int totalDays, int hours, int minutes) {
    double totalHours = 0;

    double time = hours + (minutes / 60);

    totalHours = totalDays * time;

    return totalHours;
  }

// Sliders stats are used to calculate time per each topic
  List<double> timePerEachTopic(List<int> sliders, double totalHours) {
    List<double> returnList = [0, 0, 0, 0, 0, 0, 0];
    // List<double> percentages = [0.24, 0.20, 0.16, 0.12, 0.08, 0.04];

    // Percentages are 14% for 0 on the slider so if they pick 0 7 times it won't go over the time they have
    List<double> percentages = [0.14, 0.12, 0.10, 0.08, 0.05, 0.03];

    int countzeros = 0;

    // Count how many 0s are in the sliders
    for (var s in sliders) {
      if (s == 0) {
        countzeros = countzeros + 1;
      }
    }

    if (countzeros < 7) {
      // if its less than 7 that means that the sliders are not all 0s
      for (int i = 0; i < sliders.length; i++) {
        returnList[i] = totalHours * percentages[sliders[i]];
      }
    } else {
      // Sliders are all 0s, make all the time allocated to all the subjects equal to 10%

      // 10% because this will allow the user to see what they know and then with the remaining review time they can study what they are weak in
      for (int i = 0; i < sliders.length; i++) {
        returnList[i] = totalHours * 0.10;
      }
    }

    return returnList;
  }

// Convert to hours and minutes from a double number
  List<int> listOfHoursAndMinutes(double time) {
    List<int> returnList = [0, 0];

    // 2.54
    print(time.floor());
    returnList[0] = time.floor();

    returnList[1] = ((time - time.floor()) * 60).ceil();

    return returnList;
  }

// Total of all the times in the topics and calculates how much review time there is
  double reviewDays(List<double> times, double availableTime) {
    double reviewTime = 0;
    double total = 0;
    double splitTime = 0;

    for (int i = 0; i < times.length; i++) {
      total = total + times[i];
    }

    print("Total: ${total}");
    print("Available Time: ${availableTime}");

    reviewTime = availableTime - total;

    print("Review Time: ${reviewTime}");
    print("RAW TIMES: ${times}");

    if (reviewTime > 5) {
      splitTime = reviewTime - 5;
      reviewTime = 5;

      // Split this time by 7 and spread it among the topics
      splitTime = splitTime / 7;
      for (int i = 0; i < times.length; i++) {
        times[i] = times[i] + splitTime;
      }
    }

    print("Review Time: ${reviewTime}");
    print("RAW TIMES: ${times}");

    if (reviewTime < 0) {
      reviewTime = 0;
    }

    return reviewTime;
  }

// Setters and getter for daysPerWeek
  List<String> getdaysPerWeek() {
    return daysPerWeek;
  }

  void setdaysPerWeek(List<String> itsAList) {
    daysPerWeek = itsAList;
  }

// Setters and getter for startEndDates
  List<DateTime> getstartEndDates() {
    return startEndDates;
  }

  void setstartEndDates(List<DateTime> itsAList) {
    startEndDates = itsAList;
  }

  // Setters and getter for availableDays
  int getavailableDays() {
    return availableDays;
  }

  void setavailableDays(List<String> days, int startYear, int startMonth,
      int startDay, int endYear, int endMonth, int endDay) {
    availableDays = totalAvailableDays(
        days, startYear, startMonth, startDay, endYear, endMonth, endDay);
  }

  //Setters and getter for totalAvailableHours
  double getTotalAvailableHours() {
    return totalAvailableHours;
  }

  void setTotalAvailablehours(int hours, int minutes) {
    totalAvailableHours = totalHours(availableDays, hours, minutes);
  }

  // Set and get hours
  int getHours() {
    return hours;
  }

  // Set and get minutes
  void setHours(int sent) {
    hours = sent;
  }

  // Set and get minutes
  int getMinutes() {
    return minutes;
  }

  // Set and get minutes
  void setMinutes(int sent) {
    minutes = sent;
  }

  // Slider getters and setters
  List<int> getSliderNumbersArrays() {
    return sliderNumbers;
  }

  void setSliderNumbers(int value, int index) {
    sliderNumbers[index] = value;
  }

  // Time for each topic based on sliders
  List<double> getListOfTimeForEachTopic() {
    return listOfTimeForEachTopic;
  }

  void setListOfTimeForEachTopic() {
    listOfTimeForEachTopic =
        timePerEachTopic(sliderNumbers, totalAvailableHours);
  }

  // Output Time for each topic
  List<List<int>> getOutputTime() {
    return outputTime;
  }

  // List<List<int>> outputTime = [
  //   [0, 0],
  //   [0, 0],
  //   [0, 0],
  //   [0, 0],
  //   [0, 0],
  //   [0, 0],
  //   [0, 0]
  // ];

  void setOutputTime() {
    for (int i = 0; i < listOfTimeForEachTopic.length; i++) {
      outputTime[i] = listOfHoursAndMinutes(listOfTimeForEachTopic[i]);
    }
  }

  // Review Time Setters and Getters
  List<int> getReviewTime() {
    return reviewTime;
  }

  void setReviewTime() {
    double review = reviewDays(listOfTimeForEachTopic, totalAvailableHours);

    reviewTime = listOfHoursAndMinutes(review);
    print(listOfHoursAndMinutes(review));
  }

  // Progress Page
  double getArrayProgressIncrease() {
    return arrayProgress;
  }

  void setArrayProgressIncrease() {
    arrayProgress = arrayProgress + 0.1;
  }

  bool getChecked() {
    return checked;
  }

  void setChecked(bool item) {
    checked = item;
  }
}
