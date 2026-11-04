package com.rapid7.client.dcerpc.msvcctl.dto;

import com.rapid7.client.dcerpc.msvcctl.dto.enums.ServiceStatusType;
import com.rapid7.client.dcerpc.msvcctl.dto.enums.ServiceType;
import com.rapid7.client.dcerpc.msvcctl.dto.enums.ServicesAcceptedControls;
import j$.util.Objects;

/* loaded from: classes.dex */
public class ServiceStatusInfo implements IServiceStatusInfo {
    private final int checkPoint;
    private final ServicesAcceptedControls controlsAccepted;
    private final ServiceStatusType currentState;
    private final int serviceSpecificExitCode;
    private final ServiceType serviceType;
    private final int waitHint;
    private final int win32ExitCode;

    public ServiceStatusInfo(ServiceType serviceType, ServiceStatusType serviceStatusType, ServicesAcceptedControls servicesAcceptedControls, int i10, int i11, int i12, int i13) {
        this.serviceType = serviceType;
        this.currentState = serviceStatusType;
        this.controlsAccepted = servicesAcceptedControls;
        this.win32ExitCode = i10;
        this.serviceSpecificExitCode = i11;
        this.checkPoint = i12;
        this.waitHint = i13;
    }

    @Override // com.rapid7.client.dcerpc.msvcctl.dto.IServiceStatusInfo
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IServiceStatusInfo)) {
            return false;
        }
        IServiceStatusInfo iServiceStatusInfo = (IServiceStatusInfo) obj;
        return getServiceType() == iServiceStatusInfo.getServiceType() && getCurrentState() == iServiceStatusInfo.getCurrentState() && getControlsAccepted() == iServiceStatusInfo.getControlsAccepted() && getWin32ExitCode() == iServiceStatusInfo.getWin32ExitCode() && getServiceSpecificExitCode() == iServiceStatusInfo.getServiceSpecificExitCode() && getCheckPoint() == iServiceStatusInfo.getCheckPoint() && getWaitHint() == iServiceStatusInfo.getWaitHint();
    }

    @Override // com.rapid7.client.dcerpc.msvcctl.dto.IServiceStatusInfo
    public int getCheckPoint() {
        return this.checkPoint;
    }

    @Override // com.rapid7.client.dcerpc.msvcctl.dto.IServiceStatusInfo
    public ServicesAcceptedControls getControlsAccepted() {
        return this.controlsAccepted;
    }

    @Override // com.rapid7.client.dcerpc.msvcctl.dto.IServiceStatusInfo
    public ServiceStatusType getCurrentState() {
        return this.currentState;
    }

    @Override // com.rapid7.client.dcerpc.msvcctl.dto.IServiceStatusInfo
    public int getServiceSpecificExitCode() {
        return this.serviceSpecificExitCode;
    }

    @Override // com.rapid7.client.dcerpc.msvcctl.dto.IServiceStatusInfo
    public ServiceType getServiceType() {
        return this.serviceType;
    }

    @Override // com.rapid7.client.dcerpc.msvcctl.dto.IServiceStatusInfo
    public int getWaitHint() {
        return this.waitHint;
    }

    @Override // com.rapid7.client.dcerpc.msvcctl.dto.IServiceStatusInfo
    public int getWin32ExitCode() {
        return this.win32ExitCode;
    }

    @Override // com.rapid7.client.dcerpc.msvcctl.dto.IServiceStatusInfo
    public int hashCode() {
        return Objects.hash(getServiceType(), getCurrentState(), getControlsAccepted(), Integer.valueOf(getWin32ExitCode()), Integer.valueOf(getServiceSpecificExitCode()), Integer.valueOf(getCheckPoint()), Integer.valueOf(getWaitHint()));
    }

    public String toString() {
        return String.format("ServiceStatusInfo{serviceType: %s, currentState: %s, controlsAccepted: %s, win32ExitCode: %d, serviceSpecificExitCode: %d, checkPoint: %d, waitHint: %d}", getServiceType(), getCurrentState(), getControlsAccepted(), Integer.valueOf(getWin32ExitCode()), Integer.valueOf(getServiceSpecificExitCode()), Integer.valueOf(getCheckPoint()), Integer.valueOf(getWaitHint()));
    }
}
