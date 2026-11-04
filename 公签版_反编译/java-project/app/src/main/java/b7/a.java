package b7;

import android.view.KeyEvent;
import android.widget.CompoundButton;
import com.google.android.material.chip.Chip;
import com.yunpan.appmanage.carsdk.u;
import com.yunpan.appmanage.ui.ActivityImage;
import com.yunpan.appmanage.ui.ActivityImage2;
import com.yunpan.appmanage.util.v;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2579a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ KeyEvent.Callback f2580b;

    public /* synthetic */ a(KeyEvent.Callback callback, int i10) {
        this.f2579a = i10;
        this.f2580b = callback;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        KeyEvent.Callback callback = this.f2580b;
        switch (this.f2579a) {
            case 0:
                CompoundButton.OnCheckedChangeListener onCheckedChangeListener = ((Chip) callback).f3520i;
                if (onCheckedChangeListener != null) {
                    onCheckedChangeListener.onCheckedChanged(compoundButton, z);
                    break;
                }
                break;
            case 1:
                int i10 = ActivityImage.f3974t0;
                ActivityImage activityImage = (ActivityImage) callback;
                activityImage.getClass();
                v.f4106a.w(z);
                if (z) {
                    u uVar = activityImage.Y;
                    uVar.removeMessages(0);
                    uVar.sendEmptyMessageDelayed(0, r4.H0 * 1000);
                    break;
                }
                break;
            default:
                int i11 = ActivityImage2.M0;
                ActivityImage2 activityImage2 = (ActivityImage2) callback;
                activityImage2.getClass();
                v.f4106a.w(z);
                if (z) {
                    u uVar2 = activityImage2.Z;
                    uVar2.removeMessages(0);
                    uVar2.sendEmptyMessageDelayed(0, r4.H0 * 1000);
                    break;
                }
                break;
        }
    }
}
