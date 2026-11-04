package com.rapid7.client.dcerpc.msvcctl.dto;

import com.rapid7.client.dcerpc.msvcctl.dto.enums.ServiceError;
import com.rapid7.client.dcerpc.msvcctl.dto.enums.ServiceStartType;
import com.rapid7.client.dcerpc.msvcctl.dto.enums.ServiceType;

/* loaded from: classes.dex */
public interface IServiceConfigInfo {
    boolean equals(Object obj);

    String getBinaryPathName();

    String[] getDependencies();

    String getDisplayName();

    ServiceError getErrorControl();

    String getLoadOrderGroup();

    String getPassword();

    String getServiceStartName();

    ServiceType getServiceType();

    ServiceStartType getStartType();

    int getTagId();

    int hashCode();
}
