package com.yunpan.appmanage.bean;

import java.util.ArrayList;
import x9.w3;

/* loaded from: classes.dex */
public class PasteInfo {
    public boolean isDelete;
    public ArrayList<w3> list;
    public String toDir;

    public PasteInfo(boolean z, String str, ArrayList<w3> arrayList) {
        this.isDelete = z;
        this.toDir = str;
        this.list = arrayList;
    }
}
