package com.yunpan.appmanage.db;

import android.database.Cursor;
import androidx.room.d;
import androidx.room.e;
import androidx.room.p;
import androidx.room.t;
import androidx.room.v;
import com.bumptech.glide.c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class FileInfoDao_Impl implements FileInfoDao {
    private final p __db;
    private final d __deletionAdapterOfFileInfo;
    private final e __insertionAdapterOfFileInfo;
    private final v __preparedStmtOfDelete;
    private final v __preparedStmtOfDeleteAll;
    private final v __preparedStmtOfDeleteDir;
    private final v __preparedStmtOfDeleteFromDirFile;
    private final v __preparedStmtOfDeleteNoExist;
    private final v __preparedStmtOfUpdateAllIsDelete;
    private final v __preparedStmtOfUpdateIsExist;
    private final v __preparedStmtOfUpdateNameAndPath;
    private final v __preparedStmtOfUpdatePathsRecursively;

    public FileInfoDao_Impl(p pVar) {
        this.__db = pVar;
        this.__insertionAdapterOfFileInfo = new e(pVar) { // from class: com.yunpan.appmanage.db.FileInfoDao_Impl.1
            @Override // androidx.room.v
            public String createQuery() {
                return "INSERT OR REPLACE INTO `fileList` (`path`,`name`,`parent`,`size`,`link`,`lastModified`,`isDir`,`isExist`) VALUES (?,?,?,?,?,?,?,?)";
            }

            @Override // androidx.room.e
            public void bind(c4.e eVar, FileInfo fileInfo) {
                String str = fileInfo.path;
                if (str == null) {
                    eVar.y(1);
                } else {
                    eVar.e(1, str);
                }
                String str2 = fileInfo.name;
                if (str2 == null) {
                    eVar.y(2);
                } else {
                    eVar.e(2, str2);
                }
                String str3 = fileInfo.parent;
                if (str3 == null) {
                    eVar.y(3);
                } else {
                    eVar.e(3, str3);
                }
                eVar.m(4, fileInfo.size);
                String str4 = fileInfo.link;
                if (str4 == null) {
                    eVar.y(5);
                } else {
                    eVar.e(5, str4);
                }
                eVar.m(6, fileInfo.lastModified);
                eVar.m(7, fileInfo.isDir ? 1L : 0L);
                eVar.m(8, fileInfo.isExist ? 1L : 0L);
            }
        };
        this.__deletionAdapterOfFileInfo = new d(pVar) { // from class: com.yunpan.appmanage.db.FileInfoDao_Impl.2
            @Override // androidx.room.v
            public String createQuery() {
                return "DELETE FROM `fileList` WHERE `path` = ?";
            }

            @Override // androidx.room.d
            public void bind(c4.e eVar, FileInfo fileInfo) {
                String str = fileInfo.path;
                if (str == null) {
                    eVar.y(1);
                } else {
                    eVar.e(1, str);
                }
            }
        };
        this.__preparedStmtOfUpdateNameAndPath = new v(pVar) { // from class: com.yunpan.appmanage.db.FileInfoDao_Impl.3
            @Override // androidx.room.v
            public String createQuery() {
                return "update fileList set name=?,path=? where path=?";
            }
        };
        this.__preparedStmtOfUpdatePathsRecursively = new v(pVar) { // from class: com.yunpan.appmanage.db.FileInfoDao_Impl.4
            @Override // androidx.room.v
            public String createQuery() {
                return "UPDATE fileList SET path = REPLACE(path, ?, ?) WHERE path LIKE ? || '%'";
            }
        };
        this.__preparedStmtOfUpdateAllIsDelete = new v(pVar) { // from class: com.yunpan.appmanage.db.FileInfoDao_Impl.5
            @Override // androidx.room.v
            public String createQuery() {
                return "update fileList set isExist=0";
            }
        };
        this.__preparedStmtOfUpdateIsExist = new v(pVar) { // from class: com.yunpan.appmanage.db.FileInfoDao_Impl.6
            @Override // androidx.room.v
            public String createQuery() {
                return "update fileList set isExist=1 where path=?";
            }
        };
        this.__preparedStmtOfDeleteNoExist = new v(pVar) { // from class: com.yunpan.appmanage.db.FileInfoDao_Impl.7
            @Override // androidx.room.v
            public String createQuery() {
                return "delete from fileList where isExist=0";
            }
        };
        this.__preparedStmtOfDelete = new v(pVar) { // from class: com.yunpan.appmanage.db.FileInfoDao_Impl.8
            @Override // androidx.room.v
            public String createQuery() {
                return "delete from fileList where path=?";
            }
        };
        this.__preparedStmtOfDeleteAll = new v(pVar) { // from class: com.yunpan.appmanage.db.FileInfoDao_Impl.9
            @Override // androidx.room.v
            public String createQuery() {
                return "DELETE FROM fileList";
            }
        };
        this.__preparedStmtOfDeleteDir = new v(pVar) { // from class: com.yunpan.appmanage.db.FileInfoDao_Impl.10
            @Override // androidx.room.v
            public String createQuery() {
                return "DELETE FROM fileList WHERE path=? or path LIKE ? || '/%'";
            }
        };
        this.__preparedStmtOfDeleteFromDirFile = new v(pVar) { // from class: com.yunpan.appmanage.db.FileInfoDao_Impl.11
            @Override // androidx.room.v
            public String createQuery() {
                return "DELETE FROM fileList WHERE parent=?";
            }
        };
    }

    private FileInfo __entityCursorConverter_comYunpanAppmanageDbFileInfo(Cursor cursor) {
        boolean z;
        int iY = c.y(cursor, "path");
        int iY2 = c.y(cursor, "name");
        int iY3 = c.y(cursor, "parent");
        int iY4 = c.y(cursor, "size");
        int iY5 = c.y(cursor, "link");
        int iY6 = c.y(cursor, "lastModified");
        int iY7 = c.y(cursor, "isDir");
        int iY8 = c.y(cursor, "isExist");
        String string = null;
        String string2 = (iY == -1 || cursor.isNull(iY)) ? null : cursor.getString(iY);
        String string3 = (iY2 == -1 || cursor.isNull(iY2)) ? null : cursor.getString(iY2);
        String string4 = (iY3 == -1 || cursor.isNull(iY3)) ? null : cursor.getString(iY3);
        long j10 = iY4 == -1 ? 0L : cursor.getLong(iY4);
        if (iY5 != -1 && !cursor.isNull(iY5)) {
            string = cursor.getString(iY5);
        }
        String str = string;
        long j11 = iY6 != -1 ? cursor.getLong(iY6) : 0L;
        if (iY7 == -1) {
            z = false;
        } else {
            z = cursor.getInt(iY7) != 0;
        }
        FileInfo fileInfo = new FileInfo(string2, string3, string4, j10, str, j11, z);
        if (iY8 != -1) {
            fileInfo.isExist = cursor.getInt(iY8) != 0;
        }
        return fileInfo;
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }

    @Override // com.yunpan.appmanage.db.FileInfoDao
    public int delete(FileInfo fileInfo) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            int iHandle = this.__deletionAdapterOfFileInfo.handle(fileInfo);
            this.__db.setTransactionSuccessful();
            return iHandle;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.yunpan.appmanage.db.FileInfoDao
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

    @Override // com.yunpan.appmanage.db.FileInfoDao
    public void deleteDir(String str) {
        this.__db.assertNotSuspendingTransaction();
        c4.e eVarAcquire = this.__preparedStmtOfDeleteDir.acquire();
        if (str == null) {
            eVarAcquire.y(1);
        } else {
            eVarAcquire.e(1, str);
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
            this.__preparedStmtOfDeleteDir.release(eVarAcquire);
        }
    }

    @Override // com.yunpan.appmanage.db.FileInfoDao
    public void deleteFromDirFile(String str) {
        this.__db.assertNotSuspendingTransaction();
        c4.e eVarAcquire = this.__preparedStmtOfDeleteFromDirFile.acquire();
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
            this.__preparedStmtOfDeleteFromDirFile.release(eVarAcquire);
        }
    }

    @Override // com.yunpan.appmanage.db.FileInfoDao
    public void deleteNoExist() {
        this.__db.assertNotSuspendingTransaction();
        c4.e eVarAcquire = this.__preparedStmtOfDeleteNoExist.acquire();
        try {
            this.__db.beginTransaction();
            try {
                eVarAcquire.f();
                this.__db.setTransactionSuccessful();
            } finally {
                this.__db.endTransaction();
            }
        } finally {
            this.__preparedStmtOfDeleteNoExist.release(eVarAcquire);
        }
    }

    @Override // com.yunpan.appmanage.db.FileInfoDao
    public List<FileInfo> getAllKeyLogDirs(boolean z) {
        t tVarJ = t.J(1, "SELECT * FROM fileList WHERE isDir=? and (LOWER(name) LIKE '%tmp%' or LOWER(name) LIKE '%temp%' or LOWER(name) LIKE '%log%' or LOWER(name) LIKE '%cache%' or LOWER(name) LIKE '%log' or LOWER(name) LIKE 'log%')");
        tVarJ.m(1, z ? 1L : 0L);
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = com.bumptech.glide.d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "path");
            int iZ2 = c.z(cursorS, "name");
            int iZ3 = c.z(cursorS, "parent");
            int iZ4 = c.z(cursorS, "size");
            int iZ5 = c.z(cursorS, "link");
            int iZ6 = c.z(cursorS, "lastModified");
            int iZ7 = c.z(cursorS, "isDir");
            int iZ8 = c.z(cursorS, "isExist");
            ArrayList arrayList = new ArrayList(cursorS.getCount());
            while (cursorS.moveToNext()) {
                boolean z4 = false;
                FileInfo fileInfo = new FileInfo(cursorS.isNull(iZ) ? null : cursorS.getString(iZ), cursorS.isNull(iZ2) ? null : cursorS.getString(iZ2), cursorS.isNull(iZ3) ? null : cursorS.getString(iZ3), cursorS.getLong(iZ4), cursorS.isNull(iZ5) ? null : cursorS.getString(iZ5), cursorS.getLong(iZ6), cursorS.getInt(iZ7) != 0);
                if (cursorS.getInt(iZ8) != 0) {
                    z4 = true;
                }
                fileInfo.isExist = z4;
                arrayList.add(fileInfo);
            }
            return arrayList;
        } finally {
            cursorS.close();
            tVarJ.K();
        }
    }

    @Override // com.yunpan.appmanage.db.FileInfoDao
    public List<FileInfo> getAllLogFiles() {
        t tVarJ = t.J(0, "SELECT * FROM fileList WHERE isDir=0 and (LOWER(name) LIKE '%.tmp' or LOWER(name) LIKE '%.temp' or LOWER(name) LIKE '%.log' or LOWER(name) LIKE '%.xlog' or LOWER(name) LIKE '%.cache')");
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = com.bumptech.glide.d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "path");
            int iZ2 = c.z(cursorS, "name");
            int iZ3 = c.z(cursorS, "parent");
            int iZ4 = c.z(cursorS, "size");
            int iZ5 = c.z(cursorS, "link");
            int iZ6 = c.z(cursorS, "lastModified");
            int iZ7 = c.z(cursorS, "isDir");
            int iZ8 = c.z(cursorS, "isExist");
            ArrayList arrayList = new ArrayList(cursorS.getCount());
            while (cursorS.moveToNext()) {
                boolean z = true;
                FileInfo fileInfo = new FileInfo(cursorS.isNull(iZ) ? null : cursorS.getString(iZ), cursorS.isNull(iZ2) ? null : cursorS.getString(iZ2), cursorS.isNull(iZ3) ? null : cursorS.getString(iZ3), cursorS.getLong(iZ4), cursorS.isNull(iZ5) ? null : cursorS.getString(iZ5), cursorS.getLong(iZ6), cursorS.getInt(iZ7) != 0);
                if (cursorS.getInt(iZ8) == 0) {
                    z = false;
                }
                fileInfo.isExist = z;
                arrayList.add(fileInfo);
            }
            return arrayList;
        } finally {
            cursorS.close();
            tVarJ.K();
        }
    }

    @Override // com.yunpan.appmanage.db.FileInfoDao
    public int getCount() {
        t tVarJ = t.J(0, "SELECT COUNT(*) FROM fileList");
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = com.bumptech.glide.d.S(this.__db, tVarJ);
        try {
            return cursorS.moveToFirst() ? cursorS.getInt(0) : 0;
        } finally {
            cursorS.close();
            tVarJ.K();
        }
    }

    @Override // com.yunpan.appmanage.db.FileInfoDao
    public List<FileInfo> getCurrentDirPaths(String str) {
        t tVarJ = t.J(1, "select * from fileList where `parent`=?");
        if (str == null) {
            tVarJ.y(1);
        } else {
            tVarJ.e(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = com.bumptech.glide.d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "path");
            int iZ2 = c.z(cursorS, "name");
            int iZ3 = c.z(cursorS, "parent");
            int iZ4 = c.z(cursorS, "size");
            int iZ5 = c.z(cursorS, "link");
            int iZ6 = c.z(cursorS, "lastModified");
            int iZ7 = c.z(cursorS, "isDir");
            int iZ8 = c.z(cursorS, "isExist");
            ArrayList arrayList = new ArrayList(cursorS.getCount());
            while (cursorS.moveToNext()) {
                boolean z = false;
                FileInfo fileInfo = new FileInfo(cursorS.isNull(iZ) ? null : cursorS.getString(iZ), cursorS.isNull(iZ2) ? null : cursorS.getString(iZ2), cursorS.isNull(iZ3) ? null : cursorS.getString(iZ3), cursorS.getLong(iZ4), cursorS.isNull(iZ5) ? null : cursorS.getString(iZ5), cursorS.getLong(iZ6), cursorS.getInt(iZ7) != 0);
                if (cursorS.getInt(iZ8) != 0) {
                    z = true;
                }
                fileInfo.isExist = z;
                arrayList.add(fileInfo);
            }
            return arrayList;
        } finally {
            cursorS.close();
            tVarJ.K();
        }
    }

    @Override // com.yunpan.appmanage.db.FileInfoDao
    public int getDirCount() {
        t tVarJ = t.J(0, "SELECT COUNT(*) FROM fileList WHERE `isDir`=1");
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = com.bumptech.glide.d.S(this.__db, tVarJ);
        try {
            return cursorS.moveToFirst() ? cursorS.getInt(0) : 0;
        } finally {
            cursorS.close();
            tVarJ.K();
        }
    }

    @Override // com.yunpan.appmanage.db.FileInfoDao
    public long getDirDirCount(String str) {
        t tVarJ = t.J(1, "SELECT COUNT(*) FROM fileList WHERE `isDir`=1 and `path` LIKE ? || '%'");
        if (str == null) {
            tVarJ.y(1);
        } else {
            tVarJ.e(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = com.bumptech.glide.d.S(this.__db, tVarJ);
        try {
            return cursorS.moveToFirst() ? cursorS.getLong(0) : 0L;
        } finally {
            cursorS.close();
            tVarJ.K();
        }
    }

    @Override // com.yunpan.appmanage.db.FileInfoDao
    public long getDirFileCount(String str) {
        t tVarJ = t.J(1, "SELECT COUNT(*) FROM fileList WHERE `isDir`=0 and `path` LIKE ? || '%'");
        if (str == null) {
            tVarJ.y(1);
        } else {
            tVarJ.e(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = com.bumptech.glide.d.S(this.__db, tVarJ);
        try {
            return cursorS.moveToFirst() ? cursorS.getLong(0) : 0L;
        } finally {
            cursorS.close();
            tVarJ.K();
        }
    }

    @Override // com.yunpan.appmanage.db.FileInfoDao
    public List<FileInfo> getDirFiles(String str) {
        t tVarJ = t.J(1, "select * from fileList where `parent`=?");
        if (str == null) {
            tVarJ.y(1);
        } else {
            tVarJ.e(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = com.bumptech.glide.d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "path");
            int iZ2 = c.z(cursorS, "name");
            int iZ3 = c.z(cursorS, "parent");
            int iZ4 = c.z(cursorS, "size");
            int iZ5 = c.z(cursorS, "link");
            int iZ6 = c.z(cursorS, "lastModified");
            int iZ7 = c.z(cursorS, "isDir");
            int iZ8 = c.z(cursorS, "isExist");
            ArrayList arrayList = new ArrayList(cursorS.getCount());
            while (cursorS.moveToNext()) {
                boolean z = false;
                FileInfo fileInfo = new FileInfo(cursorS.isNull(iZ) ? null : cursorS.getString(iZ), cursorS.isNull(iZ2) ? null : cursorS.getString(iZ2), cursorS.isNull(iZ3) ? null : cursorS.getString(iZ3), cursorS.getLong(iZ4), cursorS.isNull(iZ5) ? null : cursorS.getString(iZ5), cursorS.getLong(iZ6), cursorS.getInt(iZ7) != 0);
                if (cursorS.getInt(iZ8) != 0) {
                    z = true;
                }
                fileInfo.isExist = z;
                arrayList.add(fileInfo);
            }
            return arrayList;
        } finally {
            cursorS.close();
            tVarJ.K();
        }
    }

    @Override // com.yunpan.appmanage.db.FileInfoDao
    public List<FileInfo> getDirFiles_noHide_sortName(String str, boolean z) {
        t tVarJ = t.J(2, "select * from fileList where `isDir`=? and `parent`=? and name NOT LIKE '.%' ORDER BY name");
        tVarJ.m(1, z ? 1L : 0L);
        if (str == null) {
            tVarJ.y(2);
        } else {
            tVarJ.e(2, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = com.bumptech.glide.d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "path");
            int iZ2 = c.z(cursorS, "name");
            int iZ3 = c.z(cursorS, "parent");
            int iZ4 = c.z(cursorS, "size");
            int iZ5 = c.z(cursorS, "link");
            int iZ6 = c.z(cursorS, "lastModified");
            int iZ7 = c.z(cursorS, "isDir");
            int iZ8 = c.z(cursorS, "isExist");
            ArrayList arrayList = new ArrayList(cursorS.getCount());
            while (cursorS.moveToNext()) {
                boolean z4 = false;
                FileInfo fileInfo = new FileInfo(cursorS.isNull(iZ) ? null : cursorS.getString(iZ), cursorS.isNull(iZ2) ? null : cursorS.getString(iZ2), cursorS.isNull(iZ3) ? null : cursorS.getString(iZ3), cursorS.getLong(iZ4), cursorS.isNull(iZ5) ? null : cursorS.getString(iZ5), cursorS.getLong(iZ6), cursorS.getInt(iZ7) != 0);
                if (cursorS.getInt(iZ8) != 0) {
                    z4 = true;
                }
                fileInfo.isExist = z4;
                arrayList.add(fileInfo);
            }
            return arrayList;
        } finally {
            cursorS.close();
            tVarJ.K();
        }
    }

    @Override // com.yunpan.appmanage.db.FileInfoDao
    public List<FileInfo> getDirFiles_noHide_sortTime(String str, boolean z) {
        t tVarJ = t.J(2, "select * from fileList where `isDir`=? and `parent`=? and name NOT LIKE '.%' ORDER BY lastModified");
        tVarJ.m(1, z ? 1L : 0L);
        if (str == null) {
            tVarJ.y(2);
        } else {
            tVarJ.e(2, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = com.bumptech.glide.d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "path");
            int iZ2 = c.z(cursorS, "name");
            int iZ3 = c.z(cursorS, "parent");
            int iZ4 = c.z(cursorS, "size");
            int iZ5 = c.z(cursorS, "link");
            int iZ6 = c.z(cursorS, "lastModified");
            int iZ7 = c.z(cursorS, "isDir");
            int iZ8 = c.z(cursorS, "isExist");
            ArrayList arrayList = new ArrayList(cursorS.getCount());
            while (cursorS.moveToNext()) {
                boolean z4 = false;
                FileInfo fileInfo = new FileInfo(cursorS.isNull(iZ) ? null : cursorS.getString(iZ), cursorS.isNull(iZ2) ? null : cursorS.getString(iZ2), cursorS.isNull(iZ3) ? null : cursorS.getString(iZ3), cursorS.getLong(iZ4), cursorS.isNull(iZ5) ? null : cursorS.getString(iZ5), cursorS.getLong(iZ6), cursorS.getInt(iZ7) != 0);
                if (cursorS.getInt(iZ8) != 0) {
                    z4 = true;
                }
                fileInfo.isExist = z4;
                arrayList.add(fileInfo);
            }
            return arrayList;
        } finally {
            cursorS.close();
            tVarJ.K();
        }
    }

    @Override // com.yunpan.appmanage.db.FileInfoDao
    public List<FileInfo> getDirFiles_sortName(String str, boolean z) {
        t tVarJ = t.J(2, "select * from fileList where `isDir`=? and `parent`=? ORDER BY name");
        tVarJ.m(1, z ? 1L : 0L);
        if (str == null) {
            tVarJ.y(2);
        } else {
            tVarJ.e(2, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = com.bumptech.glide.d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "path");
            int iZ2 = c.z(cursorS, "name");
            int iZ3 = c.z(cursorS, "parent");
            int iZ4 = c.z(cursorS, "size");
            int iZ5 = c.z(cursorS, "link");
            int iZ6 = c.z(cursorS, "lastModified");
            int iZ7 = c.z(cursorS, "isDir");
            int iZ8 = c.z(cursorS, "isExist");
            ArrayList arrayList = new ArrayList(cursorS.getCount());
            while (cursorS.moveToNext()) {
                boolean z4 = false;
                FileInfo fileInfo = new FileInfo(cursorS.isNull(iZ) ? null : cursorS.getString(iZ), cursorS.isNull(iZ2) ? null : cursorS.getString(iZ2), cursorS.isNull(iZ3) ? null : cursorS.getString(iZ3), cursorS.getLong(iZ4), cursorS.isNull(iZ5) ? null : cursorS.getString(iZ5), cursorS.getLong(iZ6), cursorS.getInt(iZ7) != 0);
                if (cursorS.getInt(iZ8) != 0) {
                    z4 = true;
                }
                fileInfo.isExist = z4;
                arrayList.add(fileInfo);
            }
            return arrayList;
        } finally {
            cursorS.close();
            tVarJ.K();
        }
    }

    @Override // com.yunpan.appmanage.db.FileInfoDao
    public List<FileInfo> getDirFiles_sortTime(String str, boolean z) {
        t tVarJ = t.J(2, "select * from fileList where `isDir`=? and `parent`=? ORDER BY lastModified");
        tVarJ.m(1, z ? 1L : 0L);
        if (str == null) {
            tVarJ.y(2);
        } else {
            tVarJ.e(2, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = com.bumptech.glide.d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "path");
            int iZ2 = c.z(cursorS, "name");
            int iZ3 = c.z(cursorS, "parent");
            int iZ4 = c.z(cursorS, "size");
            int iZ5 = c.z(cursorS, "link");
            int iZ6 = c.z(cursorS, "lastModified");
            int iZ7 = c.z(cursorS, "isDir");
            int iZ8 = c.z(cursorS, "isExist");
            ArrayList arrayList = new ArrayList(cursorS.getCount());
            while (cursorS.moveToNext()) {
                boolean z4 = false;
                FileInfo fileInfo = new FileInfo(cursorS.isNull(iZ) ? null : cursorS.getString(iZ), cursorS.isNull(iZ2) ? null : cursorS.getString(iZ2), cursorS.isNull(iZ3) ? null : cursorS.getString(iZ3), cursorS.getLong(iZ4), cursorS.isNull(iZ5) ? null : cursorS.getString(iZ5), cursorS.getLong(iZ6), cursorS.getInt(iZ7) != 0);
                if (cursorS.getInt(iZ8) != 0) {
                    z4 = true;
                }
                fileInfo.isExist = z4;
                arrayList.add(fileInfo);
            }
            return arrayList;
        } finally {
            cursorS.close();
            tVarJ.K();
        }
    }

    @Override // com.yunpan.appmanage.db.FileInfoDao
    public long getDirSize(String str) {
        t tVarJ = t.J(1, "SELECT SUM(size) FROM fileList WHERE `isDir`=0 and `path` LIKE ? || '%'");
        if (str == null) {
            tVarJ.y(1);
        } else {
            tVarJ.e(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = com.bumptech.glide.d.S(this.__db, tVarJ);
        try {
            return cursorS.moveToFirst() ? cursorS.getLong(0) : 0L;
        } finally {
            cursorS.close();
            tVarJ.K();
        }
    }

    @Override // com.yunpan.appmanage.db.FileInfoDao
    public int getFileCount() {
        t tVarJ = t.J(0, "SELECT COUNT(*) FROM fileList WHERE `isDir`=0");
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = com.bumptech.glide.d.S(this.__db, tVarJ);
        try {
            return cursorS.moveToFirst() ? cursorS.getInt(0) : 0;
        } finally {
            cursorS.close();
            tVarJ.K();
        }
    }

    @Override // com.yunpan.appmanage.db.FileInfoDao
    public FileInfo getFileInfo(String str) {
        boolean z = true;
        t tVarJ = t.J(1, "select * from fileList where path=?");
        if (str == null) {
            tVarJ.y(1);
        } else {
            tVarJ.e(1, str);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = com.bumptech.glide.d.S(this.__db, tVarJ);
        try {
            int iZ = c.z(cursorS, "path");
            int iZ2 = c.z(cursorS, "name");
            int iZ3 = c.z(cursorS, "parent");
            int iZ4 = c.z(cursorS, "size");
            int iZ5 = c.z(cursorS, "link");
            int iZ6 = c.z(cursorS, "lastModified");
            int iZ7 = c.z(cursorS, "isDir");
            int iZ8 = c.z(cursorS, "isExist");
            FileInfo fileInfo = null;
            if (cursorS.moveToFirst()) {
                fileInfo = new FileInfo(cursorS.isNull(iZ) ? null : cursorS.getString(iZ), cursorS.isNull(iZ2) ? null : cursorS.getString(iZ2), cursorS.isNull(iZ3) ? null : cursorS.getString(iZ3), cursorS.getLong(iZ4), cursorS.isNull(iZ5) ? null : cursorS.getString(iZ5), cursorS.getLong(iZ6), cursorS.getInt(iZ7) != 0);
                if (cursorS.getInt(iZ8) == 0) {
                    z = false;
                }
                fileInfo.isExist = z;
            }
            return fileInfo;
        } finally {
            cursorS.close();
            tVarJ.K();
        }
    }

    @Override // com.yunpan.appmanage.db.FileInfoDao
    public long insert(FileInfo fileInfo) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            long jInsertAndReturnId = this.__insertionAdapterOfFileInfo.insertAndReturnId(fileInfo);
            this.__db.setTransactionSuccessful();
            return jInsertAndReturnId;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // com.yunpan.appmanage.db.FileInfoDao
    public List<FileInfo> sqlQuery(c4.d dVar) {
        this.__db.assertNotSuspendingTransaction();
        Cursor cursorS = com.bumptech.glide.d.S(this.__db, dVar);
        try {
            ArrayList arrayList = new ArrayList(cursorS.getCount());
            while (cursorS.moveToNext()) {
                arrayList.add(__entityCursorConverter_comYunpanAppmanageDbFileInfo(cursorS));
            }
            return arrayList;
        } finally {
            cursorS.close();
        }
    }

    @Override // com.yunpan.appmanage.db.FileInfoDao
    public int updateAllIsDelete() {
        this.__db.assertNotSuspendingTransaction();
        c4.e eVarAcquire = this.__preparedStmtOfUpdateAllIsDelete.acquire();
        try {
            this.__db.beginTransaction();
            try {
                int iF = eVarAcquire.f();
                this.__db.setTransactionSuccessful();
                return iF;
            } finally {
                this.__db.endTransaction();
            }
        } finally {
            this.__preparedStmtOfUpdateAllIsDelete.release(eVarAcquire);
        }
    }

    @Override // com.yunpan.appmanage.db.FileInfoDao
    public void updateIsExist(String str) {
        this.__db.assertNotSuspendingTransaction();
        c4.e eVarAcquire = this.__preparedStmtOfUpdateIsExist.acquire();
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
            this.__preparedStmtOfUpdateIsExist.release(eVarAcquire);
        }
    }

    @Override // com.yunpan.appmanage.db.FileInfoDao
    public int updateNameAndPath(String str, String str2, String str3) {
        this.__db.assertNotSuspendingTransaction();
        c4.e eVarAcquire = this.__preparedStmtOfUpdateNameAndPath.acquire();
        if (str2 == null) {
            eVarAcquire.y(1);
        } else {
            eVarAcquire.e(1, str2);
        }
        if (str3 == null) {
            eVarAcquire.y(2);
        } else {
            eVarAcquire.e(2, str3);
        }
        if (str == null) {
            eVarAcquire.y(3);
        } else {
            eVarAcquire.e(3, str);
        }
        try {
            this.__db.beginTransaction();
            try {
                int iF = eVarAcquire.f();
                this.__db.setTransactionSuccessful();
                return iF;
            } finally {
                this.__db.endTransaction();
            }
        } finally {
            this.__preparedStmtOfUpdateNameAndPath.release(eVarAcquire);
        }
    }

    @Override // com.yunpan.appmanage.db.FileInfoDao
    public int updatePathsRecursively(String str, String str2) {
        this.__db.assertNotSuspendingTransaction();
        c4.e eVarAcquire = this.__preparedStmtOfUpdatePathsRecursively.acquire();
        if (str == null) {
            eVarAcquire.y(1);
        } else {
            eVarAcquire.e(1, str);
        }
        if (str2 == null) {
            eVarAcquire.y(2);
        } else {
            eVarAcquire.e(2, str2);
        }
        if (str == null) {
            eVarAcquire.y(3);
        } else {
            eVarAcquire.e(3, str);
        }
        try {
            this.__db.beginTransaction();
            try {
                int iF = eVarAcquire.f();
                this.__db.setTransactionSuccessful();
                return iF;
            } finally {
                this.__db.endTransaction();
            }
        } finally {
            this.__preparedStmtOfUpdatePathsRecursively.release(eVarAcquire);
        }
    }

    @Override // com.yunpan.appmanage.db.FileInfoDao
    public void delete(String str) {
        this.__db.assertNotSuspendingTransaction();
        c4.e eVarAcquire = this.__preparedStmtOfDelete.acquire();
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
            this.__preparedStmtOfDelete.release(eVarAcquire);
        }
    }
}
