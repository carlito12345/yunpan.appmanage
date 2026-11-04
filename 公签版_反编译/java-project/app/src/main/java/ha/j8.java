package ha;

import android.app.Activity;
import android.content.Context;
import android.media.AudioManager;
import android.view.inputmethod.InputMethodInfo;
import com.yunpan.appmanage.bean.KeyCodeBean;
import com.yunpan.appmanage.bean.KeyMapSelectBean;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class j8 implements ea, he {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7274a = 3;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f7275b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f7276c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f7277d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f7278e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f7279f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ ea.e f7280g;

    public /* synthetic */ j8(int i10, int i11, String str, ArrayList arrayList, List list, ea.e eVar) {
        this.f7278e = i10;
        this.f7279f = i11;
        this.f7276c = str;
        this.f7275b = arrayList;
        this.f7277d = list;
        this.f7280g = eVar;
    }

    @Override // ha.ea
    public final void b(final int i10) {
        switch (this.f7274a) {
            case 0:
                final ArrayList arrayList = new ArrayList();
                if (i10 == 0 || i10 == 1 || i10 == 2) {
                    arrayList.add(new KeyCodeBean(-1, "切换"));
                    arrayList.add(new KeyCodeBean(2, "开启"));
                    arrayList.add(new KeyCodeBean(1, "关闭"));
                } else if (i10 == 3 || i10 == 4) {
                    arrayList.add(new KeyCodeBean(1, "加大"));
                    arrayList.add(new KeyCodeBean(-1, "减少"));
                } else if (i10 == 5) {
                    arrayList.add(new KeyCodeBean(-1, "切换"));
                    arrayList.add(new KeyCodeBean(1, "内循环"));
                    arrayList.add(new KeyCodeBean(2, "外循环"));
                } else if (i10 == 6) {
                    arrayList.add(new KeyCodeBean(-1, "切换"));
                    arrayList.add(new KeyCodeBean(26, "吹面"));
                    arrayList.add(new KeyCodeBean(28, "吹脚"));
                    arrayList.add(new KeyCodeBean(27, "吹面吹脚"));
                    arrayList.add(new KeyCodeBean(29, "吹脚除霜"));
                    arrayList.add(new KeyCodeBean(3, "除霜"));
                } else if (i10 == 7 || i10 == 8 || i10 == 9 || i10 == 10 || i10 == 11) {
                    arrayList.add(new KeyCodeBean(-1, "切换"));
                    arrayList.add(new KeyCodeBean(2, "开启"));
                    arrayList.add(new KeyCodeBean(1, "关闭"));
                }
                final ArrayList arrayList2 = this.f7275b;
                final ea.e eVar = this.f7280g;
                final int i11 = this.f7278e;
                final int i12 = this.f7279f;
                new ha((Activity) this.f7276c, (Context) this.f7277d, null, arrayList, new ga() { // from class: ha.s8
                    @Override // ha.ga
                    public final void b(int i13) {
                        int i14 = i11;
                        int i15 = i12;
                        ArrayList arrayList3 = arrayList2;
                        int i16 = i10;
                        ArrayList arrayList4 = arrayList;
                        ea.e eVar2 = eVar;
                        try {
                            z7.s sVar = new z7.s();
                            sVar.l("keyType", Integer.valueOf(i14));
                            sVar.l("gnType", Integer.valueOf(i15));
                            sVar.m("name", ((String) arrayList3.get(i16)) + " - " + ((KeyCodeBean) arrayList4.get(i13)).keyName);
                            sVar.l("type1", Integer.valueOf(i16));
                            sVar.l("type2", Integer.valueOf(((KeyCodeBean) arrayList4.get(i13)).keyCode));
                            eVar2.k(sVar);
                        } catch (Exception unused) {
                        }
                    }
                }).show();
                break;
            case 1:
                KeyMapSelectBean keyMapSelectBean = (KeyMapSelectBean) this.f7275b.get(i10);
                Activity activity = (Activity) this.f7276c;
                AudioManager audioManager = (AudioManager) activity.getSystemService("audio");
                new h1(activity, (Context) this.f7277d, "设置" + keyMapSelectBean.gn_name, audioManager.getStreamMaxVolume(keyMapSelectBean.gn_type), audioManager.getStreamVolume(keyMapSelectBean.gn_type), new p8(this.f7278e, this.f7279f, keyMapSelectBean, this.f7280g), 0).show();
                break;
            case 2:
                final ArrayList arrayList3 = this.f7275b;
                final ea.e eVar2 = this.f7280g;
                final int i13 = this.f7278e;
                final int i14 = this.f7279f;
                final Activity activity2 = (Activity) this.f7276c;
                final Context context = (Context) this.f7277d;
                new ie(activity2, context, arrayList3, new he() { // from class: ha.q8
                    @Override // ha.he, ha.ea
                    public final void b(int i15) {
                        ArrayList arrayList4 = arrayList3;
                        KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList4.get(i15);
                        z7.s sVar = new z7.s();
                        sVar.l("keyType", Integer.valueOf(i13));
                        sVar.l("gnType", Integer.valueOf(i14));
                        int i16 = i10;
                        sVar.l("setType", Integer.valueOf(i16));
                        ea.e eVar3 = eVar2;
                        if (i16 == 0) {
                            com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                            new h1(activity2, context, "设置音量", k0Var.d(keyMapSelectBean2.gn_type), k0Var.f(keyMapSelectBean2.gn_type), new f2.e0(sVar, arrayList4, i15, eVar3, 2), 0).show();
                        } else {
                            sVar.m("name", i16 == 1 ? "car音量+" : "car音量-");
                            sVar.l("streamType", Integer.valueOf(((KeyMapSelectBean) arrayList4.get(i15)).gn_type));
                            eVar3.k(sVar);
                        }
                    }
                }).show();
                break;
            default:
                int i15 = this.f7278e;
                int i16 = this.f7279f;
                String str = (String) this.f7276c;
                ArrayList arrayList4 = this.f7275b;
                List list = (List) this.f7277d;
                ea.e eVar3 = this.f7280g;
                try {
                    z7.s sVar = new z7.s();
                    sVar.l("keyType", Integer.valueOf(i15));
                    sVar.l("gnType", Integer.valueOf(i16));
                    sVar.m("name", str + "：" + ((String) arrayList4.get(i10)));
                    sVar.m("immName", (String) arrayList4.get(i10));
                    sVar.m("immID", ((InputMethodInfo) list.get(i10)).getId());
                    eVar3.k(sVar);
                    break;
                } catch (Exception unused) {
                    return;
                }
        }
    }

    public /* synthetic */ j8(Activity activity, Context context, int i10, int i11, ArrayList arrayList, ea.e eVar) {
        this.f7276c = activity;
        this.f7277d = context;
        this.f7278e = i10;
        this.f7279f = i11;
        this.f7275b = arrayList;
        this.f7280g = eVar;
    }

    public /* synthetic */ j8(Activity activity, Context context, ArrayList arrayList, int i10, int i11, ea.e eVar) {
        this.f7276c = activity;
        this.f7277d = context;
        this.f7275b = arrayList;
        this.f7278e = i10;
        this.f7279f = i11;
        this.f7280g = eVar;
    }

    public /* synthetic */ j8(ArrayList arrayList, Activity activity, Context context, int i10, int i11, ea.e eVar) {
        this.f7275b = arrayList;
        this.f7276c = activity;
        this.f7277d = context;
        this.f7278e = i10;
        this.f7279f = i11;
        this.f7280g = eVar;
    }
}
