package x9;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.KeyCodeBean;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class g extends c6.g {

    /* renamed from: h, reason: collision with root package name */
    public final Activity f18228h;

    /* renamed from: i, reason: collision with root package name */
    public final Context f18229i;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f18230j;

    /* renamed from: k, reason: collision with root package name */
    public final f f18231k;
    public final f l;

    public g(Activity activity, Context context) {
        ArrayList arrayList = new ArrayList();
        this.f18230j = arrayList;
        this.f18231k = new f(this, 0);
        this.l = new f(this, 1);
        this.f18228h = activity;
        this.f18229i = context;
        arrayList.add(new KeyCodeBean(1, "putStringExtra"));
        arrayList.add(new KeyCodeBean(2, "putIntExtra"));
        arrayList.add(new KeyCodeBean(3, "putLongExtra"));
        arrayList.add(new KeyCodeBean(4, "putFloatExtra"));
        arrayList.add(new KeyCodeBean(5, "putDoubleExtra"));
        arrayList.add(new KeyCodeBean(6, "putBooleanExtra"));
    }

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_keymap_broadcast_add1, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        z7.s sVar = (z7.s) obj;
        aVar.c(R.id.v_type_name, sVar.o("extraName").i());
        EditText editText = (EditText) aVar.a(R.id.v_edit_key);
        try {
            editText.removeTextChangedListener((ea.a) editText.getTag());
        } catch (Exception unused) {
        }
        final int i11 = 0;
        ea.a aVar2 = new ea.a(i10, editText, new ea.d(this) { // from class: x9.e

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ g f18222b;

            {
                this.f18222b = this;
            }

            @Override // ea.d
            public final void a(int i12, EditText editText2) {
                switch (i11) {
                    case 0:
                        ((z7.s) this.f18222b.t(i12)).m("name", editText2.getText().toString());
                        break;
                    default:
                        ((z7.s) this.f18222b.t(i12)).m("value", editText2.getText().toString());
                        break;
                }
            }
        });
        editText.setTag(aVar2);
        editText.addTextChangedListener(aVar2);
        editText.setText(sVar.o("name").i());
        EditText editText2 = (EditText) aVar.a(R.id.v_edit_value);
        try {
            editText2.removeTextChangedListener((ea.a) editText2.getTag());
        } catch (Exception unused2) {
        }
        final int i12 = 1;
        ea.a aVar3 = new ea.a(i10, editText2, new ea.d(this) { // from class: x9.e

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ g f18222b;

            {
                this.f18222b = this;
            }

            @Override // ea.d
            public final void a(int i122, EditText editText22) {
                switch (i12) {
                    case 0:
                        ((z7.s) this.f18222b.t(i122)).m("name", editText22.getText().toString());
                        break;
                    default:
                        ((z7.s) this.f18222b.t(i122)).m("value", editText22.getText().toString());
                        break;
                }
            }
        });
        editText2.setTag(aVar3);
        editText2.addTextChangedListener(aVar3);
        editText2.setText(sVar.o("value").i());
        ImageView imageView = (ImageView) aVar.a(R.id.v_delect);
        imageView.setTag(Integer.valueOf(i10));
        imageView.setOnClickListener(this.f18231k);
        ConstraintLayout constraintLayout = (ConstraintLayout) aVar.a(R.id.v_type);
        constraintLayout.setTag(Integer.valueOf(i10));
        constraintLayout.setOnClickListener(this.l);
    }
}
