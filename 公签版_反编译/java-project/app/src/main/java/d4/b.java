package d4;

import a2.g1;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.os.CancellationSignal;
import androidx.activity.o;

/* loaded from: classes.dex */
public final class b implements c4.a {

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f4444b = new String[0];

    /* renamed from: a, reason: collision with root package name */
    public final SQLiteDatabase f4445a;

    public b(SQLiteDatabase sQLiteDatabase) {
        ue.d.e(sQLiteDatabase, "delegate");
        this.f4445a = sQLiteDatabase;
    }

    @Override // c4.a
    public final boolean C() {
        return this.f4445a.inTransaction();
    }

    @Override // c4.a
    public final boolean E() {
        SQLiteDatabase sQLiteDatabase = this.f4445a;
        ue.d.e(sQLiteDatabase, "sQLiteDatabase");
        return sQLiteDatabase.isWriteAheadLoggingEnabled();
    }

    @Override // c4.a
    public final void a() {
        this.f4445a.beginTransaction();
    }

    @Override // c4.a
    public final Cursor b(c4.d dVar, CancellationSignal cancellationSignal) {
        ue.d.e(dVar, "query");
        String strA = dVar.A();
        String[] strArr = f4444b;
        ue.d.b(cancellationSignal);
        a aVar = new a(0, dVar);
        SQLiteDatabase sQLiteDatabase = this.f4445a;
        ue.d.e(sQLiteDatabase, "sQLiteDatabase");
        ue.d.e(strA, "sql");
        Cursor cursorRawQueryWithFactory = sQLiteDatabase.rawQueryWithFactory(aVar, strA, strArr, null, cancellationSignal);
        ue.d.d(cursorRawQueryWithFactory, "sQLiteDatabase.rawQueryW…ationSignal\n            )");
        return cursorRawQueryWithFactory;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f4445a.close();
    }

    @Override // c4.a
    public final void d(String str) {
        ue.d.e(str, "sql");
        this.f4445a.execSQL(str);
    }

    @Override // c4.a
    public final c4.e g(String str) throws SQLException {
        ue.d.e(str, "sql");
        SQLiteStatement sQLiteStatementCompileStatement = this.f4445a.compileStatement(str);
        ue.d.d(sQLiteStatementCompileStatement, "delegate.compileStatement(sql)");
        return new i(sQLiteStatementCompileStatement);
    }

    @Override // c4.a
    public final boolean isOpen() {
        return this.f4445a.isOpen();
    }

    @Override // c4.a
    public final void n() {
        this.f4445a.setTransactionSuccessful();
    }

    @Override // c4.a
    public final void o() {
        this.f4445a.beginTransactionNonExclusive();
    }

    @Override // c4.a
    public final Cursor s(String str) {
        ue.d.e(str, "query");
        return x(new g1(str));
    }

    @Override // c4.a
    public final void u() {
        this.f4445a.endTransaction();
    }

    @Override // c4.a
    public final Cursor x(c4.d dVar) {
        ue.d.e(dVar, "query");
        Cursor cursorRawQueryWithFactory = this.f4445a.rawQueryWithFactory(new a(1, new o(dVar)), dVar.A(), f4444b, null);
        ue.d.d(cursorRawQueryWithFactory, "delegate.rawQueryWithFac…EMPTY_STRING_ARRAY, null)");
        return cursorRawQueryWithFactory;
    }
}
