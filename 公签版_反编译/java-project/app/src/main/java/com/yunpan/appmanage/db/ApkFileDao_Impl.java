package com.yunpan.appmanage.db;

import android.database.Cursor;
import androidx.room.e;
import androidx.room.p;
import androidx.room.t;
import androidx.room.v;
import com.bumptech.glide.c;
import com.bumptech.glide.d;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class ApkFileDao_Impl implements ApkFileDao {
    private final p __db;
    private final e __insertionAdapterOfApkFileBean;
    private final v __preparedStmtOfDeleteInsertTime;
    private final v __preparedStmtOfUpdateBeanAbi;

    public ApkFileDao_Impl(p pVar) {
        this.__db = pVar;
        this.__insertionAdapterOfApkFileBean = new e(pVar) { // from class: com.yunpan.appmanage.db.ApkFileDao_Impl.1
            @Override // androidx.room.v
            public String createQuery() {
                return "INSERT OR REPLACE INTO `apkFiles` (`path`,`lastModified`,`apkName`,`packageName`,`versionName`,`versionCode`,`minSdk`,`abi`,`insertTime`,`sign`,`isSystemUid`) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
            }

            @Override // androidx.room.e
            public void bind(c4.e eVar, ApkFileBean apkFileBean) {
                String str = apkFileBean.path;
                if (str == null) {
                    eVar.y(1);
                } else {
                    eVar.e(1, str);
                }
                eVar.m(2, apkFileBean.lastModified);
                String str2 = apkFileBean.apkName;
                if (str2 == null) {
                    eVar.y(3);
                } else {
                    eVar.e(3, str2);
                }
                String str3 = apkFileBean.packageName;
                if (str3 == null) {
                    eVar.y(4);
                } else {
                    eVar.e(4, str3);
                }
                String str4 = apkFileBean.versionName;
                if (str4 == null) {
                    eVar.y(5);
                } else {
                    eVar.e(5, str4);
                }
                eVar.m(6, apkFileBean.versionCode);
                eVar.m(7, apkFileBean.minSdk);
                String str5 = apkFileBean.abi;
                if (str5 == null) {
                    eVar.y(8);
                } else {
                    eVar.e(8, str5);
                }
                eVar.m(9, apkFileBean.insertTime);
                String str6 = apkFileBean.sign;
                if (str6 == null) {
                    eVar.y(10);
                } else {
                    eVar.e(10, str6);
                }
                eVar.m(11, apkFileBean.isSystemUid ? 1L : 0L);
            }
        };
        this.__preparedStmtOfDeleteInsertTime = new v(pVar) { // from class: com.yunpan.appmanage.db.ApkFileDao_Impl.2
            @Override // androidx.room.v
            public String createQuery() {
                return "DELETE FROM apkFiles WHERE insertTime < ?";
            }
        };
        this.__preparedStmtOfUpdateBeanAbi = new v(pVar) { // from class: com.yunpan.appmanage.db.ApkFileDao_Impl.3
            @Override // androidx.room.v
            public String createQuery() {
                return "UPDATE apkFiles SET abi = ? WHERE path = ?";
            }
        };
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }

    @Override // com.yunpan.appmanage.db.ApkFileDao
    public void deleteInsertTime(long j10) {
        this.__db.assertNotSuspendingTransaction();
        c4.e eVarAcquire = this.__preparedStmtOfDeleteInsertTime.acquire();
        eVarAcquire.m(1, j10);
        try {
            this.__db.beginTransaction();
            try {
                eVarAcquire.f();
                this.__db.setTransactionSuccessful();
            } finally {
                this.__db.endTransaction();
            }
        } finally {
            this.__preparedStmtOfDeleteInsertTime.release(eVarAcquire);
        }
    }

    @Override // com.yunpan.appmanage.db.ApkFileDao
    public ApkFileBean getApkFileBean(String str) {
        t tVarJ = t.J(1, "select * from apkFiles where `path`=?");
        if (str == null) {
            tVarJ.y(1);
        } else {
            tVarJ.e(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "path");
            int iZ2 = c.z(cursorS, "lastModified");
            int iZ3 = c.z(cursorS, "apkName");
            int iZ4 = c.z(cursorS, "packageName");
            int iZ5 = c.z(cursorS, "versionName");
            int iZ6 = c.z(cursorS, "versionCode");
            int iZ7 = c.z(cursorS, "minSdk");
            int iZ8 = c.z(cursorS, "abi");
            int iZ9 = c.z(cursorS, "insertTime");
            int iZ10 = c.z(cursorS, "sign");
            int iZ11 = c.z(cursorS, "isSystemUid");
            ApkFileBean apkFileBean = null;
            if (cursorS.moveToFirst()) {
                ApkFileBean apkFileBean2 = new ApkFileBean();
                if (cursorS.isNull(iZ)) {
                    apkFileBean2.path = null;
                } else {
                    apkFileBean2.path = cursorS.getString(iZ);
                }
                apkFileBean2.lastModified = cursorS.getLong(iZ2);
                if (cursorS.isNull(iZ3)) {
                    apkFileBean2.apkName = null;
                } else {
                    apkFileBean2.apkName = cursorS.getString(iZ3);
                }
                if (cursorS.isNull(iZ4)) {
                    apkFileBean2.packageName = null;
                } else {
                    apkFileBean2.packageName = cursorS.getString(iZ4);
                }
                if (cursorS.isNull(iZ5)) {
                    apkFileBean2.versionName = null;
                } else {
                    apkFileBean2.versionName = cursorS.getString(iZ5);
                }
                apkFileBean2.versionCode = cursorS.getLong(iZ6);
                apkFileBean2.minSdk = cursorS.getInt(iZ7);
                if (cursorS.isNull(iZ8)) {
                    apkFileBean2.abi = null;
                } else {
                    apkFileBean2.abi = cursorS.getString(iZ8);
                }
                apkFileBean2.insertTime = cursorS.getLong(iZ9);
                if (cursorS.isNull(iZ10)) {
                    apkFileBean2.sign = null;
                } else {
                    apkFileBean2.sign = cursorS.getString(iZ10);
                }
                apkFileBean2.isSystemUid = cursorS.getInt(iZ11) != 0;
                apkFileBean = apkFileBean2;
            }
            cursorS.close();
            tVarJ.K();
            return apkFileBean;
        } catch (Throwable th2) {
            cursorS.close();
            tVarJ.K();
            throw th2;
        }
    }

    @Override // com.yunpan.appmanage.db.ApkFileDao
    public long insert(ApkFileBean apkFileBean) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            long jInsertAndReturnId = this.__insertionAdapterOfApkFileBean.insertAndReturnId(apkFileBean);
            this.__db.setTransactionSuccessful();
            return jInsertAndReturnId;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.yunpan.appmanage.db.ApkFileDao
    public void updateBeanAbi(String str, String str2) {
        this.__db.assertNotSuspendingTransaction();
        c4.e eVarAcquire = this.__preparedStmtOfUpdateBeanAbi.acquire();
        if (str2 == null) {
            eVarAcquire.y(1);
        } else {
            eVarAcquire.e(1, str2);
        }
        if (str == null) {
            eVarAcquire.y(2);
        } else {
            eVarAcquire.e(2, str);
        }
        try {
            this.__db.beginTransaction();
            try {
                eVarAcquire.f();
                this.__db.setTransactionSuccessful();
            } finally {
                this.__db.endTransaction();
            }
        } finally {
            this.__preparedStmtOfUpdateBeanAbi.release(eVarAcquire);
        }
    }
}
