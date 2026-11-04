package d4;

import android.database.sqlite.SQLiteStatement;

/* loaded from: classes.dex */
public final class i extends h implements c4.e {

    /* renamed from: b, reason: collision with root package name */
    public final SQLiteStatement f4464b;

    public i(SQLiteStatement sQLiteStatement) {
        super(sQLiteStatement);
        this.f4464b = sQLiteStatement;
    }

    @Override // c4.e
    public final long G() {
        return this.f4464b.executeInsert();
    }

    @Override // c4.e
    public final int f() {
        return this.f4464b.executeUpdateDelete();
    }
}
