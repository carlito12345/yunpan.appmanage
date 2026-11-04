package androidx.leanback.widget;

import android.os.Message;
import android.view.View;
import android.widget.CheckedTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.media3.ui.TrackSelectionView;
import ha.fa;
import ha.fc;
import ha.k9;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import w.i3;
import x9.w3;

/* loaded from: classes.dex */
public final class h0 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1644a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1645b;

    public /* synthetic */ h0(int i10, Object obj) {
        this.f1644a = i10;
        this.f1645b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        w3 w3Var;
        Message message;
        Message message2;
        Message message3;
        boolean z = false;
        Message messageObtain = null;
        messageObtain = null;
        Object obj = this.f1645b;
        switch (this.f1644a) {
            case 0:
                SearchBar searchBar = (SearchBar) obj;
                if (!searchBar.f1568x) {
                    searchBar.a();
                    break;
                } else {
                    searchBar.b();
                    break;
                }
            case 1:
                com.google.android.material.datepicker.k kVar = (com.google.android.material.datepicker.k) obj;
                int i10 = kVar.f3568e;
                if (i10 != 2) {
                    if (i10 == 1) {
                        kVar.h(2);
                        break;
                    }
                } else {
                    kVar.h(1);
                    break;
                }
                break;
            case 2:
                fc fcVar = (fc) obj;
                new fa(fcVar.f6724a, fcVar.f6725b, null, Arrays.asList("管家安装器", "系统安装器", "指定安装器", "由打开方式"), new h5.m(15, this)).show();
                break;
            case 3:
                fa.h0 h0Var = fa.g0.f5682a;
                if (h0Var.d().isEmpty()) {
                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                    com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                    if (kVar2.f4073v.isEmpty()) {
                        com.yunpan.appmanage.util.a0.y("没有内部存储也没有U盘，无法选择密钥文件");
                        break;
                    } else {
                        w3Var = new w3("U盘", (String) kVar2.f4073v.iterator().next());
                    }
                } else {
                    w3Var = new w3("内部存储", h0Var.d());
                }
                ha.w wVar = (ha.w) obj;
                k9 k9Var = new k9(wVar.f6724a, wVar.f6725b);
                h5.m mVar = new h5.m(16, this);
                k9Var.show();
                k9Var.f7325p = mVar;
                k9Var.f7319h.q(w3Var);
                k9Var.a();
                break;
            case 4:
                q.e eVar = (q.e) obj;
                if (view == eVar.f12815h && (message3 = eVar.f12817j) != null) {
                    messageObtain = Message.obtain(message3);
                } else if (view == eVar.f12818k && (message2 = eVar.f12819m) != null) {
                    messageObtain = Message.obtain(message2);
                } else if (view == eVar.f12820n && (message = eVar.f12822p) != null) {
                    messageObtain = Message.obtain(message);
                }
                if (messageObtain != null) {
                    messageObtain.sendToTarget();
                }
                eVar.D.obtainMessage(1, eVar.f12809b).sendToTarget();
                break;
            case 5:
                TrackSelectionView trackSelectionView = (TrackSelectionView) obj;
                CheckedTextView checkedTextView = trackSelectionView.f2014c;
                HashMap map = trackSelectionView.f2018g;
                if (view == checkedTextView) {
                    trackSelectionView.l = true;
                    map.clear();
                } else if (view == trackSelectionView.f2015d) {
                    trackSelectionView.l = false;
                    map.clear();
                } else {
                    trackSelectionView.l = false;
                    Object tag = view.getTag();
                    tag.getClass();
                    v3.n0 n0Var = (v3.n0) tag;
                    r1.w0 w0Var = n0Var.f16526a;
                    r1.r0 r0Var = w0Var.f13620b;
                    r1.s0 s0Var = (r1.s0) map.get(r0Var);
                    int i11 = n0Var.f16527b;
                    if (s0Var == null) {
                        if (!trackSelectionView.f2020i && !map.isEmpty()) {
                            map.clear();
                        }
                        map.put(r0Var, new r1.s0(r0Var, u7.g0.r(Integer.valueOf(i11))));
                    } else {
                        ArrayList arrayList = new ArrayList(s0Var.f13559b);
                        boolean zIsChecked = ((CheckedTextView) view).isChecked();
                        boolean z4 = trackSelectionView.f2019h && w0Var.f13621c;
                        if (z4 || (trackSelectionView.f2020i && trackSelectionView.f2017f.size() > 1)) {
                            z = true;
                        }
                        if (zIsChecked && z) {
                            arrayList.remove(Integer.valueOf(i11));
                            if (arrayList.isEmpty()) {
                                map.remove(r0Var);
                            } else {
                                map.put(r0Var, new r1.s0(r0Var, arrayList));
                            }
                        } else if (!zIsChecked) {
                            if (z4) {
                                arrayList.add(Integer.valueOf(i11));
                                map.put(r0Var, new r1.s0(r0Var, arrayList));
                            } else {
                                map.put(r0Var, new r1.s0(r0Var, u7.g0.r(Integer.valueOf(i11))));
                            }
                        }
                    }
                }
                trackSelectionView.a();
                break;
            case 6:
                ((u.a) obj).a();
                break;
            default:
                i3 i3Var = ((Toolbar) obj).O;
                v.m mVar2 = i3Var != null ? i3Var.f17106b : null;
                if (mVar2 != null) {
                    mVar2.collapseActionView();
                    break;
                }
                break;
        }
    }
}
