package ta;

import com.yunpan.appmanage.bean.TimePeriodBean;
import com.yunpan.appmanage.service.AccService;
import java.util.Calendar;
import java.util.Iterator;
import wa.s;

/* loaded from: classes.dex */
public final class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14864a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AccService f14865b;

    public /* synthetic */ f(AccService accService, int i10) {
        this.f14864a = i10;
        this.f14865b = accService;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x009f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009e A[SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        switch (this.f14864a) {
            case 0:
                AccService accService = this.f14865b;
                try {
                    if (!s.c().r.isEmpty()) {
                        Iterator it = s.c().r.iterator();
                        while (it.hasNext()) {
                            TimePeriodBean timePeriodBean = (TimePeriodBean) it.next();
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(timePeriodBean.startH);
                            sb2.append(":");
                            sb2.append(timePeriodBean.startM);
                            sb2.append(" ");
                            sb2.append(timePeriodBean.endH);
                            sb2.append(":");
                            sb2.append(timePeriodBean.endM);
                            int i10 = timePeriodBean.startH;
                            int i11 = timePeriodBean.startM;
                            int i12 = timePeriodBean.endH;
                            int i13 = timePeriodBean.endM;
                            Calendar calendar = Calendar.getInstance();
                            int i14 = (calendar.get(11) * 60) + calendar.get(12);
                            int i15 = (i10 * 60) + i11;
                            int i16 = (i12 * 60) + i13;
                            if (i16 < i15) {
                                if (i14 < i15 && i14 > i16) {
                                    accService.f3949x.remove(sb2.toString());
                                }
                                if (accService.f3949x.contains(sb2.toString())) {
                                    accService.b(timePeriodBean.jsonArray);
                                    accService.f3949x.add(sb2.toString());
                                }
                            } else if (i14 < i15 || i14 > i16) {
                                accService.f3949x.remove(sb2.toString());
                            } else if (accService.f3949x.contains(sb2.toString())) {
                            }
                        }
                    }
                } catch (Exception unused) {
                }
                accService.f3938j.postDelayed(accService.f3950y, 60000L);
                break;
            default:
                AccService accService2 = this.f14865b;
                accService2.z.set(false);
                ya.e.b().d();
                ya.h.a().b(accService2);
                break;
        }
    }
}
