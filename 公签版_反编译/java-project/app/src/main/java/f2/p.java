package f2;

import ha.l2;
import java.lang.reflect.GenericDeclaration;
import java.util.HashMap;
import ua.i8;

/* loaded from: classes.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public final l2.m f5338a;

    /* renamed from: d, reason: collision with root package name */
    public i8 f5341d;

    /* renamed from: f, reason: collision with root package name */
    public l2 f5343f;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f5339b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f5340c = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public boolean f5342e = true;

    /* renamed from: g, reason: collision with root package name */
    public int f5344g = 3;

    public p(l2.m mVar, l2 l2Var) {
        this.f5338a = mVar;
        this.f5343f = l2Var;
    }

    public static void a(p pVar) {
        l2.m mVar = pVar.f5338a;
        synchronized (mVar) {
            mVar.f10512f = 1;
        }
    }

    public final b0 b(int i10) {
        t7.n oVar;
        t7.n nVar;
        final int i11 = 0;
        final int i12 = 3;
        final int i13 = 2;
        final int i14 = 1;
        HashMap map = this.f5340c;
        b0 b0Var = (b0) map.get(Integer.valueOf(i10));
        if (b0Var != null) {
            return b0Var;
        }
        HashMap map2 = this.f5339b;
        t7.n nVar2 = (t7.n) map2.get(Integer.valueOf(i10));
        if (nVar2 == null) {
            final i8 i8Var = this.f5341d;
            i8Var.getClass();
            if (i10 != 0) {
                if (i10 == 1) {
                    final GenericDeclaration genericDeclarationAsSubclass = Class.forName("androidx.media3.exoplayer.smoothstreaming.SsMediaSource$Factory").asSubclass(b0.class);
                    nVar = new t7.n() { // from class: f2.n
                        @Override // t7.n
                        public final Object get() {
                            switch (i14) {
                                case 0:
                                    return q.e((Class) genericDeclarationAsSubclass, i8Var);
                                case 1:
                                    return q.e((Class) genericDeclarationAsSubclass, i8Var);
                                case 2:
                                    return q.e((Class) genericDeclarationAsSubclass, i8Var);
                                default:
                                    return new w0(i8Var, ((p) genericDeclarationAsSubclass).f5338a);
                            }
                        }
                    };
                } else if (i10 == 2) {
                    final GenericDeclaration genericDeclarationAsSubclass2 = Class.forName("androidx.media3.exoplayer.hls.HlsMediaSource$Factory").asSubclass(b0.class);
                    nVar = new t7.n() { // from class: f2.n
                        @Override // t7.n
                        public final Object get() {
                            switch (i13) {
                                case 0:
                                    return q.e((Class) genericDeclarationAsSubclass2, i8Var);
                                case 1:
                                    return q.e((Class) genericDeclarationAsSubclass2, i8Var);
                                case 2:
                                    return q.e((Class) genericDeclarationAsSubclass2, i8Var);
                                default:
                                    return new w0(i8Var, ((p) genericDeclarationAsSubclass2).f5338a);
                            }
                        }
                    };
                } else if (i10 == 3) {
                    oVar = new o(0, Class.forName("androidx.media3.exoplayer.rtsp.RtspMediaSource$Factory").asSubclass(b0.class));
                } else {
                    if (i10 != 4) {
                        throw new IllegalArgumentException(da.b.a(i10, "Unrecognized contentType: "));
                    }
                    nVar2 = new t7.n() { // from class: f2.n
                        @Override // t7.n
                        public final Object get() {
                            switch (i12) {
                                case 0:
                                    return q.e((Class) this, i8Var);
                                case 1:
                                    return q.e((Class) this, i8Var);
                                case 2:
                                    return q.e((Class) this, i8Var);
                                default:
                                    return new w0(i8Var, ((p) this).f5338a);
                            }
                        }
                    };
                    map2.put(Integer.valueOf(i10), nVar2);
                }
                nVar2 = nVar;
                map2.put(Integer.valueOf(i10), nVar2);
            } else {
                final GenericDeclaration genericDeclarationAsSubclass3 = Class.forName("androidx.media3.exoplayer.dash.DashMediaSource$Factory").asSubclass(b0.class);
                oVar = new t7.n() { // from class: f2.n
                    @Override // t7.n
                    public final Object get() {
                        switch (i11) {
                            case 0:
                                return q.e((Class) genericDeclarationAsSubclass3, i8Var);
                            case 1:
                                return q.e((Class) genericDeclarationAsSubclass3, i8Var);
                            case 2:
                                return q.e((Class) genericDeclarationAsSubclass3, i8Var);
                            default:
                                return new w0(i8Var, ((p) genericDeclarationAsSubclass3).f5338a);
                        }
                    }
                };
            }
            nVar2 = oVar;
            map2.put(Integer.valueOf(i10), nVar2);
        }
        b0 b0Var2 = (b0) nVar2.get();
        b0Var2.a(this.f5343f);
        b0Var2.c(this.f5342e);
        b0Var2.d(this.f5344g);
        map.put(Integer.valueOf(i10), b0Var2);
        return b0Var2;
    }
}
