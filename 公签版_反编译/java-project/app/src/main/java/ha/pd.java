package ha;

import java.util.List;

/* loaded from: classes.dex */
public final class pd extends l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7587b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ qd f7588c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ pd(qd qdVar, int i10) {
        super(28);
        this.f7587b = i10;
        this.f7588c = qdVar;
    }

    @Override // ha.l2, ec.e
    public void B(Throwable th2) {
        int i10 = this.f7587b;
    }

    @Override // ha.l2, ec.e
    public void E(Object obj) {
        switch (this.f7587b) {
            case 0:
                List list = (List) obj;
                if (!list.isEmpty()) {
                    qd qdVar = this.f7588c;
                    new b6(qdVar.f6724a, qdVar.f6725b, list, new p7(20, this)).show();
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.t("没有找到安装包文件");
                    break;
                }
            case 1:
                this.f7588c.f7642m.u((String) obj, true, true);
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void b(gc.b bVar) {
        switch (this.f7587b) {
            case 2:
                this.f7588c.f7646s.c("安装中");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void onComplete() {
        switch (this.f7587b) {
            case 2:
                this.f7588c.f7646s.a();
                break;
        }
    }

    private final void Y() {
    }

    private final void Z(Throwable th2) {
    }
}
