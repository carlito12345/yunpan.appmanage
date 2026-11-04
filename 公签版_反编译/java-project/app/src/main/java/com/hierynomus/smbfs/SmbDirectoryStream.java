package com.hierynomus.smbfs;

import java.nio.file.DirectoryStream;
import java.nio.file.Path;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
class SmbDirectoryStream implements DirectoryStream<Path> {
    private boolean closed;
    private boolean iteratorTaken;
    private final List<Path> list;

    public SmbDirectoryStream(List<Path> list) {
        this.list = list;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.closed = true;
    }

    @Override // java.nio.file.DirectoryStream, java.lang.Iterable
    public Iterator<Path> iterator() {
        if (this.closed) {
            throw new IllegalStateException("closed");
        }
        if (this.iteratorTaken) {
            throw new IllegalStateException("iterator already taken");
        }
        this.iteratorTaken = true;
        return this.list.iterator();
    }
}
