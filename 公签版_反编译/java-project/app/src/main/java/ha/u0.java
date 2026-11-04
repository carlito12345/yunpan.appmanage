package ha;

import android.view.View;
import android.widget.TextView;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.bean.KeyMapSelectBean;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class u0 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7846a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x0 f7847b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ArrayList f7848c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ TextView f7849d;

    public /* synthetic */ u0(x0 x0Var, TextView textView, ArrayList arrayList) {
        this.f7846a = 0;
        this.f7847b = x0Var;
        this.f7849d = textView;
        this.f7848c = arrayList;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f7846a) {
            case 0:
                x0 x0Var = this.f7847b;
                x0Var.getClass();
                new ja(x0Var.f6724a, x0Var.f6725b, this.f7849d, this.f7848c, new s0(x0Var)).show();
                break;
            case 1:
                final x0 x0Var2 = this.f7847b;
                x0Var2.getClass();
                final ArrayList arrayList = this.f7848c;
                final TextView textView = this.f7849d;
                final int i10 = 0;
                new ie(x0Var2.f6724a, x0Var2.f6725b, arrayList, new he() { // from class: ha.t0
                    @Override // ha.he, ha.ea
                    public final void b(int i11) {
                        int streamMaxVolume;
                        int streamVolume;
                        switch (i10) {
                            case 0:
                                x0 x0Var3 = x0Var2;
                                x0Var3.getClass();
                                KeyMapSelectBean keyMapSelectBean = (KeyMapSelectBean) arrayList.get(i11);
                                x0Var3.l = keyMapSelectBean;
                                textView.setText(keyMapSelectBean.gn_name);
                                break;
                            default:
                                x0 x0Var4 = x0Var2;
                                x0Var4.getClass();
                                ArrayList arrayList2 = arrayList;
                                int i12 = ((KeyMapSelectBean) arrayList2.get(i11)).gn_type;
                                TextView textView2 = textView;
                                if (i12 == -1) {
                                    KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList2.get(i11);
                                    x0Var4.f8025n = keyMapSelectBean2;
                                    textView2.setText(keyMapSelectBean2.gn_name);
                                    break;
                                } else {
                                    try {
                                        if (((KeyMapSelectBean) arrayList2.get(i11)).gn_type >= 100) {
                                            com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                                            streamMaxVolume = k0Var.d(((KeyMapSelectBean) arrayList2.get(i11)).gn_type - 100);
                                            streamVolume = k0Var.f(((KeyMapSelectBean) arrayList2.get(i11)).gn_type - 100);
                                        } else {
                                            streamMaxVolume = x0Var4.r.getStreamMaxVolume(((KeyMapSelectBean) arrayList2.get(i11)).gn_type);
                                            streamVolume = x0Var4.r.getStreamVolume(((KeyMapSelectBean) arrayList2.get(i11)).gn_type);
                                        }
                                        x0Var4.f8022j.setProgress(0);
                                        x0Var4.f8022j.setMax(streamMaxVolume);
                                        x0Var4.f8022j.setProgress(streamVolume);
                                        x0Var4.f8029t.setText(String.valueOf(streamVolume));
                                        KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList2.get(i11);
                                        x0Var4.f8025n = keyMapSelectBean3;
                                        textView2.setText(keyMapSelectBean3.gn_name);
                                        break;
                                    } catch (Exception unused) {
                                        Toaster.show((CharSequence) "系统没有此音量");
                                    }
                                }
                        }
                    }
                }).show();
                break;
            default:
                final x0 x0Var3 = this.f7847b;
                x0Var3.getClass();
                final ArrayList arrayList2 = this.f7848c;
                final TextView textView2 = this.f7849d;
                final int i11 = 1;
                new ie(x0Var3.f6724a, x0Var3.f6725b, arrayList2, new he() { // from class: ha.t0
                    @Override // ha.he, ha.ea
                    public final void b(int i112) {
                        int streamMaxVolume;
                        int streamVolume;
                        switch (i11) {
                            case 0:
                                x0 x0Var32 = x0Var3;
                                x0Var32.getClass();
                                KeyMapSelectBean keyMapSelectBean = (KeyMapSelectBean) arrayList2.get(i112);
                                x0Var32.l = keyMapSelectBean;
                                textView2.setText(keyMapSelectBean.gn_name);
                                break;
                            default:
                                x0 x0Var4 = x0Var3;
                                x0Var4.getClass();
                                ArrayList arrayList22 = arrayList2;
                                int i12 = ((KeyMapSelectBean) arrayList22.get(i112)).gn_type;
                                TextView textView22 = textView2;
                                if (i12 == -1) {
                                    KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList22.get(i112);
                                    x0Var4.f8025n = keyMapSelectBean2;
                                    textView22.setText(keyMapSelectBean2.gn_name);
                                    break;
                                } else {
                                    try {
                                        if (((KeyMapSelectBean) arrayList22.get(i112)).gn_type >= 100) {
                                            com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                                            streamMaxVolume = k0Var.d(((KeyMapSelectBean) arrayList22.get(i112)).gn_type - 100);
                                            streamVolume = k0Var.f(((KeyMapSelectBean) arrayList22.get(i112)).gn_type - 100);
                                        } else {
                                            streamMaxVolume = x0Var4.r.getStreamMaxVolume(((KeyMapSelectBean) arrayList22.get(i112)).gn_type);
                                            streamVolume = x0Var4.r.getStreamVolume(((KeyMapSelectBean) arrayList22.get(i112)).gn_type);
                                        }
                                        x0Var4.f8022j.setProgress(0);
                                        x0Var4.f8022j.setMax(streamMaxVolume);
                                        x0Var4.f8022j.setProgress(streamVolume);
                                        x0Var4.f8029t.setText(String.valueOf(streamVolume));
                                        KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList22.get(i112);
                                        x0Var4.f8025n = keyMapSelectBean3;
                                        textView22.setText(keyMapSelectBean3.gn_name);
                                        break;
                                    } catch (Exception unused) {
                                        Toaster.show((CharSequence) "系统没有此音量");
                                    }
                                }
                        }
                    }
                }).show();
                break;
        }
    }

    public /* synthetic */ u0(x0 x0Var, ArrayList arrayList, TextView textView, int i10) {
        this.f7846a = i10;
        this.f7847b = x0Var;
        this.f7848c = arrayList;
        this.f7849d = textView;
    }
}
