package eb;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class d implements m {

    /* renamed from: a, reason: collision with root package name */
    public float f4830a = 0.0f;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i f4831b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ o f4832c;

    public d(o oVar, i iVar) {
        this.f4832c = oVar;
        this.f4831b = iVar;
    }

    @Override // eb.m
    public final boolean a(ArrayList arrayList, boolean z, j jVar) {
        float f10 = this.f4830a;
        i iVar = this.f4831b;
        this.f4830a += o.a(this.f4832c, arrayList, z, jVar, null, f10, iVar);
        return iVar.f4850c != 0.0f;
    }
}
