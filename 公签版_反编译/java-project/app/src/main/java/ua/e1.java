package ua;

import com.yunpan.appmanage.bean.CodeEditorTopBean;
import com.yunpan.appmanage.ui.ActivityCodeEditor;

/* loaded from: classes.dex */
public final class e1 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15648b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActivityCodeEditor f15649c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ e1(ActivityCodeEditor activityCodeEditor, int i10) {
        super(28);
        this.f15648b = i10;
        this.f15649c = activityCodeEditor;
    }

    @Override // ha.l2, ec.e
    public final void B(Throwable th2) {
        switch (this.f15648b) {
            case 0:
                int i10 = ActivityCodeEditor.f3967c1;
                ActivityCodeEditor activityCodeEditor = this.f15649c;
                new ha.z6(activityCodeEditor, activityCodeEditor.A, "文件已被其它应用修改，是否要重新加载？", "", "确定", "取消", new l5.y(28, this)).show();
                break;
            default:
                this.f15649c.I.setText("加载出错：" + th2.getMessage());
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void E(Object obj) {
        switch (this.f15648b) {
            case 1:
                ActivityCodeEditor activityCodeEditor = this.f15649c;
                if (activityCodeEditor.S) {
                    activityCodeEditor.C.setText((String) obj);
                } else {
                    activityCodeEditor.D.setText((String) obj);
                }
                int i10 = 0;
                int i11 = 0;
                while (true) {
                    if (i11 >= activityCodeEditor.G.b()) {
                        i11 = 0;
                    } else if (((CodeEditorTopBean) activityCodeEditor.G.t(i11)).tag != activityCodeEditor.U0) {
                        i11++;
                    }
                }
                activityCodeEditor.G.D(i11, new CodeEditorTopBean(activityCodeEditor.O, activityCodeEditor.U0));
                int i12 = 0;
                while (true) {
                    if (i12 < activityCodeEditor.G.b()) {
                        if (((CodeEditorTopBean) activityCodeEditor.G.t(i12)).tag == activityCodeEditor.f3969b1) {
                            i10 = i12;
                        } else {
                            i12++;
                        }
                    }
                }
                activityCodeEditor.G.D(i10, new CodeEditorTopBean(activityCodeEditor.P, activityCodeEditor.f3969b1));
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void b(gc.b bVar) {
        switch (this.f15648b) {
            case 1:
                this.f15649c.I.setVisibility(0);
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void onComplete() {
        switch (this.f15648b) {
            case 0:
                this.f15649c.I.setVisibility(8);
                break;
            default:
                this.f15649c.I.setVisibility(8);
                break;
        }
    }
}
