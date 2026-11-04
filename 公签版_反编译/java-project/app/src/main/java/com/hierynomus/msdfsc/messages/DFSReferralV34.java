package com.hierynomus.msdfsc.messages;

import com.hierynomus.msdfsc.messages.DFSReferral;
import com.hierynomus.protocol.commons.Charsets;
import com.hierynomus.protocol.commons.EnumWithValue;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.smb.SMBBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class DFSReferralV34 extends DFSReferral {
    private static final int SIZE = 34;

    public DFSReferralV34() {
    }

    @Override // com.hierynomus.msdfsc.messages.DFSReferral
    public int determineSize() {
        return 34;
    }

    @Override // com.hierynomus.msdfsc.messages.DFSReferral
    public void readReferral(SMBBuffer sMBBuffer, int i10) throws Buffer.BufferException {
        this.ttl = sMBBuffer.readUInt32AsInt();
        if (!EnumWithValue.EnumUtils.isSet(this.referralEntryFlags, DFSReferral.ReferralEntryFlags.NameListReferral)) {
            this.dfsPath = readOffsettedString(sMBBuffer, i10, sMBBuffer.readUInt16());
            this.dfsAlternatePath = readOffsettedString(sMBBuffer, i10, sMBBuffer.readUInt16());
            this.path = readOffsettedString(sMBBuffer, i10, sMBBuffer.readUInt16());
            sMBBuffer.skip(16);
            return;
        }
        this.specialName = readOffsettedString(sMBBuffer, i10, sMBBuffer.readUInt16());
        int uInt16 = sMBBuffer.readUInt16();
        int uInt162 = sMBBuffer.readUInt16();
        this.expandedNames = new ArrayList(uInt16);
        int iRpos = sMBBuffer.rpos();
        sMBBuffer.rpos(i10 + uInt162);
        for (int i11 = 0; i11 < uInt16; i11++) {
            this.expandedNames.add(sMBBuffer.readNullTerminatedString(Charsets.UTF_16));
        }
        sMBBuffer.rpos(iRpos);
    }

    @Override // com.hierynomus.msdfsc.messages.DFSReferral
    public void writeOffsettedData(SMBBuffer sMBBuffer) {
        if (EnumWithValue.EnumUtils.isSet(this.referralEntryFlags, DFSReferral.ReferralEntryFlags.NameListReferral)) {
            sMBBuffer.putNullTerminatedString(this.specialName, Charsets.UTF_16);
            Iterator<String> it = this.expandedNames.iterator();
            while (it.hasNext()) {
                sMBBuffer.putNullTerminatedString(it.next(), Charsets.UTF_16);
            }
            return;
        }
        String str = this.dfsPath;
        Charset charset = Charsets.UTF_16;
        sMBBuffer.putNullTerminatedString(str, charset);
        sMBBuffer.putNullTerminatedString(this.dfsAlternatePath, charset);
        sMBBuffer.putNullTerminatedString(this.path, charset);
    }

    @Override // com.hierynomus.msdfsc.messages.DFSReferral
    public int writeReferral(SMBBuffer sMBBuffer, int i10, int i11) {
        sMBBuffer.putUInt32(this.ttl);
        if (EnumWithValue.EnumUtils.isSet(this.referralEntryFlags, DFSReferral.ReferralEntryFlags.NameListReferral)) {
            sMBBuffer.putUInt16(i11 - i10);
            int length = ((this.specialName.length() + 1) * 2) + i11;
            sMBBuffer.putUInt16(this.expandedNames.size());
            sMBBuffer.putUInt16(length - i10);
            Iterator<String> it = this.expandedNames.iterator();
            while (it.hasNext()) {
                length += (it.next().length() + 1) * 2;
            }
            return length;
        }
        sMBBuffer.putUInt16(i11 - i10);
        int length2 = ((this.dfsPath.length() + 1) * 2) + i11;
        sMBBuffer.putUInt16(length2 - i10);
        int length3 = ((this.dfsAlternatePath.length() + 1) * 2) + length2;
        sMBBuffer.putUInt16(length3 - i10);
        int length4 = ((this.path.length() + 1) * 2) + length3;
        sMBBuffer.putReserved4();
        sMBBuffer.putReserved4();
        sMBBuffer.putReserved4();
        sMBBuffer.putReserved4();
        return length4;
    }

    public DFSReferralV34(int i10, DFSReferral.ServerType serverType, int i11, int i12, String str, String str2, String str3) {
        super(i10, serverType, i11);
        this.ttl = i12;
        this.dfsPath = str;
        this.dfsAlternatePath = str2;
        this.path = str3;
    }

    public DFSReferralV34(int i10, DFSReferral.ServerType serverType, int i11, int i12, String str, List<String> list) {
        super(i10, serverType, i11);
        this.ttl = i12;
        this.specialName = str;
        this.expandedNames = list;
    }
}
