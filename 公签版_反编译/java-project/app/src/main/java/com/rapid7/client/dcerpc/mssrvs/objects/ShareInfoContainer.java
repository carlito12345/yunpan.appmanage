package com.rapid7.client.dcerpc.mssrvs.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo;
import java.rmi.UnmarshalException;
import java.util.Arrays;

/* loaded from: classes.dex */
public abstract class ShareInfoContainer<T extends ShareInfo> implements Unmarshallable {
    private T[] buffer;

    public static class ShareInfo0Container extends ShareInfoContainer<ShareInfo0> {
        @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfoContainer
        public ShareInfo0[] createBuffer(int i10) {
            return new ShareInfo0[i10];
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfoContainer
        public ShareInfo0 createEntry() {
            return new ShareInfo0();
        }
    }

    public static class ShareInfo1Container extends ShareInfoContainer<ShareInfo1> {
        @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfoContainer
        public ShareInfo1[] createBuffer(int i10) {
            return new ShareInfo1[i10];
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfoContainer
        public ShareInfo1 createEntry() {
            return new ShareInfo1();
        }
    }

    public static class ShareInfo2Container extends ShareInfoContainer<ShareInfo2> {
        @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfoContainer
        public ShareInfo2[] createBuffer(int i10) {
            return new ShareInfo2[i10];
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfoContainer
        public ShareInfo2 createEntry() {
            return new ShareInfo2();
        }
    }

    public static class ShareInfo501Container extends ShareInfoContainer<ShareInfo501> {
        @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfoContainer
        public ShareInfo501[] createBuffer(int i10) {
            return new ShareInfo501[i10];
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfoContainer
        public ShareInfo501 createEntry() {
            return new ShareInfo501();
        }
    }

    public static class ShareInfo502Container extends ShareInfoContainer<ShareInfo502> {
        @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfoContainer
        public ShareInfo502[] createBuffer(int i10) {
            return new ShareInfo502[i10];
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfoContainer
        public ShareInfo502 createEntry() {
            return new ShareInfo502();
        }
    }

    public static class ShareInfo503Container extends ShareInfoContainer<ShareInfo503> {
        @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfoContainer
        public ShareInfo503[] createBuffer(int i10) {
            return new ShareInfo503[i10];
        }

        @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfoContainer
        public ShareInfo503 createEntry() {
            return new ShareInfo503();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnmarshalException */
    private int readIndex(String str, PacketInput packetInput) throws UnmarshalException {
        long unsignedInt = packetInput.readUnsignedInt();
        if (unsignedInt <= 2147483647L) {
            return (int) unsignedInt;
        }
        throw new UnmarshalException(String.format("%s %d > %d", str, Long.valueOf(unsignedInt), Integer.MAX_VALUE));
    }

    public abstract T[] createBuffer(int i10);

    public abstract T createEntry();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ShareInfoContainer) {
            return Arrays.equals(this.buffer, ((ShareInfoContainer) obj).buffer);
        }
        return false;
    }

    public T[] getBuffer() {
        return this.buffer;
    }

    public int hashCode() {
        return Arrays.hashCode(this.buffer);
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
        Unmarshallable[] unmarshallableArr;
        if (this.buffer != null) {
            packetInput.align(Alignment.FOUR);
            packetInput.fullySkipBytes(4);
            int i10 = 0;
            while (true) {
                unmarshallableArr = this.buffer;
                if (i10 >= unmarshallableArr.length) {
                    break;
                }
                unmarshallableArr[i10] = createEntry();
                this.buffer[i10].unmarshalPreamble(packetInput);
                i10++;
            }
            for (Unmarshallable unmarshallable : unmarshallableArr) {
                unmarshallable.unmarshalEntity(packetInput);
            }
            for (T t10 : this.buffer) {
                t10.unmarshalDeferrals(packetInput);
            }
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnmarshalException */
    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) throws UnmarshalException {
        packetInput.align(Alignment.FOUR);
        int index = readIndex("EntriesRead", packetInput);
        if (packetInput.readReferentID() == 0) {
            this.buffer = null;
        } else {
            if (index < 0) {
                throw new UnmarshalException(String.format("Expected entriesRead >= 0, got: %d", Integer.valueOf(index)));
            }
            this.buffer = (T[]) createBuffer(index);
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
    }
}
