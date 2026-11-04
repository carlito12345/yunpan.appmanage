package ha;

import android.media.AudioManager;

/* loaded from: classes.dex */
public final /* synthetic */ class e1 implements AudioManager.OnAudioFocusChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6930a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f6931b;

    public /* synthetic */ e1(int i10, Object obj) {
        this.f6930a = i10;
        this.f6931b = obj;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i10) {
        switch (this.f6930a) {
            case 0:
                g1 g1Var = (g1) this.f6931b;
                g1Var.getClass();
                if (i10 == -3 || i10 == -2 || i10 == -1) {
                    g1Var.b();
                    break;
                }
                break;
            case 1:
                g1 g1Var2 = (g1) this.f6931b;
                g1Var2.getClass();
                if (i10 == -3 || i10 == -2 || i10 == -1) {
                    g1Var2.b();
                    break;
                }
                break;
            default:
                s1.b bVar = (s1.b) this.f6931b;
                bVar.getClass();
                if (i10 != -3 && i10 != -2) {
                    if (i10 == -1) {
                        bVar.b(-1);
                        bVar.a();
                        bVar.c(1);
                        break;
                    } else if (i10 == 1) {
                        bVar.c(2);
                        bVar.b(1);
                        break;
                    } else {
                        org.bouncycastle.jcajce.provider.digest.a.o(i10, "Unknown focus change type: ");
                        break;
                    }
                } else {
                    if (i10 != -2) {
                        r1.d dVar = bVar.f13879d;
                        if (!(dVar != null && dVar.f13427a == 1)) {
                            bVar.c(4);
                            break;
                        }
                    }
                    bVar.b(0);
                    bVar.c(3);
                    break;
                }
                break;
        }
    }
}
