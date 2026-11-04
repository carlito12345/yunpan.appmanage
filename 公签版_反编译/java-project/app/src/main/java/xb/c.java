package xb;

import android.graphics.Bitmap;
import android.graphics.RectF;
import db.a0;
import db.l;
import db.n;
import db.o;
import db.q;
import db.z;
import io.github.rosemoe.sora.widget.CodeEditor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import ue.d;

/* loaded from: classes.dex */
public final class c implements AutoCloseable {

    /* renamed from: a, reason: collision with root package name */
    public final CodeEditor f18425a;

    /* renamed from: b, reason: collision with root package name */
    public Bitmap f18426b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f18427c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f18428d;

    public c(CodeEditor codeEditor) {
        d.e(codeEditor, "editor");
        this.f18425a = codeEditor;
        new s5.c();
        new RectF();
        new RectF();
        new eb.c(false);
        ArrayList arrayList = new ArrayList(4);
        final int i10 = 0;
        arrayList.add(codeEditor.f8717i.e(db.d.class, new n(this) { // from class: xb.b

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ c f18424b;

            {
                this.f18424b = this;
            }

            @Override // db.n
            public final void d(bi.a aVar) {
                switch (i10) {
                    case 0:
                        this.f18424b.getClass();
                        break;
                    case 1:
                        this.f18424b.getClass();
                        break;
                    case 2:
                        this.f18424b.getClass();
                        break;
                    default:
                        this.f18424b.close();
                        break;
                }
            }
        }));
        final int i11 = 1;
        arrayList.add(codeEditor.f8717i.e(db.c.class, new n(this) { // from class: xb.b

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ c f18424b;

            {
                this.f18424b = this;
            }

            @Override // db.n
            public final void d(bi.a aVar) {
                switch (i11) {
                    case 0:
                        this.f18424b.getClass();
                        break;
                    case 1:
                        this.f18424b.getClass();
                        break;
                    case 2:
                        this.f18424b.getClass();
                        break;
                    default:
                        this.f18424b.close();
                        break;
                }
            }
        }));
        final int i12 = 2;
        arrayList.add(codeEditor.f8717i.e(a0.class, new n(this) { // from class: xb.b

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ c f18424b;

            {
                this.f18424b = this;
            }

            @Override // db.n
            public final void d(bi.a aVar) {
                switch (i12) {
                    case 0:
                        this.f18424b.getClass();
                        break;
                    case 1:
                        this.f18424b.getClass();
                        break;
                    case 2:
                        this.f18424b.getClass();
                        break;
                    default:
                        this.f18424b.close();
                        break;
                }
            }
        }));
        final int i13 = 3;
        arrayList.add(codeEditor.f8717i.e(l.class, new n(this) { // from class: xb.b

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ c f18424b;

            {
                this.f18424b = this;
            }

            @Override // db.n
            public final void d(bi.a aVar) {
                switch (i13) {
                    case 0:
                        this.f18424b.getClass();
                        break;
                    case 1:
                        this.f18424b.getClass();
                        break;
                    case 2:
                        this.f18424b.getClass();
                        break;
                    default:
                        this.f18424b.close();
                        break;
                }
            }
        }));
        this.f18428d = arrayList;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        Iterator it = this.f18428d.iterator();
        while (it.hasNext()) {
            z zVar = (z) it.next();
            o oVarB = zVar.f4566c.b(zVar.f4564a);
            ReentrantReadWriteLock reentrantReadWriteLock = oVarB.f4546a;
            reentrantReadWriteLock.writeLock().lock();
            try {
                q qVar = (q) zVar.f4565b.get();
                if (qVar != null) {
                    oVarB.f4547b.remove(qVar);
                }
            } finally {
                reentrantReadWriteLock.writeLock().unlock();
            }
        }
        this.f18428d.clear();
        Bitmap bitmap = this.f18426b;
        if (bitmap != null) {
            bitmap.recycle();
        }
        this.f18426b = null;
        this.f18427c = true;
    }
}
