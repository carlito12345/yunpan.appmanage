package com.hierynomus.msdtyp;

import com.hierynomus.msdtyp.ace.ACE;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.smb.SMBBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class ACL {
    public static final byte ACL_REVISION = 2;
    public static final byte ACL_REVISION_DS = 4;
    private List<ACE> aces;
    private byte revision;

    public ACL(byte b10, List<ACE> list) {
        this.revision = b10;
        this.aces = list == null ? Collections.emptyList() : list;
    }

    public static ACL read(SMBBuffer sMBBuffer) throws Buffer.BufferException {
        byte b10 = sMBBuffer.readByte();
        sMBBuffer.skip(1);
        sMBBuffer.readUInt16();
        int uInt16 = sMBBuffer.readUInt16();
        sMBBuffer.skip(2);
        ArrayList arrayList = new ArrayList(uInt16);
        for (int i10 = 0; i10 < uInt16; i10++) {
            arrayList.add(ACE.read(sMBBuffer));
        }
        return new ACL(b10, arrayList);
    }

    public List<ACE> getAces() {
        return this.aces;
    }

    public byte getRevision() {
        return this.revision;
    }

    public void setRevision(byte b10) {
        this.revision = b10;
    }

    public String toString() {
        return "ACL{revision=" + ((int) this.revision) + ", aceCount=" + this.aces.size() + ", aces=" + this.aces + '}';
    }

    public void write(SMBBuffer sMBBuffer) {
        int iWpos = sMBBuffer.wpos();
        sMBBuffer.putByte(this.revision);
        sMBBuffer.putReserved1();
        int iWpos2 = sMBBuffer.wpos();
        sMBBuffer.wpos(iWpos2 + 2);
        sMBBuffer.putUInt16(this.aces.size());
        sMBBuffer.putReserved2();
        Iterator<ACE> it = this.aces.iterator();
        while (it.hasNext()) {
            it.next().write(sMBBuffer);
        }
        int iWpos3 = sMBBuffer.wpos();
        sMBBuffer.wpos(iWpos2);
        sMBBuffer.putUInt16(iWpos3 - iWpos);
        sMBBuffer.wpos(iWpos3);
    }
}
