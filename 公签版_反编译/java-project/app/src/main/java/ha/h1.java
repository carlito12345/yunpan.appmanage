package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatSeekBar;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class h1 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f7133g;

    /* renamed from: h, reason: collision with root package name */
    public final ea.c f7134h;

    /* renamed from: i, reason: collision with root package name */
    public AppCompatSeekBar f7135i;

    /* renamed from: j, reason: collision with root package name */
    public final String f7136j;

    /* renamed from: k, reason: collision with root package name */
    public final int f7137k;
    public final int l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h1(Activity activity, Context context, String str, int i10, int i11, ea.c cVar, int i12) {
        super(activity, context, R.layout.dialog_seek_add);
        this.f7133g = i12;
        switch (i12) {
            case 1:
                super(activity, context, R.layout.dialog_seek);
                this.f7134h = cVar;
                this.f7136j = str;
                this.f7137k = i10;
                this.l = i11;
                break;
            default:
                this.f7134h = cVar;
                this.f7136j = str;
                this.f7137k = i10;
                this.l = i11;
                break;
        }
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        switch (this.f7133g) {
            case 0:
                super.onCreate(bundle);
                ((TextView) findViewById(R.id.v_title)).setText(this.f7136j);
                AppCompatSeekBar appCompatSeekBar = (AppCompatSeekBar) findViewById(R.id.v_seek);
                this.f7135i = appCompatSeekBar;
                appCompatSeekBar.setProgress(this.l);
                if (Build.VERSION.SDK_INT >= 26) {
                    this.f7135i.setMin(0);
                }
                this.f7135i.setMax(this.f7137k);
                findViewById(R.id.v_btn_yes).setOnClickListener(new com.google.android.material.datepicker.l(this, 4));
                break;
            default:
                super.onCreate(bundle);
                ((TextView) findViewById(R.id.v_title)).setText(this.f7136j);
                AppCompatSeekBar appCompatSeekBar2 = (AppCompatSeekBar) findViewById(R.id.v_seek);
                this.f7135i = appCompatSeekBar2;
                appCompatSeekBar2.setOnSeekBarChangeListener(new v(2, this));
                this.f7135i.setProgress(this.l);
                if (Build.VERSION.SDK_INT >= 26) {
                    this.f7135i.setMin(0);
                }
                this.f7135i.setMax(this.f7137k);
                break;
        }
    }
}
