package v;

import android.view.View;
import androidx.appcompat.view.menu.ActionMenuItemView;
import w.x1;

/* loaded from: classes.dex */
public final class b extends x1 {

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ int f16177j = 0;

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ View f16178k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(ActionMenuItemView actionMenuItemView) {
        super(actionMenuItemView);
        this.f16178k = actionMenuItemView;
    }

    @Override // w.x1
    public final b0 b() {
        w.e eVar;
        switch (this.f16177j) {
            case 0:
                c cVar = ((ActionMenuItemView) this.f16178k).f881m;
                if (cVar == null || (eVar = ((w.f) cVar).f17054a.f17125v) == null) {
                    return null;
                }
                return eVar.a();
            default:
                w.e eVar2 = ((w.h) this.f16178k).f17090d.f17124t;
                if (eVar2 == null) {
                    return null;
                }
                return eVar2.a();
        }
    }

    @Override // w.x1
    public final boolean c() {
        b0 b0VarB;
        switch (this.f16177j) {
            case 0:
                ActionMenuItemView actionMenuItemView = (ActionMenuItemView) this.f16178k;
                j jVar = actionMenuItemView.f880k;
                return jVar != null && jVar.b(actionMenuItemView.f877h) && (b0VarB = b()) != null && b0VarB.b();
            default:
                ((w.h) this.f16178k).f17090d.l();
                return true;
        }
    }

    @Override // w.x1
    public boolean d() {
        switch (this.f16177j) {
            case 1:
                w.j jVar = ((w.h) this.f16178k).f17090d;
                if (jVar.f17126w != null) {
                    return false;
                }
                jVar.h();
                return true;
            default:
                return super.d();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(w.h hVar, w.h hVar2) {
        super(hVar2);
        this.f16178k = hVar;
    }
}
