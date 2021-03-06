
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegExPatternsAndIntroToDatabases {

	private static final Scanner scanner = new Scanner(System.in);

	public static void main(String[] args) {
		int N = scanner.nextInt();
		scanner.skip("(\r\n|[\n\r\u2028\u2029\u0085])?");
		String emailRegEx = ".+@gmail\\.com$";
		Pattern pattern = Pattern.compile(emailRegEx);
		List<String> list = new ArrayList<>();
		for (int NItr = 0; NItr < N; NItr++) {
			String[] firstNameEmailID = scanner.nextLine().split(" ");
			String firstName = firstNameEmailID[0];
			String emailID = firstNameEmailID[1];
			Matcher matcher = pattern.matcher(emailID);
			if (matcher.matches()) {
				list.add(firstName);
			}
		}
		Collections.sort(list);
		for (String name : list) {
			System.out.println(name);
		}

		scanner.close();
	}
}
