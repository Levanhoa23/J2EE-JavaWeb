package hoa.dev.util;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ASUS
 */
public class GetDateTime {

    static DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyy-MM-dd");

    public static List<String> get7Date() {
        List<String> dateList = new ArrayList<String>();
        LocalDateTime now = LocalDateTime.now(); // Correct method call
        for (int i = 6; i >= 0; i--) {
            dateList.add(now.minusDays(i).format(format));
        }
        return dateList;
    }

    public static List<String> getDates(int number) {
        List<String> dateList = new ArrayList<String>();
        LocalDateTime now = LocalDateTime.now(); // Correct method call
        for (int i = number - 1; i >= 0; i--) {
            dateList.add(now.minusDays(i).format(format));
        }
        return dateList;
    }
}
