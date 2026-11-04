package com.yunpan.appmanage.bean;

/* loaded from: classes.dex */
public class AppHistoryLogBean {
    public String name;
    public String packageName;
    public long time;
    public long time_end;
    public String time_end_str;
    public long time_start;
    public String time_start_str;
    public String time_str;

    public AppHistoryLogBean(String str) {
        this.packageName = "";
        this.time_start = 0L;
        this.time_start_str = "";
        this.time_end = 0L;
        this.time_end_str = "";
        this.time = 0L;
        this.time_str = "";
        this.name = str;
    }

    public AppHistoryLogBean(String str, String str2, long j10, String str3) {
        this.time_end = 0L;
        this.time_end_str = "";
        this.time = 0L;
        this.time_str = "";
        this.name = str;
        this.packageName = str2;
        this.time_start = j10;
        this.time_start_str = str3;
    }
}
