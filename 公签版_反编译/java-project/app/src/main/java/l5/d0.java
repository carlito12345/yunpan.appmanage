package l5;

import android.net.Uri;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class d0 implements q {

    /* renamed from: b, reason: collision with root package name */
    public static final Set f10575b = Collections.unmodifiableSet(new HashSet(Arrays.asList("file", "content", "android.resource")));

    /* renamed from: a, reason: collision with root package name */
    public final Object f10576a;

    public d0(c0 c0Var) {
        this.f10576a = c0Var;
    }

    @Override // l5.q
    public final boolean a(Object obj) {
        return f10575b.contains(((Uri) obj).getScheme());
    }

    @Override // l5.q
    public final p b(Object obj, int i10, int i11, f5.i iVar) {
        com.bumptech.glide.load.data.e aVar;
        Uri uri = (Uri) obj;
        z5.d dVar = new z5.d(uri);
        c0 c0Var = (c0) this.f10576a;
        switch (c0Var.f10571a) {
            case 0:
                aVar = new com.bumptech.glide.load.data.a(c0Var.f10572b, uri, 0);
                break;
            case 1:
                aVar = new com.bumptech.glide.load.data.a(c0Var.f10572b, uri, 1);
                break;
            default:
                aVar = new com.bumptech.glide.load.data.n(c0Var.f10572b, uri);
                break;
        }
        return new p(dVar, aVar);
    }
}
