package db;

import android.widget.TextView;
import com.yunpan.appmanage.ui.ActivityCodeEditor;

/* loaded from: classes.dex */
public final /* synthetic */ class m implements q {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4544a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f4545b;

    public /* synthetic */ m(int i10, Object obj) {
        this.f4544a = i10;
        this.f4545b = obj;
    }

    @Override // db.q
    public final void a(bi.a aVar, ag.h hVar) {
        int i10;
        sb.e eVar;
        boolean z = true;
        int i11 = 0;
        Object obj = this.f4545b;
        switch (this.f4544a) {
            case 0:
                ((n) obj).d(aVar);
                break;
            case 1:
                d dVar = (d) aVar;
                tb.f fVar = (tb.f) obj;
                fVar.getClass();
                int i12 = dVar.f4531c;
                mb.d dVar2 = fVar.f14933b;
                mb.b bVar = dVar.f4533e;
                mb.b bVar2 = dVar.f4532d;
                if (i12 != 2) {
                    if (i12 == 3) {
                        int i13 = bVar2.f11056a;
                        int i14 = bVar.f11056a;
                        int i15 = i14 - i13;
                        int iMax = Math.max(i13, dVar2.f11061a);
                        int iMin = Math.min(i14, dVar2.f11063c);
                        if (iMin > iMax) {
                            int i16 = dVar2.f11063c - (iMin - iMax);
                            dVar2.f11063c = i16;
                            int i17 = dVar2.f11061a;
                            if (i17 > i13) {
                                int i18 = i17 - i13;
                                dVar2.f11061a = i17 - i18;
                                dVar2.f11063c = i16 - i18;
                                break;
                            }
                        } else {
                            int i19 = dVar2.f11061a;
                            if (i19 >= i14) {
                                dVar2.f11061a = i19 - i15;
                                dVar2.f11063c -= i15;
                                break;
                            }
                        }
                    }
                } else {
                    int i20 = bVar2.f11056a;
                    int i21 = bVar.f11056a - i20;
                    int i22 = dVar2.f11061a;
                    if (i22 <= i20 && (i10 = dVar2.f11063c) >= i20) {
                        dVar2.f11063c = i10 + i21;
                    }
                    if (i22 > i20) {
                        dVar2.f11061a = i22 + i21;
                        dVar2.f11063c += i21;
                        break;
                    }
                }
                break;
            case 2:
                tb.r rVar = (tb.r) obj;
                if (rVar.f15000b != null) {
                    rVar.b();
                    break;
                }
                break;
            case 3:
                l5.y yVar = (l5.y) obj;
                yVar.getClass();
                if (!((x) aVar).c()) {
                    yVar.N();
                    break;
                }
                break;
            case 4:
                int i23 = ActivityCodeEditor.f3967c1;
                ActivityCodeEditor activityCodeEditor = (ActivityCodeEditor) obj;
                activityCodeEditor.getClass();
                try {
                    TextView textView = activityCodeEditor.f3971t0;
                    StringBuilder sb2 = new StringBuilder("结果：");
                    if (activityCodeEditor.C.getSearcher().f15000b == null) {
                        z = false;
                    }
                    if (z) {
                        tb.r searcher = activityCodeEditor.C.getSearcher();
                        searcher.a();
                        if (searcher.f() && (eVar = searcher.f15004f) != null) {
                            i11 = eVar.f14472b;
                        }
                    }
                    sb2.append(i11);
                    textView.setText(sb2.toString());
                    break;
                } catch (Exception unused) {
                    return;
                }
                break;
            default:
                w wVar = (w) aVar;
                ub.b bVar3 = (ub.b) obj;
                if (!bVar3.f16095e) {
                    hVar.f680a = true;
                    bVar3.f16096f = false;
                    break;
                } else {
                    int i24 = wVar.f4560g;
                    if ((i24 != 2 && i24 != 3 && i24 != 4 && i24 != 5) || !bVar3.c(4) || ((Math.abs(wVar.f4558e - wVar.f4556c) <= 80 && Math.abs(wVar.f4559f - wVar.f4557d) <= 80) || !bVar3.f16091a.isShowing())) {
                        if (bVar3.c(1)) {
                            bVar3.a(false);
                            break;
                        }
                    } else {
                        bVar3.b();
                        break;
                    }
                }
                break;
        }
    }
}
