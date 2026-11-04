package ha;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.yunpan.appmanage.bean.NameContentSelectBean;

/* loaded from: classes.dex */
public final /* synthetic */ class jb implements c6.e, ea {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ kb f7288a;

    public /* synthetic */ jb(kb kbVar) {
        this.f7288a = kbVar;
    }

    @Override // ha.ea
    public void b(int i10) {
        kb kbVar = this.f7288a;
        kbVar.getClass();
        wa.u uVar = wa.t.f17728a;
        if (uVar.U != i10) {
            try {
                uVar.U = i10;
                uVar.f17731b.l("AutoRotationDefault", Integer.valueOf(i10));
            } catch (Exception unused) {
            }
            uVar.i();
            ta.m.e(kbVar.f6725b);
            kbVar.a();
        }
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        kb kbVar = this.f7288a;
        kbVar.getClass();
        NameContentSelectBean nameContentSelectBean = (NameContentSelectBean) gVar.t(i10);
        Context context = kbVar.f6725b;
        if (i10 == 0) {
            wa.u uVar = wa.t.f17728a;
            boolean z = true ^ uVar.P;
            try {
                uVar.P = z;
                uVar.f17731b.k("AutoRotationEmergencyOne", Boolean.valueOf(z));
            } catch (Exception unused) {
            }
            uVar.i();
            nameContentSelectBean.isSelect = wa.t.f17728a.P;
            gVar.e(i10);
            ta.m.e(context);
            return;
        }
        if (i10 == 1) {
            wa.u uVar2 = wa.t.f17728a;
            boolean z4 = true ^ uVar2.Q;
            try {
                uVar2.Q = z4;
                uVar2.f17731b.k("AutoRotationEmergencyTwo", Boolean.valueOf(z4));
            } catch (Exception unused2) {
            }
            uVar2.i();
            wa.u uVar3 = wa.t.f17728a;
            nameContentSelectBean.isSelect = uVar3.Q;
            gVar.e(i10);
            try {
                Intent intent = new Intent(context.getPackageName() + ".BROADCAST_AUTO_RORATION_UP_TWO");
                intent.putExtra("bool", uVar3.Q);
                intent.setPackage(context.getPackageName());
                context.sendBroadcast(intent);
                return;
            } catch (Exception unused3) {
                return;
            }
        }
        if (i10 == 2) {
            wa.u uVar4 = wa.t.f17728a;
            boolean z10 = true ^ uVar4.R;
            try {
                uVar4.R = z10;
                uVar4.f17731b.k("AutoRotationEmergencyThree", Boolean.valueOf(z10));
            } catch (Exception unused4) {
            }
            uVar4.i();
            nameContentSelectBean.isSelect = wa.t.f17728a.R;
            gVar.e(i10);
            ta.m.e(context);
            return;
        }
        if (i10 == 3) {
            wa.u uVar5 = wa.t.f17728a;
            boolean z11 = true ^ uVar5.S;
            try {
                uVar5.S = z11;
                uVar5.f17731b.k("AutoRotationGlobalHorizontal", Boolean.valueOf(z11));
            } catch (Exception unused5) {
            }
            uVar5.i();
            nameContentSelectBean.isSelect = uVar5.S;
            gVar.e(i10);
            ta.m.e(context);
            return;
        }
        if (i10 == 4) {
            wa.u uVar6 = wa.t.f17728a;
            boolean z12 = true ^ uVar6.T;
            try {
                uVar6.T = z12;
                uVar6.f17731b.k("AutoRotationGlobalVertical", Boolean.valueOf(z12));
            } catch (Exception unused6) {
            }
            uVar6.i();
            nameContentSelectBean.isSelect = uVar6.T;
            gVar.e(i10);
            ta.m.e(context);
        }
    }
}
