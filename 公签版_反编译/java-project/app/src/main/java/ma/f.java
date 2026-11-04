package ma;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* loaded from: classes.dex */
public final class f extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11031a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i f11032b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ f(i iVar, Looper looper, int i10) {
        super(looper);
        this.f11031a = i10;
        this.f11032b = iVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        switch (this.f11031a) {
            case 0:
                int i10 = message.what;
                i iVar = this.f11032b;
                if (i10 != 1) {
                    if (i10 == 2 && !iVar.f11042i.isEmpty() && iVar.f11039f) {
                        iVar.f11034a = "自行确认";
                        iVar.f11040g.release();
                        break;
                    }
                } else if (!iVar.f11042i.isEmpty() && iVar.f11039f) {
                    iVar.f11034a = "";
                    iVar.f11040g.release();
                    break;
                }
                break;
            default:
                if (message.what == 100) {
                    String str = (String) message.obj;
                    g gVar = this.f11032b.f11044k;
                    if (gVar != null) {
                        gVar.c(str, str.isEmpty());
                        break;
                    }
                }
                break;
        }
    }
}
