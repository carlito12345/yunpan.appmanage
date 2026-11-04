package fa;

import a2.w0;
import com.yunpan.appmanage.db.MyDb;

/* loaded from: classes.dex */
public final /* synthetic */ class s implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5746a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ w0 f5747b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f5748c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f5749d;

    public /* synthetic */ s(w0 w0Var, String str, boolean z, int i10) {
        this.f5746a = i10;
        this.f5747b = w0Var;
        this.f5748c = str;
        this.f5749d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5746a) {
            case 0:
                String str = this.f5748c;
                boolean z = this.f5749d;
                w0 w0Var = this.f5747b;
                w0Var.getClass();
                try {
                    w0.V(str, z);
                    w0Var.e0(100, "设置成功");
                    break;
                } catch (Exception e7) {
                    w0Var.e0(101, "" + e7.getMessage());
                    return;
                }
            case 1:
                String str2 = this.f5748c;
                boolean z4 = this.f5749d;
                w0 w0Var2 = this.f5747b;
                w0Var2.getClass();
                try {
                    w0.x(str2, z4);
                    MyDb.get().addIfFile(str2);
                    w0Var2.e0(100, "新建成功");
                    break;
                } catch (Exception e10) {
                    w0Var2.e0(101, String.valueOf(e10.getMessage()));
                    return;
                }
            case 2:
                String str3 = this.f5748c;
                boolean z10 = this.f5749d;
                w0 w0Var3 = this.f5747b;
                w0Var3.getClass();
                try {
                    w0.Z(str3, false, z10);
                    w0Var3.e0(100, "卸载成功");
                    break;
                } catch (Exception e11) {
                    w0Var3.e0(101, "" + e11.getMessage());
                    return;
                }
            default:
                String str4 = this.f5748c;
                boolean z11 = this.f5749d;
                w0 w0Var4 = this.f5747b;
                w0Var4.getClass();
                try {
                    w0.W(str4, z11);
                    w0Var4.e0(100, "设置成功");
                    break;
                } catch (Exception e12) {
                    w0Var4.e0(101, "" + e12.getMessage());
                }
        }
    }
}
