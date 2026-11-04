package ha;

import android.R;
import android.app.Presentation;
import android.content.Context;
import android.os.Bundle;
import android.view.Display;
import android.view.Window;
import android.view.WindowManager;

/* loaded from: classes.dex */
public final class g5 extends Presentation {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7095a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a4 f7096b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ g5(a4 a4Var, Context context, Display display, int i10) {
        super(context, display);
        this.f7095a = i10;
        this.f7096b = a4Var;
    }

    @Override // android.app.Dialog
    public final void onCreate(Bundle bundle) {
        g5 g5Var;
        switch (this.f7095a) {
            case 0:
                super.onCreate(bundle);
                j5.a((j5) this.f7096b);
                break;
            case 1:
                super.onCreate(bundle);
                j5.b((j5) this.f7096b);
                break;
            case 2:
                super.onCreate(bundle);
                j5.b((j5) this.f7096b);
                break;
            case 3:
                super.onCreate(bundle);
                j5.a((j5) this.f7096b);
                break;
            default:
                super.onCreate(bundle);
                m5 m5Var = (m5) this.f7096b;
                if (m5Var.f7400g && (g5Var = m5Var.l) != null && g5Var.getWindow() != null) {
                    Window window = m5Var.l.getWindow();
                    try {
                        window.getDecorView().setBackgroundColor(0);
                        window.setBackgroundDrawableResource(R.color.transparent);
                        WindowManager.LayoutParams attributes = window.getAttributes();
                        attributes.dimAmount = 0.0f;
                        window.setAttributes(attributes);
                        window.addFlags(2);
                        window.addFlags(512);
                        break;
                    } catch (Exception unused) {
                        return;
                    }
                }
                break;
        }
    }
}
