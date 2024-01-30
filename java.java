// Define an enum called Day with constants representing days of the week
enum Day {
    SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY
}

public class java {
    public static void main(String[] args) {
        // Accessing enum constants
        Day today = Day.WEDNESDAY;
        System.out.println(today);
        // Using enums in a switch statement
        switch (today) {
            case MONDAY:
                System.out.println("It's Monday!");
                break;
            case WEDNESDAY:
                System.out.println("It's Wednesday!");
                break;
            default:
                System.out.println("It's some other day.");
        }

        // Enum iteration
        System.out.println("Days of the week:");
        for (Day day : Day.values()) {
            System.out.println(day);
        }
    }
}
