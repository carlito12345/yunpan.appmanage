package com.rapid7.client.dcerpc.mssrvs.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.messages.RequestResponse;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareEnumLevel;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareEnumStruct;

/* loaded from: classes.dex */
public abstract class NetrShareEnumResponse<T extends ShareEnumStruct> extends RequestResponse {
    private Long resumeHandle;
    private T shareEnumStruct;
    private long totalEntries;

    public static class NetShareEnumResponse0 extends NetrShareEnumResponse<ShareEnumStruct.ShareEnumStruct0> {
        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareEnumResponse
        public ShareEnumLevel getShareEnumLevel() {
            return ShareEnumLevel.SHARE_INFO_0_CONTAINER;
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareEnumResponse
        public ShareEnumStruct.ShareEnumStruct0 createShareEnumStruct() {
            return new ShareEnumStruct.ShareEnumStruct0();
        }
    }

    public static class NetShareEnumResponse1 extends NetrShareEnumResponse<ShareEnumStruct.ShareEnumStruct1> {
        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareEnumResponse
        public ShareEnumLevel getShareEnumLevel() {
            return ShareEnumLevel.SHARE_INFO_1_CONTAINER;
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareEnumResponse
        public ShareEnumStruct.ShareEnumStruct1 createShareEnumStruct() {
            return new ShareEnumStruct.ShareEnumStruct1();
        }
    }

    public static class NetShareEnumResponse2 extends NetrShareEnumResponse<ShareEnumStruct.ShareEnumStruct2> {
        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareEnumResponse
        public ShareEnumLevel getShareEnumLevel() {
            return ShareEnumLevel.SHARE_INFO_1_CONTAINER;
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareEnumResponse
        public ShareEnumStruct.ShareEnumStruct2 createShareEnumStruct() {
            return new ShareEnumStruct.ShareEnumStruct2();
        }
    }

    public static class NetShareEnumResponse501 extends NetrShareEnumResponse<ShareEnumStruct.ShareEnumStruct501> {
        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareEnumResponse
        public ShareEnumLevel getShareEnumLevel() {
            return ShareEnumLevel.SHARE_INFO_501_CONTAINER;
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareEnumResponse
        public ShareEnumStruct.ShareEnumStruct501 createShareEnumStruct() {
            return new ShareEnumStruct.ShareEnumStruct501();
        }
    }

    public static class NetShareEnumResponse502 extends NetrShareEnumResponse<ShareEnumStruct.ShareEnumStruct502> {
        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareEnumResponse
        public ShareEnumLevel getShareEnumLevel() {
            return ShareEnumLevel.SHARE_INFO_502_CONTAINER;
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareEnumResponse
        public ShareEnumStruct.ShareEnumStruct502 createShareEnumStruct() {
            return new ShareEnumStruct.ShareEnumStruct502();
        }
    }

    public static class NetShareEnumResponse503 extends NetrShareEnumResponse<ShareEnumStruct.ShareEnumStruct503> {
        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareEnumResponse
        public ShareEnumLevel getShareEnumLevel() {
            return ShareEnumLevel.SHARE_INFO_503_CONTAINER;
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareEnumResponse
        public ShareEnumStruct.ShareEnumStruct503 createShareEnumStruct() {
            return new ShareEnumStruct.ShareEnumStruct503();
        }
    }

    public abstract T createShareEnumStruct();

    public Long getResumeHandle() {
        return this.resumeHandle;
    }

    public abstract ShareEnumLevel getShareEnumLevel();

    public T getShareEnumStruct() {
        return this.shareEnumStruct;
    }

    public long getTotalEntries() {
        return this.totalEntries;
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) {
        T t10 = (T) createShareEnumStruct();
        this.shareEnumStruct = t10;
        packetInput.readUnmarshallable(t10);
        packetInput.align(Alignment.FOUR);
        this.totalEntries = packetInput.readUnsignedInt();
        if (packetInput.readReferentID() != 0) {
            this.resumeHandle = Long.valueOf(packetInput.readUnsignedInt());
        } else {
            this.resumeHandle = null;
        }
    }
}
