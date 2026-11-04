package com.rapid7.client.dcerpc.msvcctl.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.messages.RequestCall;
import com.rapid7.client.dcerpc.objects.WChar;
import java.io.IOException;

/* loaded from: classes.dex */
public class RChangeServiceConfigWRequest extends RequestCall<RChangeServiceConfigWResponse> {
    private static final short OP_NUM = 11;
    private final int dwErrorControl;
    private final int dwServiceType;
    private final int dwStartType;
    private final byte[] hService;
    private final WChar.NullTerminated lpBinaryPathName;
    private final String[] lpDependencies;
    private final WChar.NullTerminated lpDisplayName;
    private final Integer lpDwTagId;
    private final WChar.NullTerminated lpLoadOrderGroup;
    private final String lpPassword;
    private final WChar.NullTerminated lpServiceStartName;

    public RChangeServiceConfigWRequest(byte[] bArr, int i10, int i11, int i12, WChar.NullTerminated nullTerminated, WChar.NullTerminated nullTerminated2, Integer num, String[] strArr, WChar.NullTerminated nullTerminated3, String str, WChar.NullTerminated nullTerminated4) {
        super((short) 11);
        this.hService = bArr;
        this.dwServiceType = i10;
        this.dwStartType = i11;
        this.dwErrorControl = i12;
        this.lpBinaryPathName = nullTerminated;
        this.lpLoadOrderGroup = nullTerminated2;
        this.lpDwTagId = num;
        this.lpDependencies = strArr;
        this.lpServiceStartName = nullTerminated3;
        this.lpPassword = str;
        this.lpDisplayName = nullTerminated4;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.hService);
        packetOutput.writeInt(this.dwServiceType);
        packetOutput.writeInt(this.dwStartType);
        packetOutput.writeInt(this.dwErrorControl);
        if (packetOutput.writeReferentID(this.lpBinaryPathName)) {
            packetOutput.writeMarshallable(this.lpBinaryPathName);
            packetOutput.align(Alignment.FOUR);
        }
        if (packetOutput.writeReferentID(this.lpLoadOrderGroup)) {
            packetOutput.writeMarshallable(this.lpLoadOrderGroup);
            packetOutput.align(Alignment.FOUR);
        }
        Integer num = this.lpDwTagId;
        if (num == null || num.intValue() == 0) {
            packetOutput.writeNull();
        } else {
            packetOutput.writeReferentID();
            packetOutput.writeInt(this.lpDwTagId.intValue());
        }
        if (packetOutput.writeReferentID(this.lpDependencies)) {
            String[] strArr = this.lpDependencies;
            int length = strArr.length;
            int length2 = 2;
            for (int i10 = 0; i10 < length; i10++) {
                String str = strArr[i10];
                length2 += (str == null ? 0 : str.length() * 2) + 2;
            }
            packetOutput.writeInt(length2);
            for (String str2 : this.lpDependencies) {
                if (str2 != null) {
                    for (int i11 = 0; i11 < str2.length(); i11++) {
                        packetOutput.writeChar(str2.charAt(i11));
                    }
                }
                packetOutput.writeChar(0);
            }
            packetOutput.writeChar(0);
            packetOutput.align(Alignment.FOUR);
            packetOutput.writeInt(length2);
        } else {
            packetOutput.writeInt(0);
        }
        if (packetOutput.writeReferentID(this.lpServiceStartName)) {
            packetOutput.writeMarshallable(this.lpServiceStartName);
            packetOutput.align(Alignment.FOUR);
        }
        if (packetOutput.writeReferentID(this.lpPassword)) {
            int length3 = (this.lpPassword.length() * 2) + 2;
            packetOutput.writeInt(length3);
            for (int i12 = 0; i12 < this.lpPassword.length(); i12++) {
                packetOutput.writeChar(this.lpPassword.charAt(i12));
            }
            packetOutput.writeChar(0);
            packetOutput.align(Alignment.FOUR);
            packetOutput.writeInt(length3);
        } else {
            packetOutput.writeInt(0);
        }
        if (packetOutput.writeReferentID(this.lpDisplayName)) {
            packetOutput.writeMarshallable(this.lpDisplayName);
        }
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public RChangeServiceConfigWResponse getResponseObject() {
        return new RChangeServiceConfigWResponse();
    }
}
