package d4;

import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import androidx.activity.o;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements SQLiteDatabase.CursorFactory {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4442a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f4443b;

    public /* synthetic */ a(int i10, Object obj) {
        this.f4442a = i10;
        this.f4443b = obj;
    }

    @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
    public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
        switch (this.f4442a) {
            case 0:
                c4.d dVar = (c4.d) this.f4443b;
                ue.d.e(dVar, "$query");
                ue.d.b(sQLiteQuery);
                dVar.r(new h(sQLiteQuery));
                break;
            default:
                o oVar = (o) this.f4443b;
                ue.d.b(sQLiteQuery);
                ((c4.d) oVar.f823b).r(new h(sQLiteQuery));
                break;
        }
        return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
    }
}
