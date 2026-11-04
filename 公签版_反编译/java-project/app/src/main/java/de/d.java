package de;

import java.io.PrintStream;

/* loaded from: classes.dex */
public final class d extends PrintStream {

    /* renamed from: a, reason: collision with root package name */
    public static d f4629a = null;

    /* renamed from: b, reason: collision with root package name */
    public static int f4630b = 1;

    public d(PrintStream printStream) {
        super(printStream);
    }

    public static d r() {
        if (f4629a == null) {
            f4629a = new d(System.err);
        }
        return f4629a;
    }
}
