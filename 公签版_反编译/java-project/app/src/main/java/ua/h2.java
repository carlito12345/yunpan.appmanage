package ua;

import com.hjq.toast.Toaster;
import com.yunpan.appmanage.bean.ImageData;
import com.yunpan.appmanage.ui.ActivityImage;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class h2 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15710b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActivityImage f15711c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ h2(ActivityImage activityImage, int i10) {
        super(28);
        this.f15710b = i10;
        this.f15711c = activityImage;
    }

    @Override // ha.l2, ec.e
    public void B(Throwable th2) {
        switch (this.f15710b) {
            case 1:
                com.yunpan.appmanage.util.a0.y("旋转失败");
                break;
            case 2:
                com.yunpan.appmanage.util.a0.y("保存失败");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void onComplete() {
        ActivityImage activityImage = this.f15711c;
        switch (this.f15710b) {
            case 0:
                kh.e eVarB = kh.e.b();
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                ImageData imageData = kVar.f4076y;
                eVarB.f(new ja.e(imageData.bdFiles.get(imageData.position).f18365b, null));
                Toaster.show((CharSequence) "删除成功");
                if (kVar.f4076y.bdFiles.size() != 1) {
                    ImageData imageData2 = kVar.f4076y;
                    imageData2.bdFiles.remove(imageData2.position);
                    int i10 = ActivityImage.f3974t0;
                    activityImage.y();
                    break;
                } else {
                    activityImage.finish();
                    break;
                }
            case 1:
                StringBuilder sb2 = new StringBuilder();
                int i11 = ActivityImage.f3974t0;
                sb2.append(activityImage.A.getCacheDir());
                sb2.append("/rotation.ming");
                activityImage.z(sb2.toString());
                activityImage.M.setVisibility(0);
                break;
            default:
                com.yunpan.appmanage.util.a0.w("保存成功");
                activityImage.L.requestFocus();
                activityImage.M.setVisibility(8);
                break;
        }
    }
}
