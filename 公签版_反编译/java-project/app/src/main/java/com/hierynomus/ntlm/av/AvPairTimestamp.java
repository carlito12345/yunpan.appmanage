package com.hierynomus.ntlm.av;

import com.hierynomus.msdtyp.FileTime;
import com.hierynomus.msdtyp.MsDataTypes;
import com.hierynomus.protocol.commons.buffer.Buffer;

/* loaded from: classes.dex */
public class AvPairTimestamp extends AvPair<FileTime> {
    public AvPairTimestamp() {
        super(AvId.MsvAvTimestamp);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [T, com.hierynomus.msdtyp.FileTime] */
    @Override // com.hierynomus.ntlm.av.AvPair
    public AvPair<FileTime> read(Buffer<?> buffer) {
        buffer.readUInt16();
        this.value = MsDataTypes.readFileTime(buffer);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.hierynomus.ntlm.av.AvPair
    public void write(Buffer<?> buffer) {
        buffer.putUInt16((int) this.avId.getValue());
        buffer.putUInt16(8);
        MsDataTypes.putFileTime((FileTime) this.value, buffer);
    }
}
