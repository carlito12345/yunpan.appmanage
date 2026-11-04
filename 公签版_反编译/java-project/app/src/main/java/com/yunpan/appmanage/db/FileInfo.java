package com.yunpan.appmanage.db;

import java.io.Serializable;

/* loaded from: classes.dex */
public class FileInfo implements Serializable {
    public boolean isDir;
    public boolean isExist = true;
    public long lastModified;
    public String link;
    public String name;
    public String parent;
    public String path;
    public long size;

    public FileInfo(String str, String str2, String str3, long j10, String str4, long j11, boolean z) {
        this.path = str;
        this.name = str2;
        this.parent = str3;
        this.size = j10;
        this.link = str4;
        this.lastModified = j11;
        this.isDir = z;
    }
}
