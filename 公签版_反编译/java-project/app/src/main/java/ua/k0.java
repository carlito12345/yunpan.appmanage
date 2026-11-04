package ua;

import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.yunpan.appmanage.db.AppBean;
import j$.util.concurrent.ConcurrentHashMap;
import java.text.Collator;
import java.util.Comparator;

/* loaded from: classes.dex */
public final class k0 implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15775a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f15776b;

    public /* synthetic */ k0(int i10, Object obj) {
        this.f15775a = i10;
        this.f15776b = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f15775a) {
            case 0:
                AppBean appBean = (AppBean) obj;
                AppBean appBean2 = (AppBean) obj2;
                int i10 = com.yunpan.appmanage.util.v.f4106a.f4124i0;
                Collator collator = (Collator) this.f15776b;
                return i10 == 1 ? collator.compare(appBean.name, appBean2.name) : i10 == 2 ? collator.compare(appBean2.name, appBean.name) : collator.compare(appBean.name, appBean2.name);
            case 1:
                ConcurrentHashMap concurrentHashMap = ((vd.d0) this.f15776b).f16824d;
                Integer num = (Integer) concurrentHashMap.get(((vc.a) obj).b());
                Integer num2 = (Integer) concurrentHashMap.get(((vc.a) obj2).b());
                if (num == null) {
                    num = 0;
                }
                if (num2 == null) {
                    num2 = 0;
                }
                int iIntValue = num.intValue();
                int iIntValue2 = num2.intValue();
                if (iIntValue == iIntValue2) {
                    return 0;
                }
                return iIntValue < iIntValue2 ? -1 : 1;
            default:
                MaterialButton materialButton = (MaterialButton) obj;
                MaterialButton materialButton2 = (MaterialButton) obj2;
                int iCompareTo = Boolean.valueOf(materialButton.f3500p).compareTo(Boolean.valueOf(materialButton2.f3500p));
                if (iCompareTo != 0) {
                    return iCompareTo;
                }
                int iCompareTo2 = Boolean.valueOf(materialButton.isPressed()).compareTo(Boolean.valueOf(materialButton2.isPressed()));
                if (iCompareTo2 != 0) {
                    return iCompareTo2;
                }
                MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) this.f15776b;
                return Integer.valueOf(materialButtonToggleGroup.indexOfChild(materialButton)).compareTo(Integer.valueOf(materialButtonToggleGroup.indexOfChild(materialButton2)));
        }
    }
}
