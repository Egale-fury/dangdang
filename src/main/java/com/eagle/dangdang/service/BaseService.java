package com.eagle.dangdang.service;

import java.util.Set;

import javax.annotation.Resource;
import javax.validation.ConstraintViolation;
import javax.validation.Validator;

import com.eagle.dangdang.exception.ValidationException;


public abstract class BaseService {

	@Resource
	protected Validator validator;

	protected void validate(Object request) {
		Set<? extends ConstraintViolation<?>> constraintViolations = validator
				.validate(request);
		if (constraintViolations.size() > 0) {
			throw new ValidationException(constraintViolations);
		}
	}

}
