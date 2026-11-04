package ha;

import android.widget.TextView;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class m1 implements ea {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7387a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TextView f7388b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ArrayList f7389c;

    public /* synthetic */ m1(TextView textView, ArrayList arrayList, int i10) {
        this.f7387a = i10;
        this.f7388b = textView;
        this.f7389c = arrayList;
    }

    @Override // ha.ea
    public final void b(int i10) {
        switch (this.f7387a) {
            case 0:
                this.f7388b.setText((CharSequence) this.f7389c.get(i10));
                break;
            case 1:
                this.f7388b.setText((CharSequence) this.f7389c.get(i10));
                break;
            case 2:
                this.f7388b.setText((CharSequence) this.f7389c.get(i10));
                break;
            default:
                this.f7388b.setText((CharSequence) this.f7389c.get(i10));
                break;
        }
    }
}
