import java.util.Scanner;
 
public class ShapingTheFuture {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.println("What is your goal in life?");
		String goal = input.nextLine();
		System.out.println("What are your plans to accomplish that goal?");
		String plan = input.nextLine();

		// Create a 5 year plan
		int year1 = 0;
		int year2 = 5;
		int year3 = 10;
		int year4 = 15;
		int year5 = 20;

		// Set milestones for each year
		String milestone1 = "";
		String milestone2 = "";
		String milestone3 = "";
		String milestone4 = "";
		String milestone5 = "";
		
		// Get input from the user
		System.out.println("What is the milestone you want to achieve in year 1?");
		milestone1 = input.nextLine();
		System.out.println("What is the milestone you want to achieve in year 2?");
		milestone2 = input.nextLine();
		System.out.println("What is the milestone you want to achieve in year 3?");
		milestone3 = input.nextLine();
		System.out.println("What is the milestone you want to achieve in year 4?");
		milestone4 = input.nextLine();
		System.out.println("What is the milestone you want to achieve in year 5?");
		milestone5 = input.nextLine();

		// Set an end goal
		System.out.println("What is the end goal that you want to reach in 5 years?");
		String endGoal = input.nextLine();

		// Create a timeline for each year
		String timeline1 = "Year 1: "+ milestone1;
		String timeline2 = "Year 2: "+ milestone2;
		String timeline3 = "Year 3: "+ milestone3;
		String timeline4 = "Year 4: "+ milestone4;
		String timeline5 = "Year 5: "+ milestone5;

		// Print the timeline
		System.out.println("Your 5 year plan timeline is:");
		System.out.println(timeline1);
		System.out.println(timeline2);
		System.out.println(timeline3);
		System.out.println(timeline4);
		System.out.println(timeline5);
		System.out.println("You should reach your goal of "+goal+" by the end of year "+year5+", which is "+endGoal);

		// Give advice
		System.out.println("Advice: You will need to stay focused and motivated if you want to reach your goal.");
		System.out.println("Set weekly goals that lead up to your 5 year plan and reward yourself when you reach them.");
		System.out.println("Stay positive and don’t be afraid to ask for help when needed.");

		input.close();
	}
}