package com.rapid7.client.dcerpc.mssrvs.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.messages.RequestCall;
import com.rapid7.client.dcerpc.mssrvs.messages.NetrShareGetInfoResponse;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo0;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo1;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo2;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo501;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo502;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo503;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareInfoLevel;
import com.rapid7.client.dcerpc.objects.WChar;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class NetrShareGetInfoRequest<T extends ShareInfo> extends RequestCall<NetrShareGetInfoResponse<T>> {
    public static final short OP_NUM = 16;
    private final WChar.NullTerminated shareName;

    public static class NetrShareGetInfoRequest0 extends NetrShareGetInfoRequest<ShareInfo0> {
        public NetrShareGetInfoRequest0(WChar.NullTerminated nullTerminated) {
            super(nullTerminated);
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareGetInfoRequest
        public ShareInfoLevel getShareInfoLevel() {
            return ShareInfoLevel.LPSHARE_INFO_0;
        }

        @Override // com.rapid7.client.dcerpc.messages.RequestCall
        public NetrShareGetInfoResponse.NetrShareGetInfoResponse0 getResponseObject() {
            return new NetrShareGetInfoResponse.NetrShareGetInfoResponse0();
        }
    }

    public static class NetrShareGetInfoRequest1 extends NetrShareGetInfoRequest<ShareInfo1> {
        public NetrShareGetInfoRequest1(WChar.NullTerminated nullTerminated) {
            super(nullTerminated);
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareGetInfoRequest
        public ShareInfoLevel getShareInfoLevel() {
            return ShareInfoLevel.LPSHARE_INFO_1;
        }

        @Override // com.rapid7.client.dcerpc.messages.RequestCall
        public NetrShareGetInfoResponse.NetrShareGetInfoResponse1 getResponseObject() {
            return new NetrShareGetInfoResponse.NetrShareGetInfoResponse1();
        }
    }

    public static class NetrShareGetInfoRequest2 extends NetrShareGetInfoRequest<ShareInfo2> {
        public NetrShareGetInfoRequest2(WChar.NullTerminated nullTerminated) {
            super(nullTerminated);
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareGetInfoRequest
        public ShareInfoLevel getShareInfoLevel() {
            return ShareInfoLevel.LPSHARE_INFO_2;
        }

        @Override // com.rapid7.client.dcerpc.messages.RequestCall
        public NetrShareGetInfoResponse.NetrShareGetInfoResponse2 getResponseObject() {
            return new NetrShareGetInfoResponse.NetrShareGetInfoResponse2();
        }
    }

    public static class NetrShareGetInfoRequest501 extends NetrShareGetInfoRequest<ShareInfo501> {
        public NetrShareGetInfoRequest501(WChar.NullTerminated nullTerminated) {
            super(nullTerminated);
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareGetInfoRequest
        public ShareInfoLevel getShareInfoLevel() {
            return ShareInfoLevel.LPSHARE_INFO_501;
        }

        @Override // com.rapid7.client.dcerpc.messages.RequestCall
        public NetrShareGetInfoResponse.NetrShareGetInfoResponse501 getResponseObject() {
            return new NetrShareGetInfoResponse.NetrShareGetInfoResponse501();
        }
    }

    public static class NetrShareGetInfoRequest502 extends NetrShareGetInfoRequest<ShareInfo502> {
        public NetrShareGetInfoRequest502(WChar.NullTerminated nullTerminated) {
            super(nullTerminated);
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareGetInfoRequest
        public ShareInfoLevel getShareInfoLevel() {
            return ShareInfoLevel.LPSHARE_INFO_502;
        }

        @Override // com.rapid7.client.dcerpc.messages.RequestCall
        public NetrShareGetInfoResponse.NetrShareGetInfoResponse502 getResponseObject() {
            return new NetrShareGetInfoResponse.NetrShareGetInfoResponse502();
        }
    }

    public static class NetrShareGetInfoRequest503 extends NetrShareGetInfoRequest<ShareInfo503> {
        public NetrShareGetInfoRequest503(WChar.NullTerminated nullTerminated) {
            super(nullTerminated);
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareGetInfoRequest
        public ShareInfoLevel getShareInfoLevel() {
            return ShareInfoLevel.LPSHARE_INFO_503;
        }

        @Override // com.rapid7.client.dcerpc.messages.RequestCall
        public NetrShareGetInfoResponse.NetrShareGetInfoResponse503 getResponseObject() {
            return new NetrShareGetInfoResponse.NetrShareGetInfoResponse503();
        }
    }

    public NetrShareGetInfoRequest(WChar.NullTerminated nullTerminated) {
        super((short) 16);
        if (nullTerminated == null) {
            throw new IllegalArgumentException("Despite what the documentation states, this is not a pointer");
        }
        this.shareName = nullTerminated;
    }

    public abstract ShareInfoLevel getShareInfoLevel();

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.writeNull();
        packetOutput.writeMarshallable(this.shareName);
        packetOutput.align(Alignment.FOUR);
        packetOutput.writeInt(getShareInfoLevel().getInfoLevel());
    }
}
