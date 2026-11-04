package d4;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Pair;
import androidx.room.s;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* loaded from: classes.dex */
public final class f extends SQLiteOpenHelper {

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ int f4451g = 0;

    /* renamed from: a, reason: collision with root package name */
    public final Context f4452a;

    /* renamed from: b, reason: collision with root package name */
    public final c f4453b;

    /* renamed from: c, reason: collision with root package name */
    public final s f4454c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f4455d;

    /* renamed from: e, reason: collision with root package name */
    public final e4.a f4456e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f4457f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(Context context, String str, final c cVar, final s sVar) {
        super(context, str, null, sVar.f2426b, new DatabaseErrorHandler() { // from class: d4.d
            @Override // android.database.DatabaseErrorHandler
            public final void onCorruption(SQLiteDatabase sQLiteDatabase) {
                ue.d.e(sVar, "$callback");
                c cVar2 = cVar;
                int i10 = f.f4451g;
                ue.d.d(sQLiteDatabase, "dbObj");
                b bVarD = s1.g.D(cVar2, sQLiteDatabase);
                SQLiteDatabase sQLiteDatabase2 = bVarD.f4445a;
                if (!sQLiteDatabase2.isOpen()) {
                    String path = sQLiteDatabase2.getPath();
                    if (path != null) {
                        s.d(path);
                        return;
                    }
                    return;
                }
                List<Pair<String, String>> attachedDbs = null;
                try {
                    try {
                        attachedDbs = sQLiteDatabase2.getAttachedDbs();
                    } finally {
                        if (attachedDbs != null) {
                            Iterator<T> it = attachedDbs.iterator();
                            while (it.hasNext()) {
                                Object obj = ((Pair) it.next()).second;
                                ue.d.d(obj, "p.second");
                                s.d((String) obj);
                            }
                        } else {
                            String path2 = sQLiteDatabase2.getPath();
                            if (path2 != null) {
                                s.d(path2);
                            }
                        }
                    }
                } catch (SQLiteException unused) {
                }
                try {
                    bVarD.close();
                } catch (IOException unused2) {
                }
                if (attachedDbs != null) {
                    return;
                }
            }
        });
        ue.d.e(sVar, "callback");
        this.f4452a = context;
        this.f4453b = cVar;
        this.f4454c = sVar;
        if (str == null) {
            str = UUID.randomUUID().toString();
            ue.d.d(str, "randomUUID().toString()");
        }
        this.f4456e = new e4.a(context.getCacheDir(), str);
    }

    public final b A(SQLiteDatabase sQLiteDatabase) {
        ue.d.e(sQLiteDatabase, "sqLiteDatabase");
        return s1.g.D(this.f4453b, sQLiteDatabase);
    }

    public final SQLiteDatabase J(boolean z) {
        if (z) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            ue.d.d(writableDatabase, "{\n                super.…eDatabase()\n            }");
            return writableDatabase;
        }
        SQLiteDatabase readableDatabase = getReadableDatabase();
        ue.d.d(readableDatabase, "{\n                super.…eDatabase()\n            }");
        return readableDatabase;
    }

    public final SQLiteDatabase K(boolean z) throws Throwable {
        File parentFile;
        String databaseName = getDatabaseName();
        boolean z4 = this.f4457f;
        Context context = this.f4452a;
        if (databaseName != null && !z4 && (parentFile = context.getDatabasePath(databaseName).getParentFile()) != null) {
            parentFile.mkdirs();
            if (!parentFile.isDirectory()) {
                parentFile.toString();
            }
        }
        try {
            return J(z);
        } catch (Throwable unused) {
            super.close();
            try {
                Thread.sleep(500L);
            } catch (InterruptedException unused2) {
            }
            try {
                return J(z);
            } catch (Throwable th2) {
                super.close();
                if (!(th2 instanceof e)) {
                    if (th2 instanceof SQLiteException) {
                        throw th2;
                    }
                    throw th2;
                }
                e eVar = th2;
                int iC = d0.f.c(eVar.f4449a);
                Throwable th3 = eVar.f4450b;
                if (iC == 0 || iC == 1 || iC == 2 || iC == 3 || !(th3 instanceof SQLiteException)) {
                    throw th3;
                }
                context.deleteDatabase(databaseName);
                try {
                    return J(z);
                } catch (e e7) {
                    throw e7.f4450b;
                }
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
    public final void close() throws IOException {
        e4.a aVar = this.f4456e;
        try {
            HashMap map = e4.a.f4767d;
            aVar.getClass();
            aVar.a(false);
            super.close();
            this.f4453b.f4446a = null;
            this.f4457f = false;
        } finally {
            aVar.b();
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onConfigure(SQLiteDatabase sQLiteDatabase) {
        ue.d.e(sQLiteDatabase, "db");
        boolean z = this.f4455d;
        s sVar = this.f4454c;
        if (!z && sVar.f2426b != sQLiteDatabase.getVersion()) {
            sQLiteDatabase.setMaxSqlCacheSize(1);
        }
        try {
            A(sQLiteDatabase);
            sVar.getClass();
        } catch (Throwable th2) {
            throw new e(1, th2);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        ue.d.e(sQLiteDatabase, "sqLiteDatabase");
        try {
            this.f4454c.s(A(sQLiteDatabase));
        } catch (Throwable th2) {
            throw new e(2, th2);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        ue.d.e(sQLiteDatabase, "db");
        this.f4455d = true;
        try {
            this.f4454c.x(A(sQLiteDatabase), i10, i11);
        } catch (Throwable th2) {
            throw new e(4, th2);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        ue.d.e(sQLiteDatabase, "db");
        if (!this.f4455d) {
            try {
                this.f4454c.v(A(sQLiteDatabase));
            } catch (Throwable th2) {
                throw new e(5, th2);
            }
        }
        this.f4457f = true;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        ue.d.e(sQLiteDatabase, "sqLiteDatabase");
        this.f4455d = true;
        try {
            this.f4454c.x(A(sQLiteDatabase), i10, i11);
        } catch (Throwable th2) {
            throw new e(3, th2);
        }
    }

    public final c4.a r(boolean z) throws IOException {
        e4.a aVar = this.f4456e;
        try {
            aVar.a((this.f4457f || getDatabaseName() == null) ? false : true);
            this.f4455d = false;
            SQLiteDatabase sQLiteDatabaseK = K(z);
            if (!this.f4455d) {
                b bVarA = A(sQLiteDatabaseK);
                aVar.b();
                return bVarA;
            }
            close();
            c4.a aVarR = r(z);
            aVar.b();
            return aVarR;
        } catch (Throwable th2) {
            aVar.b();
            throw th2;
        }
    }
}
