package ha;

import android.view.View;
import android.widget.TextView;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.bean.KeyMapSelectBean;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class k3 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7300a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r3 f7301b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ArrayList f7302c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ TextView f7303d;

    public /* synthetic */ k3(r3 r3Var, TextView textView, ArrayList arrayList) {
        this.f7300a = 2;
        this.f7301b = r3Var;
        this.f7303d = textView;
        this.f7302c = arrayList;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f7300a) {
            case 0:
                final r3 r3Var = this.f7301b;
                r3Var.getClass();
                final ArrayList arrayList = this.f7302c;
                final TextView textView = this.f7303d;
                final int i10 = 1;
                new ie(r3Var.f6724a, r3Var.f6725b, arrayList, new he() { // from class: ha.l3
                    @Override // ha.he, ha.ea
                    public final void b(int i11) {
                        int streamMaxVolume;
                        int streamVolume;
                        switch (i10) {
                            case 0:
                                r3 r3Var2 = r3Var;
                                r3Var2.getClass();
                                KeyMapSelectBean keyMapSelectBean = (KeyMapSelectBean) arrayList.get(i11);
                                r3Var2.f7671p = keyMapSelectBean;
                                textView.setText(keyMapSelectBean.gn_name);
                                break;
                            case 1:
                                r3 r3Var3 = r3Var;
                                r3Var3.getClass();
                                ArrayList arrayList2 = arrayList;
                                int i12 = ((KeyMapSelectBean) arrayList2.get(i11)).gn_type;
                                TextView textView2 = textView;
                                if (i12 == -1) {
                                    KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList2.get(i11);
                                    r3Var3.f7673s = keyMapSelectBean2;
                                    textView2.setText(keyMapSelectBean2.gn_name);
                                    break;
                                } else {
                                    try {
                                        if (((KeyMapSelectBean) arrayList2.get(i11)).gn_type >= 100) {
                                            com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                                            streamMaxVolume = k0Var.d(((KeyMapSelectBean) arrayList2.get(i11)).gn_type - 100);
                                            streamVolume = k0Var.f(((KeyMapSelectBean) arrayList2.get(i11)).gn_type - 100);
                                        } else {
                                            streamMaxVolume = r3Var3.f7678y.getStreamMaxVolume(((KeyMapSelectBean) arrayList2.get(i11)).gn_type);
                                            streamVolume = r3Var3.f7678y.getStreamVolume(((KeyMapSelectBean) arrayList2.get(i11)).gn_type);
                                        }
                                        r3Var3.f7666i.setProgress(0);
                                        r3Var3.f7666i.setMax(streamMaxVolume);
                                        r3Var3.f7666i.setProgress(streamVolume);
                                        r3Var3.z.setText(String.valueOf(streamVolume));
                                        KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList2.get(i11);
                                        r3Var3.f7673s = keyMapSelectBean3;
                                        textView2.setText(keyMapSelectBean3.gn_name);
                                        break;
                                    } catch (Exception unused) {
                                        Toaster.show((CharSequence) "系统没有此音量");
                                        return;
                                    }
                                }
                            default:
                                r3 r3Var4 = r3Var;
                                r3Var4.getClass();
                                KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList.get(i11);
                                r3Var4.f7672q = keyMapSelectBean4;
                                textView.setText(keyMapSelectBean4.gn_name);
                                break;
                        }
                    }
                }).show();
                break;
            case 1:
                final r3 r3Var2 = this.f7301b;
                r3Var2.getClass();
                final ArrayList arrayList2 = this.f7302c;
                final TextView textView2 = this.f7303d;
                final int i11 = 2;
                new ie(r3Var2.f6724a, r3Var2.f6725b, arrayList2, new he() { // from class: ha.l3
                    @Override // ha.he, ha.ea
                    public final void b(int i112) {
                        int streamMaxVolume;
                        int streamVolume;
                        switch (i11) {
                            case 0:
                                r3 r3Var22 = r3Var2;
                                r3Var22.getClass();
                                KeyMapSelectBean keyMapSelectBean = (KeyMapSelectBean) arrayList2.get(i112);
                                r3Var22.f7671p = keyMapSelectBean;
                                textView2.setText(keyMapSelectBean.gn_name);
                                break;
                            case 1:
                                r3 r3Var3 = r3Var2;
                                r3Var3.getClass();
                                ArrayList arrayList22 = arrayList2;
                                int i12 = ((KeyMapSelectBean) arrayList22.get(i112)).gn_type;
                                TextView textView22 = textView2;
                                if (i12 == -1) {
                                    KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList22.get(i112);
                                    r3Var3.f7673s = keyMapSelectBean2;
                                    textView22.setText(keyMapSelectBean2.gn_name);
                                    break;
                                } else {
                                    try {
                                        if (((KeyMapSelectBean) arrayList22.get(i112)).gn_type >= 100) {
                                            com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                                            streamMaxVolume = k0Var.d(((KeyMapSelectBean) arrayList22.get(i112)).gn_type - 100);
                                            streamVolume = k0Var.f(((KeyMapSelectBean) arrayList22.get(i112)).gn_type - 100);
                                        } else {
                                            streamMaxVolume = r3Var3.f7678y.getStreamMaxVolume(((KeyMapSelectBean) arrayList22.get(i112)).gn_type);
                                            streamVolume = r3Var3.f7678y.getStreamVolume(((KeyMapSelectBean) arrayList22.get(i112)).gn_type);
                                        }
                                        r3Var3.f7666i.setProgress(0);
                                        r3Var3.f7666i.setMax(streamMaxVolume);
                                        r3Var3.f7666i.setProgress(streamVolume);
                                        r3Var3.z.setText(String.valueOf(streamVolume));
                                        KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList22.get(i112);
                                        r3Var3.f7673s = keyMapSelectBean3;
                                        textView22.setText(keyMapSelectBean3.gn_name);
                                        break;
                                    } catch (Exception unused) {
                                        Toaster.show((CharSequence) "系统没有此音量");
                                        return;
                                    }
                                }
                            default:
                                r3 r3Var4 = r3Var2;
                                r3Var4.getClass();
                                KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList2.get(i112);
                                r3Var4.f7672q = keyMapSelectBean4;
                                textView2.setText(keyMapSelectBean4.gn_name);
                                break;
                        }
                    }
                }).show();
                break;
            case 2:
                r3 r3Var3 = this.f7301b;
                r3Var3.getClass();
                o3 o3Var = new o3(r3Var3);
                new ja(r3Var3.f6724a, r3Var3.f6725b, this.f7303d, this.f7302c, o3Var).show();
                break;
            default:
                final r3 r3Var4 = this.f7301b;
                r3Var4.getClass();
                final ArrayList arrayList3 = this.f7302c;
                final TextView textView3 = this.f7303d;
                final int i12 = 0;
                new ie(r3Var4.f6724a, r3Var4.f6725b, arrayList3, new he() { // from class: ha.l3
                    @Override // ha.he, ha.ea
                    public final void b(int i112) {
                        int streamMaxVolume;
                        int streamVolume;
                        switch (i12) {
                            case 0:
                                r3 r3Var22 = r3Var4;
                                r3Var22.getClass();
                                KeyMapSelectBean keyMapSelectBean = (KeyMapSelectBean) arrayList3.get(i112);
                                r3Var22.f7671p = keyMapSelectBean;
                                textView3.setText(keyMapSelectBean.gn_name);
                                break;
                            case 1:
                                r3 r3Var32 = r3Var4;
                                r3Var32.getClass();
                                ArrayList arrayList22 = arrayList3;
                                int i122 = ((KeyMapSelectBean) arrayList22.get(i112)).gn_type;
                                TextView textView22 = textView3;
                                if (i122 == -1) {
                                    KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList22.get(i112);
                                    r3Var32.f7673s = keyMapSelectBean2;
                                    textView22.setText(keyMapSelectBean2.gn_name);
                                    break;
                                } else {
                                    try {
                                        if (((KeyMapSelectBean) arrayList22.get(i112)).gn_type >= 100) {
                                            com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                                            streamMaxVolume = k0Var.d(((KeyMapSelectBean) arrayList22.get(i112)).gn_type - 100);
                                            streamVolume = k0Var.f(((KeyMapSelectBean) arrayList22.get(i112)).gn_type - 100);
                                        } else {
                                            streamMaxVolume = r3Var32.f7678y.getStreamMaxVolume(((KeyMapSelectBean) arrayList22.get(i112)).gn_type);
                                            streamVolume = r3Var32.f7678y.getStreamVolume(((KeyMapSelectBean) arrayList22.get(i112)).gn_type);
                                        }
                                        r3Var32.f7666i.setProgress(0);
                                        r3Var32.f7666i.setMax(streamMaxVolume);
                                        r3Var32.f7666i.setProgress(streamVolume);
                                        r3Var32.z.setText(String.valueOf(streamVolume));
                                        KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList22.get(i112);
                                        r3Var32.f7673s = keyMapSelectBean3;
                                        textView22.setText(keyMapSelectBean3.gn_name);
                                        break;
                                    } catch (Exception unused) {
                                        Toaster.show((CharSequence) "系统没有此音量");
                                        return;
                                    }
                                }
                            default:
                                r3 r3Var42 = r3Var4;
                                r3Var42.getClass();
                                KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList3.get(i112);
                                r3Var42.f7672q = keyMapSelectBean4;
                                textView3.setText(keyMapSelectBean4.gn_name);
                                break;
                        }
                    }
                }).show();
                break;
        }
    }

    public /* synthetic */ k3(r3 r3Var, ArrayList arrayList, TextView textView, int i10) {
        this.f7300a = i10;
        this.f7301b = r3Var;
        this.f7302c = arrayList;
        this.f7303d = textView;
    }
}
