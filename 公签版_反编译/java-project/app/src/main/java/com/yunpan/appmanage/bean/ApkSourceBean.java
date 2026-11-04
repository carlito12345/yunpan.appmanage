package com.yunpan.appmanage.bean;

import com.yunpan.appmanage.util.a0;
import java.io.File;

/* loaded from: classes.dex */
public class ApkSourceBean {
    public String name;
    public String path;
    public long size;

    public ApkSourceBean(File file) {
        this.name = file.getName();
        this.path = file.getPath();
        this.size = a0.p(file);
    }
}
