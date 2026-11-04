package com.yunpan.appmanage.bean;

import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
public class AppAttribBean {
    public long installTime;
    public String installTime_str;
    public String name;
    public String packageName;
    public long updateTime;
    public String updateTime_str;
    public int versionCode;
    public String versionName;

    public AppAttribBean(String str, String str2, String str3, int i10, long j10, long j11) {
        this.name = str;
        this.packageName = str2;
        this.versionName = str3;
        this.versionCode = i10;
        this.installTime = j10;
        this.installTime_str = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(j10));
        this.updateTime = j11;
        this.updateTime_str = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(j11));
    }
}
