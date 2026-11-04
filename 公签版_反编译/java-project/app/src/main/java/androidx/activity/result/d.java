package androidx.activity.result;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class d extends c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f835a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f836b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ n.a f837c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ g f838d;

    public /* synthetic */ d(g gVar, String str, n.a aVar, int i10) {
        this.f835a = i10;
        this.f838d = gVar;
        this.f836b = str;
        this.f837c = aVar;
    }

    public final void a(Object obj) {
        switch (this.f835a) {
            case 0:
                g gVar = this.f838d;
                HashMap map = gVar.f844b;
                String str = this.f836b;
                Integer num = (Integer) map.get(str);
                n.a aVar = this.f837c;
                if (num != null) {
                    gVar.f846d.add(str);
                    try {
                        gVar.b(num.intValue(), aVar, obj);
                        return;
                    } catch (Exception e7) {
                        gVar.f846d.remove(str);
                        throw e7;
                    }
                }
                throw new IllegalStateException("Attempting to launch an unregistered ActivityResultLauncher with contract " + aVar + " and input " + obj + ". You must ensure the ActivityResultLauncher is registered before calling launch().");
            default:
                g gVar2 = this.f838d;
                HashMap map2 = gVar2.f844b;
                String str2 = this.f836b;
                Integer num2 = (Integer) map2.get(str2);
                n.a aVar2 = this.f837c;
                if (num2 != null) {
                    gVar2.f846d.add(str2);
                    try {
                        gVar2.b(num2.intValue(), aVar2, obj);
                        return;
                    } catch (Exception e10) {
                        gVar2.f846d.remove(str2);
                        throw e10;
                    }
                }
                throw new IllegalStateException("Attempting to launch an unregistered ActivityResultLauncher with contract " + aVar2 + " and input " + obj + ". You must ensure the ActivityResultLauncher is registered before calling launch().");
        }
    }

    public void b() {
        this.f838d.f(this.f836b);
    }
}
