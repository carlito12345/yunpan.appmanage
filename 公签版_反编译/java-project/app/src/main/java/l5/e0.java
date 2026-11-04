package l5;

import android.net.Uri;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class e0 implements q {

    /* renamed from: b, reason: collision with root package name */
    public static final Set f10582b = Collections.unmodifiableSet(new HashSet(Arrays.asList("http", "https")));

    /* renamed from: a, reason: collision with root package name */
    public final q f10583a;

    public e0(q qVar) {
        this.f10583a = qVar;
    }

    @Override // l5.q
    public final boolean a(Object obj) {
        return f10582b.contains(((Uri) obj).getScheme());
    }

    @Override // l5.q
    public final p b(Object obj, int i10, int i11, f5.i iVar) {
        return this.f10583a.b(new g(((Uri) obj).toString()), i10, i11, iVar);
    }
}
