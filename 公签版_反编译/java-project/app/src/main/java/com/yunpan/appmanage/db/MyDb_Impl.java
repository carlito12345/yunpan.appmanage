package com.yunpan.appmanage.db;

import a4.e;
import android.database.Cursor;
import androidx.room.c;
import androidx.room.k;
import androidx.room.p;
import androidx.room.q;
import androidx.room.r;
import androidx.room.s;
import d4.g;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import l2.z;
import ue.d;

/* loaded from: classes.dex */
public final class MyDb_Impl extends MyDb {
    private volatile ApkFileDao _apkFileDao;
    private volatile AppDao _appDao;
    private volatile FileInfoDao _fileInfoDao;

    @Override // androidx.room.p
    public void clearAllTables() {
        super.assertNotMainThread();
        c4.a aVarR = ((g) super.getOpenHelper()).r();
        try {
            super.beginTransaction();
            aVarR.d("DELETE FROM `fileList`");
            aVarR.d("DELETE FROM `apkFiles`");
            aVarR.d("DELETE FROM `app`");
            super.setTransactionSuccessful();
        } finally {
            super.endTransaction();
            aVarR.s("PRAGMA wal_checkpoint(FULL)").close();
            if (!aVarR.C()) {
                aVarR.d("VACUUM");
            }
        }
    }

    @Override // androidx.room.p
    public k createInvalidationTracker() {
        return new k(this, new HashMap(0), new HashMap(0), "fileList", "apkFiles", "app");
    }

    @Override // androidx.room.p
    public c4.b createOpenHelper(c cVar) {
        return new g(cVar.f2394a, "files2.db", new s(cVar, new q(1) { // from class: com.yunpan.appmanage.db.MyDb_Impl.1
            @Override // androidx.room.q
            public void createAllTables(c4.a aVar) {
                aVar.d("CREATE TABLE IF NOT EXISTS `fileList` (`path` TEXT NOT NULL, `name` TEXT NOT NULL, `parent` TEXT NOT NULL, `size` INTEGER NOT NULL, `link` TEXT, `lastModified` INTEGER NOT NULL, `isDir` INTEGER NOT NULL, `isExist` INTEGER NOT NULL DEFAULT true, PRIMARY KEY(`path`))");
                aVar.d("CREATE TABLE IF NOT EXISTS `apkFiles` (`path` TEXT NOT NULL, `lastModified` INTEGER NOT NULL, `apkName` TEXT, `packageName` TEXT, `versionName` TEXT, `versionCode` INTEGER NOT NULL, `minSdk` INTEGER NOT NULL, `abi` TEXT, `insertTime` INTEGER NOT NULL, `sign` TEXT DEFAULT '', `isSystemUid` INTEGER NOT NULL DEFAULT 0, PRIMARY KEY(`path`))");
                aVar.d("CREATE TABLE IF NOT EXISTS `app` (`name` TEXT, `pack` TEXT NOT NULL, `apkPath` TEXT, `apkParentPath` TEXT, `dataDir` TEXT, `uid` INTEGER NOT NULL, `isSystem` INTEGER NOT NULL, `isHide` INTEGER NOT NULL, `isDisable` INTEGER NOT NULL, `isCanStart` INTEGER NOT NULL, `isUnInstall` INTEGER NOT NULL, PRIMARY KEY(`pack`))");
                aVar.d("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
                aVar.d("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '4135cdf74409428db4bd0ef6688b7463')");
            }

            @Override // androidx.room.q
            public void dropAllTables(c4.a aVar) {
                aVar.d("DROP TABLE IF EXISTS `fileList`");
                aVar.d("DROP TABLE IF EXISTS `apkFiles`");
                aVar.d("DROP TABLE IF EXISTS `app`");
                List list = ((p) MyDb_Impl.this).mCallbacks;
                if (list != null) {
                    Iterator it = list.iterator();
                    if (it.hasNext()) {
                        throw z.d(it);
                    }
                }
            }

            @Override // androidx.room.q
            public void onCreate(c4.a aVar) {
                List list = ((p) MyDb_Impl.this).mCallbacks;
                if (list != null) {
                    Iterator it = list.iterator();
                    if (it.hasNext()) {
                        g.b.t(it.next());
                        throw null;
                    }
                }
            }

            @Override // androidx.room.q
            public void onOpen(c4.a aVar) {
                ((p) MyDb_Impl.this).mDatabase = aVar;
                MyDb_Impl.this.internalInitInvalidationTracker(aVar);
                List list = ((p) MyDb_Impl.this).mCallbacks;
                if (list != null) {
                    Iterator it = list.iterator();
                    if (it.hasNext()) {
                        g.b.t(it.next());
                        throw null;
                    }
                }
            }

            @Override // androidx.room.q
            public void onPreMigrate(c4.a aVar) {
                d.e(aVar, "db");
                ke.c cVar2 = new ke.c(10);
                Cursor cursorS = aVar.s("SELECT name FROM sqlite_master WHERE type = 'trigger'");
                while (cursorS.moveToNext()) {
                    try {
                        cVar2.add(cursorS.getString(0));
                    } finally {
                    }
                }
                qf.c.g(cursorS, null);
                ListIterator listIterator = qf.c.e(cVar2).listIterator(0);
                while (true) {
                    ke.a aVar2 = (ke.a) listIterator;
                    if (!aVar2.hasNext()) {
                        return;
                    }
                    String str = (String) aVar2.next();
                    d.d(str, "triggerName");
                    if (str.startsWith("room_fts_content_sync_")) {
                        aVar.d("DROP TRIGGER IF EXISTS ".concat(str));
                    }
                }
            }

            @Override // androidx.room.q
            public r onValidateSchema(c4.a aVar) {
                HashMap map = new HashMap(8);
                map.put("path", new a4.a(1, 1, "path", "TEXT", null, true));
                map.put("name", new a4.a(0, 1, "name", "TEXT", null, true));
                map.put("parent", new a4.a(0, 1, "parent", "TEXT", null, true));
                map.put("size", new a4.a(0, 1, "size", "INTEGER", null, true));
                map.put("link", new a4.a(0, 1, "link", "TEXT", null, false));
                map.put("lastModified", new a4.a(0, 1, "lastModified", "INTEGER", null, true));
                map.put("isDir", new a4.a(0, 1, "isDir", "INTEGER", null, true));
                map.put("isExist", new a4.a(0, 1, "isExist", "INTEGER", "true", true));
                e eVar = new e("fileList", map, new HashSet(0), new HashSet(0));
                e eVarA = e.a(aVar, "fileList");
                if (!eVar.equals(eVarA)) {
                    return new r(false, "fileList(com.yunpan.appmanage.db.FileInfo).\n Expected:\n" + eVar + "\n Found:\n" + eVarA);
                }
                HashMap map2 = new HashMap(11);
                map2.put("path", new a4.a(1, 1, "path", "TEXT", null, true));
                map2.put("lastModified", new a4.a(0, 1, "lastModified", "INTEGER", null, true));
                map2.put("apkName", new a4.a(0, 1, "apkName", "TEXT", null, false));
                map2.put("packageName", new a4.a(0, 1, "packageName", "TEXT", null, false));
                map2.put("versionName", new a4.a(0, 1, "versionName", "TEXT", null, false));
                map2.put("versionCode", new a4.a(0, 1, "versionCode", "INTEGER", null, true));
                map2.put("minSdk", new a4.a(0, 1, "minSdk", "INTEGER", null, true));
                map2.put("abi", new a4.a(0, 1, "abi", "TEXT", null, false));
                map2.put("insertTime", new a4.a(0, 1, "insertTime", "INTEGER", null, true));
                map2.put("sign", new a4.a(0, 1, "sign", "TEXT", "''", false));
                map2.put("isSystemUid", new a4.a(0, 1, "isSystemUid", "INTEGER", "0", true));
                e eVar2 = new e("apkFiles", map2, new HashSet(0), new HashSet(0));
                e eVarA2 = e.a(aVar, "apkFiles");
                if (!eVar2.equals(eVarA2)) {
                    return new r(false, "apkFiles(com.yunpan.appmanage.db.ApkFileBean).\n Expected:\n" + eVar2 + "\n Found:\n" + eVarA2);
                }
                HashMap map3 = new HashMap(11);
                map3.put("name", new a4.a(0, 1, "name", "TEXT", null, false));
                map3.put("pack", new a4.a(1, 1, "pack", "TEXT", null, true));
                map3.put("apkPath", new a4.a(0, 1, "apkPath", "TEXT", null, false));
                map3.put("apkParentPath", new a4.a(0, 1, "apkParentPath", "TEXT", null, false));
                map3.put("dataDir", new a4.a(0, 1, "dataDir", "TEXT", null, false));
                map3.put("uid", new a4.a(0, 1, "uid", "INTEGER", null, true));
                map3.put("isSystem", new a4.a(0, 1, "isSystem", "INTEGER", null, true));
                map3.put("isHide", new a4.a(0, 1, "isHide", "INTEGER", null, true));
                map3.put("isDisable", new a4.a(0, 1, "isDisable", "INTEGER", null, true));
                map3.put("isCanStart", new a4.a(0, 1, "isCanStart", "INTEGER", null, true));
                map3.put("isUnInstall", new a4.a(0, 1, "isUnInstall", "INTEGER", null, true));
                e eVar3 = new e("app", map3, new HashSet(0), new HashSet(0));
                e eVarA3 = e.a(aVar, "app");
                if (eVar3.equals(eVarA3)) {
                    return new r(true, null);
                }
                return new r(false, "app(com.yunpan.appmanage.db.AppBean).\n Expected:\n" + eVar3 + "\n Found:\n" + eVarA3);
            }

            @Override // androidx.room.q
            public void onPostMigrate(c4.a aVar) {
            }
        }));
    }

    @Override // com.yunpan.appmanage.db.MyDb
    public ApkFileDao getApkFileDao() {
        ApkFileDao apkFileDao;
        if (this._apkFileDao != null) {
            return this._apkFileDao;
        }
        synchronized (this) {
            try {
                if (this._apkFileDao == null) {
                    this._apkFileDao = new ApkFileDao_Impl(this);
                }
                apkFileDao = this._apkFileDao;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return apkFileDao;
    }

    @Override // com.yunpan.appmanage.db.MyDb
    public AppDao getAppDao() {
        AppDao appDao;
        if (this._appDao != null) {
            return this._appDao;
        }
        synchronized (this) {
            try {
                if (this._appDao == null) {
                    this._appDao = new AppDao_Impl(this);
                }
                appDao = this._appDao;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return appDao;
    }

    @Override // androidx.room.p
    public List<Object> getAutoMigrations(Map<Class<Object>, Object> map) {
        return new ArrayList();
    }

    @Override // com.yunpan.appmanage.db.MyDb
    public FileInfoDao getFileInfoDao() {
        FileInfoDao fileInfoDao;
        if (this._fileInfoDao != null) {
            return this._fileInfoDao;
        }
        synchronized (this) {
            try {
                if (this._fileInfoDao == null) {
                    this._fileInfoDao = new FileInfoDao_Impl(this);
                }
                fileInfoDao = this._fileInfoDao;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return fileInfoDao;
    }

    @Override // androidx.room.p
    public Set<Class<Object>> getRequiredAutoMigrationSpecs() {
        return new HashSet();
    }

    @Override // androidx.room.p
    public Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        HashMap map = new HashMap();
        map.put(FileInfoDao.class, FileInfoDao_Impl.getRequiredConverters());
        map.put(ApkFileDao.class, ApkFileDao_Impl.getRequiredConverters());
        map.put(AppDao.class, AppDao_Impl.getRequiredConverters());
        return map;
    }
}
