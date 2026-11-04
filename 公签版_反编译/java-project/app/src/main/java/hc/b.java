package hc;

import androidx.fragment.app.b0;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

/* loaded from: classes.dex */
public final class b extends RuntimeException {

    /* renamed from: a, reason: collision with root package name */
    public final List f8185a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8186b;

    /* renamed from: c, reason: collision with root package name */
    public b0 f8187c;

    public b(Throwable... thArr) {
        this(Arrays.asList(thArr));
    }

    public static void a(String str, StringBuilder sb2, Throwable th2) {
        sb2.append(str);
        sb2.append(th2);
        sb2.append('\n');
        for (StackTraceElement stackTraceElement : th2.getStackTrace()) {
            sb2.append("\t\tat ");
            sb2.append(stackTraceElement);
            sb2.append('\n');
        }
        if (th2.getCause() != null) {
            sb2.append("\tCaused by: ");
            a("", sb2, th2.getCause());
        }
    }

    public final void b(d.b bVar) {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append(this);
        sb2.append('\n');
        for (StackTraceElement stackTraceElement : getStackTrace()) {
            sb2.append("\tat ");
            sb2.append(stackTraceElement);
            sb2.append('\n');
        }
        int i10 = 1;
        for (Throwable th2 : this.f8185a) {
            sb2.append("  ComposedException ");
            sb2.append(i10);
            sb2.append(" :\n");
            a("\t", sb2, th2);
            i10++;
        }
        bVar.e0(sb2.toString());
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable getCause() {
        try {
            if (this.f8187c == null) {
                b0 b0Var = new b0((byte) 0, 4);
                HashSet hashSet = new HashSet();
                b0 b0Var2 = b0Var;
                for (Throwable runtimeException : this.f8185a) {
                    if (!hashSet.contains(runtimeException)) {
                        hashSet.add(runtimeException);
                        ArrayList arrayList = new ArrayList();
                        Throwable cause = runtimeException.getCause();
                        if (cause != null && cause != runtimeException) {
                            while (true) {
                                arrayList.add(cause);
                                Throwable cause2 = cause.getCause();
                                if (cause2 == null || cause2 == cause) {
                                    break;
                                }
                                cause = cause2;
                            }
                        }
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            Throwable th2 = (Throwable) it.next();
                            if (hashSet.contains(th2)) {
                                runtimeException = new RuntimeException("Duplicate found in causal chain so cropping to prevent loop ...");
                            } else {
                                hashSet.add(th2);
                            }
                        }
                        try {
                            b0Var2.initCause(runtimeException);
                        } catch (Throwable unused) {
                        }
                        Throwable cause3 = b0Var2.getCause();
                        if (cause3 != null && b0Var2 != cause3) {
                            while (true) {
                                Throwable cause4 = cause3.getCause();
                                if (cause4 == null || cause4 == cause3) {
                                    break;
                                }
                                cause3 = cause4;
                            }
                            b0Var2 = cause3;
                        }
                    }
                }
                this.f8187c = b0Var;
            }
        } catch (Throwable th3) {
            throw th3;
        }
        return this.f8187c;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f8186b;
    }

    @Override // java.lang.Throwable
    public final void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintStream printStream) {
        b(new a(0, printStream));
    }

    public b(List list) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Throwable th2 = (Throwable) it.next();
                if (th2 instanceof b) {
                    linkedHashSet.addAll(((b) th2).f8185a);
                } else if (th2 != null) {
                    linkedHashSet.add(th2);
                } else {
                    linkedHashSet.add(new NullPointerException("Throwable was null!"));
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException("errors was null"));
        }
        if (!linkedHashSet.isEmpty()) {
            arrayList.addAll(linkedHashSet);
            List listUnmodifiableList = Collections.unmodifiableList(arrayList);
            this.f8185a = listUnmodifiableList;
            this.f8186b = listUnmodifiableList.size() + " exceptions occurred. ";
            return;
        }
        throw new IllegalArgumentException("errors is empty");
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintWriter printWriter) {
        b(new a(1, printWriter));
    }
}
