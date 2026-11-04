package com.hierynomus.smbfs;

import java.nio.file.attribute.FileTime;

/* loaded from: classes.dex */
class FileTimes {
    private FileTimes() {
    }

    public static FileTime fromSmb(com.hierynomus.msdtyp.FileTime fileTime) {
        return FileTime.fromMillis(fileTime.toEpochMillis());
    }
}
