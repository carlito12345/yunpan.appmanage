package com.hierynomus.smbj.share;

import com.hierynomus.msdtyp.SecurityDescriptor;
import com.hierynomus.msdtyp.SecurityInformation;
import com.hierynomus.msfscc.fileinformation.FileAllInformation;
import com.hierynomus.msfscc.fileinformation.FileLinkInformation;
import com.hierynomus.msfscc.fileinformation.FileQueryableInformation;
import com.hierynomus.msfscc.fileinformation.FileRenameInformation;
import com.hierynomus.msfscc.fileinformation.FileSettableInformation;
import com.hierynomus.mssmb2.SMB2FileId;
import com.hierynomus.smbj.common.SmbPath;
import java.util.EnumSet;
import java.util.Set;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public abstract class DiskEntry extends Open<DiskShare> {
    protected final Logger logger;

    public DiskEntry(SMB2FileId sMB2FileId, DiskShare diskShare, SmbPath smbPath) {
        super(sMB2FileId, smbPath, diskShare);
        this.logger = LoggerFactory.getLogger(getClass());
    }

    public void closeNoWait() {
        ((DiskShare) this.share).closeFileIdNoWait(this.fileId);
    }

    public void createHardlink(String str) {
        createHardlink(str, false);
    }

    public void deleteOnClose() {
        ((DiskShare) this.share).deleteOnClose(this.fileId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DiskEntry diskEntry = (DiskEntry) obj;
        SmbPath smbPath = this.name;
        if (smbPath == null) {
            if (diskEntry.name != null) {
                return false;
            }
        } else if (!smbPath.equals(diskEntry.name)) {
            return false;
        }
        S s8 = this.share;
        if (s8 == 0) {
            if (diskEntry.share != 0) {
                return false;
            }
        } else if (!((DiskShare) s8).equals(diskEntry.share)) {
            return false;
        }
        return true;
    }

    public void flush() {
        ((DiskShare) this.share).flush(this.fileId);
    }

    public DiskShare getDiskShare() {
        return (DiskShare) this.share;
    }

    public FileAllInformation getFileInformation() {
        return (FileAllInformation) getFileInformation(FileAllInformation.class);
    }

    @Deprecated
    public String getFileName() {
        return this.name.toUncPath();
    }

    public String getPath() {
        return this.name.getPath();
    }

    public SecurityDescriptor getSecurityInformation(Set<SecurityInformation> set) {
        return ((DiskShare) this.share).getSecurityInfo(this.fileId, set);
    }

    public String getUncPath() {
        return this.name.toUncPath();
    }

    public int hashCode() {
        SmbPath smbPath = this.name;
        int iHashCode = ((smbPath == null ? 0 : smbPath.hashCode()) + 31) * 31;
        S s8 = this.share;
        return iHashCode + (s8 != 0 ? ((DiskShare) s8).hashCode() : 0);
    }

    public byte[] ioctl(int i10, boolean z, byte[] bArr, int i11, int i12) {
        return ((DiskShare) this.share).ioctl(this.fileId, i10, z, bArr, i11, i12);
    }

    public void rename(String str) {
        rename(str, false);
    }

    public <F extends FileSettableInformation> void setFileInformation(F f10) {
        ((DiskShare) this.share).setFileInformation(this.fileId, (SMB2FileId) f10);
    }

    public void setSecurityInformation(SecurityDescriptor securityDescriptor) {
        EnumSet enumSetNoneOf = EnumSet.noneOf(SecurityInformation.class);
        if (securityDescriptor.getOwnerSid() != null) {
            enumSetNoneOf.add(SecurityInformation.OWNER_SECURITY_INFORMATION);
        }
        if (securityDescriptor.getGroupSid() != null) {
            enumSetNoneOf.add(SecurityInformation.GROUP_SECURITY_INFORMATION);
        }
        if (securityDescriptor.getControl().contains(SecurityDescriptor.Control.DP)) {
            enumSetNoneOf.add(SecurityInformation.DACL_SECURITY_INFORMATION);
        }
        if (securityDescriptor.getControl().contains(SecurityDescriptor.Control.SP)) {
            enumSetNoneOf.add(SecurityInformation.SACL_SECURITY_INFORMATION);
        }
        ((DiskShare) this.share).setSecurityInfo(this.fileId, enumSetNoneOf, securityDescriptor);
    }

    public void createHardlink(String str, boolean z) {
        setFileInformation(new FileLinkInformation(z, str));
    }

    public <F extends FileQueryableInformation> F getFileInformation(Class<F> cls) {
        return (F) ((DiskShare) this.share).getFileInformation(this.fileId, cls);
    }

    public byte[] ioctl(int i10, boolean z, byte[] bArr, int i11, int i12, int i13) {
        return ((DiskShare) this.share).ioctl(this.fileId, i10, z, bArr, i11, i12, i13);
    }

    public void rename(String str, boolean z) {
        rename(str, z, 0L);
    }

    public int ioctl(int i10, boolean z, byte[] bArr, int i11, int i12, byte[] bArr2, int i13, int i14) {
        return ((DiskShare) this.share).ioctl(this.fileId, i10, z, bArr, i11, i12, bArr2, i13, i14);
    }

    public void rename(String str, boolean z, long j10) {
        setFileInformation(new FileRenameInformation(z, j10, str));
    }

    public void setSecurityInformation(SecurityDescriptor securityDescriptor, Set<SecurityInformation> set) {
        ((DiskShare) this.share).setSecurityInfo(this.fileId, set, securityDescriptor);
    }
}
