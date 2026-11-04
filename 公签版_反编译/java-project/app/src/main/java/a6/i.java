package a6;

import ha.l2;
import java.io.File;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes.dex */
public final class i implements j {

    /* renamed from: a, reason: collision with root package name */
    public final Object f432a;

    /* renamed from: b, reason: collision with root package name */
    public volatile Object f433b;

    public /* synthetic */ i(Object obj) {
        this.f432a = obj;
    }

    public j5.a a() {
        if (((j5.a) this.f433b) == null) {
            synchronized (this) {
                try {
                    if (((j5.a) this.f433b) == null) {
                        androidx.recyclerview.widget.h hVar = (androidx.recyclerview.widget.h) this.f432a;
                        File fileB = ((j5.d) hVar.f2144c).b();
                        j5.e eVar = null;
                        if (fileB != null && (fileB.isDirectory() || fileB.mkdirs())) {
                            eVar = new j5.e(fileB, hVar.f2143b);
                        }
                        this.f433b = eVar;
                    }
                    if (((j5.a) this.f433b) == null) {
                        this.f433b = new l2(12);
                    }
                } finally {
                }
            }
        }
        return (j5.a) this.f433b;
    }

    @Override // a6.j
    public Object get() {
        if (this.f433b == null) {
            synchronized (this) {
                try {
                    if (this.f433b == null) {
                        Object obj = ((j) this.f432a).get();
                        h.c(obj, "Argument must not be null");
                        this.f433b = obj;
                    }
                } finally {
                }
            }
        }
        return this.f433b;
    }

    public i() {
        this.f432a = new CopyOnWriteArraySet();
    }
}
