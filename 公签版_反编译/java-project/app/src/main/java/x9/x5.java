package x9;

import android.widget.ImageView;
import com.yunpan.appmanage.bean.WpPathBean;

/* loaded from: classes.dex */
public final class x5 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f18388b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ImageView f18389c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ WpPathBean f18390d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f18391e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ y5 f18392f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ x5(y5 y5Var, ImageView imageView, WpPathBean wpPathBean, String str, int i10) {
        super(28);
        this.f18388b = i10;
        this.f18392f = y5Var;
        this.f18389c = imageView;
        this.f18390d = wpPathBean;
        this.f18391e = str;
    }

    @Override // ha.l2, ec.e
    public final void onComplete() {
        switch (this.f18388b) {
            case 0:
                ImageView imageView = this.f18389c;
                if (imageView.getTag().equals(this.f18390d.path)) {
                    com.bumptech.glide.m mVarU = com.bumptech.glide.b.f(this.f18392f.f18403i).u(this.f18391e);
                    com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                    ((com.bumptech.glide.m) mVarU.o(Math.round(wVar.f4117f * 60.0f), Math.round(wVar.f4117f * 60.0f))).D(imageView);
                    break;
                }
                break;
            case 1:
                ImageView imageView2 = this.f18389c;
                if (imageView2.getTag().equals(this.f18390d.path)) {
                    com.bumptech.glide.m mVarU2 = com.bumptech.glide.b.f(this.f18392f.f18403i).u(this.f18391e);
                    com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                    ((com.bumptech.glide.m) mVarU2.o(Math.round(wVar2.f4117f * 60.0f), Math.round(wVar2.f4117f * 60.0f))).D(imageView2);
                    break;
                }
                break;
            default:
                ImageView imageView3 = this.f18389c;
                if (imageView3.getTag().equals(this.f18390d.path)) {
                    com.bumptech.glide.m mVarU3 = com.bumptech.glide.b.f(this.f18392f.f18403i).u(this.f18391e);
                    com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                    ((com.bumptech.glide.m) mVarU3.o(Math.round(wVar3.f4117f * 60.0f), Math.round(wVar3.f4117f * 60.0f))).D(imageView3);
                    break;
                }
                break;
        }
    }
}
