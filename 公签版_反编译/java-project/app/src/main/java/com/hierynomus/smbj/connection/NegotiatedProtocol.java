package com.hierynomus.smbj.connection;

import com.hierynomus.mssmb2.SMB2Dialect;

/* loaded from: classes.dex */
public class NegotiatedProtocol {
    private SMB2Dialect dialect;
    private int maxReadSize;
    private int maxTransactSize;
    private int maxWriteSize;

    public NegotiatedProtocol(SMB2Dialect sMB2Dialect, int i10, int i11, int i12, boolean z) {
        this.dialect = sMB2Dialect;
        this.maxTransactSize = z ? i10 : Math.max(i10, 65536);
        this.maxReadSize = z ? i11 : Math.max(i11, 65536);
        this.maxWriteSize = z ? i12 : Math.max(i12, 65536);
    }

    public SMB2Dialect getDialect() {
        return this.dialect;
    }

    public int getMaxReadSize() {
        return this.maxReadSize;
    }

    public int getMaxTransactSize() {
        return this.maxTransactSize;
    }

    public int getMaxWriteSize() {
        return this.maxWriteSize;
    }

    public String toString() {
        return "NegotiatedProtocol{dialect=" + this.dialect + ", maxTransactSize=" + this.maxTransactSize + ", maxReadSize=" + this.maxReadSize + ", maxWriteSize=" + this.maxWriteSize + '}';
    }
}
