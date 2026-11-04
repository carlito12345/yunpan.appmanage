package ua;

import com.yunpan.appmanage.shizuku.CmdResult;
import com.yunpan.appmanage.ui.ActivityShell;
import java.io.PrintStream;

/* loaded from: classes.dex */
public final class l6 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15807b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f15808c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ActivityShell f15809d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ l6(ActivityShell activityShell, int i10, int i11) {
        super(28);
        this.f15807b = i11;
        this.f15809d = activityShell;
        this.f15808c = i10;
    }

    @Override // ha.l2, ec.e
    public void B(Throwable th2) {
        switch (this.f15807b) {
            case 2:
                ActivityShell activityShell = this.f15809d;
                activityShell.D.setText(th2.getMessage());
                activityShell.G.D(this.f15808c, new x9.j1("雫执行"));
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void E(Object obj) {
        switch (this.f15807b) {
            case 0:
                this.f15809d.D.setText(String.valueOf(obj));
                break;
            case 1:
                ActivityShell activityShell = this.f15809d;
                activityShell.D.setText((String) obj);
                activityShell.G.D(this.f15808c, new x9.j1("adb执行"));
                break;
            default:
                CmdResult cmdResult = (CmdResult) obj;
                PrintStream printStream = System.out;
                cmdResult.getAllStr();
                printStream.getClass();
                this.f15809d.D.setText(cmdResult.getAllStr() + "\n\n执行结果：" + cmdResult.code);
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void onComplete() {
        switch (this.f15807b) {
            case 0:
                this.f15809d.G.D(this.f15808c, new x9.j1("adb执行"));
                break;
            case 2:
                this.f15809d.G.D(this.f15808c, new x9.j1("雫执行"));
                break;
        }
    }
}
