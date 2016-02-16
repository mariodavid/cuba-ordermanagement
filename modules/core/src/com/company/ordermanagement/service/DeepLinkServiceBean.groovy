/*
 * Copyright (c) 2016 ordermanagement
 */
package com.company.ordermanagement.service

import com.haulmont.chile.core.model.Instance
import com.haulmont.cuba.core.global.GlobalConfig;
import org.springframework.stereotype.Service

import javax.inject.Inject;

/**
 * @author mario
 */
@Service(DeepLinkService.NAME)
class DeepLinkServiceBean implements DeepLinkService {


    @Inject
    private GlobalConfig globalConfig

    @Override
    String generateDeepLinkForEntity(Instance entityInstance) {

        String webAppUrl = globalConfig.webAppUrl

        String className = entityInstance.getMetaClass().name
        String screen = "${className}.edit"
        String item = "${className}-${entityInstance.uuid}"
        String deepLink = "${webAppUrl}/open?screen=${screen}&item=${item}"

        return deepLink

    }
}