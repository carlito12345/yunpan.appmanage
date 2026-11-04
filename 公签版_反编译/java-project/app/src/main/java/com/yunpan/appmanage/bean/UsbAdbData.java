package com.yunpan.appmanage.bean;

import com.alibaba.sdk.android.oss.signer.SignParameters;
import g.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class UsbAdbData {
    public int code = -1;
    public List<String> lines = new ArrayList();

    public String getListStr() {
        Iterator<String> it = this.lines.iterator();
        String strK = "";
        while (it.hasNext()) {
            strK = b.k(strK, it.next(), SignParameters.NEW_LINE);
        }
        return !strK.isEmpty() ? strK.trim() : strK;
    }
}
