package eb;

import android.graphics.Canvas;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class k implements m {

    /* renamed from: a, reason: collision with root package name */
    public float f4865a = 0.0f;

    /* renamed from: b, reason: collision with root package name */
    public final i f4866b;

    /* renamed from: c, reason: collision with root package name */
    public Canvas f4867c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ o f4868d;

    public k(o oVar, i iVar) {
        this.f4868d = oVar;
        this.f4866b = iVar;
    }

    @Override // eb.m
    public final boolean a(ArrayList arrayList, boolean z, j jVar) {
        float f10 = this.f4865a;
        float fA = f10 + o.a(this.f4868d, arrayList, z, jVar, this.f4867c, f10, this.f4866b);
        this.f4865a = fA;
        return fA < this.f4866b.f4850c;
    }
}
