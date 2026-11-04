package x9;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import ha.uc;
import java.io.File;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class i1 extends androidx.recyclerview.widget.c1 {

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f18240d;

    /* renamed from: e, reason: collision with root package name */
    public final h5.m f18241e;

    /* renamed from: f, reason: collision with root package name */
    public final String f18242f;

    /* renamed from: g, reason: collision with root package name */
    public final String f18243g;

    public i1(h5.m mVar, String str, String str2) {
        super(new s5.c(24));
        this.f18240d = new ArrayList();
        this.f18241e = mVar;
        this.f18242f = str;
        this.f18243g = str2;
    }

    @Override // androidx.recyclerview.widget.m1
    public final int b() {
        return this.f18240d.size();
    }

    @Override // androidx.recyclerview.widget.m1
    public final void g(RecyclerView.ViewHolder viewHolder, int i10) {
        h1 h1Var = (h1) viewHolder;
        final w3 w3Var = (w3) this.f18240d.get(i10);
        TextView textView = (TextView) h1Var.itemView.findViewById(R.id.v_name);
        String str = w3Var.f18365b;
        String str2 = this.f18242f;
        textView.setText(str.substring(str2.length()));
        TextView textView2 = (TextView) h1Var.itemView.findViewById(R.id.v_size);
        StringBuilder sb2 = new StringBuilder("原大小：");
        StringBuilder sb3 = new StringBuilder();
        sb3.append(this.f18243g);
        sb2.append(new File(ta.q.m(str2, w3Var.f18365b, sb3)).length());
        sb2.append("     新大小：");
        sb2.append(w3Var.f18367d);
        textView2.setText(sb2.toString());
        TextView textView3 = (TextView) h1Var.itemView.findViewById(R.id.v_cover);
        final int i11 = 0;
        textView3.setOnClickListener(new View.OnClickListener(this) { // from class: x9.g1

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ i1 f18233b;

            {
                this.f18233b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i11) {
                    case 0:
                        i1 i1Var = this.f18233b;
                        i1Var.getClass();
                        w3 w3Var2 = w3Var;
                        w3Var2.f18373j = "";
                        ha.y4 y4Var = (ha.y4) i1Var.f18241e.f6611b;
                        if (y4Var.f8085i.f18240d.size() == 1) {
                            y4Var.findViewById(R.id.v_btn_cover).requestFocus();
                        }
                        i1 i1Var2 = y4Var.f8085i;
                        ArrayList arrayList = i1Var2.f18240d;
                        int iIndexOf = arrayList.indexOf(w3Var2);
                        arrayList.remove(iIndexOf);
                        i1Var2.f2188a.f(iIndexOf, 1);
                        if (y4Var.f8085i.f18240d.size() == 0) {
                            y4Var.d();
                            y4Var.f8084h.a();
                            break;
                        }
                        break;
                    default:
                        i1 i1Var3 = this.f18233b;
                        i1Var3.getClass();
                        w3 w3Var3 = w3Var;
                        w3Var3.f18373j = "跳过";
                        ha.y4 y4Var2 = (ha.y4) i1Var3.f18241e.f6611b;
                        if (y4Var2.f8085i.f18240d.size() == 1) {
                            y4Var2.findViewById(R.id.v_btn_cover).requestFocus();
                        }
                        i1 i1Var4 = y4Var2.f8085i;
                        ArrayList arrayList2 = i1Var4.f18240d;
                        int iIndexOf2 = arrayList2.indexOf(w3Var3);
                        arrayList2.remove(iIndexOf2);
                        i1Var4.f2188a.f(iIndexOf2, 1);
                        if (y4Var2.f8085i.f18240d.size() == 0) {
                            y4Var2.d();
                            y4Var2.f8084h.a();
                            break;
                        }
                        break;
                }
            }
        });
        TextView textView4 = (TextView) h1Var.itemView.findViewById(R.id.v_skip);
        final int i12 = 1;
        textView4.setOnClickListener(new View.OnClickListener(this) { // from class: x9.g1

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ i1 f18233b;

            {
                this.f18233b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i12) {
                    case 0:
                        i1 i1Var = this.f18233b;
                        i1Var.getClass();
                        w3 w3Var2 = w3Var;
                        w3Var2.f18373j = "";
                        ha.y4 y4Var = (ha.y4) i1Var.f18241e.f6611b;
                        if (y4Var.f8085i.f18240d.size() == 1) {
                            y4Var.findViewById(R.id.v_btn_cover).requestFocus();
                        }
                        i1 i1Var2 = y4Var.f8085i;
                        ArrayList arrayList = i1Var2.f18240d;
                        int iIndexOf = arrayList.indexOf(w3Var2);
                        arrayList.remove(iIndexOf);
                        i1Var2.f2188a.f(iIndexOf, 1);
                        if (y4Var.f8085i.f18240d.size() == 0) {
                            y4Var.d();
                            y4Var.f8084h.a();
                            break;
                        }
                        break;
                    default:
                        i1 i1Var3 = this.f18233b;
                        i1Var3.getClass();
                        w3 w3Var3 = w3Var;
                        w3Var3.f18373j = "跳过";
                        ha.y4 y4Var2 = (ha.y4) i1Var3.f18241e.f6611b;
                        if (y4Var2.f8085i.f18240d.size() == 1) {
                            y4Var2.findViewById(R.id.v_btn_cover).requestFocus();
                        }
                        i1 i1Var4 = y4Var2.f8085i;
                        ArrayList arrayList2 = i1Var4.f18240d;
                        int iIndexOf2 = arrayList2.indexOf(w3Var3);
                        arrayList2.remove(iIndexOf2);
                        i1Var4.f2188a.f(iIndexOf2, 1);
                        if (y4Var2.f8085i.f18240d.size() == 0) {
                            y4Var2.d();
                            y4Var2.f8084h.a();
                            break;
                        }
                        break;
                }
            }
        });
        textView3.setOnKeyListener(new uc(textView4, 1));
        textView4.setOnKeyListener(new uc(textView3, 2));
    }

    @Override // androidx.recyclerview.widget.m1
    public final RecyclerView.ViewHolder i(int i10, ViewGroup viewGroup) {
        return new h1(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_copy, viewGroup, false));
    }
}
