package com.android.apksig.util;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public interface DataSource {
    void copyTo(long j10, int i10, ByteBuffer byteBuffer);

    void feed(long j10, long j11, DataSink dataSink);

    ByteBuffer getByteBuffer(long j10, int i10);

    long size();

    DataSource slice(long j10, long j11);
}
