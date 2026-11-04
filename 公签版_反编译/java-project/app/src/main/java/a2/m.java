package a2;

import com.yunpan.appmanage.bean.PermissionBean;
import com.yunpan.appmanage.bean.PssBean;
import com.yunpan.appmanage.bean.WpPathBean;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class m implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f228a;

    public /* synthetic */ m(int i10) {
        this.f228a = i10;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f228a) {
            case 7:
                long j10 = ((PssBean) obj).pss;
                long j11 = ((PssBean) obj2).pss;
                if (j10 != j11) {
                    if (j10 > j11) {
                    }
                }
                break;
            case 8:
                jb.c cVar = (jb.c) obj;
                jb.c cVar2 = (jb.c) obj2;
                if (cVar != null || cVar2 != null) {
                    if (cVar != null) {
                        if (cVar2 != null) {
                            int i10 = ((lb.a) cVar).f10706a;
                            int i11 = ((lb.a) cVar2).f10706a;
                            if (i10 != i11) {
                                if (i10 < i11) {
                                }
                            }
                        }
                    }
                }
                break;
            case 11:
                Integer num = (Integer) obj;
                Integer num2 = (Integer) obj2;
                if (num.intValue() != -1) {
                    if (num2.intValue() != -1) {
                        break;
                    }
                } else if (num2.intValue() == -1) {
                }
                break;
            case 12:
                h2.f fVar = (h2.f) ((List) obj).get(0);
                h2.f fVar2 = (h2.f) ((List) obj2).get(0);
                fVar.getClass();
                int i12 = fVar2.f6356f;
                int i13 = fVar.f6356f;
                if (i13 != i12) {
                    if (i13 < i12) {
                    }
                }
                break;
            case 13:
                List list = (List) obj;
                List list2 = (List) obj2;
                int i14 = 16;
                break;
            case 16:
                h2.m mVar = (h2.m) obj;
                h2.m mVar2 = (h2.m) obj2;
                u7.x0 x0VarA = (mVar.f6376e && mVar.f6379h) ? h2.n.f6393k : h2.n.f6393k.a();
                u7.w wVar = u7.y.f15546a;
                mVar.f6377f.getClass();
                u7.y yVarB = wVar.c(mVar.A, mVar2.A).b(Integer.valueOf(mVar.f6382k), Integer.valueOf(mVar2.f6382k), x0VarA);
                if (mVar.f6390w && mVar.f6392y) {
                    yVarB = yVarB.a(mVar.z, mVar2.z);
                }
                break;
            case 17:
                boolean zIsEmpty = ((PermissionBean) obj).permissionName_ops.isEmpty();
                if ((!zIsEmpty) != (!((PermissionBean) obj2).permissionName_ops.isEmpty())) {
                    break;
                }
                break;
            case 21:
                int i15 = ((j3.d) obj2).f9695b;
                int i16 = ((j3.d) obj).f9695b;
                if (i15 != i16) {
                    if (i15 < i16) {
                    }
                }
                break;
        }
        return ((WpPathBean) obj).name.compareToIgnoreCase(((WpPathBean) obj2).name);
    }
}
