package l1;

import androidx.fragment.app.Fragment;

/* loaded from: classes.dex */
public final class e extends g {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(Fragment fragment, int i10) {
        super(fragment, "Attempting to get retain instance for fragment " + fragment, 0);
        switch (i10) {
            case 1:
                ue.d.e(fragment, "fragment");
                super(fragment, "Attempting to set retain instance for fragment " + fragment, 0);
                break;
            default:
                ue.d.e(fragment, "fragment");
                break;
        }
    }
}
