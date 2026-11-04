package com.rapid7.client.dcerpc.msvcctl.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import j$.util.Objects;

/* loaded from: classes.dex */
public class LPServiceStatus implements Unmarshallable {
    private int dwCheckPoint;
    private int dwControlsAccepted;
    private int dwCurrentState;
    private int dwServiceSpecificExitCode;
    private int dwServiceType;
    private int dwWaitHint;
    private int dwWin32ExitCode;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LPServiceStatus)) {
            return false;
        }
        LPServiceStatus lPServiceStatus = (LPServiceStatus) obj;
        return getDwServiceType() == lPServiceStatus.getDwServiceType() && getDwCurrentState() == lPServiceStatus.getDwCurrentState() && getDwControlsAccepted() == lPServiceStatus.getDwControlsAccepted() && getDwWin32ExitCode() == lPServiceStatus.getDwWin32ExitCode() && getDwServiceSpecificExitCode() == lPServiceStatus.getDwServiceSpecificExitCode() && getDwCheckPoint() == lPServiceStatus.getDwCheckPoint() && getDwWaitHint() == lPServiceStatus.getDwWaitHint();
    }

    public int getDwCheckPoint() {
        return this.dwCheckPoint;
    }

    public int getDwControlsAccepted() {
        return this.dwControlsAccepted;
    }

    public int getDwCurrentState() {
        return this.dwCurrentState;
    }

    public int getDwServiceSpecificExitCode() {
        return this.dwServiceSpecificExitCode;
    }

    public int getDwServiceType() {
        return this.dwServiceType;
    }

    public int getDwWaitHint() {
        return this.dwWaitHint;
    }

    public int getDwWin32ExitCode() {
        return this.dwWin32ExitCode;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(getDwServiceType()), Integer.valueOf(getDwCurrentState()), Integer.valueOf(getDwControlsAccepted()), Integer.valueOf(getDwWin32ExitCode()), Integer.valueOf(getDwServiceSpecificExitCode()), Integer.valueOf(getDwCheckPoint()), Integer.valueOf(getDwWaitHint()));
    }

    public void setDwCheckPoint(int i10) {
        this.dwCheckPoint = i10;
    }

    public void setDwControlsAccepted(int i10) {
        this.dwControlsAccepted = i10;
    }

    public void setDwCurrentState(int i10) {
        this.dwCurrentState = i10;
    }

    public void setDwServiceSpecificExitCode(int i10) {
        this.dwServiceSpecificExitCode = i10;
    }

    public void setDwServiceType(int i10) {
        this.dwServiceType = i10;
    }

    public void setDwWaitHint(int i10) {
        this.dwWaitHint = i10;
    }

    public void setDwWin32ExitCode(int i10) {
        this.dwWin32ExitCode = i10;
    }

    public String toString() {
        return String.format("LPSERVICE_STATUS{dwServiceType: %d, dwCurrentState: %d, dwControlsAccepted: %d, dwWin32ExitCode: %d, dwServiceSpecificExitCode: %d, dwCheckPoint: %d, dwWaitHint: %d}", Integer.valueOf(getDwServiceType()), Integer.valueOf(getDwCurrentState()), Integer.valueOf(getDwControlsAccepted()), Integer.valueOf(getDwWin32ExitCode()), Integer.valueOf(getDwServiceSpecificExitCode()), Integer.valueOf(getDwCheckPoint()), Integer.valueOf(getDwWaitHint()));
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        packetInput.align(Alignment.FOUR);
        this.dwServiceType = packetInput.readInt();
        this.dwCurrentState = packetInput.readInt();
        this.dwControlsAccepted = packetInput.readInt();
        this.dwWin32ExitCode = packetInput.readInt();
        this.dwServiceSpecificExitCode = packetInput.readInt();
        this.dwCheckPoint = packetInput.readInt();
        this.dwWaitHint = packetInput.readInt();
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
    }
}
