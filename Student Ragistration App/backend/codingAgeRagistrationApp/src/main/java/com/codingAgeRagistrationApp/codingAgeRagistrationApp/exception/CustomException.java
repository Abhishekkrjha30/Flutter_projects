package com.codingAgeRagistrationApp.codingAgeRagistrationApp.exception;

public class CustomException extends RuntimeException {
    private String code;
    public CustomException(String message, String code) {
        super(message);
        this.code = code;
    }

    public String getCode() {
        return code;
    }
}
