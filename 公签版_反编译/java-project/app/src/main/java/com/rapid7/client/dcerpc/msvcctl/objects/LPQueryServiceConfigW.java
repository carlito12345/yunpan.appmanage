package com.rapid7.client.dcerpc.msvcctl.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import com.rapid7.client.dcerpc.objects.WChar;
import j$.util.Objects;
import java.util.Arrays;

/* loaded from: classes.dex */
public class LPQueryServiceConfigW implements Unmarshallable {
    private static final String[] EMPTY_DEPENDENCIES = new String[0];
    private int dwErrorControl;
    private int dwServiceType;
    private int dwStartType;
    private int dwTagId;
    private WChar.NullTerminated lpBinaryPathName;
    private String[] lpDependencies;
    private WChar.NullTerminated lpDisplayName;
    private WChar.NullTerminated lpLoadOrderGroup;
    private WChar.NullTerminated lpServiceStartName;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LPQueryServiceConfigW)) {
            return false;
        }
        LPQueryServiceConfigW lPQueryServiceConfigW = (LPQueryServiceConfigW) obj;
        return getDwServiceType() == lPQueryServiceConfigW.getDwServiceType() && getDwStartType() == lPQueryServiceConfigW.getDwStartType() && getDwErrorControl() == lPQueryServiceConfigW.getDwErrorControl() && Objects.equals(getLpBinaryPathName(), lPQueryServiceConfigW.getLpBinaryPathName()) && Objects.equals(getLpLoadOrderGroup(), lPQueryServiceConfigW.getLpLoadOrderGroup()) && getDwTagId() == lPQueryServiceConfigW.getDwTagId() && Arrays.equals(getLpDependencies(), lPQueryServiceConfigW.getLpDependencies()) && Objects.equals(getLpServiceStartName(), lPQueryServiceConfigW.getLpServiceStartName()) && Objects.equals(getLpDisplayName(), lPQueryServiceConfigW.getLpDisplayName());
    }

    public int getDwErrorControl() {
        return this.dwErrorControl;
    }

    public int getDwServiceType() {
        return this.dwServiceType;
    }

    public int getDwStartType() {
        return this.dwStartType;
    }

    public int getDwTagId() {
        return this.dwTagId;
    }

    public WChar.NullTerminated getLpBinaryPathName() {
        return this.lpBinaryPathName;
    }

    public String[] getLpDependencies() {
        return this.lpDependencies;
    }

    public WChar.NullTerminated getLpDisplayName() {
        return this.lpDisplayName;
    }

    public WChar.NullTerminated getLpLoadOrderGroup() {
        return this.lpLoadOrderGroup;
    }

    public WChar.NullTerminated getLpServiceStartName() {
        return this.lpServiceStartName;
    }

    public int hashCode() {
        return Arrays.hashCode(getLpDependencies()) + (Objects.hash(Integer.valueOf(getDwServiceType()), Integer.valueOf(getDwStartType()), Integer.valueOf(getDwErrorControl()), getLpBinaryPathName(), getLpLoadOrderGroup(), Integer.valueOf(getDwTagId()), getLpServiceStartName(), getLpDisplayName()) * 31);
    }

    public void setDwErrorControl(int i10) {
        this.dwErrorControl = i10;
    }

    public void setDwServiceType(int i10) {
        this.dwServiceType = i10;
    }

    public void setDwStartType(int i10) {
        this.dwStartType = i10;
    }

    public void setDwTagId(int i10) {
        this.dwTagId = i10;
    }

    public void setLpBinaryPathName(WChar.NullTerminated nullTerminated) {
        this.lpBinaryPathName = nullTerminated;
    }

    public void setLpDependencies(String[] strArr) {
        this.lpDependencies = strArr;
    }

    public void setLpDisplayName(WChar.NullTerminated nullTerminated) {
        this.lpDisplayName = nullTerminated;
    }

    public void setLpLoadOrderGroup(WChar.NullTerminated nullTerminated) {
        this.lpLoadOrderGroup = nullTerminated;
    }

    public void setLpServiceStartName(WChar.NullTerminated nullTerminated) {
        this.lpServiceStartName = nullTerminated;
    }

    public String toString() {
        return String.format("QUERY_SERVICE_CONFIGW{dwServiceType: %d, dwStartType: %d, dwErrorControl: %d, lpBinaryPathName: %s, lpLoadOrderGroup: %s, dwTagId: %d, lpDependencies: %s, lpServiceStartName: %s, lpDisplayName: %s}", Integer.valueOf(getDwServiceType()), Integer.valueOf(getDwStartType()), Integer.valueOf(getDwErrorControl()), getLpBinaryPathName(), getLpLoadOrderGroup(), Integer.valueOf(getDwTagId()), Arrays.toString(getLpDependencies()), getLpServiceStartName(), getLpDisplayName());
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
        WChar.NullTerminated nullTerminated = this.lpBinaryPathName;
        if (nullTerminated != null) {
            packetInput.readUnmarshallable(nullTerminated);
        }
        WChar.NullTerminated nullTerminated2 = this.lpLoadOrderGroup;
        if (nullTerminated2 != null) {
            packetInput.readUnmarshallable(nullTerminated2);
        }
        if (this.lpDependencies != null) {
            WChar.NullTerminated nullTerminated3 = new WChar.NullTerminated();
            packetInput.readUnmarshallable(nullTerminated3);
            this.lpDependencies = nullTerminated3.getValue().split("/");
        }
        WChar.NullTerminated nullTerminated4 = this.lpServiceStartName;
        if (nullTerminated4 != null) {
            packetInput.readUnmarshallable(nullTerminated4);
        }
        WChar.NullTerminated nullTerminated5 = this.lpDisplayName;
        if (nullTerminated5 != null) {
            packetInput.readUnmarshallable(nullTerminated5);
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        packetInput.align(Alignment.FOUR);
        this.dwServiceType = packetInput.readInt();
        this.dwStartType = packetInput.readInt();
        this.dwErrorControl = packetInput.readInt();
        if (packetInput.readReferentID() != 0) {
            this.lpBinaryPathName = new WChar.NullTerminated();
        } else {
            this.lpBinaryPathName = null;
        }
        if (packetInput.readReferentID() != 0) {
            this.lpLoadOrderGroup = new WChar.NullTerminated();
        } else {
            this.lpLoadOrderGroup = null;
        }
        this.dwTagId = packetInput.readInt();
        if (packetInput.readReferentID() != 0) {
            this.lpDependencies = EMPTY_DEPENDENCIES;
        } else {
            this.lpDependencies = null;
        }
        if (packetInput.readReferentID() != 0) {
            this.lpServiceStartName = new WChar.NullTerminated();
        } else {
            this.lpServiceStartName = null;
        }
        if (packetInput.readReferentID() != 0) {
            this.lpDisplayName = new WChar.NullTerminated();
        } else {
            this.lpDisplayName = null;
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
    }
}
