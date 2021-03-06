package com.library.data.converter;

public class IntegerConverter implements Converter<String, Integer> {
    @Override
    public Integer convert(String string) {
        if (string.matches("\\d+")) {
            return Integer.valueOf(string);
        } else {
            return null;
        }
    }
}
