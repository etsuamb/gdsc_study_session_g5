int findMaximum(List<int> list) {
  var maxValue = list[0];
  for (int i = 0; i < list.length; i++) {
    if (list[i] > maxValue) {
      maxValue = list[i];
    }
  }
  return maxValue;
}

int findMinimum(List<int> list) {
  var minValue = list[0];
  for (int i = 0; i < list.length; i++)
    if (list[i] < minValue) {
      minValue = list[i];
    }
  return minValue;
}

int calculateSum(List<int> list) {
  int sum = 0;
  for (int i = 0; i < list.length; i++) {
    sum += list[i];
  }
  return sum;
}

double calculateAverage(List<int> list) {
  int sum = 0;
  var average;
  for (int i = 0; i < list.length; i++) {
    sum += list[i];
  }
  average = sum / list.length;
  return average;
}

void main() {
  var myList = [1, 8, 3, 3, 4, 45, 5, 69, 10, 39, 91, 10];
  var maximum = findMaximum(myList);
  print("The maximum value is $maximum");
  var minimum = findMinimum(myList);
  print("The minimum value is $minimum");
  var result = calculateSum(myList);
  print("The sum is $result");
  var average = calculateAverage(myList);
  print("The Average is $average");
}
