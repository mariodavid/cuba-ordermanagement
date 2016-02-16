/*
 * Copyright (c) 2016 ordermanagement
 */
package com.company.ordermanagement.service;

import com.haulmont.chile.core.model.Instance;

/**
 * @author mario
 */
public interface DeepLinkService {
    String NAME = "om_DeepLinkService";

    public String generateDeepLinkForEntity(Instance entityInstance);
}