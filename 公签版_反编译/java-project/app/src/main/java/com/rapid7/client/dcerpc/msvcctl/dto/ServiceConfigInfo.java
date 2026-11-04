package com.rapid7.client.dcerpc.msvcctl.dto;

import android.support.v4.media.session.a;
import com.rapid7.client.dcerpc.msvcctl.dto.enums.ServiceError;
import com.rapid7.client.dcerpc.msvcctl.dto.enums.ServiceStartType;
import com.rapid7.client.dcerpc.msvcctl.dto.enums.ServiceType;
import g.b;
import j$.util.Objects;
import java.util.Arrays;

/* loaded from: classes.dex */
public class ServiceConfigInfo implements IServiceConfigInfo {
    private final String binaryPathName;
    private final String[] dependencies;
    private final String displayName;
    private final ServiceError errorControl;
    private final String loadOrderGroup;
    private final String password;
    private final String serviceStartName;
    private final ServiceType serviceType;
    private final ServiceStartType startType;
    private final int tagId;

    public ServiceConfigInfo(ServiceType serviceType, ServiceStartType serviceStartType, ServiceError serviceError) {
        this(serviceType, serviceStartType, serviceError, null, null, 0, null, null, null, null);
    }

    private String formatString(String str) {
        return str == null ? "null" : b.A("\"", str, "\"");
    }

    @Override // com.rapid7.client.dcerpc.msvcctl.dto.IServiceConfigInfo
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IServiceConfigInfo)) {
            return false;
        }
        IServiceConfigInfo iServiceConfigInfo = (IServiceConfigInfo) obj;
        return Objects.equals(getServiceType(), iServiceConfigInfo.getServiceType()) && Objects.equals(getStartType(), iServiceConfigInfo.getStartType()) && Objects.equals(getErrorControl(), iServiceConfigInfo.getErrorControl()) && Objects.equals(getBinaryPathName(), iServiceConfigInfo.getBinaryPathName()) && Objects.equals(getLoadOrderGroup(), iServiceConfigInfo.getLoadOrderGroup()) && getTagId() == iServiceConfigInfo.getTagId() && Arrays.equals(getDependencies(), iServiceConfigInfo.getDependencies()) && Objects.equals(getServiceStartName(), iServiceConfigInfo.getServiceStartName()) && Objects.equals(getPassword(), iServiceConfigInfo.getPassword()) && Objects.equals(getDisplayName(), iServiceConfigInfo.getDisplayName());
    }

    @Override // com.rapid7.client.dcerpc.msvcctl.dto.IServiceConfigInfo
    public String getBinaryPathName() {
        return this.binaryPathName;
    }

    @Override // com.rapid7.client.dcerpc.msvcctl.dto.IServiceConfigInfo
    public String[] getDependencies() {
        return this.dependencies;
    }

    @Override // com.rapid7.client.dcerpc.msvcctl.dto.IServiceConfigInfo
    public String getDisplayName() {
        return this.displayName;
    }

    @Override // com.rapid7.client.dcerpc.msvcctl.dto.IServiceConfigInfo
    public ServiceError getErrorControl() {
        return this.errorControl;
    }

    @Override // com.rapid7.client.dcerpc.msvcctl.dto.IServiceConfigInfo
    public String getLoadOrderGroup() {
        return this.loadOrderGroup;
    }

    @Override // com.rapid7.client.dcerpc.msvcctl.dto.IServiceConfigInfo
    public String getPassword() {
        return this.password;
    }

    @Override // com.rapid7.client.dcerpc.msvcctl.dto.IServiceConfigInfo
    public String getServiceStartName() {
        return this.serviceStartName;
    }

    @Override // com.rapid7.client.dcerpc.msvcctl.dto.IServiceConfigInfo
    public ServiceType getServiceType() {
        return this.serviceType;
    }

    @Override // com.rapid7.client.dcerpc.msvcctl.dto.IServiceConfigInfo
    public ServiceStartType getStartType() {
        return this.startType;
    }

    @Override // com.rapid7.client.dcerpc.msvcctl.dto.IServiceConfigInfo
    public int getTagId() {
        return this.tagId;
    }

    @Override // com.rapid7.client.dcerpc.msvcctl.dto.IServiceConfigInfo
    public int hashCode() {
        return Arrays.hashCode(getDependencies()) + (Objects.hash(getServiceType(), getStartType(), getErrorControl(), getBinaryPathName(), getLoadOrderGroup(), Integer.valueOf(getTagId()), getServiceStartName(), getPassword(), getDisplayName()) * 31);
    }

    public String toString() {
        ServiceType serviceType = getServiceType();
        ServiceStartType startType = getStartType();
        ServiceError errorControl = getErrorControl();
        String string = formatString(getBinaryPathName());
        String string2 = formatString(getLoadOrderGroup());
        String string3 = Arrays.toString(getDependencies());
        String string4 = formatString(getServiceStartName());
        String string5 = formatString(getDisplayName());
        StringBuilder sb2 = new StringBuilder("ServiceConfigInfo{serviceType: ");
        sb2.append(serviceType);
        sb2.append(", startType: ");
        sb2.append(startType);
        sb2.append(", errorControl: ");
        sb2.append(errorControl);
        sb2.append(", binaryPathName: ");
        sb2.append(string);
        sb2.append(" loadOrderGroup: ");
        a.C(sb2, string2, ", dependencies: ", string3, ", serviceStartName: ");
        sb2.append(string4);
        sb2.append(", displayName: ");
        sb2.append(string5);
        sb2.append("}");
        return sb2.toString();
    }

    public ServiceConfigInfo(ServiceType serviceType, ServiceStartType serviceStartType, ServiceError serviceError, String str, String str2, int i10, String[] strArr, String str3, String str4, String str5) {
        this.serviceType = serviceType;
        this.startType = serviceStartType;
        this.errorControl = serviceError;
        this.binaryPathName = str;
        this.loadOrderGroup = str2;
        this.tagId = i10;
        this.dependencies = strArr;
        this.serviceStartName = str3;
        this.displayName = str4;
        this.password = str5;
    }
}
