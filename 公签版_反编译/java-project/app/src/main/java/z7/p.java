package z7;

import c8.f1;
import java.io.IOException;
import java.io.StringWriter;

/* loaded from: classes.dex */
public abstract class p {
    public abstract p a();

    public boolean b() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public double c() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public float d() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public int e() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public final o f() {
        if (this instanceof o) {
            return (o) this;
        }
        throw new IllegalStateException("Not a JSON Array: " + this);
    }

    public final s g() {
        if (this instanceof s) {
            return (s) this;
        }
        throw new IllegalStateException("Not a JSON Object: " + this);
    }

    public long h() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String i() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public final String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            h8.b bVar = new h8.b(stringWriter);
            bVar.f6705h = 1;
            f1.z.getClass();
            c8.m.e(bVar, this);
            return stringWriter.toString();
        } catch (IOException e7) {
            throw new AssertionError(e7);
        }
    }
}
