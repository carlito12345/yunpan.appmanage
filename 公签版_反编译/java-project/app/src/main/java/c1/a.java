package c1;

import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings;
import com.yunpan.appmanage.service.AccService;
import ha.f0;
import ha.y;
import wa.s;
import z7.o;

/* loaded from: classes.dex */
public final class a extends ContentObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2842a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2843b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ a(Object obj, Handler handler, int i10) {
        super(handler);
        this.f2842a = i10;
        this.f2843b = obj;
    }

    @Override // android.database.ContentObserver
    public boolean deliverSelfNotifications() {
        switch (this.f2842a) {
            case 0:
                return true;
            default:
                return super.deliverSelfNotifications();
        }
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        Cursor cursor;
        switch (this.f2842a) {
            case 0:
                c cVar = (c) this.f2843b;
                if (cVar.f2847b && (cursor = cVar.f2848c) != null && !cursor.isClosed()) {
                    cVar.f2846a = cVar.f2848c.requery();
                    break;
                }
                break;
            default:
                super.onChange(z);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(c cVar) {
        super(new Handler());
        this.f2842a = 0;
        this.f2843b = cVar;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z, Uri uri) {
        switch (this.f2842a) {
            case 1:
                super.onChange(z, uri);
                y yVar = (y) this.f2843b;
                yVar.l.setText(String.valueOf(Settings.System.getInt(yVar.f6725b.getContentResolver(), "screen_brightness", 255)));
                break;
            case 2:
                super.onChange(z, uri);
                f0 f0Var = (f0) this.f2843b;
                f0Var.l.setText(String.valueOf(Settings.System.getInt(f0Var.f6725b.getContentResolver(), "screen_brightness", 255)));
                break;
            case 3:
                AccService accService = (AccService) this.f2843b;
                int i10 = Settings.System.getInt(accService.getContentResolver(), "screen_brightness", 255);
                int i11 = accService.f3947v;
                if (i11 == -1) {
                    accService.f3947v = i10;
                    break;
                } else if (Math.abs(i10 - i11) >= 10) {
                    if (i10 > accService.f3947v) {
                        for (Integer num : s.c().f17723u.keySet()) {
                            int iIntValue = num.intValue();
                            if (iIntValue <= i10 && iIntValue > accService.f3947v) {
                                accService.b((o) s.c().f17723u.get(num));
                            }
                        }
                    } else {
                        for (Integer num2 : s.c().f17724v.keySet()) {
                            int iIntValue2 = num2.intValue();
                            if (iIntValue2 >= i10 && iIntValue2 < accService.f3947v) {
                                accService.b((o) s.c().f17724v.get(num2));
                            }
                        }
                    }
                    accService.f3947v = i10;
                    break;
                }
                break;
            default:
                super.onChange(z, uri);
                break;
        }
    }
}
