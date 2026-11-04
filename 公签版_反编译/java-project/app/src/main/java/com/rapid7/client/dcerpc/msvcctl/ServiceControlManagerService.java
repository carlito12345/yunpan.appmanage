package com.rapid7.client.dcerpc.msvcctl;

import com.rapid7.client.dcerpc.RPCException;
import com.rapid7.client.dcerpc.dto.ContextHandle;
import com.rapid7.client.dcerpc.messages.HandleResponse;
import com.rapid7.client.dcerpc.mserref.SystemErrorCode;
import com.rapid7.client.dcerpc.msvcctl.dto.IServiceConfigInfo;
import com.rapid7.client.dcerpc.msvcctl.dto.IServiceStatusInfo;
import com.rapid7.client.dcerpc.msvcctl.dto.ServiceConfigInfo;
import com.rapid7.client.dcerpc.msvcctl.dto.ServiceHandle;
import com.rapid7.client.dcerpc.msvcctl.dto.ServiceManagerHandle;
import com.rapid7.client.dcerpc.msvcctl.dto.ServiceStatusInfo;
import com.rapid7.client.dcerpc.msvcctl.dto.enums.ServiceControl;
import com.rapid7.client.dcerpc.msvcctl.dto.enums.ServiceError;
import com.rapid7.client.dcerpc.msvcctl.dto.enums.ServiceStartType;
import com.rapid7.client.dcerpc.msvcctl.dto.enums.ServiceStatusType;
import com.rapid7.client.dcerpc.msvcctl.dto.enums.ServiceType;
import com.rapid7.client.dcerpc.msvcctl.dto.enums.ServicesAcceptedControls;
import com.rapid7.client.dcerpc.msvcctl.messages.RChangeServiceConfigWRequest;
import com.rapid7.client.dcerpc.msvcctl.messages.RCloseServiceHandleRequest;
import com.rapid7.client.dcerpc.msvcctl.messages.RControlServiceRequest;
import com.rapid7.client.dcerpc.msvcctl.messages.ROpenSCManagerWRequest;
import com.rapid7.client.dcerpc.msvcctl.messages.ROpenServiceWRequest;
import com.rapid7.client.dcerpc.msvcctl.messages.RQueryServiceConfigWRequest;
import com.rapid7.client.dcerpc.msvcctl.messages.RQueryServiceConfigWResponse;
import com.rapid7.client.dcerpc.msvcctl.messages.RQueryServiceStatusRequest;
import com.rapid7.client.dcerpc.msvcctl.messages.RQueryServiceStatusResponse;
import com.rapid7.client.dcerpc.msvcctl.messages.RStartServiceWRequest;
import com.rapid7.client.dcerpc.msvcctl.objects.LPQueryServiceConfigW;
import com.rapid7.client.dcerpc.msvcctl.objects.LPServiceStatus;
import com.rapid7.client.dcerpc.service.Service;
import com.rapid7.client.dcerpc.transport.RPCTransport;

/* loaded from: classes.dex */
public class ServiceControlManagerService extends Service {
    public static final int FULL_ACCESS = 983103;

    public ServiceControlManagerService(RPCTransport rPCTransport) {
        super(rPCTransport);
    }

    private boolean closeHandle(ContextHandle contextHandle) throws RPCException {
        if (contextHandle == null) {
            return false;
        }
        HandleResponse handleResponse = (HandleResponse) call(new RCloseServiceHandleRequest(parseHandle(contextHandle)));
        if (SystemErrorCode.ERROR_SUCCESS.is(handleResponse.getReturnValue())) {
            return true;
        }
        if (SystemErrorCode.STATUS_INVALID_HANDLE.is(handleResponse.getReturnValue())) {
            return false;
        }
        throw new RPCException("RCloseServiceHandle", handleResponse.getReturnValue());
    }

    private ServiceConfigInfo parseLPQueryServiceConfigW(LPQueryServiceConfigW lPQueryServiceConfigW) {
        return new ServiceConfigInfo(ServiceType.fromInt(lPQueryServiceConfigW.getDwServiceType()), ServiceStartType.fromInt(lPQueryServiceConfigW.getDwStartType()), ServiceError.fromInt(lPQueryServiceConfigW.getDwErrorControl()), parseWChar(lPQueryServiceConfigW.getLpBinaryPathName()), parseWChar(lPQueryServiceConfigW.getLpLoadOrderGroup()), lPQueryServiceConfigW.getDwTagId(), lPQueryServiceConfigW.getLpDependencies(), parseWChar(lPQueryServiceConfigW.getLpServiceStartName()), parseWChar(lPQueryServiceConfigW.getLpDisplayName()), null);
    }

    private ServiceStatusInfo parseLPServiceStatus(LPServiceStatus lPServiceStatus) {
        return new ServiceStatusInfo(ServiceType.fromInt(lPServiceStatus.getDwServiceType()), ServiceStatusType.fromInt(lPServiceStatus.getDwCurrentState()), ServicesAcceptedControls.fromInt(lPServiceStatus.getDwControlsAccepted()), lPServiceStatus.getDwWin32ExitCode(), lPServiceStatus.getDwServiceSpecificExitCode(), lPServiceStatus.getDwCheckPoint(), lPServiceStatus.getDwWaitHint());
    }

    public void changeServiceConfig(ServiceHandle serviceHandle, IServiceConfigInfo iServiceConfigInfo) {
        callExpectSuccess(new RChangeServiceConfigWRequest(serviceHandle.getBytes(), iServiceConfigInfo.getServiceType().getValue(), iServiceConfigInfo.getStartType().getValue(), iServiceConfigInfo.getErrorControl().getValue(), parseWCharNT(iServiceConfigInfo.getBinaryPathName()), parseWCharNT(iServiceConfigInfo.getLoadOrderGroup()), Integer.valueOf(iServiceConfigInfo.getTagId()), iServiceConfigInfo.getDependencies(), parseWCharNT(iServiceConfigInfo.getServiceStartName()), iServiceConfigInfo.getPassword(), parseWCharNT(iServiceConfigInfo.getDisplayName())), "RChangeServiceConfigW");
    }

    public boolean closeServiceHandle(ServiceHandle serviceHandle) {
        return closeHandle(serviceHandle);
    }

    public boolean closeServiceManagerHandle(ServiceManagerHandle serviceManagerHandle) {
        return closeHandle(serviceManagerHandle);
    }

    public IServiceStatusInfo controlService(ServiceHandle serviceHandle, ServiceControl serviceControl) {
        return parseLPServiceStatus(((RQueryServiceStatusResponse) callExpectSuccess(new RControlServiceRequest(serviceHandle.getBytes(), serviceControl.getValue()), "RControlServiceRequest")).getLpServiceStatus());
    }

    public ServiceHandle openServiceHandle(ServiceManagerHandle serviceManagerHandle, String str) {
        return new ServiceHandle(((HandleResponse) callExpectSuccess(new ROpenServiceWRequest(parseHandle(serviceManagerHandle), parseWCharNT(str), FULL_ACCESS), "ROpenServiceWRequest")).getHandle());
    }

    public ServiceManagerHandle openServiceManagerHandle() {
        return new ServiceManagerHandle(((HandleResponse) callExpectSuccess(new ROpenSCManagerWRequest(null, null, FULL_ACCESS), "ROpenSCManagerW")).getHandle());
    }

    public IServiceStatusInfo queryService(ServiceHandle serviceHandle) {
        return parseLPServiceStatus(((RQueryServiceStatusResponse) callExpectSuccess(new RQueryServiceStatusRequest(serviceHandle.getBytes()), "RQueryServiceStatus")).getLpServiceStatus());
    }

    public IServiceConfigInfo queryServiceConfig(ServiceHandle serviceHandle) {
        return parseLPQueryServiceConfigW(((RQueryServiceConfigWResponse) callExpectSuccess(new RQueryServiceConfigWRequest(serviceHandle.getBytes(), 8192), "RQueryServiceConfigW")).getLpServiceConfig());
    }

    public void startService(ServiceHandle serviceHandle) {
        callExpectSuccess(new RStartServiceWRequest(serviceHandle.getBytes()), "RStartServiceW");
    }

    public IServiceStatusInfo stopService(ServiceHandle serviceHandle) {
        return controlService(serviceHandle, ServiceControl.STOP);
    }
}
