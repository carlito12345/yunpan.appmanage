package z1;

import f2.t;
import f2.y;
import java.io.IOException;
import java.io.Serializable;
import u1.j;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements j, z2.g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19339a;

    @Override // u1.j
    /* renamed from: a */
    public void mo12a(Object obj) {
        b bVar = (b) obj;
        switch (this.f19339a) {
            case 0:
                bVar.getClass();
                break;
            case 1:
                h hVar = (h) bVar;
                hVar.getClass();
                hVar.f19385w = 1;
                break;
            case 2:
                bVar.getClass();
                break;
            default:
                bVar.getClass();
                break;
        }
    }

    @Override // z2.g
    public boolean b(int i10, int i11, int i12, int i13, int i14) {
        return false;
    }

    public /* synthetic */ d(a aVar, t tVar, y yVar, IOException iOException, boolean z) {
        this.f19339a = 1;
    }

    public /* synthetic */ d(a aVar, Serializable serializable, int i10) {
        this.f19339a = i10;
    }
}
