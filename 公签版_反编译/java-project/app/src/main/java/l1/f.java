package l1;

import androidx.fragment.app.Fragment;

/* loaded from: classes.dex */
public final class f extends g {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(Fragment fragment, int i10) {
        super(fragment, "Attempting to get target request code from fragment " + fragment, 1);
        switch (i10) {
            case 1:
                ue.d.e(fragment, "fragment");
                super(fragment, "Attempting to get target fragment from fragment " + fragment, 1);
                break;
            default:
                ue.d.e(fragment, "fragment");
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(Fragment fragment, Fragment fragment2, int i10) {
        super(fragment, "Attempting to set target fragment " + fragment2 + " with request code " + i10 + " for fragment " + fragment, 1);
        ue.d.e(fragment, "fragment");
        ue.d.e(fragment2, "targetFragment");
    }
}
