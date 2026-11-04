package c4;

import android.database.Cursor;
import android.os.CancellationSignal;
import java.io.Closeable;

/* loaded from: classes.dex */
public interface a extends Closeable {
    boolean C();

    boolean E();

    void a();

    Cursor b(d dVar, CancellationSignal cancellationSignal);

    void d(String str);

    e g(String str);

    boolean isOpen();

    void n();

    void o();

    Cursor s(String str);

    void u();

    Cursor x(d dVar);
}
