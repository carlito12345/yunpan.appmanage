package com.hierynomus.msfscc.directory;

import com.hierynomus.msfscc.FileNotifyAction;
import com.hierynomus.protocol.commons.Charsets;
import com.hierynomus.protocol.commons.EnumWithValue;
import com.hierynomus.protocol.commons.buffer.Buffer;
import g.b;

/* loaded from: classes.dex */
public class FileNotifyInformation {
    private FileNotifyAction action;
    private String fileName;
    private int nextEntryOffset;

    public FileNotifyAction getAction() {
        return this.action;
    }

    public String getFileName() {
        return this.fileName;
    }

    public int getNextEntryOffset() {
        return this.nextEntryOffset;
    }

    public void read(Buffer<?> buffer) {
        this.nextEntryOffset = buffer.readUInt32AsInt();
        this.action = (FileNotifyAction) EnumWithValue.EnumUtils.valueOf(buffer.readUInt32(), FileNotifyAction.class, null);
        this.fileName = buffer.readString(Charsets.UTF_16LE, ((int) buffer.readUInt32()) / 2);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("FileNotifyInformation{action=");
        sb2.append(this.action);
        sb2.append(", fileName='");
        return b.l(this.fileName, "'}", sb2);
    }
}
