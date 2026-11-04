package ua;

import com.yunpan.appmanage.ui.ActivityAppStorage;

/* loaded from: classes.dex */
public final class b0 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15575b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActivityAppStorage f15576c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b0(ActivityAppStorage activityAppStorage, int i10) {
        super(28);
        this.f15575b = i10;
        this.f15576c = activityAppStorage;
    }

    @Override // ha.l2, ec.e
    public void E(Object obj) {
        switch (this.f15575b) {
            case 0:
                boolean z = obj instanceof ja.f;
                ActivityAppStorage activityAppStorage = this.f15576c;
                if (!z) {
                    activityAppStorage.D.C(((Integer) obj).intValue());
                    break;
                } else {
                    ja.f fVar = (ja.f) obj;
                    activityAppStorage.D.D(fVar.f9833a, fVar.f9834b);
                    break;
                }
        }
    }

    @Override // ha.l2, ec.e
    public void b(gc.b bVar) {
        switch (this.f15575b) {
            case 1:
                this.f15576c.G.setVisibility(0);
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void onComplete() {
        switch (this.f15575b) {
            case 1:
                ActivityAppStorage activityAppStorage = this.f15576c;
                activityAppStorage.G.setVisibility(8);
                activityAppStorage.D.E(activityAppStorage.E);
                break;
        }
    }
}
