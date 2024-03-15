package com.codingAgeRagistrationApp.codingAgeRagistrationApp.exception;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
@Slf4j
public class ExceptionController {



    @ResponseStatus(HttpStatus.NOT_FOUND)
    @ExceptionHandler(Exception.class)
    public ErrorResponse handleException(CustomException e) {
        log.error("request validation failed due to  ", e.getCode());
        return new ErrorResponse(e.getCode(), e.getMessage());
    }

}
