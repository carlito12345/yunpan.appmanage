package ha;

import android.view.View;
import android.widget.ImageView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityJiliE01;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final /* synthetic */ class f implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6995a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ImageView f6996b;

    public /* synthetic */ f(ImageView imageView, int i10) {
        this.f6995a = i10;
        this.f6996b = imageView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i10 = R.drawable.tp_check2;
        ImageView imageView = this.f6996b;
        switch (this.f6995a) {
            case 0:
                com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                boolean z = !wVar.C;
                wVar.C = z;
                try {
                    wVar.f4123i.k("Auto_set_adb_port_5555", Boolean.valueOf(z));
                } catch (Exception unused) {
                }
                wVar.m();
                if (com.yunpan.appmanage.util.v.f4106a.C) {
                    i10 = R.drawable.tp_check1;
                }
                imageView.setImageResource(i10);
                break;
            case 1:
                com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                boolean z4 = !wVar2.f4139q0;
                wVar2.f4139q0 = z4;
                try {
                    wVar2.f4123i.k("File_not_scanning_usb", Boolean.valueOf(z4));
                } catch (Exception unused2) {
                }
                wVar2.m();
                imageView.setImageResource(com.yunpan.appmanage.util.v.f4106a.f4139q0 ? R.drawable.check2 : R.drawable.check1);
                break;
            case 2:
                com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                boolean z10 = !wVar3.f4138q;
                wVar3.f4138q = z10;
                try {
                    wVar3.f4123i.k("IsHideGn", Boolean.valueOf(z10));
                } catch (Exception unused3) {
                }
                wVar3.m();
                if (!com.yunpan.appmanage.util.v.f4106a.f4138q) {
                    i10 = R.drawable.tp_check1;
                }
                imageView.setImageResource(i10);
                break;
            case 3:
                com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
                boolean z11 = !wVar4.f4149w0;
                wVar4.f4149w0 = z11;
                try {
                    wVar4.f4123i.k("File_search_image_filtration", Boolean.valueOf(z11));
                } catch (Exception unused4) {
                }
                wVar4.m();
                if (com.yunpan.appmanage.util.v.f4106a.f4149w0) {
                    i10 = R.drawable.tp_check1;
                }
                imageView.setImageResource(i10);
                break;
            case 4:
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                boolean z12 = kVar.U;
                kVar.U = !z12;
                if (!z12) {
                    i10 = R.drawable.tp_check1;
                }
                imageView.setImageResource(i10);
                break;
            case 5:
                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                boolean z13 = kVar2.V;
                kVar2.V = !z13;
                if (!z13) {
                    i10 = R.drawable.tp_check1;
                }
                imageView.setImageResource(i10);
                break;
            case 6:
                com.yunpan.appmanage.util.w wVar5 = com.yunpan.appmanage.util.v.f4106a;
                boolean z14 = !wVar5.M;
                wVar5.M = z14;
                try {
                    wVar5.f4123i.k("Share_file_success_prompt", Boolean.valueOf(z14));
                } catch (Exception unused5) {
                }
                wVar5.m();
                if (com.yunpan.appmanage.util.v.f4106a.M) {
                    i10 = R.drawable.tp_check1;
                }
                imageView.setImageResource(i10);
                break;
            default:
                int i11 = ActivityJiliE01.F;
                com.yunpan.appmanage.util.w wVar6 = com.yunpan.appmanage.util.v.f4106a;
                boolean z15 = !wVar6.J;
                wVar6.J = z15;
                try {
                    wVar6.f4123i.k("Auto_xingrui_adb_root", Boolean.valueOf(z15));
                } catch (Exception unused6) {
                }
                wVar6.m();
                if (com.yunpan.appmanage.util.v.f4106a.J) {
                    i10 = R.drawable.tp_check1;
                }
                imageView.setImageResource(i10);
                break;
        }
    }
}
