package com.bumptech.glide;

import a6.q;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bumptech.glide.manager.s;
import com.yunpan.appmanage.R;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

/* loaded from: classes.dex */
public class m extends w5.a {
    public m A;
    public m B;
    public final boolean C = true;
    public boolean D;
    public boolean E;

    /* renamed from: s, reason: collision with root package name */
    public final Context f3374s;

    /* renamed from: t, reason: collision with root package name */
    public final p f3375t;

    /* renamed from: v, reason: collision with root package name */
    public final Class f3376v;

    /* renamed from: w, reason: collision with root package name */
    public final f f3377w;

    /* renamed from: x, reason: collision with root package name */
    public a f3378x;

    /* renamed from: y, reason: collision with root package name */
    public Object f3379y;
    public ArrayList z;

    static {
    }

    public m(b bVar, p pVar, Class cls, Context context) {
        w5.e eVar;
        this.f3375t = pVar;
        this.f3376v = cls;
        this.f3374s = context;
        a0.e eVar2 = pVar.f3420a.f3282c.f3323f;
        a aVar = (a) eVar2.get(cls);
        if (aVar == null) {
            Iterator it = ((b8.l) eVar2.entrySet()).iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (((Class) entry.getKey()).isAssignableFrom(cls)) {
                    aVar = (a) entry.getValue();
                }
            }
        }
        this.f3378x = aVar == null ? f.f3317k : aVar;
        this.f3377w = bVar.f3282c;
        Iterator it2 = pVar.f3428i.iterator();
        while (it2.hasNext()) {
            if (it2.next() != null) {
                throw new ClassCastException();
            }
            z();
        }
        synchronized (pVar) {
            eVar = pVar.f3429j;
        }
        a(eVar);
    }

    @Override // w5.a
    /* renamed from: A, reason: merged with bridge method [inline-methods] */
    public m a(w5.a aVar) {
        a6.h.b(aVar);
        return (m) super.a(aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0140  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final w5.c B(Object obj, x5.e eVar, w5.d dVar, a aVar, i iVar, int i10, int i11, w5.a aVar2) {
        w5.d dVar2;
        w5.d bVar;
        w5.d dVar3;
        w5.f fVar;
        int i12;
        int i13;
        i iVar2;
        int i14;
        int i15;
        if (this.B != null) {
            bVar = new w5.b(obj, dVar);
            dVar2 = bVar;
        } else {
            dVar2 = null;
            bVar = dVar;
        }
        m mVar = this.A;
        if (mVar == null) {
            dVar3 = dVar2;
            Object obj2 = this.f3379y;
            ArrayList arrayList = this.z;
            f fVar2 = this.f3377w;
            h5.n nVar = fVar2.f3324g;
            aVar.getClass();
            fVar = new w5.f(this.f3374s, fVar2, obj, obj2, this.f3376v, aVar2, i10, i11, iVar, eVar, arrayList, bVar, nVar);
        } else {
            if (this.E) {
                throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
            }
            a aVar3 = mVar.C ? aVar : mVar.f3378x;
            if (w5.a.i(mVar.f17567a, 8)) {
                iVar2 = this.A.f17569c;
            } else {
                int iOrdinal = iVar.ordinal();
                if (iOrdinal == 0 || iOrdinal == 1) {
                    iVar2 = i.IMMEDIATE;
                } else if (iOrdinal == 2) {
                    iVar2 = i.HIGH;
                } else {
                    if (iOrdinal != 3) {
                        throw new IllegalArgumentException("unknown priority: " + this.f17569c);
                    }
                    iVar2 = i.NORMAL;
                }
            }
            i iVar3 = iVar2;
            m mVar2 = this.A;
            int i16 = mVar2.f17573g;
            int i17 = mVar2.f17572f;
            if (q.i(i10, i11)) {
                m mVar3 = this.A;
                if (q.i(mVar3.f17573g, mVar3.f17572f)) {
                    i14 = i17;
                    i15 = i16;
                } else {
                    i15 = aVar2.f17573g;
                    i14 = aVar2.f17572f;
                }
                w5.g gVar = new w5.g(obj, bVar);
                Object obj3 = this.f3379y;
                ArrayList arrayList2 = this.z;
                f fVar3 = this.f3377w;
                h5.n nVar2 = fVar3.f3324g;
                aVar.getClass();
                dVar3 = dVar2;
                w5.f fVar4 = new w5.f(this.f3374s, fVar3, obj, obj3, this.f3376v, aVar2, i10, i11, iVar, eVar, arrayList2, gVar, nVar2);
                this.E = true;
                m mVar4 = this.A;
                w5.c cVarB = mVar4.B(obj, eVar, gVar, aVar3, iVar3, i15, i14, mVar4);
                this.E = false;
                gVar.f17613c = fVar4;
                gVar.f17614d = cVarB;
                fVar = gVar;
            }
        }
        w5.b bVar2 = dVar3;
        if (bVar2 == 0) {
            return fVar;
        }
        m mVar5 = this.B;
        int i18 = mVar5.f17573g;
        int i19 = mVar5.f17572f;
        if (q.i(i10, i11)) {
            m mVar6 = this.B;
            if (q.i(mVar6.f17573g, mVar6.f17572f)) {
                i12 = i19;
                i13 = i18;
            } else {
                i13 = aVar2.f17573g;
                i12 = aVar2.f17572f;
            }
        }
        m mVar7 = this.B;
        w5.c cVarB2 = mVar7.B(obj, eVar, bVar2, mVar7.f3378x, mVar7.f17569c, i13, i12, mVar7);
        bVar2.f17584c = fVar;
        bVar2.f17585d = cVarB2;
        return bVar2;
    }

    @Override // w5.a
    /* renamed from: C, reason: merged with bridge method [inline-methods] */
    public m clone() {
        m mVar = (m) super.clone();
        mVar.f3378x = mVar.f3378x.clone();
        if (mVar.z != null) {
            mVar.z = new ArrayList(mVar.z);
        }
        m mVar2 = mVar.A;
        if (mVar2 != null) {
            mVar.A = mVar2.clone();
        }
        m mVar3 = mVar.B;
        if (mVar3 != null) {
            mVar.B = mVar3.clone();
        }
        return mVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void D(ImageView imageView) {
        w5.a aVarK;
        x5.a aVar;
        q.a();
        a6.h.b(imageView);
        if (!w5.a.i(this.f17567a, 2048) && imageView.getScaleType() != null) {
            switch (l.f3345a[imageView.getScaleType().ordinal()]) {
                case 1:
                    aVarK = clone().k();
                    break;
                case 2:
                    aVarK = clone().l();
                    break;
                case 3:
                case 4:
                case 5:
                    aVarK = clone().m();
                    break;
                case 6:
                    aVarK = clone().l();
                    break;
            }
        } else {
            aVarK = this;
        }
        this.f3377w.f3320c.getClass();
        Class cls = this.f3376v;
        if (Bitmap.class.equals(cls)) {
            aVar = new x5.a(imageView, 0);
        } else {
            if (!Drawable.class.isAssignableFrom(cls)) {
                throw new IllegalArgumentException(android.support.v4.media.session.a.r("Unhandled class: ", cls, ", try .as*(Class).transcode(ResourceTranscoder)"));
            }
            aVar = new x5.a(imageView, 1);
        }
        E(aVar, aVarK);
    }

    public final void E(x5.e eVar, w5.a aVar) {
        a6.h.b(eVar);
        if (!this.D) {
            throw new IllegalArgumentException("You must call #load() before calling #into()");
        }
        w5.c cVarB = B(new Object(), eVar, null, this.f3378x, aVar.f17569c, aVar.f17573g, aVar.f17572f, aVar);
        w5.c cVarG = eVar.g();
        if (cVarB.b(cVarG) && (aVar.f17571e || !cVarG.j())) {
            a6.h.c(cVarG, "Argument must not be null");
            if (cVarG.isRunning()) {
                return;
            }
            cVarG.h();
            return;
        }
        this.f3375t.o(eVar);
        eVar.j(cVarB);
        p pVar = this.f3375t;
        synchronized (pVar) {
            pVar.f3425f.f3414a.add(eVar);
            s sVar = pVar.f3423d;
            ((Set) sVar.f3412c).add(cVarB);
            if (sVar.f3411b) {
                cVarB.clear();
                ((HashSet) sVar.f3413d).add(cVarB);
            } else {
                cVarB.h();
            }
        }
    }

    public m F() throws PackageManager.NameNotFoundException {
        PackageInfo packageInfo;
        m mVarK = K(Integer.valueOf(R.drawable.tp_apk2));
        Context context = this.f3374s;
        m mVar = (m) mVarK.v(context.getTheme());
        ConcurrentHashMap concurrentHashMap = z5.b.f19435a;
        String packageName = context.getPackageName();
        ConcurrentHashMap concurrentHashMap2 = z5.b.f19435a;
        f5.f fVar = (f5.f) concurrentHashMap2.get(packageName);
        if (fVar == null) {
            try {
                packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            } catch (PackageManager.NameNotFoundException unused) {
                context.getPackageName();
                packageInfo = null;
            }
            z5.d dVar = new z5.d(packageInfo != null ? String.valueOf(packageInfo.versionCode) : UUID.randomUUID().toString());
            fVar = (f5.f) concurrentHashMap2.putIfAbsent(packageName, dVar);
            if (fVar == null) {
                fVar = dVar;
            }
        }
        return (m) mVar.t(new z5.a(context.getResources().getConfiguration().uiMode & 48, fVar));
    }

    public m G(Drawable drawable) {
        return K(drawable).a((w5.e) new w5.e().e(h5.l.f6606b));
    }

    public m H(File file) {
        return K(file);
    }

    public m I(Object obj) {
        return K(obj);
    }

    public m J(String str) {
        return K(str);
    }

    public final m K(Object obj) {
        if (this.f17580p) {
            return clone().K(obj);
        }
        this.f3379y = obj;
        this.D = true;
        r();
        return this;
    }

    @Override // w5.a
    public final boolean equals(Object obj) {
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        if (super.equals(mVar)) {
            return Objects.equals(this.f3376v, mVar.f3376v) && this.f3378x.equals(mVar.f3378x) && Objects.equals(this.f3379y, mVar.f3379y) && Objects.equals(this.z, mVar.z) && Objects.equals(this.A, mVar.A) && Objects.equals(this.B, mVar.B) && this.C == mVar.C && this.D == mVar.D;
        }
        return false;
    }

    @Override // w5.a
    public final int hashCode() {
        return q.g(this.D ? 1 : 0, q.g(this.C ? 1 : 0, q.h(q.h(q.h(q.h(q.h(q.h(q.h(super.hashCode(), this.f3376v), this.f3378x), this.f3379y), this.z), this.A), this.B), null)));
    }

    public m z() {
        if (this.f17580p) {
            return clone().z();
        }
        r();
        return this;
    }
}
