package com.yunpan.appmanage.db;

/* loaded from: classes.dex */
public interface ApkFileDao {
    void deleteInsertTime(long j10);

    ApkFileBean getApkFileBean(String str);

    long insert(ApkFileBean apkFileBean);

    void updateBeanAbi(String str, String str2);
}
