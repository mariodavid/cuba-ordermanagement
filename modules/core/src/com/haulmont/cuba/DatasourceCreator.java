package com.haulmont.cuba;

import org.springframework.cloud.Cloud;
import org.springframework.cloud.CloudFactory;
import org.springframework.cloud.service.common.PostgresqlServiceInfo;

import javax.sql.DataSource;

/**
 * Created by mario on 29.02.16.
 */
public class DatasourceCreator {

    protected String dbServiceName;

    public void setDbServiceName(String dbServiceName) {
        this.dbServiceName = dbServiceName;
    }

    public DataSource createDataSource() {
        CloudFactory cloudFactory = new CloudFactory();
        Cloud cloud = cloudFactory.getCloud();
        PostgresqlServiceInfo serviceInfo = (PostgresqlServiceInfo)
                cloud.getServiceInfo(dbServiceName);
        return cloud.getServiceConnector(serviceInfo.getId(), DataSource.class,
                null);

    }

}
