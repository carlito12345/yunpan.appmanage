package b7;

import android.graphics.Rect;
import android.text.TextUtils;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.material.chip.Chip;
import com.yunpan.appmanage.R;
import java.util.ArrayList;
import y0.n;

/* loaded from: classes.dex */
public final class d extends f1.b {

    /* renamed from: q, reason: collision with root package name */
    public final /* synthetic */ Chip f2584q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Chip chip, Chip chip2) {
        super(chip2);
        this.f2584q = chip;
    }

    @Override // f1.b
    public final void l(ArrayList arrayList) {
        boolean z = false;
        arrayList.add(0);
        Rect rect = Chip.f3515y;
        Chip chip = this.f2584q;
        if (chip.c()) {
            f fVar = chip.f3516e;
            if (fVar != null && fVar.N) {
                z = true;
            }
            if (!z || chip.f3519h == null) {
                return;
            }
            arrayList.add(1);
        }
    }

    @Override // f1.b
    public final void o(int i10, n nVar) {
        AccessibilityNodeInfo accessibilityNodeInfo = nVar.f18549a;
        if (i10 != 1) {
            accessibilityNodeInfo.setContentDescription("");
            accessibilityNodeInfo.setBoundsInParent(Chip.f3515y);
            return;
        }
        Chip chip = this.f2584q;
        CharSequence closeIconContentDescription = chip.getCloseIconContentDescription();
        if (closeIconContentDescription != null) {
            accessibilityNodeInfo.setContentDescription(closeIconContentDescription);
        } else {
            CharSequence text = chip.getText();
            accessibilityNodeInfo.setContentDescription(chip.getContext().getString(R.string.mtrl_chip_close_icon_content_description, TextUtils.isEmpty(text) ? "" : text).trim());
        }
        accessibilityNodeInfo.setBoundsInParent(chip.getCloseIconTouchBoundsInt());
        nVar.b(y0.f.f18534e);
        accessibilityNodeInfo.setEnabled(chip.isEnabled());
    }
}
