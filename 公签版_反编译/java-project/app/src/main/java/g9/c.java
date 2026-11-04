package g9;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public final class c extends SQLiteOpenHelper {
    static {
        new ReentrantLock();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        throw null;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) throws Throwable {
        nh.b.R(sQLiteDatabase, null);
        throw null;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) throws Throwable {
        nh.b.R(sQLiteDatabase, null);
        throw null;
    }
}
