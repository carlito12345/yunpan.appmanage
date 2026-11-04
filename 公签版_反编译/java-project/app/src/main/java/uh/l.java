package uh;

import java.util.Map;

/* loaded from: classes3.dex */
public final class l implements e {

    /* renamed from: a, reason: collision with root package name */
    public final wh.a f16141a;

    /* renamed from: b, reason: collision with root package name */
    public final b f16142b;

    /* renamed from: c, reason: collision with root package name */
    public volatile h f16143c;

    public l(wh.a aVar, b bVar) {
        this.f16141a = aVar;
        this.f16142b = bVar;
    }

    @Override // uh.e
    public final boolean a(androidx.room.s sVar, StringBuilder sb2) {
        Long lM = sVar.m(this.f16141a);
        if (lM == null) {
            return false;
        }
        Map map = (Map) this.f16142b.f16118a.f3329a.get(s.FULL);
        String str = map != null ? (String) map.get(lM) : null;
        if (str != null) {
            sb2.append(str);
            return true;
        }
        if (this.f16143c == null) {
            this.f16143c = new h(this.f16141a, 1, 19, 1);
        }
        return this.f16143c.a(sVar, sb2);
    }

    public final String toString() {
        return "Text(" + this.f16141a + ")";
    }
}
