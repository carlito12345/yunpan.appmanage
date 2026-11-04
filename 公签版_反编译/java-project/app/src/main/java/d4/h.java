package d4;

import android.database.sqlite.SQLiteProgram;

/* loaded from: classes.dex */
public class h implements c4.c {

    /* renamed from: a, reason: collision with root package name */
    public final SQLiteProgram f4463a;

    public h(SQLiteProgram sQLiteProgram) {
        ue.d.e(sQLiteProgram, "delegate");
        this.f4463a = sQLiteProgram;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f4463a.close();
    }

    @Override // c4.c
    public final void e(int i10, String str) {
        ue.d.e(str, "value");
        this.f4463a.bindString(i10, str);
    }

    @Override // c4.c
    public final void h(int i10, double d10) {
        this.f4463a.bindDouble(i10, d10);
    }

    @Override // c4.c
    public final void m(int i10, long j10) {
        this.f4463a.bindLong(i10, j10);
    }

    @Override // c4.c
    public final void q(int i10, byte[] bArr) {
        this.f4463a.bindBlob(i10, bArr);
    }

    @Override // c4.c
    public final void y(int i10) {
        this.f4463a.bindNull(i10);
    }
}
