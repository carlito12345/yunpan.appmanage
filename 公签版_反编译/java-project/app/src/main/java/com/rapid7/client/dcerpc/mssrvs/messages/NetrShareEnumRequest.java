package com.rapid7.client.dcerpc.mssrvs.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.messages.RequestCall;
import com.rapid7.client.dcerpc.mssrvs.messages.NetrShareEnumResponse;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareEnumLevel;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareEnumStruct;

/* loaded from: classes.dex */
public abstract class NetrShareEnumRequest<T extends ShareEnumStruct> extends RequestCall<NetrShareEnumResponse<T>> {
    private final long preferredMaximumLength;
    private final Long resumeHandle;

    public static class NetShareEnumRequest0 extends NetrShareEnumRequest<ShareEnumStruct.ShareEnumStruct0> {
        public NetShareEnumRequest0(long j10, Long l) {
            super(j10, l);
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareEnumRequest
        public ShareEnumLevel getShareEnumLevel() {
            return ShareEnumLevel.SHARE_INFO_0_CONTAINER;
        }

        @Override // com.rapid7.client.dcerpc.messages.RequestCall
        public NetrShareEnumResponse<ShareEnumStruct.ShareEnumStruct0> getResponseObject() {
            return new NetrShareEnumResponse.NetShareEnumResponse0();
        }
    }

    public static class NetShareEnumRequest1 extends NetrShareEnumRequest<ShareEnumStruct.ShareEnumStruct1> {
        public NetShareEnumRequest1(long j10, Long l) {
            super(j10, l);
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareEnumRequest
        public ShareEnumLevel getShareEnumLevel() {
            return ShareEnumLevel.SHARE_INFO_1_CONTAINER;
        }

        @Override // com.rapid7.client.dcerpc.messages.RequestCall
        public NetrShareEnumResponse<ShareEnumStruct.ShareEnumStruct1> getResponseObject() {
            return new NetrShareEnumResponse.NetShareEnumResponse1();
        }
    }

    public static class NetShareEnumRequest2 extends NetrShareEnumRequest<ShareEnumStruct.ShareEnumStruct2> {
        public NetShareEnumRequest2(long j10, Long l) {
            super(j10, l);
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareEnumRequest
        public ShareEnumLevel getShareEnumLevel() {
            return ShareEnumLevel.SHARE_INFO_2_CONTAINER;
        }

        @Override // com.rapid7.client.dcerpc.messages.RequestCall
        public NetrShareEnumResponse<ShareEnumStruct.ShareEnumStruct2> getResponseObject() {
            return new NetrShareEnumResponse.NetShareEnumResponse2();
        }
    }

    public static class NetShareEnumRequest501 extends NetrShareEnumRequest<ShareEnumStruct.ShareEnumStruct501> {
        public NetShareEnumRequest501(long j10, Long l) {
            super(j10, l);
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareEnumRequest
        public ShareEnumLevel getShareEnumLevel() {
            return ShareEnumLevel.SHARE_INFO_501_CONTAINER;
        }

        @Override // com.rapid7.client.dcerpc.messages.RequestCall
        public NetrShareEnumResponse<ShareEnumStruct.ShareEnumStruct501> getResponseObject() {
            return new NetrShareEnumResponse.NetShareEnumResponse501();
        }
    }

    public static class NetShareEnumRequest502 extends NetrShareEnumRequest<ShareEnumStruct.ShareEnumStruct502> {
        public NetShareEnumRequest502(long j10, Long l) {
            super(j10, l);
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareEnumRequest
        public ShareEnumLevel getShareEnumLevel() {
            return ShareEnumLevel.SHARE_INFO_502_CONTAINER;
        }

        @Override // com.rapid7.client.dcerpc.messages.RequestCall
        public NetrShareEnumResponse<ShareEnumStruct.ShareEnumStruct502> getResponseObject() {
            return new NetrShareEnumResponse.NetShareEnumResponse502();
        }
    }

    public static class NetShareEnumRequest503 extends NetrShareEnumRequest<ShareEnumStruct.ShareEnumStruct503> {
        public NetShareEnumRequest503(long j10, Long l) {
            super(j10, l);
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareEnumRequest
        public ShareEnumLevel getShareEnumLevel() {
            return ShareEnumLevel.SHARE_INFO_503_CONTAINER;
        }

        @Override // com.rapid7.client.dcerpc.messages.RequestCall
        public NetrShareEnumResponse<ShareEnumStruct.ShareEnumStruct503> getResponseObject() {
            return new NetrShareEnumResponse.NetShareEnumResponse503();
        }
    }

    public NetrShareEnumRequest(long j10, Long l) {
        super(NetrOpCode.NetrShareEnum.getOpCode());
        this.preferredMaximumLength = j10;
        this.resumeHandle = l;
    }

    public abstract ShareEnumLevel getShareEnumLevel();

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) {
        packetOutput.writeNull();
        packetOutput.writeInt(getShareEnumLevel().getInfoLevel());
        packetOutput.writeInt(getShareEnumLevel().getInfoLevel());
        packetOutput.writeReferentID();
        packetOutput.writeInt(0);
        packetOutput.writeNull();
        packetOutput.writeInt(this.preferredMaximumLength);
        if (packetOutput.writeReferentID(this.resumeHandle)) {
            packetOutput.writeInt(this.resumeHandle.longValue());
        }
    }
}
