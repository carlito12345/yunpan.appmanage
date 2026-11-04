package com.hierynomus.mssmb2.messages;

import com.hierynomus.msdtyp.FileTime;
import com.hierynomus.msdtyp.MsDataTypes;
import com.hierynomus.msfscc.FileAttributes;
import com.hierynomus.mssmb2.SMB2CreateAction;
import com.hierynomus.mssmb2.SMB2FileId;
import com.hierynomus.mssmb2.SMB2OplockLevel;
import com.hierynomus.mssmb2.SMB2Packet;
import com.hierynomus.mssmb2.messages.create.SMB2CreateContext;
import com.hierynomus.mssmb2.messages.create.SMB2LeaseCreateContext;
import com.hierynomus.mssmb2.messages.create.SMB2LeaseResponseContext;
import com.hierynomus.protocol.commons.EnumWithValue;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.smb.SMBBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class SMB2CreateResponse extends SMB2Packet {
    private FileTime changeTime;
    private SMB2CreateAction createAction;
    private FileTime creationTime;
    private Set<FileAttributes> fileAttributes;
    private SMB2FileId fileId;
    private int flags;
    private FileTime lastAccessTime;
    private FileTime lastWriteTime;
    private SMB2OplockLevel oplockLevel = SMB2OplockLevel.SMB2_OPLOCK_LEVEL_NONE;
    private List<SMB2CreateContext> createContexts = Collections.emptyList();

    public FileTime getChangeTime() {
        return this.changeTime;
    }

    public SMB2CreateAction getCreateAction() {
        return this.createAction;
    }

    public List<SMB2CreateContext> getCreateContexts() {
        return this.createContexts;
    }

    public FileTime getCreationTime() {
        return this.creationTime;
    }

    public Set<FileAttributes> getFileAttributes() {
        return this.fileAttributes;
    }

    public SMB2FileId getFileId() {
        return this.fileId;
    }

    public int getFlags() {
        return this.flags;
    }

    public FileTime getLastAccessTime() {
        return this.lastAccessTime;
    }

    public FileTime getLastWriteTime() {
        return this.lastWriteTime;
    }

    public SMB2LeaseResponseContext getLeaseResponseContext() {
        for (SMB2CreateContext sMB2CreateContext : this.createContexts) {
            if (Arrays.equals(sMB2CreateContext.getName(), SMB2LeaseCreateContext.NAME)) {
                return SMB2LeaseResponseContext.from(sMB2CreateContext);
            }
        }
        return null;
    }

    public SMB2OplockLevel getOplockLevel() {
        return this.oplockLevel;
    }

    @Override // com.hierynomus.mssmb2.SMB2Packet
    public void readMessage(SMBBuffer sMBBuffer) throws Buffer.BufferException {
        sMBBuffer.readUInt16();
        this.oplockLevel = (SMB2OplockLevel) EnumWithValue.EnumUtils.valueOf(sMBBuffer.readByte() & 255, SMB2OplockLevel.class, SMB2OplockLevel.SMB2_OPLOCK_LEVEL_NONE);
        this.flags = sMBBuffer.readByte() & 255;
        this.createAction = (SMB2CreateAction) EnumWithValue.EnumUtils.valueOf(sMBBuffer.readUInt32(), SMB2CreateAction.class, null);
        this.creationTime = MsDataTypes.readFileTime(sMBBuffer);
        this.lastAccessTime = MsDataTypes.readFileTime(sMBBuffer);
        this.lastWriteTime = MsDataTypes.readFileTime(sMBBuffer);
        this.changeTime = MsDataTypes.readFileTime(sMBBuffer);
        sMBBuffer.readRawBytes(8);
        sMBBuffer.readRawBytes(8);
        this.fileAttributes = EnumWithValue.EnumUtils.toEnumSet(sMBBuffer.readUInt32(), FileAttributes.class);
        sMBBuffer.skip(4);
        this.fileId = SMB2FileId.read(sMBBuffer);
        long uInt32 = sMBBuffer.readUInt32();
        long uInt322 = sMBBuffer.readUInt32();
        if (uInt322 > 0) {
            this.createContexts = SMB2CreateContext.readAll(sMBBuffer, getHeader().getHeaderStartPosition() + ((int) uInt32), (int) uInt322);
        }
    }

    public void setFileAttributes(Set<FileAttributes> set) {
        this.fileAttributes = set;
    }

    public void setFileId(SMB2FileId sMB2FileId) {
        this.fileId = sMB2FileId;
    }
}
