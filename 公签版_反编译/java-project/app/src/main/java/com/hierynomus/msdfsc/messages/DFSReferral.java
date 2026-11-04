package com.hierynomus.msdfsc.messages;

import android.support.v4.media.session.a;
import com.hierynomus.protocol.commons.Charsets;
import com.hierynomus.protocol.commons.EnumWithValue;
import com.hierynomus.smb.SMBBuffer;
import g.b;
import java.util.List;

/* loaded from: classes.dex */
public abstract class DFSReferral {
    String dfsAlternatePath;
    String dfsPath;
    List<String> expandedNames;
    protected String path;
    long referralEntryFlags;
    private ServerType serverType;
    String specialName;
    int ttl;
    private int versionNumber;

    public enum ReferralEntryFlags implements EnumWithValue<ReferralEntryFlags> {
        NameListReferral(2),
        TargetSetBoundary(4);

        private long value;

        ReferralEntryFlags(long j10) {
            this.value = j10;
        }

        @Override // com.hierynomus.protocol.commons.EnumWithValue
        public long getValue() {
            return this.value;
        }
    }

    public enum ServerType implements EnumWithValue<ServerType> {
        LINK(0),
        ROOT(1);

        private long value;

        ServerType(long j10) {
            this.value = j10;
        }

        @Override // com.hierynomus.protocol.commons.EnumWithValue
        public long getValue() {
            return this.value;
        }
    }

    public DFSReferral() {
    }

    public static DFSReferral factory(SMBBuffer sMBBuffer) {
        int uInt16 = sMBBuffer.readUInt16();
        sMBBuffer.rpos(sMBBuffer.rpos() - 2);
        if (uInt16 == 1) {
            return new DFSReferralV1().read(sMBBuffer);
        }
        if (uInt16 == 2) {
            return new DFSReferralV2().read(sMBBuffer);
        }
        if (uInt16 == 3 || uInt16 == 4) {
            return new DFSReferralV34().read(sMBBuffer);
        }
        throw new IllegalArgumentException(b.i("Incorrect version number ", uInt16, " while parsing DFS Referrals"));
    }

    public abstract int determineSize();

    public String getDfsAlternatePath() {
        return this.dfsAlternatePath;
    }

    public String getDfsPath() {
        return this.dfsPath;
    }

    public List<String> getExpandedNames() {
        return this.expandedNames;
    }

    public String getPath() {
        return this.path;
    }

    public long getReferralEntryFlags() {
        return this.referralEntryFlags;
    }

    public ServerType getServerType() {
        return this.serverType;
    }

    public String getSpecialName() {
        return this.specialName;
    }

    public int getTtl() {
        return this.ttl;
    }

    public int getVersionNumber() {
        return this.versionNumber;
    }

    public final DFSReferral read(SMBBuffer sMBBuffer) {
        int iRpos = sMBBuffer.rpos();
        this.versionNumber = sMBBuffer.readUInt16();
        int uInt16 = sMBBuffer.readUInt16();
        this.serverType = (ServerType) EnumWithValue.EnumUtils.valueOf(sMBBuffer.readUInt16(), ServerType.class, null);
        this.referralEntryFlags = sMBBuffer.readUInt16();
        readReferral(sMBBuffer, iRpos);
        sMBBuffer.rpos(iRpos + uInt16);
        return this;
    }

    public String readOffsettedString(SMBBuffer sMBBuffer, int i10, int i11) {
        int iRpos = sMBBuffer.rpos();
        sMBBuffer.rpos(i10 + i11);
        String nullTerminatedString = sMBBuffer.readNullTerminatedString(Charsets.UTF_16);
        sMBBuffer.rpos(iRpos);
        return nullTerminatedString;
    }

    public abstract void readReferral(SMBBuffer sMBBuffer, int i10);

    public void setDfsPath(String str) {
        this.dfsPath = str;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("DFSReferral[path=");
        sb2.append(this.path);
        sb2.append(",dfsPath=");
        sb2.append(this.dfsPath);
        sb2.append(",dfsAlternatePath=");
        sb2.append(this.dfsAlternatePath);
        sb2.append(",specialName=");
        sb2.append(this.specialName);
        sb2.append(",ttl=");
        return a.s(sb2, this.ttl, "]");
    }

    public abstract void writeOffsettedData(SMBBuffer sMBBuffer);

    public abstract int writeReferral(SMBBuffer sMBBuffer, int i10, int i11);

    public final int writeTo(SMBBuffer sMBBuffer, int i10) {
        int iWpos = sMBBuffer.wpos();
        sMBBuffer.putUInt16(this.versionNumber);
        sMBBuffer.putUInt16(determineSize());
        sMBBuffer.putUInt16((int) this.serverType.value);
        sMBBuffer.putUInt16((int) this.referralEntryFlags);
        return writeReferral(sMBBuffer, iWpos, i10);
    }

    public DFSReferral(int i10, ServerType serverType, int i11) {
        this.versionNumber = i10;
        this.serverType = serverType;
        this.referralEntryFlags = i11;
    }
}
