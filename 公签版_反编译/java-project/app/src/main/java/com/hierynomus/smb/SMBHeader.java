package com.hierynomus.smb;

import com.hierynomus.protocol.commons.buffer.Buffer;

/* loaded from: classes.dex */
public interface SMBHeader {
    int getHeaderStartPosition();

    int getMessageEndPosition();

    void readFrom(Buffer<?> buffer);

    void writeTo(SMBBuffer sMBBuffer);
}
