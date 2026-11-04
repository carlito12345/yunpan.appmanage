package com.rapid7.client.dcerpc.msvcctl.dto;

import com.rapid7.client.dcerpc.msvcctl.dto.enums.ServiceStatusType;
import com.rapid7.client.dcerpc.msvcctl.dto.enums.ServiceType;
import com.rapid7.client.dcerpc.msvcctl.dto.enums.ServicesAcceptedControls;

/* loaded from: classes.dex */
public interface IServiceStatusInfo {
    boolean equals(Object obj);

    int getCheckPoint();

    ServicesAcceptedControls getControlsAccepted();

    ServiceStatusType getCurrentState();

    int getServiceSpecificExitCode();

    ServiceType getServiceType();

    int getWaitHint();

    int getWin32ExitCode();

    int hashCode();
}
