package com.hierynomus.msdfsc.messages;

import com.hierynomus.protocol.commons.EnumWithValue;
import com.hierynomus.smb.SMBBuffer;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class SMB2GetDFSReferralResponse {
    private String originalPath;
    private int pathConsumed;
    private List<DFSReferral> referralEntries;
    private EnumSet<ReferralHeaderFlags> referralHeaderFlags;

    public enum ReferralHeaderFlags implements EnumWithValue<ReferralHeaderFlags> {
        ReferralServers(1),
        StorageServers(2),
        TargetFailback(4);

        private long value;

        ReferralHeaderFlags(long j10) {
            this.value = j10;
        }

        @Override // com.hierynomus.protocol.commons.EnumWithValue
        public long getValue() {
            return this.value;
        }
    }

    public SMB2GetDFSReferralResponse(String str) {
        this.referralEntries = new ArrayList();
        this.originalPath = str;
    }

    public int getPathConsumed() {
        return this.pathConsumed;
    }

    public List<DFSReferral> getReferralEntries() {
        return this.referralEntries;
    }

    public Set<ReferralHeaderFlags> getReferralHeaderFlags() {
        return this.referralHeaderFlags;
    }

    public int getVersionNumber() {
        if (this.referralEntries.isEmpty()) {
            return 0;
        }
        return this.referralEntries.get(0).getVersionNumber();
    }

    public void read(SMBBuffer sMBBuffer) {
        this.pathConsumed = sMBBuffer.readUInt16();
        int uInt16 = sMBBuffer.readUInt16();
        this.referralHeaderFlags = EnumWithValue.EnumUtils.toEnumSet(sMBBuffer.readUInt32AsInt(), ReferralHeaderFlags.class);
        for (int i10 = 0; i10 < uInt16; i10++) {
            DFSReferral dFSReferralFactory = DFSReferral.factory(sMBBuffer);
            if (dFSReferralFactory.getDfsPath() == null) {
                dFSReferralFactory.setDfsPath(this.originalPath);
            }
            this.referralEntries.add(dFSReferralFactory);
        }
    }

    public void writeTo(SMBBuffer sMBBuffer) {
        sMBBuffer.putUInt16(this.pathConsumed);
        sMBBuffer.putUInt16(this.referralEntries.size());
        sMBBuffer.putUInt32(EnumWithValue.EnumUtils.toLong(this.referralHeaderFlags));
        int iWpos = sMBBuffer.wpos();
        Iterator<DFSReferral> it = this.referralEntries.iterator();
        while (it.hasNext()) {
            iWpos += it.next().determineSize();
        }
        Iterator<DFSReferral> it2 = this.referralEntries.iterator();
        int iWriteTo = 0;
        while (it2.hasNext()) {
            iWriteTo = it2.next().writeTo(sMBBuffer, iWriteTo + iWpos);
        }
        Iterator<DFSReferral> it3 = this.referralEntries.iterator();
        while (it3.hasNext()) {
            it3.next().writeOffsettedData(sMBBuffer);
        }
    }

    public SMB2GetDFSReferralResponse(String str, int i10, EnumSet<ReferralHeaderFlags> enumSet, List<DFSReferral> list) {
        new ArrayList();
        this.originalPath = str;
        this.pathConsumed = i10;
        this.referralHeaderFlags = enumSet;
        this.referralEntries = list;
    }
}
