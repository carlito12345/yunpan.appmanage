package com.yunpan.appmanage.bean;

import java.util.List;
import x9.n5;
import x9.w3;

/* loaded from: classes.dex */
public class ImageData {
    public List<w3> bdFiles;
    public int position;
    public n5 userInfo;
    public List<WpPathBean> wpFiles;

    public ImageData(int i10, List<w3> list) {
        this.userInfo = null;
        this.wpFiles = null;
        this.position = i10;
        this.bdFiles = list;
    }

    public ImageData(int i10, n5 n5Var, List<WpPathBean> list) {
        this.bdFiles = null;
        this.position = i10;
        this.userInfo = n5Var;
        this.wpFiles = list;
    }
}
