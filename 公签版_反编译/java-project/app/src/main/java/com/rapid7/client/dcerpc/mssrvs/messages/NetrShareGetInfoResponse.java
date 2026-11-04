package com.rapid7.client.dcerpc.mssrvs.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.messages.RequestResponse;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo0;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo1;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo2;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo501;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo502;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo503;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareInfoLevel;
import java.rmi.UnmarshalException;

/* loaded from: classes.dex */
public abstract class NetrShareGetInfoResponse<T extends ShareInfo> extends RequestResponse {
    private T shareInfo;

    public static class NetrShareGetInfoResponse0 extends NetrShareGetInfoResponse<ShareInfo0> {
        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareGetInfoResponse
        public ShareInfoLevel getShareInfoLevel() {
            return ShareInfoLevel.LPSHARE_INFO_0;
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareGetInfoResponse
        public ShareInfo0 createShareInfo() {
            return new ShareInfo0();
        }
    }

    public static class NetrShareGetInfoResponse1 extends NetrShareGetInfoResponse<ShareInfo1> {
        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareGetInfoResponse
        public ShareInfoLevel getShareInfoLevel() {
            return ShareInfoLevel.LPSHARE_INFO_1;
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareGetInfoResponse
        public ShareInfo1 createShareInfo() {
            return new ShareInfo1();
        }
    }

    public static class NetrShareGetInfoResponse2 extends NetrShareGetInfoResponse<ShareInfo2> {
        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareGetInfoResponse
        public ShareInfoLevel getShareInfoLevel() {
            return ShareInfoLevel.LPSHARE_INFO_2;
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareGetInfoResponse
        public ShareInfo2 createShareInfo() {
            return new ShareInfo2();
        }
    }

    public static class NetrShareGetInfoResponse501 extends NetrShareGetInfoResponse<ShareInfo501> {
        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareGetInfoResponse
        public ShareInfoLevel getShareInfoLevel() {
            return ShareInfoLevel.LPSHARE_INFO_501;
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareGetInfoResponse
        public ShareInfo501 createShareInfo() {
            return new ShareInfo501();
        }
    }

    public static class NetrShareGetInfoResponse502 extends NetrShareGetInfoResponse<ShareInfo502> {
        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareGetInfoResponse
        public ShareInfoLevel getShareInfoLevel() {
            return ShareInfoLevel.LPSHARE_INFO_502;
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareGetInfoResponse
        public ShareInfo502 createShareInfo() {
            return new ShareInfo502();
        }
    }

    public static class NetrShareGetInfoResponse503 extends NetrShareGetInfoResponse<ShareInfo503> {
        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareGetInfoResponse
        public ShareInfoLevel getShareInfoLevel() {
            return ShareInfoLevel.LPSHARE_INFO_503;
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.messages.NetrShareGetInfoResponse
        public ShareInfo503 createShareInfo() {
            return new ShareInfo503();
        }
    }

    public abstract T createShareInfo();

    public T getShareInfo() {
        return this.shareInfo;
    }

    public abstract ShareInfoLevel getShareInfoLevel();

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnmarshalException */
    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) throws UnmarshalException {
        int i10 = packetInput.readInt();
        if (i10 != getShareInfoLevel().getInfoLevel()) {
            throw new UnmarshalException(String.format("Incoming LPSHARE_INFO level %d does not match expected: %d", Integer.valueOf(i10), Integer.valueOf(getShareInfoLevel().getInfoLevel())));
        }
        if (packetInput.readReferentID() == 0) {
            this.shareInfo = null;
            return;
        }
        T t10 = (T) createShareInfo();
        this.shareInfo = t10;
        packetInput.readUnmarshallable(t10);
    }
}
