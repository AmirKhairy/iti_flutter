// Give number of days extract how many years,months in these days, and also print any remaning days
void main() {
  int days = 430;
  int years = days ~/ 360;
  int remainingDays = days % 360;
  int months = remainingDays ~/ 30;
  remainingDays = remainingDays % 30;
  print("$years years, $months months and $remainingDays days.");
}
