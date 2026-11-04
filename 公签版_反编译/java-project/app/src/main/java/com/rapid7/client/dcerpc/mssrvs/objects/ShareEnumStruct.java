package com.rapid7.client.dcerpc.mssrvs.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareInfoContainer;
import java.rmi.UnmarshalException;

/* loaded from: classes.dex */
public abstract class ShareEnumStruct<T extends ShareInfoContainer> implements Unmarshallable {
    private T shareInfoContainer;

    public static class ShareEnumStruct0 extends ShareEnumStruct<ShareInfoContainer.ShareInfo0Container> {
        @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareEnumStruct
        public ShareEnumLevel getLevel() {
            return ShareEnumLevel.SHARE_INFO_0_CONTAINER;
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareEnumStruct
        public ShareInfoContainer.ShareInfo0Container createShareInfoContainer() {
            return new ShareInfoContainer.ShareInfo0Container();
        }
    }

    public static class ShareEnumStruct1 extends ShareEnumStruct<ShareInfoContainer.ShareInfo1Container> {
        @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareEnumStruct
        public ShareEnumLevel getLevel() {
            return ShareEnumLevel.SHARE_INFO_1_CONTAINER;
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareEnumStruct
        public ShareInfoContainer.ShareInfo1Container createShareInfoContainer() {
            return new ShareInfoContainer.ShareInfo1Container();
        }
    }

    public static class ShareEnumStruct2 extends ShareEnumStruct<ShareInfoContainer.ShareInfo2Container> {
        @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareEnumStruct
        public ShareEnumLevel getLevel() {
            return ShareEnumLevel.SHARE_INFO_2_CONTAINER;
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareEnumStruct
        public ShareInfoContainer.ShareInfo2Container createShareInfoContainer() {
            return new ShareInfoContainer.ShareInfo2Container();
        }
    }

    public static class ShareEnumStruct501 extends ShareEnumStruct<ShareInfoContainer.ShareInfo501Container> {
        @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareEnumStruct
        public ShareEnumLevel getLevel() {
            return ShareEnumLevel.SHARE_INFO_501_CONTAINER;
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareEnumStruct
        public ShareInfoContainer.ShareInfo501Container createShareInfoContainer() {
            return new ShareInfoContainer.ShareInfo501Container();
        }
    }

    public static class ShareEnumStruct502 extends ShareEnumStruct<ShareInfoContainer.ShareInfo502Container> {
        @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareEnumStruct
        public ShareEnumLevel getLevel() {
            return ShareEnumLevel.SHARE_INFO_502_CONTAINER;
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareEnumStruct
        public ShareInfoContainer.ShareInfo502Container createShareInfoContainer() {
            return new ShareInfoContainer.ShareInfo502Container();
        }
    }

    public static class ShareEnumStruct503 extends ShareEnumStruct<ShareInfoContainer.ShareInfo503Container> {
        @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareEnumStruct
        public ShareEnumLevel getLevel() {
            return ShareEnumLevel.SHARE_INFO_503_CONTAINER;
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareEnumStruct
        public ShareInfoContainer.ShareInfo503Container createShareInfoContainer() {
            return new ShareInfoContainer.ShareInfo503Container();
        }
    }

    public abstract T createShareInfoContainer();

    public abstract ShareEnumLevel getLevel();

    public T getShareInfoContainer() {
        return this.shareInfoContainer;
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
        if (getShareInfoContainer() != null) {
            packetInput.readUnmarshallable(getShareInfoContainer());
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnmarshalException */
    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) throws UnmarshalException {
        packetInput.align(Alignment.FOUR);
        int i10 = packetInput.readInt();
        if (i10 != getLevel().getInfoLevel()) {
            throw new UnmarshalException(String.format("Expected info level %d, got: %d", Integer.valueOf(getLevel().getInfoLevel()), Integer.valueOf(i10)));
        }
        int i11 = packetInput.readInt();
        if (i11 != i10) {
            throw new UnmarshalException(String.format("Expected info level %d to match enum level, got: %d", Integer.valueOf(i10), Integer.valueOf(i11)));
        }
        if (packetInput.readReferentID() != 0) {
            this.shareInfoContainer = (T) createShareInfoContainer();
        } else {
            this.shareInfoContainer = null;
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
    }
}
