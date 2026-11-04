package dh;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
import java.util.LinkedList;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: c, reason: collision with root package name */
    public static final g[] f4670c = new g[0];

    /* renamed from: a, reason: collision with root package name */
    public LinkedList f4671a;

    /* renamed from: b, reason: collision with root package name */
    public final h f4672b;

    public i(h hVar, f fVar) {
        LinkedList linkedList = new LinkedList();
        this.f4671a = linkedList;
        linkedList.listIterator();
        this.f4672b = hVar;
    }

    public final void a(InputStream inputStream, String str) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        h hVar = this.f4672b;
        this.f4671a = new LinkedList();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, str == null ? Charset.defaultCharset() : Charset.forName(str)));
        try {
            for (String strD = hVar.d(bufferedReader); strD != null; strD = hVar.d(bufferedReader)) {
                this.f4671a.add(strD);
            }
            bufferedReader.close();
            hVar.c(this.f4671a);
            this.f4671a.listIterator();
        } catch (Throwable th2) {
            try {
                bufferedReader.close();
            } catch (Throwable th3) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                } catch (Exception unused) {
                }
            }
            throw th2;
        }
    }
}
