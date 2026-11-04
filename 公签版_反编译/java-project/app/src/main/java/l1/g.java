package l1;

import androidx.fragment.app.Fragment;

/* loaded from: classes.dex */
public abstract class g extends h {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(Fragment fragment, String str, int i10) {
        super(fragment, str);
        switch (i10) {
            case 1:
                ue.d.e(fragment, "fragment");
                super(fragment, str);
                break;
            default:
                ue.d.e(fragment, "fragment");
                break;
        }
    }
}
