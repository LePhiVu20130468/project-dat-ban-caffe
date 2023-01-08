package vn.edu.hcmuaf.fit.model;

import java.util.regex.Pattern;

public class TestModel {

    private static final String REGEX_PATTERN = "^(?=.{1,64}@)[\\p{L}0-9_-]+(\\.[\\p{L}0-9_-]+)*@[^-][\\p{L}0-9-]+(\\.[\\p{L}0-9-]+)*(\\.[\\p{L}]{2,})$";
    public static boolean isEmail(String value) {
        return Pattern.compile(REGEX_PATTERN).matcher(value).matches();
    }
}
