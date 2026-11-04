package com.yunpan.appmanage.db;

import android.database.Cursor;
import androidx.room.e;
import androidx.room.p;
import androidx.room.t;
import androidx.room.v;
import com.bumptech.glide.c;
import com.bumptech.glide.d;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class AppDao_Impl implements AppDao {
    private final p __db;
    private final e __insertionAdapterOfAppBean;
    private final v __preparedStmtOfDeleteAll;
    private final v __preparedStmtOfDeletePackageName;

    public AppDao_Impl(p pVar) {
        this.__db = pVar;
        this.__insertionAdapterOfAppBean = new e(pVar) { // from class: com.yunpan.appmanage.db.AppDao_Impl.1
            @Override // androidx.room.v
            public String createQuery() {
                return "INSERT OR REPLACE INTO `app` (`name`,`pack`,`apkPath`,`apkParentPath`,`dataDir`,`uid`,`isSystem`,`isHide`,`isDisable`,`isCanStart`,`isUnInstall`) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
            }

            @Override // androidx.room.e
            public void bind(c4.e eVar, AppBean appBean) {
                String str = appBean.name;
                if (str == null) {
                    eVar.y(1);
                } else {
                    eVar.e(1, str);
                }
                String str2 = appBean.pack;
                if (str2 == null) {
                    eVar.y(2);
                } else {
                    eVar.e(2, str2);
                }
                String str3 = appBean.apkPath;
                if (str3 == null) {
                    eVar.y(3);
                } else {
                    eVar.e(3, str3);
                }
                String str4 = appBean.apkParentPath;
                if (str4 == null) {
                    eVar.y(4);
                } else {
                    eVar.e(4, str4);
                }
                String str5 = appBean.dataDir;
                if (str5 == null) {
                    eVar.y(5);
                } else {
                    eVar.e(5, str5);
                }
                eVar.m(6, appBean.uid);
                eVar.m(7, appBean.isSystem ? 1L : 0L);
                eVar.m(8, appBean.isHide ? 1L : 0L);
                eVar.m(9, appBean.isDisable ? 1L : 0L);
                eVar.m(10, appBean.isCanStart ? 1L : 0L);
                eVar.m(11, appBean.isUnInstall ? 1L : 0L);
            }
        };
        this.__preparedStmtOfDeleteAll = new v(pVar) { // from class: com.yunpan.appmanage.db.AppDao_Impl.2
            @Override // androidx.room.v
            public String createQuery() {
                return "delete FROM app";
            }
        };
        this.__preparedStmtOfDeletePackageName = new v(pVar) { // from class: com.yunpan.appmanage.db.AppDao_Impl.3
            @Override // androidx.room.v
            public String createQuery() {
                return "DELETE FROM app WHERE pack = ?";
            }
        };
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }

    @Override // com.yunpan.appmanage.db.AppDao
    public void deleteAll() {
        this.__db.assertNotSuspendingTransaction();
        c4.e eVarAcquire = this.__preparedStmtOfDeleteAll.acquire();
        try {
            this.__db.beginTransaction();
            try {
                eVarAcquire.f();
                this.__db.setTransactionSuccessful();
            } finally {
                this.__db.endTransaction();
            }
        } finally {
            this.__preparedStmtOfDeleteAll.release(eVarAcquire);
        }
    }

    @Override // com.yunpan.appmanage.db.AppDao
    public void deletePackageName(String str) {
        this.__db.assertNotSuspendingTransaction();
        c4.e eVarAcquire = this.__preparedStmtOfDeletePackageName.acquire();
        if (str == null) {
            eVarAcquire.y(1);
        } else {
            eVarAcquire.e(1, str);
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
            this.__preparedStmtOfDeletePackageName.release(eVarAcquire);
        }
    }

    @Override // com.yunpan.appmanage.db.AppDao
    public AppBean get_appBean(String str) {
        t tVarJ = t.J(1, "select * from app where pack=?");
        if (str == null) {
            tVarJ.y(1);
        } else {
            tVarJ.e(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "name");
            int iZ2 = c.z(cursorS, "pack");
            int iZ3 = c.z(cursorS, "apkPath");
            int iZ4 = c.z(cursorS, "apkParentPath");
            int iZ5 = c.z(cursorS, "dataDir");
            int iZ6 = c.z(cursorS, "uid");
            int iZ7 = c.z(cursorS, "isSystem");
            int iZ8 = c.z(cursorS, "isHide");
            int iZ9 = c.z(cursorS, "isDisable");
            int iZ10 = c.z(cursorS, "isCanStart");
            int iZ11 = c.z(cursorS, "isUnInstall");
            AppBean appBean = null;
            if (cursorS.moveToFirst()) {
                AppBean appBean2 = new AppBean();
                if (cursorS.isNull(iZ)) {
                    appBean2.name = null;
                } else {
                    appBean2.name = cursorS.getString(iZ);
                }
                if (cursorS.isNull(iZ2)) {
                    appBean2.pack = null;
                } else {
                    appBean2.pack = cursorS.getString(iZ2);
                }
                if (cursorS.isNull(iZ3)) {
                    appBean2.apkPath = null;
                } else {
                    appBean2.apkPath = cursorS.getString(iZ3);
                }
                if (cursorS.isNull(iZ4)) {
                    appBean2.apkParentPath = null;
                } else {
                    appBean2.apkParentPath = cursorS.getString(iZ4);
                }
                if (cursorS.isNull(iZ5)) {
                    appBean2.dataDir = null;
                } else {
                    appBean2.dataDir = cursorS.getString(iZ5);
                }
                appBean2.uid = cursorS.getInt(iZ6);
                appBean2.isSystem = cursorS.getInt(iZ7) != 0;
                appBean2.isHide = cursorS.getInt(iZ8) != 0;
                appBean2.isDisable = cursorS.getInt(iZ9) != 0;
                appBean2.isCanStart = cursorS.getInt(iZ10) != 0;
                appBean2.isUnInstall = cursorS.getInt(iZ11) != 0;
                appBean = appBean2;
            }
            cursorS.close();
            tVarJ.K();
            return appBean;
        } catch (Throwable th2) {
            cursorS.close();
            tVarJ.K();
            throw th2;
        }
    }

    @Override // com.yunpan.appmanage.db.AppDao
    public AppBean get_appBean_name(String str) {
        t tVarJ = t.J(1, "select * from app where name=?");
        if (str == null) {
            tVarJ.y(1);
        } else {
            tVarJ.e(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "name");
            int iZ2 = c.z(cursorS, "pack");
            int iZ3 = c.z(cursorS, "apkPath");
            int iZ4 = c.z(cursorS, "apkParentPath");
            int iZ5 = c.z(cursorS, "dataDir");
            int iZ6 = c.z(cursorS, "uid");
            int iZ7 = c.z(cursorS, "isSystem");
            int iZ8 = c.z(cursorS, "isHide");
            int iZ9 = c.z(cursorS, "isDisable");
            int iZ10 = c.z(cursorS, "isCanStart");
            int iZ11 = c.z(cursorS, "isUnInstall");
            AppBean appBean = null;
            if (cursorS.moveToFirst()) {
                AppBean appBean2 = new AppBean();
                if (cursorS.isNull(iZ)) {
                    appBean2.name = null;
                } else {
                    appBean2.name = cursorS.getString(iZ);
                }
                if (cursorS.isNull(iZ2)) {
                    appBean2.pack = null;
                } else {
                    appBean2.pack = cursorS.getString(iZ2);
                }
                if (cursorS.isNull(iZ3)) {
                    appBean2.apkPath = null;
                } else {
                    appBean2.apkPath = cursorS.getString(iZ3);
                }
                if (cursorS.isNull(iZ4)) {
                    appBean2.apkParentPath = null;
                } else {
                    appBean2.apkParentPath = cursorS.getString(iZ4);
                }
                if (cursorS.isNull(iZ5)) {
                    appBean2.dataDir = null;
                } else {
                    appBean2.dataDir = cursorS.getString(iZ5);
                }
                appBean2.uid = cursorS.getInt(iZ6);
                appBean2.isSystem = cursorS.getInt(iZ7) != 0;
                appBean2.isHide = cursorS.getInt(iZ8) != 0;
                appBean2.isDisable = cursorS.getInt(iZ9) != 0;
                appBean2.isCanStart = cursorS.getInt(iZ10) != 0;
                appBean2.isUnInstall = cursorS.getInt(iZ11) != 0;
                appBean = appBean2;
            }
            cursorS.close();
            tVarJ.K();
            return appBean;
        } catch (Throwable th2) {
            cursorS.close();
            tVarJ.K();
            throw th2;
        }
    }

    @Override // com.yunpan.appmanage.db.AppDao
    public List<AppBean> get_app_NoCanStart() {
        t tVarJ = t.J(0, "select * from app where isUnInstall=0 and isCanStart=0");
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "name");
            int iZ2 = c.z(cursorS, "pack");
            int iZ3 = c.z(cursorS, "apkPath");
            int iZ4 = c.z(cursorS, "apkParentPath");
            int iZ5 = c.z(cursorS, "dataDir");
            int iZ6 = c.z(cursorS, "uid");
            int iZ7 = c.z(cursorS, "isSystem");
            int iZ8 = c.z(cursorS, "isHide");
            int iZ9 = c.z(cursorS, "isDisable");
            int iZ10 = c.z(cursorS, "isCanStart");
            int iZ11 = c.z(cursorS, "isUnInstall");
            ArrayList arrayList = new ArrayList(cursorS.getCount());
            while (cursorS.moveToNext()) {
                AppBean appBean = new AppBean();
                if (cursorS.isNull(iZ)) {
                    appBean.name = null;
                } else {
                    appBean.name = cursorS.getString(iZ);
                }
                if (cursorS.isNull(iZ2)) {
                    appBean.pack = null;
                } else {
                    appBean.pack = cursorS.getString(iZ2);
                }
                if (cursorS.isNull(iZ3)) {
                    appBean.apkPath = null;
                } else {
                    appBean.apkPath = cursorS.getString(iZ3);
                }
                if (cursorS.isNull(iZ4)) {
                    appBean.apkParentPath = null;
                } else {
                    appBean.apkParentPath = cursorS.getString(iZ4);
                }
                if (cursorS.isNull(iZ5)) {
                    appBean.dataDir = null;
                } else {
                    appBean.dataDir = cursorS.getString(iZ5);
                }
                appBean.uid = cursorS.getInt(iZ6);
                appBean.isSystem = cursorS.getInt(iZ7) != 0;
                appBean.isHide = cursorS.getInt(iZ8) != 0;
                appBean.isDisable = cursorS.getInt(iZ9) != 0;
                appBean.isCanStart = cursorS.getInt(iZ10) != 0;
                appBean.isUnInstall = cursorS.getInt(iZ11) != 0;
                arrayList.add(appBean);
            }
            cursorS.close();
            tVarJ.K();
            return arrayList;
        } catch (Throwable th2) {
            cursorS.close();
            tVarJ.K();
            throw th2;
        }
    }

    @Override // com.yunpan.appmanage.db.AppDao
    public List<AppBean> get_app_all() {
        t tVarJ = t.J(0, "select * from app");
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "name");
            int iZ2 = c.z(cursorS, "pack");
            int iZ3 = c.z(cursorS, "apkPath");
            int iZ4 = c.z(cursorS, "apkParentPath");
            int iZ5 = c.z(cursorS, "dataDir");
            int iZ6 = c.z(cursorS, "uid");
            int iZ7 = c.z(cursorS, "isSystem");
            int iZ8 = c.z(cursorS, "isHide");
            int iZ9 = c.z(cursorS, "isDisable");
            int iZ10 = c.z(cursorS, "isCanStart");
            int iZ11 = c.z(cursorS, "isUnInstall");
            ArrayList arrayList = new ArrayList(cursorS.getCount());
            while (cursorS.moveToNext()) {
                AppBean appBean = new AppBean();
                if (cursorS.isNull(iZ)) {
                    appBean.name = null;
                } else {
                    appBean.name = cursorS.getString(iZ);
                }
                if (cursorS.isNull(iZ2)) {
                    appBean.pack = null;
                } else {
                    appBean.pack = cursorS.getString(iZ2);
                }
                if (cursorS.isNull(iZ3)) {
                    appBean.apkPath = null;
                } else {
                    appBean.apkPath = cursorS.getString(iZ3);
                }
                if (cursorS.isNull(iZ4)) {
                    appBean.apkParentPath = null;
                } else {
                    appBean.apkParentPath = cursorS.getString(iZ4);
                }
                if (cursorS.isNull(iZ5)) {
                    appBean.dataDir = null;
                } else {
                    appBean.dataDir = cursorS.getString(iZ5);
                }
                appBean.uid = cursorS.getInt(iZ6);
                appBean.isSystem = cursorS.getInt(iZ7) != 0;
                appBean.isHide = cursorS.getInt(iZ8) != 0;
                appBean.isDisable = cursorS.getInt(iZ9) != 0;
                appBean.isCanStart = cursorS.getInt(iZ10) != 0;
                appBean.isUnInstall = cursorS.getInt(iZ11) != 0;
                arrayList.add(appBean);
            }
            cursorS.close();
            tVarJ.K();
            return arrayList;
        } catch (Throwable th2) {
            cursorS.close();
            tVarJ.K();
            throw th2;
        }
    }

    @Override // com.yunpan.appmanage.db.AppDao
    public List<AppBean> get_app_all_order() {
        t tVarJ = t.J(0, "SELECT * FROM app ORDER BY CASE WHEN isCanStart = 1 THEN 0 ELSE 1 END, CASE WHEN apkPath = '' THEN 1 ELSE 0 END, CASE WHEN isUnInstall = 1 THEN 1 ELSE 0 END, CASE WHEN isHide = 1 THEN 1 ELSE 0 END, CASE WHEN isDisable = 1 THEN 1 ELSE 0 END");
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "name");
            int iZ2 = c.z(cursorS, "pack");
            int iZ3 = c.z(cursorS, "apkPath");
            int iZ4 = c.z(cursorS, "apkParentPath");
            int iZ5 = c.z(cursorS, "dataDir");
            int iZ6 = c.z(cursorS, "uid");
            int iZ7 = c.z(cursorS, "isSystem");
            int iZ8 = c.z(cursorS, "isHide");
            int iZ9 = c.z(cursorS, "isDisable");
            int iZ10 = c.z(cursorS, "isCanStart");
            int iZ11 = c.z(cursorS, "isUnInstall");
            ArrayList arrayList = new ArrayList(cursorS.getCount());
            while (cursorS.moveToNext()) {
                AppBean appBean = new AppBean();
                if (cursorS.isNull(iZ)) {
                    appBean.name = null;
                } else {
                    appBean.name = cursorS.getString(iZ);
                }
                if (cursorS.isNull(iZ2)) {
                    appBean.pack = null;
                } else {
                    appBean.pack = cursorS.getString(iZ2);
                }
                if (cursorS.isNull(iZ3)) {
                    appBean.apkPath = null;
                } else {
                    appBean.apkPath = cursorS.getString(iZ3);
                }
                if (cursorS.isNull(iZ4)) {
                    appBean.apkParentPath = null;
                } else {
                    appBean.apkParentPath = cursorS.getString(iZ4);
                }
                if (cursorS.isNull(iZ5)) {
                    appBean.dataDir = null;
                } else {
                    appBean.dataDir = cursorS.getString(iZ5);
                }
                appBean.uid = cursorS.getInt(iZ6);
                appBean.isSystem = cursorS.getInt(iZ7) != 0;
                appBean.isHide = cursorS.getInt(iZ8) != 0;
                appBean.isDisable = cursorS.getInt(iZ9) != 0;
                appBean.isCanStart = cursorS.getInt(iZ10) != 0;
                appBean.isUnInstall = cursorS.getInt(iZ11) != 0;
                arrayList.add(appBean);
            }
            cursorS.close();
            tVarJ.K();
            return arrayList;
        } catch (Throwable th2) {
            cursorS.close();
            tVarJ.K();
            throw th2;
        }
    }

    @Override // com.yunpan.appmanage.db.AppDao
    public List<AppBean> get_app_canStart() {
        t tVarJ = t.J(0, "select * from app where isUnInstall=0 and isCanStart=1");
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "name");
            int iZ2 = c.z(cursorS, "pack");
            int iZ3 = c.z(cursorS, "apkPath");
            int iZ4 = c.z(cursorS, "apkParentPath");
            int iZ5 = c.z(cursorS, "dataDir");
            int iZ6 = c.z(cursorS, "uid");
            int iZ7 = c.z(cursorS, "isSystem");
            int iZ8 = c.z(cursorS, "isHide");
            int iZ9 = c.z(cursorS, "isDisable");
            int iZ10 = c.z(cursorS, "isCanStart");
            int iZ11 = c.z(cursorS, "isUnInstall");
            ArrayList arrayList = new ArrayList(cursorS.getCount());
            while (cursorS.moveToNext()) {
                AppBean appBean = new AppBean();
                if (cursorS.isNull(iZ)) {
                    appBean.name = null;
                } else {
                    appBean.name = cursorS.getString(iZ);
                }
                if (cursorS.isNull(iZ2)) {
                    appBean.pack = null;
                } else {
                    appBean.pack = cursorS.getString(iZ2);
                }
                if (cursorS.isNull(iZ3)) {
                    appBean.apkPath = null;
                } else {
                    appBean.apkPath = cursorS.getString(iZ3);
                }
                if (cursorS.isNull(iZ4)) {
                    appBean.apkParentPath = null;
                } else {
                    appBean.apkParentPath = cursorS.getString(iZ4);
                }
                if (cursorS.isNull(iZ5)) {
                    appBean.dataDir = null;
                } else {
                    appBean.dataDir = cursorS.getString(iZ5);
                }
                appBean.uid = cursorS.getInt(iZ6);
                appBean.isSystem = cursorS.getInt(iZ7) != 0;
                appBean.isHide = cursorS.getInt(iZ8) != 0;
                appBean.isDisable = cursorS.getInt(iZ9) != 0;
                appBean.isCanStart = cursorS.getInt(iZ10) != 0;
                appBean.isUnInstall = cursorS.getInt(iZ11) != 0;
                arrayList.add(appBean);
            }
            cursorS.close();
            tVarJ.K();
            return arrayList;
        } catch (Throwable th2) {
            cursorS.close();
            tVarJ.K();
            throw th2;
        }
    }

    @Override // com.yunpan.appmanage.db.AppDao
    public List<AppBean> get_app_canStart_noUnInstall_noDisable() {
        t tVarJ = t.J(0, "select * from app where isCanStart=1 and isUnInstall=0 and isDisable=0");
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "name");
            int iZ2 = c.z(cursorS, "pack");
            int iZ3 = c.z(cursorS, "apkPath");
            int iZ4 = c.z(cursorS, "apkParentPath");
            int iZ5 = c.z(cursorS, "dataDir");
            int iZ6 = c.z(cursorS, "uid");
            int iZ7 = c.z(cursorS, "isSystem");
            int iZ8 = c.z(cursorS, "isHide");
            int iZ9 = c.z(cursorS, "isDisable");
            int iZ10 = c.z(cursorS, "isCanStart");
            int iZ11 = c.z(cursorS, "isUnInstall");
            ArrayList arrayList = new ArrayList(cursorS.getCount());
            while (cursorS.moveToNext()) {
                AppBean appBean = new AppBean();
                if (cursorS.isNull(iZ)) {
                    appBean.name = null;
                } else {
                    appBean.name = cursorS.getString(iZ);
                }
                if (cursorS.isNull(iZ2)) {
                    appBean.pack = null;
                } else {
                    appBean.pack = cursorS.getString(iZ2);
                }
                if (cursorS.isNull(iZ3)) {
                    appBean.apkPath = null;
                } else {
                    appBean.apkPath = cursorS.getString(iZ3);
                }
                if (cursorS.isNull(iZ4)) {
                    appBean.apkParentPath = null;
                } else {
                    appBean.apkParentPath = cursorS.getString(iZ4);
                }
                if (cursorS.isNull(iZ5)) {
                    appBean.dataDir = null;
                } else {
                    appBean.dataDir = cursorS.getString(iZ5);
                }
                appBean.uid = cursorS.getInt(iZ6);
                appBean.isSystem = cursorS.getInt(iZ7) != 0;
                appBean.isHide = cursorS.getInt(iZ8) != 0;
                appBean.isDisable = cursorS.getInt(iZ9) != 0;
                appBean.isCanStart = cursorS.getInt(iZ10) != 0;
                appBean.isUnInstall = cursorS.getInt(iZ11) != 0;
                arrayList.add(appBean);
            }
            cursorS.close();
            tVarJ.K();
            return arrayList;
        } catch (Throwable th2) {
            cursorS.close();
            tVarJ.K();
            throw th2;
        }
    }

    @Override // com.yunpan.appmanage.db.AppDao
    public List<AppBean> get_app_disable() {
        t tVarJ = t.J(0, "select * from app where isDisable=1");
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "name");
            int iZ2 = c.z(cursorS, "pack");
            int iZ3 = c.z(cursorS, "apkPath");
            int iZ4 = c.z(cursorS, "apkParentPath");
            int iZ5 = c.z(cursorS, "dataDir");
            int iZ6 = c.z(cursorS, "uid");
            int iZ7 = c.z(cursorS, "isSystem");
            int iZ8 = c.z(cursorS, "isHide");
            int iZ9 = c.z(cursorS, "isDisable");
            int iZ10 = c.z(cursorS, "isCanStart");
            int iZ11 = c.z(cursorS, "isUnInstall");
            ArrayList arrayList = new ArrayList(cursorS.getCount());
            while (cursorS.moveToNext()) {
                AppBean appBean = new AppBean();
                if (cursorS.isNull(iZ)) {
                    appBean.name = null;
                } else {
                    appBean.name = cursorS.getString(iZ);
                }
                if (cursorS.isNull(iZ2)) {
                    appBean.pack = null;
                } else {
                    appBean.pack = cursorS.getString(iZ2);
                }
                if (cursorS.isNull(iZ3)) {
                    appBean.apkPath = null;
                } else {
                    appBean.apkPath = cursorS.getString(iZ3);
                }
                if (cursorS.isNull(iZ4)) {
                    appBean.apkParentPath = null;
                } else {
                    appBean.apkParentPath = cursorS.getString(iZ4);
                }
                if (cursorS.isNull(iZ5)) {
                    appBean.dataDir = null;
                } else {
                    appBean.dataDir = cursorS.getString(iZ5);
                }
                appBean.uid = cursorS.getInt(iZ6);
                appBean.isSystem = cursorS.getInt(iZ7) != 0;
                appBean.isHide = cursorS.getInt(iZ8) != 0;
                appBean.isDisable = cursorS.getInt(iZ9) != 0;
                appBean.isCanStart = cursorS.getInt(iZ10) != 0;
                appBean.isUnInstall = cursorS.getInt(iZ11) != 0;
                arrayList.add(appBean);
            }
            cursorS.close();
            tVarJ.K();
            return arrayList;
        } catch (Throwable th2) {
            cursorS.close();
            tVarJ.K();
            throw th2;
        }
    }

    @Override // com.yunpan.appmanage.db.AppDao
    public List<AppBean> get_app_hide() {
        t tVarJ = t.J(0, "select * from app where isHide=1 and isUnInstall=0");
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "name");
            int iZ2 = c.z(cursorS, "pack");
            int iZ3 = c.z(cursorS, "apkPath");
            int iZ4 = c.z(cursorS, "apkParentPath");
            int iZ5 = c.z(cursorS, "dataDir");
            int iZ6 = c.z(cursorS, "uid");
            int iZ7 = c.z(cursorS, "isSystem");
            int iZ8 = c.z(cursorS, "isHide");
            int iZ9 = c.z(cursorS, "isDisable");
            int iZ10 = c.z(cursorS, "isCanStart");
            int iZ11 = c.z(cursorS, "isUnInstall");
            ArrayList arrayList = new ArrayList(cursorS.getCount());
            while (cursorS.moveToNext()) {
                AppBean appBean = new AppBean();
                if (cursorS.isNull(iZ)) {
                    appBean.name = null;
                } else {
                    appBean.name = cursorS.getString(iZ);
                }
                if (cursorS.isNull(iZ2)) {
                    appBean.pack = null;
                } else {
                    appBean.pack = cursorS.getString(iZ2);
                }
                if (cursorS.isNull(iZ3)) {
                    appBean.apkPath = null;
                } else {
                    appBean.apkPath = cursorS.getString(iZ3);
                }
                if (cursorS.isNull(iZ4)) {
                    appBean.apkParentPath = null;
                } else {
                    appBean.apkParentPath = cursorS.getString(iZ4);
                }
                if (cursorS.isNull(iZ5)) {
                    appBean.dataDir = null;
                } else {
                    appBean.dataDir = cursorS.getString(iZ5);
                }
                appBean.uid = cursorS.getInt(iZ6);
                appBean.isSystem = cursorS.getInt(iZ7) != 0;
                appBean.isHide = cursorS.getInt(iZ8) != 0;
                appBean.isDisable = cursorS.getInt(iZ9) != 0;
                appBean.isCanStart = cursorS.getInt(iZ10) != 0;
                appBean.isUnInstall = cursorS.getInt(iZ11) != 0;
                arrayList.add(appBean);
            }
            cursorS.close();
            tVarJ.K();
            return arrayList;
        } catch (Throwable th2) {
            cursorS.close();
            tVarJ.K();
            throw th2;
        }
    }

    @Override // com.yunpan.appmanage.db.AppDao
    public List<AppBean> get_app_noCanStart_noHide_noUnInstall_noDisable() {
        t tVarJ = t.J(0, "select * from app where isCanStart=0 and isHide=0 and isUnInstall=0 and isDisable=0 and apkPath!=''");
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "name");
            int iZ2 = c.z(cursorS, "pack");
            int iZ3 = c.z(cursorS, "apkPath");
            int iZ4 = c.z(cursorS, "apkParentPath");
            int iZ5 = c.z(cursorS, "dataDir");
            int iZ6 = c.z(cursorS, "uid");
            int iZ7 = c.z(cursorS, "isSystem");
            int iZ8 = c.z(cursorS, "isHide");
            int iZ9 = c.z(cursorS, "isDisable");
            int iZ10 = c.z(cursorS, "isCanStart");
            int iZ11 = c.z(cursorS, "isUnInstall");
            ArrayList arrayList = new ArrayList(cursorS.getCount());
            while (cursorS.moveToNext()) {
                AppBean appBean = new AppBean();
                if (cursorS.isNull(iZ)) {
                    appBean.name = null;
                } else {
                    appBean.name = cursorS.getString(iZ);
                }
                if (cursorS.isNull(iZ2)) {
                    appBean.pack = null;
                } else {
                    appBean.pack = cursorS.getString(iZ2);
                }
                if (cursorS.isNull(iZ3)) {
                    appBean.apkPath = null;
                } else {
                    appBean.apkPath = cursorS.getString(iZ3);
                }
                if (cursorS.isNull(iZ4)) {
                    appBean.apkParentPath = null;
                } else {
                    appBean.apkParentPath = cursorS.getString(iZ4);
                }
                if (cursorS.isNull(iZ5)) {
                    appBean.dataDir = null;
                } else {
                    appBean.dataDir = cursorS.getString(iZ5);
                }
                appBean.uid = cursorS.getInt(iZ6);
                appBean.isSystem = cursorS.getInt(iZ7) != 0;
                appBean.isHide = cursorS.getInt(iZ8) != 0;
                appBean.isDisable = cursorS.getInt(iZ9) != 0;
                appBean.isCanStart = cursorS.getInt(iZ10) != 0;
                appBean.isUnInstall = cursorS.getInt(iZ11) != 0;
                arrayList.add(appBean);
            }
            cursorS.close();
            tVarJ.K();
            return arrayList;
        } catch (Throwable th2) {
            cursorS.close();
            tVarJ.K();
            throw th2;
        }
    }

    @Override // com.yunpan.appmanage.db.AppDao
    public List<AppBean> get_app_noHide_noUnInstall_noDisable() {
        t tVarJ = t.J(0, "select * from app where isHide=0 and isUnInstall=0 and isDisable=0");
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "name");
            int iZ2 = c.z(cursorS, "pack");
            int iZ3 = c.z(cursorS, "apkPath");
            int iZ4 = c.z(cursorS, "apkParentPath");
            int iZ5 = c.z(cursorS, "dataDir");
            int iZ6 = c.z(cursorS, "uid");
            int iZ7 = c.z(cursorS, "isSystem");
            int iZ8 = c.z(cursorS, "isHide");
            int iZ9 = c.z(cursorS, "isDisable");
            int iZ10 = c.z(cursorS, "isCanStart");
            int iZ11 = c.z(cursorS, "isUnInstall");
            ArrayList arrayList = new ArrayList(cursorS.getCount());
            while (cursorS.moveToNext()) {
                AppBean appBean = new AppBean();
                if (cursorS.isNull(iZ)) {
                    appBean.name = null;
                } else {
                    appBean.name = cursorS.getString(iZ);
                }
                if (cursorS.isNull(iZ2)) {
                    appBean.pack = null;
                } else {
                    appBean.pack = cursorS.getString(iZ2);
                }
                if (cursorS.isNull(iZ3)) {
                    appBean.apkPath = null;
                } else {
                    appBean.apkPath = cursorS.getString(iZ3);
                }
                if (cursorS.isNull(iZ4)) {
                    appBean.apkParentPath = null;
                } else {
                    appBean.apkParentPath = cursorS.getString(iZ4);
                }
                if (cursorS.isNull(iZ5)) {
                    appBean.dataDir = null;
                } else {
                    appBean.dataDir = cursorS.getString(iZ5);
                }
                appBean.uid = cursorS.getInt(iZ6);
                appBean.isSystem = cursorS.getInt(iZ7) != 0;
                appBean.isHide = cursorS.getInt(iZ8) != 0;
                appBean.isDisable = cursorS.getInt(iZ9) != 0;
                appBean.isCanStart = cursorS.getInt(iZ10) != 0;
                appBean.isUnInstall = cursorS.getInt(iZ11) != 0;
                arrayList.add(appBean);
            }
            cursorS.close();
            tVarJ.K();
            return arrayList;
        } catch (Throwable th2) {
            cursorS.close();
            tVarJ.K();
            throw th2;
        }
    }

    @Override // com.yunpan.appmanage.db.AppDao
    public List<AppBean> get_app_storage() {
        t tVarJ = t.J(0, "select * from app where uid>5000 and isHide=0 and isUnInstall=0 and isCanStart=1");
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "name");
            int iZ2 = c.z(cursorS, "pack");
            int iZ3 = c.z(cursorS, "apkPath");
            int iZ4 = c.z(cursorS, "apkParentPath");
            int iZ5 = c.z(cursorS, "dataDir");
            int iZ6 = c.z(cursorS, "uid");
            int iZ7 = c.z(cursorS, "isSystem");
            int iZ8 = c.z(cursorS, "isHide");
            int iZ9 = c.z(cursorS, "isDisable");
            int iZ10 = c.z(cursorS, "isCanStart");
            int iZ11 = c.z(cursorS, "isUnInstall");
            ArrayList arrayList = new ArrayList(cursorS.getCount());
            while (cursorS.moveToNext()) {
                AppBean appBean = new AppBean();
                if (cursorS.isNull(iZ)) {
                    appBean.name = null;
                } else {
                    appBean.name = cursorS.getString(iZ);
                }
                if (cursorS.isNull(iZ2)) {
                    appBean.pack = null;
                } else {
                    appBean.pack = cursorS.getString(iZ2);
                }
                if (cursorS.isNull(iZ3)) {
                    appBean.apkPath = null;
                } else {
                    appBean.apkPath = cursorS.getString(iZ3);
                }
                if (cursorS.isNull(iZ4)) {
                    appBean.apkParentPath = null;
                } else {
                    appBean.apkParentPath = cursorS.getString(iZ4);
                }
                if (cursorS.isNull(iZ5)) {
                    appBean.dataDir = null;
                } else {
                    appBean.dataDir = cursorS.getString(iZ5);
                }
                appBean.uid = cursorS.getInt(iZ6);
                appBean.isSystem = cursorS.getInt(iZ7) != 0;
                appBean.isHide = cursorS.getInt(iZ8) != 0;
                appBean.isDisable = cursorS.getInt(iZ9) != 0;
                appBean.isCanStart = cursorS.getInt(iZ10) != 0;
                appBean.isUnInstall = cursorS.getInt(iZ11) != 0;
                arrayList.add(appBean);
            }
            cursorS.close();
            tVarJ.K();
            return arrayList;
        } catch (Throwable th2) {
            cursorS.close();
            tVarJ.K();
            throw th2;
        }
    }

    @Override // com.yunpan.appmanage.db.AppDao
    public List<AppBean> get_app_system() {
        t tVarJ = t.J(0, "select * from app where isSystem=1");
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "name");
            int iZ2 = c.z(cursorS, "pack");
            int iZ3 = c.z(cursorS, "apkPath");
            int iZ4 = c.z(cursorS, "apkParentPath");
            int iZ5 = c.z(cursorS, "dataDir");
            int iZ6 = c.z(cursorS, "uid");
            int iZ7 = c.z(cursorS, "isSystem");
            int iZ8 = c.z(cursorS, "isHide");
            int iZ9 = c.z(cursorS, "isDisable");
            int iZ10 = c.z(cursorS, "isCanStart");
            int iZ11 = c.z(cursorS, "isUnInstall");
            ArrayList arrayList = new ArrayList(cursorS.getCount());
            while (cursorS.moveToNext()) {
                AppBean appBean = new AppBean();
                if (cursorS.isNull(iZ)) {
                    appBean.name = null;
                } else {
                    appBean.name = cursorS.getString(iZ);
                }
                if (cursorS.isNull(iZ2)) {
                    appBean.pack = null;
                } else {
                    appBean.pack = cursorS.getString(iZ2);
                }
                if (cursorS.isNull(iZ3)) {
                    appBean.apkPath = null;
                } else {
                    appBean.apkPath = cursorS.getString(iZ3);
                }
                if (cursorS.isNull(iZ4)) {
                    appBean.apkParentPath = null;
                } else {
                    appBean.apkParentPath = cursorS.getString(iZ4);
                }
                if (cursorS.isNull(iZ5)) {
                    appBean.dataDir = null;
                } else {
                    appBean.dataDir = cursorS.getString(iZ5);
                }
                appBean.uid = cursorS.getInt(iZ6);
                appBean.isSystem = cursorS.getInt(iZ7) != 0;
                appBean.isHide = cursorS.getInt(iZ8) != 0;
                appBean.isDisable = cursorS.getInt(iZ9) != 0;
                appBean.isCanStart = cursorS.getInt(iZ10) != 0;
                appBean.isUnInstall = cursorS.getInt(iZ11) != 0;
                arrayList.add(appBean);
            }
            cursorS.close();
            tVarJ.K();
            return arrayList;
        } catch (Throwable th2) {
            cursorS.close();
            tVarJ.K();
            throw th2;
        }
    }

    @Override // com.yunpan.appmanage.db.AppDao
    public List<AppBean> get_app_system_canStart_noHide_noUnInstall_noDisable() {
        t tVarJ = t.J(0, "select * from app where isSystem=1 and isCanStart=1 and isHide=0 and isUnInstall=0 and isDisable=0");
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "name");
            int iZ2 = c.z(cursorS, "pack");
            int iZ3 = c.z(cursorS, "apkPath");
            int iZ4 = c.z(cursorS, "apkParentPath");
            int iZ5 = c.z(cursorS, "dataDir");
            int iZ6 = c.z(cursorS, "uid");
            int iZ7 = c.z(cursorS, "isSystem");
            int iZ8 = c.z(cursorS, "isHide");
            int iZ9 = c.z(cursorS, "isDisable");
            int iZ10 = c.z(cursorS, "isCanStart");
            int iZ11 = c.z(cursorS, "isUnInstall");
            ArrayList arrayList = new ArrayList(cursorS.getCount());
            while (cursorS.moveToNext()) {
                AppBean appBean = new AppBean();
                if (cursorS.isNull(iZ)) {
                    appBean.name = null;
                } else {
                    appBean.name = cursorS.getString(iZ);
                }
                if (cursorS.isNull(iZ2)) {
                    appBean.pack = null;
                } else {
                    appBean.pack = cursorS.getString(iZ2);
                }
                if (cursorS.isNull(iZ3)) {
                    appBean.apkPath = null;
                } else {
                    appBean.apkPath = cursorS.getString(iZ3);
                }
                if (cursorS.isNull(iZ4)) {
                    appBean.apkParentPath = null;
                } else {
                    appBean.apkParentPath = cursorS.getString(iZ4);
                }
                if (cursorS.isNull(iZ5)) {
                    appBean.dataDir = null;
                } else {
                    appBean.dataDir = cursorS.getString(iZ5);
                }
                appBean.uid = cursorS.getInt(iZ6);
                appBean.isSystem = cursorS.getInt(iZ7) != 0;
                appBean.isHide = cursorS.getInt(iZ8) != 0;
                appBean.isDisable = cursorS.getInt(iZ9) != 0;
                appBean.isCanStart = cursorS.getInt(iZ10) != 0;
                appBean.isUnInstall = cursorS.getInt(iZ11) != 0;
                arrayList.add(appBean);
            }
            cursorS.close();
            tVarJ.K();
            return arrayList;
        } catch (Throwable th2) {
            cursorS.close();
            tVarJ.K();
            throw th2;
        }
    }

    @Override // com.yunpan.appmanage.db.AppDao
    public List<AppBean> get_app_unInstall() {
        t tVarJ = t.J(0, "select * from app where isUnInstall=1");
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "name");
            int iZ2 = c.z(cursorS, "pack");
            int iZ3 = c.z(cursorS, "apkPath");
            int iZ4 = c.z(cursorS, "apkParentPath");
            int iZ5 = c.z(cursorS, "dataDir");
            int iZ6 = c.z(cursorS, "uid");
            int iZ7 = c.z(cursorS, "isSystem");
            int iZ8 = c.z(cursorS, "isHide");
            int iZ9 = c.z(cursorS, "isDisable");
            int iZ10 = c.z(cursorS, "isCanStart");
            int iZ11 = c.z(cursorS, "isUnInstall");
            ArrayList arrayList = new ArrayList(cursorS.getCount());
            while (cursorS.moveToNext()) {
                AppBean appBean = new AppBean();
                if (cursorS.isNull(iZ)) {
                    appBean.name = null;
                } else {
                    appBean.name = cursorS.getString(iZ);
                }
                if (cursorS.isNull(iZ2)) {
                    appBean.pack = null;
                } else {
                    appBean.pack = cursorS.getString(iZ2);
                }
                if (cursorS.isNull(iZ3)) {
                    appBean.apkPath = null;
                } else {
                    appBean.apkPath = cursorS.getString(iZ3);
                }
                if (cursorS.isNull(iZ4)) {
                    appBean.apkParentPath = null;
                } else {
                    appBean.apkParentPath = cursorS.getString(iZ4);
                }
                if (cursorS.isNull(iZ5)) {
                    appBean.dataDir = null;
                } else {
                    appBean.dataDir = cursorS.getString(iZ5);
                }
                appBean.uid = cursorS.getInt(iZ6);
                appBean.isSystem = cursorS.getInt(iZ7) != 0;
                appBean.isHide = cursorS.getInt(iZ8) != 0;
                appBean.isDisable = cursorS.getInt(iZ9) != 0;
                appBean.isCanStart = cursorS.getInt(iZ10) != 0;
                appBean.isUnInstall = cursorS.getInt(iZ11) != 0;
                arrayList.add(appBean);
            }
            cursorS.close();
            tVarJ.K();
            return arrayList;
        } catch (Throwable th2) {
            cursorS.close();
            tVarJ.K();
            throw th2;
        }
    }

    @Override // com.yunpan.appmanage.db.AppDao
    public List<AppBean> get_app_unInstallHashDate() {
        t tVarJ = t.J(0, "select * from app where apkPath=''");
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "name");
            int iZ2 = c.z(cursorS, "pack");
            int iZ3 = c.z(cursorS, "apkPath");
            int iZ4 = c.z(cursorS, "apkParentPath");
            int iZ5 = c.z(cursorS, "dataDir");
            int iZ6 = c.z(cursorS, "uid");
            int iZ7 = c.z(cursorS, "isSystem");
            int iZ8 = c.z(cursorS, "isHide");
            int iZ9 = c.z(cursorS, "isDisable");
            int iZ10 = c.z(cursorS, "isCanStart");
            int iZ11 = c.z(cursorS, "isUnInstall");
            ArrayList arrayList = new ArrayList(cursorS.getCount());
            while (cursorS.moveToNext()) {
                AppBean appBean = new AppBean();
                if (cursorS.isNull(iZ)) {
                    appBean.name = null;
                } else {
                    appBean.name = cursorS.getString(iZ);
                }
                if (cursorS.isNull(iZ2)) {
                    appBean.pack = null;
                } else {
                    appBean.pack = cursorS.getString(iZ2);
                }
                if (cursorS.isNull(iZ3)) {
                    appBean.apkPath = null;
                } else {
                    appBean.apkPath = cursorS.getString(iZ3);
                }
                if (cursorS.isNull(iZ4)) {
                    appBean.apkParentPath = null;
                } else {
                    appBean.apkParentPath = cursorS.getString(iZ4);
                }
                if (cursorS.isNull(iZ5)) {
                    appBean.dataDir = null;
                } else {
                    appBean.dataDir = cursorS.getString(iZ5);
                }
                appBean.uid = cursorS.getInt(iZ6);
                appBean.isSystem = cursorS.getInt(iZ7) != 0;
                appBean.isHide = cursorS.getInt(iZ8) != 0;
                appBean.isDisable = cursorS.getInt(iZ9) != 0;
                appBean.isCanStart = cursorS.getInt(iZ10) != 0;
                appBean.isUnInstall = cursorS.getInt(iZ11) != 0;
                arrayList.add(appBean);
            }
            cursorS.close();
            tVarJ.K();
            return arrayList;
        } catch (Throwable th2) {
            cursorS.close();
            tVarJ.K();
            throw th2;
        }
    }

    @Override // com.yunpan.appmanage.db.AppDao
    public List<AppBean> get_app_user() {
        t tVarJ = t.J(0, "select * from app where isSystem=0");
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "name");
            int iZ2 = c.z(cursorS, "pack");
            int iZ3 = c.z(cursorS, "apkPath");
            int iZ4 = c.z(cursorS, "apkParentPath");
            int iZ5 = c.z(cursorS, "dataDir");
            int iZ6 = c.z(cursorS, "uid");
            int iZ7 = c.z(cursorS, "isSystem");
            int iZ8 = c.z(cursorS, "isHide");
            int iZ9 = c.z(cursorS, "isDisable");
            int iZ10 = c.z(cursorS, "isCanStart");
            int iZ11 = c.z(cursorS, "isUnInstall");
            ArrayList arrayList = new ArrayList(cursorS.getCount());
            while (cursorS.moveToNext()) {
                AppBean appBean = new AppBean();
                if (cursorS.isNull(iZ)) {
                    appBean.name = null;
                } else {
                    appBean.name = cursorS.getString(iZ);
                }
                if (cursorS.isNull(iZ2)) {
                    appBean.pack = null;
                } else {
                    appBean.pack = cursorS.getString(iZ2);
                }
                if (cursorS.isNull(iZ3)) {
                    appBean.apkPath = null;
                } else {
                    appBean.apkPath = cursorS.getString(iZ3);
                }
                if (cursorS.isNull(iZ4)) {
                    appBean.apkParentPath = null;
                } else {
                    appBean.apkParentPath = cursorS.getString(iZ4);
                }
                if (cursorS.isNull(iZ5)) {
                    appBean.dataDir = null;
                } else {
                    appBean.dataDir = cursorS.getString(iZ5);
                }
                appBean.uid = cursorS.getInt(iZ6);
                appBean.isSystem = cursorS.getInt(iZ7) != 0;
                appBean.isHide = cursorS.getInt(iZ8) != 0;
                appBean.isDisable = cursorS.getInt(iZ9) != 0;
                appBean.isCanStart = cursorS.getInt(iZ10) != 0;
                appBean.isUnInstall = cursorS.getInt(iZ11) != 0;
                arrayList.add(appBean);
            }
            cursorS.close();
            tVarJ.K();
            return arrayList;
        } catch (Throwable th2) {
            cursorS.close();
            tVarJ.K();
            throw th2;
        }
    }

    @Override // com.yunpan.appmanage.db.AppDao
    public List<AppBean> get_app_user_canStart_noHide_noUnInstall_noDisable() {
        t tVarJ = t.J(0, "select * from app where isSystem=0 and isCanStart=1 and isHide=0 and isUnInstall=0 and isDisable=0");
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "name");
            int iZ2 = c.z(cursorS, "pack");
            int iZ3 = c.z(cursorS, "apkPath");
            int iZ4 = c.z(cursorS, "apkParentPath");
            int iZ5 = c.z(cursorS, "dataDir");
            int iZ6 = c.z(cursorS, "uid");
            int iZ7 = c.z(cursorS, "isSystem");
            int iZ8 = c.z(cursorS, "isHide");
            int iZ9 = c.z(cursorS, "isDisable");
            int iZ10 = c.z(cursorS, "isCanStart");
            int iZ11 = c.z(cursorS, "isUnInstall");
            ArrayList arrayList = new ArrayList(cursorS.getCount());
            while (cursorS.moveToNext()) {
                AppBean appBean = new AppBean();
                if (cursorS.isNull(iZ)) {
                    appBean.name = null;
                } else {
                    appBean.name = cursorS.getString(iZ);
                }
                if (cursorS.isNull(iZ2)) {
                    appBean.pack = null;
                } else {
                    appBean.pack = cursorS.getString(iZ2);
                }
                if (cursorS.isNull(iZ3)) {
                    appBean.apkPath = null;
                } else {
                    appBean.apkPath = cursorS.getString(iZ3);
                }
                if (cursorS.isNull(iZ4)) {
                    appBean.apkParentPath = null;
                } else {
                    appBean.apkParentPath = cursorS.getString(iZ4);
                }
                if (cursorS.isNull(iZ5)) {
                    appBean.dataDir = null;
                } else {
                    appBean.dataDir = cursorS.getString(iZ5);
                }
                appBean.uid = cursorS.getInt(iZ6);
                appBean.isSystem = cursorS.getInt(iZ7) != 0;
                appBean.isHide = cursorS.getInt(iZ8) != 0;
                appBean.isDisable = cursorS.getInt(iZ9) != 0;
                appBean.isCanStart = cursorS.getInt(iZ10) != 0;
                appBean.isUnInstall = cursorS.getInt(iZ11) != 0;
                arrayList.add(appBean);
            }
            cursorS.close();
            tVarJ.K();
            return arrayList;
        } catch (Throwable th2) {
            cursorS.close();
            tVarJ.K();
            throw th2;
        }
    }

    @Override // com.yunpan.appmanage.db.AppDao
    public long insert(AppBean appBean) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            long jInsertAndReturnId = this.__insertionAdapterOfAppBean.insertAndReturnId(appBean);
            this.__db.setTransactionSuccessful();
            return jInsertAndReturnId;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.yunpan.appmanage.db.AppDao
    public AppBean isAppDir(String str) {
        t tVarJ = t.J(1, "select * from app where apkParentPath=?");
        if (str == null) {
            tVarJ.y(1);
        } else {
            tVarJ.e(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "name");
            int iZ2 = c.z(cursorS, "pack");
            int iZ3 = c.z(cursorS, "apkPath");
            int iZ4 = c.z(cursorS, "apkParentPath");
            int iZ5 = c.z(cursorS, "dataDir");
            int iZ6 = c.z(cursorS, "uid");
            int iZ7 = c.z(cursorS, "isSystem");
            int iZ8 = c.z(cursorS, "isHide");
            int iZ9 = c.z(cursorS, "isDisable");
            int iZ10 = c.z(cursorS, "isCanStart");
            int iZ11 = c.z(cursorS, "isUnInstall");
            AppBean appBean = null;
            if (cursorS.moveToFirst()) {
                AppBean appBean2 = new AppBean();
                if (cursorS.isNull(iZ)) {
                    appBean2.name = null;
                } else {
                    appBean2.name = cursorS.getString(iZ);
                }
                if (cursorS.isNull(iZ2)) {
                    appBean2.pack = null;
                } else {
                    appBean2.pack = cursorS.getString(iZ2);
                }
                if (cursorS.isNull(iZ3)) {
                    appBean2.apkPath = null;
                } else {
                    appBean2.apkPath = cursorS.getString(iZ3);
                }
                if (cursorS.isNull(iZ4)) {
                    appBean2.apkParentPath = null;
                } else {
                    appBean2.apkParentPath = cursorS.getString(iZ4);
                }
                if (cursorS.isNull(iZ5)) {
                    appBean2.dataDir = null;
                } else {
                    appBean2.dataDir = cursorS.getString(iZ5);
                }
                appBean2.uid = cursorS.getInt(iZ6);
                appBean2.isSystem = cursorS.getInt(iZ7) != 0;
                appBean2.isHide = cursorS.getInt(iZ8) != 0;
                appBean2.isDisable = cursorS.getInt(iZ9) != 0;
                appBean2.isCanStart = cursorS.getInt(iZ10) != 0;
                appBean2.isUnInstall = cursorS.getInt(iZ11) != 0;
                appBean = appBean2;
            }
            cursorS.close();
            tVarJ.K();
            return appBean;
        } catch (Throwable th2) {
            cursorS.close();
            tVarJ.K();
            throw th2;
        }
    }

    @Override // com.yunpan.appmanage.db.AppDao
    public List<AppBean> search_name(String str) {
        t tVarJ = t.J(1, "SELECT * FROM app WHERE LOWER(name) LIKE '%' || LOWER(?) || '%'");
        if (str == null) {
            tVarJ.y(1);
        } else {
            tVarJ.e(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "name");
            int iZ2 = c.z(cursorS, "pack");
            int iZ3 = c.z(cursorS, "apkPath");
            int iZ4 = c.z(cursorS, "apkParentPath");
            int iZ5 = c.z(cursorS, "dataDir");
            int iZ6 = c.z(cursorS, "uid");
            int iZ7 = c.z(cursorS, "isSystem");
            int iZ8 = c.z(cursorS, "isHide");
            int iZ9 = c.z(cursorS, "isDisable");
            int iZ10 = c.z(cursorS, "isCanStart");
            int iZ11 = c.z(cursorS, "isUnInstall");
            ArrayList arrayList = new ArrayList(cursorS.getCount());
            while (cursorS.moveToNext()) {
                AppBean appBean = new AppBean();
                if (cursorS.isNull(iZ)) {
                    appBean.name = null;
                } else {
                    appBean.name = cursorS.getString(iZ);
                }
                if (cursorS.isNull(iZ2)) {
                    appBean.pack = null;
                } else {
                    appBean.pack = cursorS.getString(iZ2);
                }
                if (cursorS.isNull(iZ3)) {
                    appBean.apkPath = null;
                } else {
                    appBean.apkPath = cursorS.getString(iZ3);
                }
                if (cursorS.isNull(iZ4)) {
                    appBean.apkParentPath = null;
                } else {
                    appBean.apkParentPath = cursorS.getString(iZ4);
                }
                if (cursorS.isNull(iZ5)) {
                    appBean.dataDir = null;
                } else {
                    appBean.dataDir = cursorS.getString(iZ5);
                }
                appBean.uid = cursorS.getInt(iZ6);
                appBean.isSystem = cursorS.getInt(iZ7) != 0;
                appBean.isHide = cursorS.getInt(iZ8) != 0;
                appBean.isDisable = cursorS.getInt(iZ9) != 0;
                appBean.isCanStart = cursorS.getInt(iZ10) != 0;
                appBean.isUnInstall = cursorS.getInt(iZ11) != 0;
                arrayList.add(appBean);
            }
            cursorS.close();
            tVarJ.K();
            return arrayList;
        } catch (Throwable th2) {
            cursorS.close();
            tVarJ.K();
            throw th2;
        }
    }

    @Override // com.yunpan.appmanage.db.AppDao
    public List<AppBean> search_pack(String str) {
        t tVarJ = t.J(1, "SELECT * FROM app WHERE LOWER(pack) LIKE '%' || LOWER(?) || '%'");
        if (str == null) {
            tVarJ.y(1);
        } else {
            tVarJ.e(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "name");
            int iZ2 = c.z(cursorS, "pack");
            int iZ3 = c.z(cursorS, "apkPath");
            int iZ4 = c.z(cursorS, "apkParentPath");
            int iZ5 = c.z(cursorS, "dataDir");
            int iZ6 = c.z(cursorS, "uid");
            int iZ7 = c.z(cursorS, "isSystem");
            int iZ8 = c.z(cursorS, "isHide");
            int iZ9 = c.z(cursorS, "isDisable");
            int iZ10 = c.z(cursorS, "isCanStart");
            int iZ11 = c.z(cursorS, "isUnInstall");
            ArrayList arrayList = new ArrayList(cursorS.getCount());
            while (cursorS.moveToNext()) {
                AppBean appBean = new AppBean();
                if (cursorS.isNull(iZ)) {
                    appBean.name = null;
                } else {
                    appBean.name = cursorS.getString(iZ);
                }
                if (cursorS.isNull(iZ2)) {
                    appBean.pack = null;
                } else {
                    appBean.pack = cursorS.getString(iZ2);
                }
                if (cursorS.isNull(iZ3)) {
                    appBean.apkPath = null;
                } else {
                    appBean.apkPath = cursorS.getString(iZ3);
                }
                if (cursorS.isNull(iZ4)) {
                    appBean.apkParentPath = null;
                } else {
                    appBean.apkParentPath = cursorS.getString(iZ4);
                }
                if (cursorS.isNull(iZ5)) {
                    appBean.dataDir = null;
                } else {
                    appBean.dataDir = cursorS.getString(iZ5);
                }
                appBean.uid = cursorS.getInt(iZ6);
                appBean.isSystem = cursorS.getInt(iZ7) != 0;
                appBean.isHide = cursorS.getInt(iZ8) != 0;
                appBean.isDisable = cursorS.getInt(iZ9) != 0;
                appBean.isCanStart = cursorS.getInt(iZ10) != 0;
                appBean.isUnInstall = cursorS.getInt(iZ11) != 0;
                arrayList.add(appBean);
            }
            cursorS.close();
            tVarJ.K();
            return arrayList;
        } catch (Throwable th2) {
            cursorS.close();
            tVarJ.K();
            throw th2;
        }
    }

    @Override // com.yunpan.appmanage.db.AppDao
    public List<AppBean> get_appBean(int i10) {
        t tVarJ = t.J(1, "select * from app where uid=?");
        tVarJ.m(1, i10);
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "name");
            int iZ2 = c.z(cursorS, "pack");
            int iZ3 = c.z(cursorS, "apkPath");
            int iZ4 = c.z(cursorS, "apkParentPath");
            int iZ5 = c.z(cursorS, "dataDir");
            int iZ6 = c.z(cursorS, "uid");
            int iZ7 = c.z(cursorS, "isSystem");
            int iZ8 = c.z(cursorS, "isHide");
            int iZ9 = c.z(cursorS, "isDisable");
            int iZ10 = c.z(cursorS, "isCanStart");
            int iZ11 = c.z(cursorS, "isUnInstall");
            ArrayList arrayList = new ArrayList(cursorS.getCount());
            while (cursorS.moveToNext()) {
                AppBean appBean = new AppBean();
                if (cursorS.isNull(iZ)) {
                    appBean.name = null;
                } else {
                    appBean.name = cursorS.getString(iZ);
                }
                if (cursorS.isNull(iZ2)) {
                    appBean.pack = null;
                } else {
                    appBean.pack = cursorS.getString(iZ2);
                }
                if (cursorS.isNull(iZ3)) {
                    appBean.apkPath = null;
                } else {
                    appBean.apkPath = cursorS.getString(iZ3);
                }
                if (cursorS.isNull(iZ4)) {
                    appBean.apkParentPath = null;
                } else {
                    appBean.apkParentPath = cursorS.getString(iZ4);
                }
                if (cursorS.isNull(iZ5)) {
                    appBean.dataDir = null;
                } else {
                    appBean.dataDir = cursorS.getString(iZ5);
                }
                appBean.uid = cursorS.getInt(iZ6);
                appBean.isSystem = cursorS.getInt(iZ7) != 0;
                appBean.isHide = cursorS.getInt(iZ8) != 0;
                appBean.isDisable = cursorS.getInt(iZ9) != 0;
                appBean.isCanStart = cursorS.getInt(iZ10) != 0;
                appBean.isUnInstall = cursorS.getInt(iZ11) != 0;
                arrayList.add(appBean);
            }
            cursorS.close();
            tVarJ.K();
            return arrayList;
        } catch (Throwable th2) {
            cursorS.close();
            tVarJ.K();
            throw th2;
        }
    }
}
