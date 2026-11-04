package h5;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class v extends Exception {

    /* renamed from: f, reason: collision with root package name */
    public static final StackTraceElement[] f6665f = new StackTraceElement[0];

    /* renamed from: a, reason: collision with root package name */
    public final List f6666a;

    /* renamed from: b, reason: collision with root package name */
    public f5.f f6667b;

    /* renamed from: c, reason: collision with root package name */
    public f5.a f6668c;

    /* renamed from: d, reason: collision with root package name */
    public Class f6669d;

    /* renamed from: e, reason: collision with root package name */
    public final String f6670e;

    public v(String str) {
        this(str, Collections.emptyList());
    }

    public static void a(Throwable th2, ArrayList arrayList) {
        if (!(th2 instanceof v)) {
            arrayList.add(th2);
            return;
        }
        Iterator it = ((v) th2).f6666a.iterator();
        while (it.hasNext()) {
            a((Throwable) it.next(), arrayList);
        }
    }

    public static void b(List list, u uVar) throws IOException {
        int size = list.size();
        int i10 = 0;
        while (i10 < size) {
            uVar.append("Cause (");
            int i11 = i10 + 1;
            uVar.append(String.valueOf(i11));
            uVar.append(" of ");
            uVar.append(String.valueOf(size));
            uVar.append("): ");
            Throwable th2 = (Throwable) list.get(i10);
            if (th2 instanceof v) {
                ((v) th2).d(uVar);
            } else {
                c(th2, uVar);
            }
            i10 = i11;
        }
    }

    public static void c(Throwable th2, Appendable appendable) throws IOException {
        try {
            appendable.append(th2.getClass().toString()).append(": ").append(th2.getMessage()).append('\n');
        } catch (IOException unused) {
            throw new RuntimeException(th2);
        }
    }

    public final void d(Appendable appendable) throws IOException {
        c(this, appendable);
        try {
            b(this.f6666a, new u(appendable));
        } catch (IOException e7) {
            throw new RuntimeException(e7);
        }
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String str;
        String str2;
        StringBuilder sb2 = new StringBuilder(71);
        sb2.append(this.f6670e);
        String str3 = "";
        if (this.f6669d != null) {
            str = ", " + this.f6669d;
        } else {
            str = "";
        }
        sb2.append(str);
        if (this.f6668c != null) {
            str2 = ", " + this.f6668c;
        } else {
            str2 = "";
        }
        sb2.append(str2);
        if (this.f6667b != null) {
            str3 = ", " + this.f6667b;
        }
        sb2.append(str3);
        ArrayList arrayList = new ArrayList();
        a(this, arrayList);
        if (arrayList.isEmpty()) {
            return sb2.toString();
        }
        if (arrayList.size() == 1) {
            sb2.append("\nThere was 1 root cause:");
        } else {
            sb2.append("\nThere were ");
            sb2.append(arrayList.size());
            sb2.append(" root causes:");
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Throwable th2 = (Throwable) it.next();
            sb2.append('\n');
            sb2.append(th2.getClass().getName());
            sb2.append('(');
            sb2.append(th2.getMessage());
            sb2.append(')');
        }
        sb2.append("\n call GlideException#logRootCauses(String) for more detail");
        return sb2.toString();
    }

    @Override // java.lang.Throwable
    public final void printStackTrace() throws IOException {
        d(System.err);
    }

    public v(String str, List list) {
        this.f6670e = str;
        setStackTrace(f6665f);
        this.f6666a = list;
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintStream printStream) throws IOException {
        d(printStream);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintWriter printWriter) throws IOException {
        d(printWriter);
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        return this;
    }
}
