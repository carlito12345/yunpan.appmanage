package com.yunpan.appmanage.bean;

import z7.s;

/* loaded from: classes.dex */
public class WpPathBean {
    public s jsonObject;
    public String name;
    public String path;
    public boolean is_dir = true;
    public boolean isSelect = false;
    public boolean isStopDown = false;
    public String downUrl = "";
    public String downUrlReferer = "";
    public String errorStr = "";
    public boolean ls_read = false;
    public boolean hasMoreData = false;
    public int page = 1;
    public String time_txt = "";
    public long size_long = 0;
    public String size_txt = "";

    public WpPathBean() {
    }

    public WpPathBean(String str, String str2) {
        this.name = str;
        this.path = str2;
    }
}
