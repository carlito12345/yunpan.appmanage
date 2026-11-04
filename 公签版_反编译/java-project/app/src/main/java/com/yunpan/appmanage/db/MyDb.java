package com.yunpan.appmanage.db;

import a2.c0;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import androidx.activity.i;
import androidx.room.c;
import androidx.room.o;
import androidx.room.p;
import c4.e;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import fa.g0;
import gf.g;
import j$.util.Iterator$EL;
import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import ue.d;
import x9.w3;

/* loaded from: classes.dex */
public abstract class MyDb extends p {
    private static MyDb INSTANCE;

    public static MyDb get() {
        return INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void init(Context context) {
        int i10;
        if (INSTANCE == null) {
            Context applicationContext = context.getApplicationContext();
            d.e(applicationContext, "context");
            for (int i11 = 0; i11 < 9; i11++) {
                char cCharAt = "files2.db".charAt(i11);
                if (!Character.isWhitespace(cCharAt) && !Character.isSpaceChar(cCharAt)) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    o oVar = new o(0);
                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                    g gVar = new g(20);
                    int i12 = Build.VERSION.SDK_INT;
                    Object systemService = applicationContext.getSystemService("activity");
                    ActivityManager activityManager = systemService instanceof ActivityManager ? (ActivityManager) systemService : null;
                    if (activityManager == null) {
                        i10 = 2;
                    } else if (!(i12 >= 19 ? i.c(activityManager) : false)) {
                        i10 = 3;
                    }
                    c cVar = new c(applicationContext, gVar, oVar, arrayList, i10, linkedHashSet, arrayList2, arrayList3);
                    Package r12 = MyDb.class.getPackage();
                    d.b(r12);
                    String name = r12.getName();
                    String canonicalName = MyDb.class.getCanonicalName();
                    d.b(canonicalName);
                    d.d(name, "fullPackage");
                    if (name.length() != 0) {
                        canonicalName = canonicalName.substring(name.length() + 1);
                        d.d(canonicalName, "this as java.lang.String).substring(startIndex)");
                    }
                    String strReplace = canonicalName.replace('.', '_');
                    d.d(strReplace, "replace(...)");
                    String strConcat = strReplace.concat("_Impl");
                    try {
                        Class<?> cls = Class.forName(name.length() == 0 ? strConcat : name + '.' + strConcat, true, MyDb.class.getClassLoader());
                        d.c(cls, "null cannot be cast to non-null type java.lang.Class<T of androidx.room.Room.getGeneratedImplementation>");
                        p pVar = (p) cls.getDeclaredConstructor(null).newInstance(null);
                        pVar.init(cVar);
                        INSTANCE = (MyDb) pVar;
                        return;
                    } catch (ClassNotFoundException unused) {
                        throw new RuntimeException("Cannot find implementation for " + MyDb.class.getCanonicalName() + ". " + strConcat + " does not exist");
                    } catch (IllegalAccessException unused2) {
                        throw new RuntimeException("Cannot access the constructor " + MyDb.class.getCanonicalName());
                    } catch (InstantiationException unused3) {
                        throw new RuntimeException("Failed to create an instance of " + MyDb.class.getCanonicalName());
                    }
                }
            }
            throw new IllegalArgumentException("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$addIfFile$0(String str, String str2) {
        if (str.startsWith(str2)) {
            get().lambda$addFile_thread$1(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$deleteDir_thread$2(String str) {
        get().getFileInfoDao().deleteDir(str);
    }

    /* renamed from: addFile, reason: merged with bridge method [inline-methods] */
    public void lambda$addFile_thread$1(String str) {
        if (str.contains("\\")) {
            return;
        }
        try {
            if (new File(str).exists()) {
                w3 w3Var = new w3(str);
                getFileInfoDao().insert(new FileInfo(w3Var.f18365b, w3Var.f18364a, w3Var.f18368e, w3Var.f18367d, w3Var.f18369f, w3Var.f18370g, w3Var.f18366c));
            }
        } catch (Exception unused) {
        }
    }

    public void addFile_thread(String str) {
        DecimalFormat decimalFormat = k.f4034u0;
        j.f4033a.f4048g0.submit(new c0(this, 10, str));
    }

    public boolean addIfFile(String str) {
        int i10 = 0;
        if (str.contains("\\")) {
            return false;
        }
        if (str.startsWith(g0.f5682a.d())) {
            get().lambda$addFile_thread$1(str);
            return true;
        }
        DecimalFormat decimalFormat = k.f4034u0;
        Iterator$EL.forEachRemaining(j.f4033a.f4073v.iterator(), new b(i10, str));
        return false;
    }

    public void addList(ArrayList<FileInfo> arrayList) {
        synchronized (this) {
            try {
                e eVarCompileStatement = get().compileStatement("INSERT OR REPLACE INTO fileList(path,name,parent,size,link,lastModified,isDir) values(?,?,?,?,?,?,?)");
                c4.a aVarR = ((d4.g) get().getOpenHelper()).r();
                aVarR.a();
                Iterator<FileInfo> it = arrayList.iterator();
                while (it.hasNext()) {
                    FileInfo next = it.next();
                    if (!next.path.contains("\\")) {
                        eVarCompileStatement.e(1, next.path);
                        eVarCompileStatement.e(2, next.name);
                        eVarCompileStatement.e(3, next.parent);
                        eVarCompileStatement.m(4, next.size);
                        eVarCompileStatement.e(5, next.link);
                        eVarCompileStatement.m(6, next.lastModified);
                        eVarCompileStatement.m(7, next.isDir ? 1L : 0L);
                        eVarCompileStatement.G();
                    }
                }
                aVarR.n();
                aVarR.u();
                try {
                    eVarCompileStatement.close();
                } catch (Exception unused) {
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void deleteDir_thread(String str) {
        DecimalFormat decimalFormat = k.f4034u0;
        j.f4033a.f4048g0.submit(new a(str, 0));
    }

    public abstract ApkFileDao getApkFileDao();

    public abstract AppDao getAppDao();

    public abstract FileInfoDao getFileInfoDao();

    public void updateName(String str, String str2) {
        getFileInfoDao().delete(str);
        w3 w3Var = new w3(str2);
        getFileInfoDao().insert(new FileInfo(w3Var.f18365b, w3Var.f18364a, w3Var.f18368e, w3Var.f18367d, w3Var.f18369f, w3Var.f18370g, w3Var.f18366c));
    }

    public void addFile(w3 w3Var) {
        if (w3Var.f18365b.contains("\\")) {
            return;
        }
        getFileInfoDao().insert(new FileInfo(w3Var.f18365b, w3Var.f18364a, w3Var.f18368e, w3Var.f18367d, w3Var.f18369f, w3Var.f18370g, w3Var.f18366c));
    }

    public boolean addIfFile(File file) {
        return addIfFile(file.getAbsolutePath());
    }
}
