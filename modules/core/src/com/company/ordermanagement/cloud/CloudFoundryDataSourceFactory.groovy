package com.company.ordermanagement.cloud

import javax.sql.DataSource;

import org.springframework.cloud.Cloud;
import org.springframework.cloud.CloudFactory;

class CloudFoundryDataSourceFactory {

    String dbServiceName

    DataSource createDataSourceForPostgresDbService() {

        Cloud cf = new CloudFactory().cloud
        def postgresSerciveInfo = cf.getServiceInfo(dbServiceName)
        cf.getServiceConnector(postgresSerciveInfo.id, DataSource, null);

    }
}
