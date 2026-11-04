package eb;

import android.graphics.Canvas;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class e implements m {

    /* renamed from: a, reason: collision with root package name */
    public float f4833a = 0.0f;

    /* renamed from: b, reason: collision with root package name */
    public boolean f4834b = true;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Canvas f4835c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ i f4836d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ float f4837e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ o f4838f;

    public e(o oVar, Canvas canvas, i iVar, float f10) {
        this.f4838f = oVar;
        this.f4835c = canvas;
        this.f4836d = iVar;
        this.f4837e = f10;
    }

    @Override // eb.m
    public final boolean a(ArrayList arrayList, boolean z, j jVar) {
        float fA = this.f4833a + o.a(this.f4838f, arrayList, z, jVar, this.f4835c, this.f4833a, this.f4836d);
        this.f4833a = fA;
        boolean z4 = fA < this.f4837e;
        this.f4834b = z4;
        return z4;
    }
}
