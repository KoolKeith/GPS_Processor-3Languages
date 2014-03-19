package sentences;

import java.util.Calendar;
import java.util.GregorianCalendar;

/**
 * Useful abstract class for sharing methods
 * and variables common to GPS sentences.
 *
 * @author - James Euesden <jee22@aber.ac.uk>
 * @version - 1.0
 */
public abstract class GenericSentence {

    /**
     * The Latitude as a String
     */
    private String latitude;
    /**
     * The Longitude as a String.
     */
    private String longitude;
    /**
     * The Date and Time, represented using Java's Calendar abstract
     * class and GregorianCalendar.
     */
    private Calendar date_and_time = new GregorianCalendar();

    /**
     * Set the Time of a Sentence when it only has the Time and no Date
     * @param time - The Time, as a full String, from a sentence.
     * @param day - The last recorded day of a recent sentence.
     * @param month - The last recorded month of a recent sentence
     * @param year - The last recorded year of a recent sentence
     */
    public void setStringCalendarTime(String time, int day, int month, int year){
        int hour = Integer.parseInt(time.substring(0, 2));
        int minute = Integer.parseInt(time.substring(2, 4));
        int second = Integer.parseInt(time.substring(4, 6));
        /**
         * Year, Month, Day, Hour, Minute, Second
         */
        date_and_time.set(year, month, day, hour, minute, second);
        /**
         * Set the milliseconds of each Calendar to avoid the compareTo
         * giving incorrect comparisons when the time IS the same, but
         * milliseconds are messed up due to default implementation.
         */
        date_and_time.set(Calendar.MILLISECOND, 0);

    }

    /**
     * Setting the date and time based on given Strings from
     * the sentences.
     * @param time - The Time String from a sentence
     * @param date - The Date String from a sentence.
     */
    public void setDate_and_time(String time, String date){
        int year = Integer.parseInt(date.substring(4,6)) + 2000;
        int month = Integer.parseInt(date.substring(2, 4)) - 1;
        int day = Integer.parseInt(date.substring(0, 2));
        int hour = Integer.parseInt(time.substring(0, 2));
        int minute = Integer.parseInt(time.substring(2, 4));
        int second = Integer.parseInt(time.substring(4, 6));
        /**
         * Year, Month, Day, Hour, Minute, Second
         */
        date_and_time.set(year, month, day, hour, minute, second);
        /**
         * Set the milliseconds of each Calendar to avoid the compareTo
         * giving incorrect comparisons when the time IS the same, but
         * milliseconds are messed up due to default implementation.
         */
        date_and_time.set(Calendar.MILLISECOND,0);
    }

    public Calendar getDate_and_time() {
        return date_and_time;
    }

    public String getLatitude() {
        return latitude;
    }

    public String getLongitude() {
        return longitude;
    }

    /**
     * Sets the Latitude based on a passed String and the facing of
     * the direction.
     * @param stringLatitude - Latitude position
     * @param compass - Direction of compass
     */
    public void setLatitude(String stringLatitude, char compass) {
        StringBuffer latString = new StringBuffer(stringLatitude);
        /**
         * Move the period index of the Latitude to be correct for
         * GPX format.
         */
        int periodIndex = latString.indexOf(".");
        latString = latString.deleteCharAt(periodIndex);
        latString.insert(periodIndex - 2, ".");

        /**
         * If the compass is South, make the Latitude negative.
         */
        if (compass == 'S') {
            latString.insert(0, "-");
        }
        latitude = latString.toString();
    }

    /**
     * Sets the Longitude based on a passed String and the facing of
     * the direction.
     * @param stringLongitude - Longitude position
     * @param compass - Direction of compass
     */
    public void setLongitude(String stringLongitude, char compass) {
        StringBuffer longString = new StringBuffer(stringLongitude);
        /**
         * Move the period index of the Longitude to be correct for
         * GPX format.
         */
        int periodIndex = longString.indexOf(".");
        longString = longString.deleteCharAt(periodIndex);
        longString.insert(periodIndex - 2, ".");

        /**
         * If the compass is West, make the Longitude negative.
         */
        if (compass == 'W') {
            longString.insert(0, "-");
        }
        longitude = longString.toString();
    }
}
