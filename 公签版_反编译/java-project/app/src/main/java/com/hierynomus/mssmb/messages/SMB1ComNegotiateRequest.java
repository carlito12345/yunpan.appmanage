package com.hierynomus.mssmb.messages;

import com.hierynomus.mssmb.SMB1Header;
import com.hierynomus.mssmb.SMB1Packet;
import com.hierynomus.mssmb.SMB1PacketData;
import com.hierynomus.mssmb2.SMB2Dialect;
import com.hierynomus.protocol.commons.Charsets;
import com.hierynomus.smb.SMBBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public class SMB1ComNegotiateRequest extends SMB1Packet {
    private Set<SMB2Dialect> dialects;

    public SMB1ComNegotiateRequest(Set<SMB2Dialect> set) {
        this.dialects = set;
    }

    public String toString() {
        return "SMB_COM_NEGOTIATE";
    }

    @Override // com.hierynomus.mssmb.SMB1Packet
    public void writeTo(SMBBuffer sMBBuffer) {
        int length = 0;
        sMBBuffer.putByte((byte) 0);
        ArrayList arrayList = new ArrayList();
        arrayList.add("SMB 2.002");
        if (this.dialects.size() > 1 || !this.dialects.contains(SMB2Dialect.SMB_2_0_2)) {
            arrayList.add("SMB 2.???");
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            length += ((String) it.next()).length() + 2;
        }
        sMBBuffer.putUInt16(length);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            String str = (String) it2.next();
            sMBBuffer.putByte((byte) 2);
            sMBBuffer.putNullTerminatedString(str, Charsets.UTF_8);
        }
        ((SMB1Header) this.header).setMessageEndPosition(sMBBuffer.wpos());
    }

    @Override // com.hierynomus.mssmb.SMB1Packet, com.hierynomus.smb.SMBPacket
    public void read(SMB1PacketData sMB1PacketData) {
        throw new UnsupportedOperationException("SMBv1 not implemented in SMBJ");
    }
}
