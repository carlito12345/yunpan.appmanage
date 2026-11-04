package ua;

import com.yunpan.appmanage.ui.ActivityPresentation;
import j$.util.function.Consumer$CC;
import java.util.ArrayList;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class q5 implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15902a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f15903b;

    public /* synthetic */ q5(int i10, ArrayList arrayList) {
        this.f15902a = i10;
        this.f15903b = arrayList;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        ArrayList arrayList = this.f15903b;
        switch (this.f15902a) {
            case 0:
                Integer num = (Integer) obj;
                int i10 = ActivityPresentation.H;
                if (num.intValue() != 0) {
                    arrayList.add("在副屏显示|id=" + num);
                    break;
                } else {
                    arrayList.add(0, "在主屏显示");
                    break;
                }
            default:
                arrayList.add(new x9.w3("U盘", (String) obj, true));
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        int i10 = this.f15902a;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
