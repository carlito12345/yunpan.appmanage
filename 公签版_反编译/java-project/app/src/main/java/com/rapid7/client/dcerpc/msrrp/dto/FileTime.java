package com.rapid7.client.dcerpc.msrrp.dto;

import j$.util.DesugarTimeZone;
import j$.util.Objects;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
public class FileTime {
    private final Date date;
    private final long windowsTime;

    public FileTime(long j10) {
        if (j10 >= com.hierynomus.msdtyp.FileTime.WINDOWS_TO_UNIX_EPOCH) {
            this.date = new Date((j10 - com.hierynomus.msdtyp.FileTime.WINDOWS_TO_UNIX_EPOCH) / 10000);
            this.windowsTime = j10;
        } else {
            throw new IllegalArgumentException("WindowsTime is invalid: " + j10 + " < 116444736000000000");
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof FileTime) {
            FileTime fileTime = (FileTime) obj;
            if (Objects.equals(this.date, fileTime.date) && Long.valueOf(this.windowsTime).equals(Long.valueOf(fileTime.windowsTime))) {
                return true;
            }
        }
        return false;
    }

    public Date getTime() {
        return this.date;
    }

    public long getWindowsTime() {
        return this.windowsTime;
    }

    public int hashCode() {
        return Objects.hash(this.date, Long.valueOf(this.windowsTime));
    }

    public String toString() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ");
        simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
        return String.format("%s (%d)", simpleDateFormat.format(this.date), Long.valueOf(this.windowsTime));
    }
}
