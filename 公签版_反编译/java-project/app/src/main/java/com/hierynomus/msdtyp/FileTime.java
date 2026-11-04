package com.hierynomus.msdtyp;

import j$.time.Instant;
import java.util.Date;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class FileTime {
    public static final int NANO100_TO_MILLI = 10000;
    public static final int NANO100_TO_NANO = 100;
    public static final long WINDOWS_TO_UNIX_EPOCH = 116444736000000000L;
    private final long windowsTimeStamp;

    public FileTime(long j10) {
        this.windowsTimeStamp = j10;
    }

    public static FileTime fromDate(Date date) {
        return new FileTime((date.getTime() * 10000) + WINDOWS_TO_UNIX_EPOCH);
    }

    public static FileTime fromInstant(Instant instant) {
        return new FileTime((instant.toEpochMilli() * 10000) + WINDOWS_TO_UNIX_EPOCH);
    }

    public static FileTime now() {
        return ofEpochMillis(System.currentTimeMillis());
    }

    public static FileTime ofEpoch(long j10, TimeUnit timeUnit) {
        return new FileTime((TimeUnit.NANOSECONDS.convert(j10, timeUnit) / 100) + WINDOWS_TO_UNIX_EPOCH);
    }

    public static FileTime ofEpochMillis(long j10) {
        return ofEpoch(j10, TimeUnit.MILLISECONDS);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.windowsTimeStamp == ((FileTime) obj).windowsTimeStamp;
    }

    public long getWindowsTimeStamp() {
        return this.windowsTimeStamp;
    }

    public int hashCode() {
        long j10 = this.windowsTimeStamp;
        return (int) (j10 ^ (j10 >>> 32));
    }

    public Date toDate() {
        return new Date(toEpochMillis());
    }

    public long toEpoch(TimeUnit timeUnit) {
        return timeUnit.convert((this.windowsTimeStamp - WINDOWS_TO_UNIX_EPOCH) * 100, TimeUnit.NANOSECONDS);
    }

    public long toEpochMillis() {
        return toEpoch(TimeUnit.MILLISECONDS);
    }

    public Instant toInstant() {
        return Instant.ofEpochMilli(toEpochMillis());
    }

    public String toString() {
        return toDate().toString();
    }
}
