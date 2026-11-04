package com.rapid7.client.dcerpc.io;

import com.rapid7.client.dcerpc.io.ndr.Marshallable;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class PacketOutput extends PrimitiveOutput {
    private int referentID;

    public PacketOutput(OutputStream outputStream) {
        super(outputStream);
        this.referentID = 131072;
    }

    public void writeEmptyCVArray(int i10) {
        writeInt(i10);
        writeInt(0);
        writeInt(0);
    }

    public void writeEmptyRPCUnicodeString(int i10) {
        writeShort(0);
        writeShort(((short) i10) << 1);
        writeReferentID();
        writeInt(i10);
        writeInt(0);
        writeInt(0);
    }

    public <T extends Marshallable> T writeMarshallable(T t10) {
        t10.marshalPreamble(this);
        t10.marshalEntity(this);
        t10.marshalDeferrals(this);
        return t10;
    }

    public void writeNull() {
        writeInt(0);
    }

    public void writeReferentID() {
        int i10 = this.referentID;
        this.referentID = i10 + 4;
        writeInt(i10);
    }

    public boolean writeReferentID(Object obj) {
        if (obj == null) {
            writeNull();
            return false;
        }
        writeReferentID();
        return true;
    }
}
