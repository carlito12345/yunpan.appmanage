package t0;

import android.os.LocaleList;
import java.util.Locale;
import q.t;

/* loaded from: classes.dex */
public final class m implements l {

    /* renamed from: a, reason: collision with root package name */
    public final LocaleList f14640a;

    public m(Object obj) {
        this.f14640a = t.e(obj);
    }

    @Override // t0.l
    public final String a() {
        return this.f14640a.toLanguageTags();
    }

    @Override // t0.l
    public final Object b() {
        return this.f14640a;
    }

    public final boolean equals(Object obj) {
        return this.f14640a.equals(((l) obj).b());
    }

    @Override // t0.l
    public final Locale get(int i10) {
        return this.f14640a.get(i10);
    }

    public final int hashCode() {
        return this.f14640a.hashCode();
    }

    @Override // t0.l
    public final boolean isEmpty() {
        return this.f14640a.isEmpty();
    }

    @Override // t0.l
    public final int size() {
        return this.f14640a.size();
    }

    public final String toString() {
        return this.f14640a.toString();
    }
}
