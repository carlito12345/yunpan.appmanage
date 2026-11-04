package w;

import android.R;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class z2 {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f17338a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f17339b;

    /* renamed from: c, reason: collision with root package name */
    public final ImageView f17340c;

    /* renamed from: d, reason: collision with root package name */
    public final ImageView f17341d;

    /* renamed from: e, reason: collision with root package name */
    public final ImageView f17342e;

    public z2(View view) {
        this.f17338a = (TextView) view.findViewById(R.id.text1);
        this.f17339b = (TextView) view.findViewById(R.id.text2);
        this.f17340c = (ImageView) view.findViewById(R.id.icon1);
        this.f17341d = (ImageView) view.findViewById(R.id.icon2);
        this.f17342e = (ImageView) view.findViewById(com.yunpan.appmanage.R.id.edit_query);
    }
}
