package vb;

import a2.w0;
import android.R;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.Toast;
import db.w;
import db.x;
import db.y;
import io.github.rosemoe.sora.widget.CodeEditor;
import java.lang.ref.WeakReference;
import ua.t6;

/* loaded from: classes.dex */
public final class k extends ub.b {
    public final db.p A;
    public mb.b B;
    public long C;
    public long D;
    public boolean E;
    public boolean F;
    public final boolean G;

    /* renamed from: p, reason: collision with root package name */
    public final CodeEditor f16739p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f16740q;
    public long r;

    /* renamed from: s, reason: collision with root package name */
    public int f16741s;

    /* renamed from: t, reason: collision with root package name */
    public j f16742t;

    /* renamed from: v, reason: collision with root package name */
    public dg.a f16743v;

    /* renamed from: w, reason: collision with root package name */
    public WeakReference f16744w;

    /* renamed from: x, reason: collision with root package name */
    public int f16745x;

    /* renamed from: y, reason: collision with root package name */
    public final a f16746y;
    public final w0 z;

    public k(CodeEditor codeEditor) {
        super(codeEditor, 4);
        this.f16740q = false;
        this.f16745x = -1;
        this.C = 0L;
        this.D = -1L;
        this.E = true;
        this.F = false;
        this.G = true;
        this.f16739p = codeEditor;
        a aVar = new a();
        this.f16746y = aVar;
        final w0 w0Var = new w0(16, false);
        this.z = w0Var;
        w0Var.f349e = this;
        final Context context = codeEditor.getContext();
        LinearLayout linearLayout = new LinearLayout(context);
        w0Var.f348d = linearLayout;
        w0Var.f346b = new ListView(context);
        w0Var.f347c = new ProgressBar(context, null, R.attr.progressBarStyleHorizontal);
        linearLayout.setOrientation(1);
        ((LinearLayout) w0Var.f348d).setLayoutTransition(null);
        ((ListView) w0Var.f346b).setLayoutTransition(null);
        linearLayout.addView((ProgressBar) w0Var.f347c, new LinearLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 20.0f, context.getResources().getDisplayMetrics())));
        linearLayout.addView((ListView) w0Var.f346b, new LinearLayout.LayoutParams(-1, -1));
        ((ProgressBar) w0Var.f347c).setIndeterminate(true);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) ((ProgressBar) w0Var.f347c).getLayoutParams();
        layoutParams.topMargin = (int) TypedValue.applyDimension(1, -8.0f, context.getResources().getDisplayMetrics());
        layoutParams.bottomMargin = (int) TypedValue.applyDimension(1, -8.0f, context.getResources().getDisplayMetrics());
        layoutParams.leftMargin = (int) TypedValue.applyDimension(1, 4.0f, context.getResources().getDisplayMetrics());
        layoutParams.rightMargin = (int) TypedValue.applyDimension(1, 4.0f, context.getResources().getDisplayMetrics());
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(TypedValue.applyDimension(1, 8.0f, context.getResources().getDisplayMetrics()));
        linearLayout.setBackground(gradientDrawable);
        LinearLayout linearLayout2 = (LinearLayout) w0Var.f348d;
        linearLayout2.setOutlineProvider(new d());
        linearLayout2.setClipToOutline(true);
        ((ListView) w0Var.f346b).setDividerHeight(0);
        ((ProgressBar) w0Var.f347c).setVisibility(0);
        ((ListView) w0Var.f346b).setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: vb.c
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
                w0 w0Var2 = w0Var;
                w0Var2.getClass();
                try {
                    ((k) w0Var2.f349e).i(i10);
                } catch (Exception e7) {
                    e7.printStackTrace(System.err);
                    Toast.makeText(context, e7.toString(), 0).show();
                }
            }
        });
        this.f16091a.setContentView(linearLayout);
        d();
        ((ListView) this.z.f346b).setAdapter((ListView) aVar);
        db.p pVar = new db.p(codeEditor.f8717i);
        this.A = pVar;
        final int i10 = 0;
        pVar.f(db.c.class, new db.q(this) { // from class: vb.i

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ k f16733b;

            {
                this.f16733b = this;
            }

            @Override // db.q
            public final void a(bi.a aVar2, ag.h hVar) {
                int i11;
                switch (i10) {
                    case 0:
                        this.f16733b.d();
                        break;
                    case 1:
                        db.d dVar = (db.d) aVar2;
                        k kVar = this.f16733b;
                        kVar.getClass();
                        if (!dVar.f4534f && kVar.E) {
                            boolean z = true;
                            int i12 = dVar.f4531c;
                            if (i12 != 1) {
                                PopupWindow popupWindow = kVar.f16091a;
                                CodeEditor codeEditor2 = kVar.f16739p;
                                mb.b bVar = dVar.f4532d;
                                mb.b bVar2 = dVar.f4533e;
                                if (i12 == 2) {
                                    if ((codeEditor2.f8714h.f14933b.a() && !codeEditor2.getProps().f14914e) || bVar2.f11058c == 0 || bVar.f11057b != bVar2.f11057b) {
                                        kVar.f();
                                        z = false;
                                    }
                                    kVar.k(popupWindow.isShowing());
                                } else if (i12 != 3 || codeEditor2.f8714h.f14933b.a() || !popupWindow.isShowing()) {
                                    z = false;
                                } else if (bVar.f11057b == bVar2.f11057b && bVar.f11058c == bVar2.f11058c - 1) {
                                    kVar.k(true);
                                } else {
                                    kVar.f();
                                    z = false;
                                }
                                if (z) {
                                    kVar.h();
                                    break;
                                }
                            }
                        }
                        kVar.f();
                        break;
                    case 2:
                        k kVar2 = this.f16733b;
                        kVar2.getClass();
                        int i13 = ((w) aVar2).f4560g;
                        if (i13 != 1) {
                            if (i13 == 2) {
                                float dpUnit = kVar2.f16739p.getDpUnit() * 2000.0f;
                                if (Math.abs(0.0f) >= dpUnit || Math.abs(0.0f) >= dpUnit) {
                                    kVar2.f();
                                    break;
                                }
                            }
                        } else {
                            kVar2.k(false);
                            break;
                        }
                        break;
                    case 3:
                        db.i iVar = (db.i) aVar2;
                        k kVar3 = this.f16733b;
                        kVar3.getClass();
                        if (iVar.f4539e == 2 && !iVar.f4541g) {
                            KeyEvent keyEvent = iVar.f4538d;
                            if ((keyEvent.getMetaState() & 4096) == 0 && !iVar.f4540f && kVar3.f16091a.isShowing()) {
                                int keyCode = keyEvent.getKeyCode();
                                if (keyCode == 19) {
                                    ListView listView = (ListView) kVar3.z.f346b;
                                    int i14 = kVar3.f16745x - 1;
                                    if (i14 >= 0) {
                                        kVar3.f16745x = i14;
                                        ((a) listView.getAdapter()).notifyDataSetChanged();
                                        int i15 = kVar3.f16745x;
                                        if (i15 != -1) {
                                            w0 w0Var2 = kVar3.z;
                                            ((ListView) w0Var2.f346b).post(new com.yunpan.appmanage.carsdk.a(w0Var2, i15, (int) TypedValue.applyDimension(1, 45.0f, kVar3.f16746y.f16721a.f16739p.getContext().getResources().getDisplayMetrics()), 2));
                                        }
                                    }
                                    iVar.f4537c = Boolean.TRUE;
                                    iVar.f2818a = 3;
                                    break;
                                } else if (keyCode == 20) {
                                    kVar3.g();
                                    iVar.f4537c = Boolean.TRUE;
                                    iVar.f2818a = 3;
                                    break;
                                } else if (keyCode == 61) {
                                    if (kVar3.f16745x == -1) {
                                        kVar3.g();
                                    }
                                    if (kVar3.i(kVar3.f16745x)) {
                                        iVar.f4537c = Boolean.TRUE;
                                        iVar.f2818a = 3;
                                        break;
                                    }
                                } else if (keyCode == 66) {
                                    if (kVar3.f16745x == -1 && kVar3.f16739p.getProps().M) {
                                        kVar3.g();
                                    }
                                    if (kVar3.i(kVar3.f16745x)) {
                                        iVar.f4537c = Boolean.TRUE;
                                        iVar.f2818a = 3;
                                        break;
                                    }
                                } else if (keyCode == 92 || keyCode == 93) {
                                    kVar3.f();
                                    break;
                                }
                            }
                        }
                        break;
                    case 4:
                        x xVar = (x) aVar2;
                        k kVar4 = this.f16733b;
                        kVar4.getClass();
                        if (!xVar.c() && (i11 = xVar.f4563e) != 4 && i11 != 2 && i11 != 3 && i11 != 6 && i11 != 0) {
                            mb.b bVar3 = kVar4.B;
                            mb.b bVar4 = xVar.f4561c;
                            if (bVar3 != null) {
                                if (i11 == 7) {
                                    if (bVar3.f11057b == bVar4.f11057b) {
                                        if (kVar4.f16091a.isShowing() && Math.abs(kVar4.B.f11058c - bVar4.f11058c) <= 1) {
                                            if (bVar4.f11058c <= 0) {
                                                kVar4.f();
                                                break;
                                            } else {
                                                kVar4.h();
                                                break;
                                            }
                                        }
                                    } else {
                                        kVar4.f();
                                        break;
                                    }
                                }
                            } else {
                                kVar4.B = bVar4.a();
                                break;
                            }
                        } else {
                            kVar4.f();
                            break;
                        }
                        break;
                    default:
                        k kVar5 = this.f16733b;
                        kVar5.E = false;
                        kVar5.A.d(false);
                        kVar5.e();
                        kVar5.f();
                        break;
                }
            }
        });
        final int i11 = 1;
        pVar.f(db.d.class, new db.q(this) { // from class: vb.i

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ k f16733b;

            {
                this.f16733b = this;
            }

            @Override // db.q
            public final void a(bi.a aVar2, ag.h hVar) {
                int i112;
                switch (i11) {
                    case 0:
                        this.f16733b.d();
                        break;
                    case 1:
                        db.d dVar = (db.d) aVar2;
                        k kVar = this.f16733b;
                        kVar.getClass();
                        if (!dVar.f4534f && kVar.E) {
                            boolean z = true;
                            int i12 = dVar.f4531c;
                            if (i12 != 1) {
                                PopupWindow popupWindow = kVar.f16091a;
                                CodeEditor codeEditor2 = kVar.f16739p;
                                mb.b bVar = dVar.f4532d;
                                mb.b bVar2 = dVar.f4533e;
                                if (i12 == 2) {
                                    if ((codeEditor2.f8714h.f14933b.a() && !codeEditor2.getProps().f14914e) || bVar2.f11058c == 0 || bVar.f11057b != bVar2.f11057b) {
                                        kVar.f();
                                        z = false;
                                    }
                                    kVar.k(popupWindow.isShowing());
                                } else if (i12 != 3 || codeEditor2.f8714h.f14933b.a() || !popupWindow.isShowing()) {
                                    z = false;
                                } else if (bVar.f11057b == bVar2.f11057b && bVar.f11058c == bVar2.f11058c - 1) {
                                    kVar.k(true);
                                } else {
                                    kVar.f();
                                    z = false;
                                }
                                if (z) {
                                    kVar.h();
                                    break;
                                }
                            }
                        }
                        kVar.f();
                        break;
                    case 2:
                        k kVar2 = this.f16733b;
                        kVar2.getClass();
                        int i13 = ((w) aVar2).f4560g;
                        if (i13 != 1) {
                            if (i13 == 2) {
                                float dpUnit = kVar2.f16739p.getDpUnit() * 2000.0f;
                                if (Math.abs(0.0f) >= dpUnit || Math.abs(0.0f) >= dpUnit) {
                                    kVar2.f();
                                    break;
                                }
                            }
                        } else {
                            kVar2.k(false);
                            break;
                        }
                        break;
                    case 3:
                        db.i iVar = (db.i) aVar2;
                        k kVar3 = this.f16733b;
                        kVar3.getClass();
                        if (iVar.f4539e == 2 && !iVar.f4541g) {
                            KeyEvent keyEvent = iVar.f4538d;
                            if ((keyEvent.getMetaState() & 4096) == 0 && !iVar.f4540f && kVar3.f16091a.isShowing()) {
                                int keyCode = keyEvent.getKeyCode();
                                if (keyCode == 19) {
                                    ListView listView = (ListView) kVar3.z.f346b;
                                    int i14 = kVar3.f16745x - 1;
                                    if (i14 >= 0) {
                                        kVar3.f16745x = i14;
                                        ((a) listView.getAdapter()).notifyDataSetChanged();
                                        int i15 = kVar3.f16745x;
                                        if (i15 != -1) {
                                            w0 w0Var2 = kVar3.z;
                                            ((ListView) w0Var2.f346b).post(new com.yunpan.appmanage.carsdk.a(w0Var2, i15, (int) TypedValue.applyDimension(1, 45.0f, kVar3.f16746y.f16721a.f16739p.getContext().getResources().getDisplayMetrics()), 2));
                                        }
                                    }
                                    iVar.f4537c = Boolean.TRUE;
                                    iVar.f2818a = 3;
                                    break;
                                } else if (keyCode == 20) {
                                    kVar3.g();
                                    iVar.f4537c = Boolean.TRUE;
                                    iVar.f2818a = 3;
                                    break;
                                } else if (keyCode == 61) {
                                    if (kVar3.f16745x == -1) {
                                        kVar3.g();
                                    }
                                    if (kVar3.i(kVar3.f16745x)) {
                                        iVar.f4537c = Boolean.TRUE;
                                        iVar.f2818a = 3;
                                        break;
                                    }
                                } else if (keyCode == 66) {
                                    if (kVar3.f16745x == -1 && kVar3.f16739p.getProps().M) {
                                        kVar3.g();
                                    }
                                    if (kVar3.i(kVar3.f16745x)) {
                                        iVar.f4537c = Boolean.TRUE;
                                        iVar.f2818a = 3;
                                        break;
                                    }
                                } else if (keyCode == 92 || keyCode == 93) {
                                    kVar3.f();
                                    break;
                                }
                            }
                        }
                        break;
                    case 4:
                        x xVar = (x) aVar2;
                        k kVar4 = this.f16733b;
                        kVar4.getClass();
                        if (!xVar.c() && (i112 = xVar.f4563e) != 4 && i112 != 2 && i112 != 3 && i112 != 6 && i112 != 0) {
                            mb.b bVar3 = kVar4.B;
                            mb.b bVar4 = xVar.f4561c;
                            if (bVar3 != null) {
                                if (i112 == 7) {
                                    if (bVar3.f11057b == bVar4.f11057b) {
                                        if (kVar4.f16091a.isShowing() && Math.abs(kVar4.B.f11058c - bVar4.f11058c) <= 1) {
                                            if (bVar4.f11058c <= 0) {
                                                kVar4.f();
                                                break;
                                            } else {
                                                kVar4.h();
                                                break;
                                            }
                                        }
                                    } else {
                                        kVar4.f();
                                        break;
                                    }
                                }
                            } else {
                                kVar4.B = bVar4.a();
                                break;
                            }
                        } else {
                            kVar4.f();
                            break;
                        }
                        break;
                    default:
                        k kVar5 = this.f16733b;
                        kVar5.E = false;
                        kVar5.A.d(false);
                        kVar5.e();
                        kVar5.f();
                        break;
                }
            }
        });
        final int i12 = 2;
        pVar.f(w.class, new db.q(this) { // from class: vb.i

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ k f16733b;

            {
                this.f16733b = this;
            }

            @Override // db.q
            public final void a(bi.a aVar2, ag.h hVar) {
                int i112;
                switch (i12) {
                    case 0:
                        this.f16733b.d();
                        break;
                    case 1:
                        db.d dVar = (db.d) aVar2;
                        k kVar = this.f16733b;
                        kVar.getClass();
                        if (!dVar.f4534f && kVar.E) {
                            boolean z = true;
                            int i122 = dVar.f4531c;
                            if (i122 != 1) {
                                PopupWindow popupWindow = kVar.f16091a;
                                CodeEditor codeEditor2 = kVar.f16739p;
                                mb.b bVar = dVar.f4532d;
                                mb.b bVar2 = dVar.f4533e;
                                if (i122 == 2) {
                                    if ((codeEditor2.f8714h.f14933b.a() && !codeEditor2.getProps().f14914e) || bVar2.f11058c == 0 || bVar.f11057b != bVar2.f11057b) {
                                        kVar.f();
                                        z = false;
                                    }
                                    kVar.k(popupWindow.isShowing());
                                } else if (i122 != 3 || codeEditor2.f8714h.f14933b.a() || !popupWindow.isShowing()) {
                                    z = false;
                                } else if (bVar.f11057b == bVar2.f11057b && bVar.f11058c == bVar2.f11058c - 1) {
                                    kVar.k(true);
                                } else {
                                    kVar.f();
                                    z = false;
                                }
                                if (z) {
                                    kVar.h();
                                    break;
                                }
                            }
                        }
                        kVar.f();
                        break;
                    case 2:
                        k kVar2 = this.f16733b;
                        kVar2.getClass();
                        int i13 = ((w) aVar2).f4560g;
                        if (i13 != 1) {
                            if (i13 == 2) {
                                float dpUnit = kVar2.f16739p.getDpUnit() * 2000.0f;
                                if (Math.abs(0.0f) >= dpUnit || Math.abs(0.0f) >= dpUnit) {
                                    kVar2.f();
                                    break;
                                }
                            }
                        } else {
                            kVar2.k(false);
                            break;
                        }
                        break;
                    case 3:
                        db.i iVar = (db.i) aVar2;
                        k kVar3 = this.f16733b;
                        kVar3.getClass();
                        if (iVar.f4539e == 2 && !iVar.f4541g) {
                            KeyEvent keyEvent = iVar.f4538d;
                            if ((keyEvent.getMetaState() & 4096) == 0 && !iVar.f4540f && kVar3.f16091a.isShowing()) {
                                int keyCode = keyEvent.getKeyCode();
                                if (keyCode == 19) {
                                    ListView listView = (ListView) kVar3.z.f346b;
                                    int i14 = kVar3.f16745x - 1;
                                    if (i14 >= 0) {
                                        kVar3.f16745x = i14;
                                        ((a) listView.getAdapter()).notifyDataSetChanged();
                                        int i15 = kVar3.f16745x;
                                        if (i15 != -1) {
                                            w0 w0Var2 = kVar3.z;
                                            ((ListView) w0Var2.f346b).post(new com.yunpan.appmanage.carsdk.a(w0Var2, i15, (int) TypedValue.applyDimension(1, 45.0f, kVar3.f16746y.f16721a.f16739p.getContext().getResources().getDisplayMetrics()), 2));
                                        }
                                    }
                                    iVar.f4537c = Boolean.TRUE;
                                    iVar.f2818a = 3;
                                    break;
                                } else if (keyCode == 20) {
                                    kVar3.g();
                                    iVar.f4537c = Boolean.TRUE;
                                    iVar.f2818a = 3;
                                    break;
                                } else if (keyCode == 61) {
                                    if (kVar3.f16745x == -1) {
                                        kVar3.g();
                                    }
                                    if (kVar3.i(kVar3.f16745x)) {
                                        iVar.f4537c = Boolean.TRUE;
                                        iVar.f2818a = 3;
                                        break;
                                    }
                                } else if (keyCode == 66) {
                                    if (kVar3.f16745x == -1 && kVar3.f16739p.getProps().M) {
                                        kVar3.g();
                                    }
                                    if (kVar3.i(kVar3.f16745x)) {
                                        iVar.f4537c = Boolean.TRUE;
                                        iVar.f2818a = 3;
                                        break;
                                    }
                                } else if (keyCode == 92 || keyCode == 93) {
                                    kVar3.f();
                                    break;
                                }
                            }
                        }
                        break;
                    case 4:
                        x xVar = (x) aVar2;
                        k kVar4 = this.f16733b;
                        kVar4.getClass();
                        if (!xVar.c() && (i112 = xVar.f4563e) != 4 && i112 != 2 && i112 != 3 && i112 != 6 && i112 != 0) {
                            mb.b bVar3 = kVar4.B;
                            mb.b bVar4 = xVar.f4561c;
                            if (bVar3 != null) {
                                if (i112 == 7) {
                                    if (bVar3.f11057b == bVar4.f11057b) {
                                        if (kVar4.f16091a.isShowing() && Math.abs(kVar4.B.f11058c - bVar4.f11058c) <= 1) {
                                            if (bVar4.f11058c <= 0) {
                                                kVar4.f();
                                                break;
                                            } else {
                                                kVar4.h();
                                                break;
                                            }
                                        }
                                    } else {
                                        kVar4.f();
                                        break;
                                    }
                                }
                            } else {
                                kVar4.B = bVar4.a();
                                break;
                            }
                        } else {
                            kVar4.f();
                            break;
                        }
                        break;
                    default:
                        k kVar5 = this.f16733b;
                        kVar5.E = false;
                        kVar5.A.d(false);
                        kVar5.e();
                        kVar5.f();
                        break;
                }
            }
        });
        final int i13 = 3;
        pVar.f(db.i.class, new db.q(this) { // from class: vb.i

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ k f16733b;

            {
                this.f16733b = this;
            }

            @Override // db.q
            public final void a(bi.a aVar2, ag.h hVar) {
                int i112;
                switch (i13) {
                    case 0:
                        this.f16733b.d();
                        break;
                    case 1:
                        db.d dVar = (db.d) aVar2;
                        k kVar = this.f16733b;
                        kVar.getClass();
                        if (!dVar.f4534f && kVar.E) {
                            boolean z = true;
                            int i122 = dVar.f4531c;
                            if (i122 != 1) {
                                PopupWindow popupWindow = kVar.f16091a;
                                CodeEditor codeEditor2 = kVar.f16739p;
                                mb.b bVar = dVar.f4532d;
                                mb.b bVar2 = dVar.f4533e;
                                if (i122 == 2) {
                                    if ((codeEditor2.f8714h.f14933b.a() && !codeEditor2.getProps().f14914e) || bVar2.f11058c == 0 || bVar.f11057b != bVar2.f11057b) {
                                        kVar.f();
                                        z = false;
                                    }
                                    kVar.k(popupWindow.isShowing());
                                } else if (i122 != 3 || codeEditor2.f8714h.f14933b.a() || !popupWindow.isShowing()) {
                                    z = false;
                                } else if (bVar.f11057b == bVar2.f11057b && bVar.f11058c == bVar2.f11058c - 1) {
                                    kVar.k(true);
                                } else {
                                    kVar.f();
                                    z = false;
                                }
                                if (z) {
                                    kVar.h();
                                    break;
                                }
                            }
                        }
                        kVar.f();
                        break;
                    case 2:
                        k kVar2 = this.f16733b;
                        kVar2.getClass();
                        int i132 = ((w) aVar2).f4560g;
                        if (i132 != 1) {
                            if (i132 == 2) {
                                float dpUnit = kVar2.f16739p.getDpUnit() * 2000.0f;
                                if (Math.abs(0.0f) >= dpUnit || Math.abs(0.0f) >= dpUnit) {
                                    kVar2.f();
                                    break;
                                }
                            }
                        } else {
                            kVar2.k(false);
                            break;
                        }
                        break;
                    case 3:
                        db.i iVar = (db.i) aVar2;
                        k kVar3 = this.f16733b;
                        kVar3.getClass();
                        if (iVar.f4539e == 2 && !iVar.f4541g) {
                            KeyEvent keyEvent = iVar.f4538d;
                            if ((keyEvent.getMetaState() & 4096) == 0 && !iVar.f4540f && kVar3.f16091a.isShowing()) {
                                int keyCode = keyEvent.getKeyCode();
                                if (keyCode == 19) {
                                    ListView listView = (ListView) kVar3.z.f346b;
                                    int i14 = kVar3.f16745x - 1;
                                    if (i14 >= 0) {
                                        kVar3.f16745x = i14;
                                        ((a) listView.getAdapter()).notifyDataSetChanged();
                                        int i15 = kVar3.f16745x;
                                        if (i15 != -1) {
                                            w0 w0Var2 = kVar3.z;
                                            ((ListView) w0Var2.f346b).post(new com.yunpan.appmanage.carsdk.a(w0Var2, i15, (int) TypedValue.applyDimension(1, 45.0f, kVar3.f16746y.f16721a.f16739p.getContext().getResources().getDisplayMetrics()), 2));
                                        }
                                    }
                                    iVar.f4537c = Boolean.TRUE;
                                    iVar.f2818a = 3;
                                    break;
                                } else if (keyCode == 20) {
                                    kVar3.g();
                                    iVar.f4537c = Boolean.TRUE;
                                    iVar.f2818a = 3;
                                    break;
                                } else if (keyCode == 61) {
                                    if (kVar3.f16745x == -1) {
                                        kVar3.g();
                                    }
                                    if (kVar3.i(kVar3.f16745x)) {
                                        iVar.f4537c = Boolean.TRUE;
                                        iVar.f2818a = 3;
                                        break;
                                    }
                                } else if (keyCode == 66) {
                                    if (kVar3.f16745x == -1 && kVar3.f16739p.getProps().M) {
                                        kVar3.g();
                                    }
                                    if (kVar3.i(kVar3.f16745x)) {
                                        iVar.f4537c = Boolean.TRUE;
                                        iVar.f2818a = 3;
                                        break;
                                    }
                                } else if (keyCode == 92 || keyCode == 93) {
                                    kVar3.f();
                                    break;
                                }
                            }
                        }
                        break;
                    case 4:
                        x xVar = (x) aVar2;
                        k kVar4 = this.f16733b;
                        kVar4.getClass();
                        if (!xVar.c() && (i112 = xVar.f4563e) != 4 && i112 != 2 && i112 != 3 && i112 != 6 && i112 != 0) {
                            mb.b bVar3 = kVar4.B;
                            mb.b bVar4 = xVar.f4561c;
                            if (bVar3 != null) {
                                if (i112 == 7) {
                                    if (bVar3.f11057b == bVar4.f11057b) {
                                        if (kVar4.f16091a.isShowing() && Math.abs(kVar4.B.f11058c - bVar4.f11058c) <= 1) {
                                            if (bVar4.f11058c <= 0) {
                                                kVar4.f();
                                                break;
                                            } else {
                                                kVar4.h();
                                                break;
                                            }
                                        }
                                    } else {
                                        kVar4.f();
                                        break;
                                    }
                                }
                            } else {
                                kVar4.B = bVar4.a();
                                break;
                            }
                        } else {
                            kVar4.f();
                            break;
                        }
                        break;
                    default:
                        k kVar5 = this.f16733b;
                        kVar5.E = false;
                        kVar5.A.d(false);
                        kVar5.e();
                        kVar5.f();
                        break;
                }
            }
        });
        final int i14 = 4;
        pVar.f(x.class, new db.q(this) { // from class: vb.i

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ k f16733b;

            {
                this.f16733b = this;
            }

            @Override // db.q
            public final void a(bi.a aVar2, ag.h hVar) {
                int i112;
                switch (i14) {
                    case 0:
                        this.f16733b.d();
                        break;
                    case 1:
                        db.d dVar = (db.d) aVar2;
                        k kVar = this.f16733b;
                        kVar.getClass();
                        if (!dVar.f4534f && kVar.E) {
                            boolean z = true;
                            int i122 = dVar.f4531c;
                            if (i122 != 1) {
                                PopupWindow popupWindow = kVar.f16091a;
                                CodeEditor codeEditor2 = kVar.f16739p;
                                mb.b bVar = dVar.f4532d;
                                mb.b bVar2 = dVar.f4533e;
                                if (i122 == 2) {
                                    if ((codeEditor2.f8714h.f14933b.a() && !codeEditor2.getProps().f14914e) || bVar2.f11058c == 0 || bVar.f11057b != bVar2.f11057b) {
                                        kVar.f();
                                        z = false;
                                    }
                                    kVar.k(popupWindow.isShowing());
                                } else if (i122 != 3 || codeEditor2.f8714h.f14933b.a() || !popupWindow.isShowing()) {
                                    z = false;
                                } else if (bVar.f11057b == bVar2.f11057b && bVar.f11058c == bVar2.f11058c - 1) {
                                    kVar.k(true);
                                } else {
                                    kVar.f();
                                    z = false;
                                }
                                if (z) {
                                    kVar.h();
                                    break;
                                }
                            }
                        }
                        kVar.f();
                        break;
                    case 2:
                        k kVar2 = this.f16733b;
                        kVar2.getClass();
                        int i132 = ((w) aVar2).f4560g;
                        if (i132 != 1) {
                            if (i132 == 2) {
                                float dpUnit = kVar2.f16739p.getDpUnit() * 2000.0f;
                                if (Math.abs(0.0f) >= dpUnit || Math.abs(0.0f) >= dpUnit) {
                                    kVar2.f();
                                    break;
                                }
                            }
                        } else {
                            kVar2.k(false);
                            break;
                        }
                        break;
                    case 3:
                        db.i iVar = (db.i) aVar2;
                        k kVar3 = this.f16733b;
                        kVar3.getClass();
                        if (iVar.f4539e == 2 && !iVar.f4541g) {
                            KeyEvent keyEvent = iVar.f4538d;
                            if ((keyEvent.getMetaState() & 4096) == 0 && !iVar.f4540f && kVar3.f16091a.isShowing()) {
                                int keyCode = keyEvent.getKeyCode();
                                if (keyCode == 19) {
                                    ListView listView = (ListView) kVar3.z.f346b;
                                    int i142 = kVar3.f16745x - 1;
                                    if (i142 >= 0) {
                                        kVar3.f16745x = i142;
                                        ((a) listView.getAdapter()).notifyDataSetChanged();
                                        int i15 = kVar3.f16745x;
                                        if (i15 != -1) {
                                            w0 w0Var2 = kVar3.z;
                                            ((ListView) w0Var2.f346b).post(new com.yunpan.appmanage.carsdk.a(w0Var2, i15, (int) TypedValue.applyDimension(1, 45.0f, kVar3.f16746y.f16721a.f16739p.getContext().getResources().getDisplayMetrics()), 2));
                                        }
                                    }
                                    iVar.f4537c = Boolean.TRUE;
                                    iVar.f2818a = 3;
                                    break;
                                } else if (keyCode == 20) {
                                    kVar3.g();
                                    iVar.f4537c = Boolean.TRUE;
                                    iVar.f2818a = 3;
                                    break;
                                } else if (keyCode == 61) {
                                    if (kVar3.f16745x == -1) {
                                        kVar3.g();
                                    }
                                    if (kVar3.i(kVar3.f16745x)) {
                                        iVar.f4537c = Boolean.TRUE;
                                        iVar.f2818a = 3;
                                        break;
                                    }
                                } else if (keyCode == 66) {
                                    if (kVar3.f16745x == -1 && kVar3.f16739p.getProps().M) {
                                        kVar3.g();
                                    }
                                    if (kVar3.i(kVar3.f16745x)) {
                                        iVar.f4537c = Boolean.TRUE;
                                        iVar.f2818a = 3;
                                        break;
                                    }
                                } else if (keyCode == 92 || keyCode == 93) {
                                    kVar3.f();
                                    break;
                                }
                            }
                        }
                        break;
                    case 4:
                        x xVar = (x) aVar2;
                        k kVar4 = this.f16733b;
                        kVar4.getClass();
                        if (!xVar.c() && (i112 = xVar.f4563e) != 4 && i112 != 2 && i112 != 3 && i112 != 6 && i112 != 0) {
                            mb.b bVar3 = kVar4.B;
                            mb.b bVar4 = xVar.f4561c;
                            if (bVar3 != null) {
                                if (i112 == 7) {
                                    if (bVar3.f11057b == bVar4.f11057b) {
                                        if (kVar4.f16091a.isShowing() && Math.abs(kVar4.B.f11058c - bVar4.f11058c) <= 1) {
                                            if (bVar4.f11058c <= 0) {
                                                kVar4.f();
                                                break;
                                            } else {
                                                kVar4.h();
                                                break;
                                            }
                                        }
                                    } else {
                                        kVar4.f();
                                        break;
                                    }
                                }
                            } else {
                                kVar4.B = bVar4.a();
                                break;
                            }
                        } else {
                            kVar4.f();
                            break;
                        }
                        break;
                    default:
                        k kVar5 = this.f16733b;
                        kVar5.E = false;
                        kVar5.A.d(false);
                        kVar5.e();
                        kVar5.f();
                        break;
                }
            }
        });
        final int i15 = 5;
        pVar.f(db.l.class, new db.q(this) { // from class: vb.i

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ k f16733b;

            {
                this.f16733b = this;
            }

            @Override // db.q
            public final void a(bi.a aVar2, ag.h hVar) {
                int i112;
                switch (i15) {
                    case 0:
                        this.f16733b.d();
                        break;
                    case 1:
                        db.d dVar = (db.d) aVar2;
                        k kVar = this.f16733b;
                        kVar.getClass();
                        if (!dVar.f4534f && kVar.E) {
                            boolean z = true;
                            int i122 = dVar.f4531c;
                            if (i122 != 1) {
                                PopupWindow popupWindow = kVar.f16091a;
                                CodeEditor codeEditor2 = kVar.f16739p;
                                mb.b bVar = dVar.f4532d;
                                mb.b bVar2 = dVar.f4533e;
                                if (i122 == 2) {
                                    if ((codeEditor2.f8714h.f14933b.a() && !codeEditor2.getProps().f14914e) || bVar2.f11058c == 0 || bVar.f11057b != bVar2.f11057b) {
                                        kVar.f();
                                        z = false;
                                    }
                                    kVar.k(popupWindow.isShowing());
                                } else if (i122 != 3 || codeEditor2.f8714h.f14933b.a() || !popupWindow.isShowing()) {
                                    z = false;
                                } else if (bVar.f11057b == bVar2.f11057b && bVar.f11058c == bVar2.f11058c - 1) {
                                    kVar.k(true);
                                } else {
                                    kVar.f();
                                    z = false;
                                }
                                if (z) {
                                    kVar.h();
                                    break;
                                }
                            }
                        }
                        kVar.f();
                        break;
                    case 2:
                        k kVar2 = this.f16733b;
                        kVar2.getClass();
                        int i132 = ((w) aVar2).f4560g;
                        if (i132 != 1) {
                            if (i132 == 2) {
                                float dpUnit = kVar2.f16739p.getDpUnit() * 2000.0f;
                                if (Math.abs(0.0f) >= dpUnit || Math.abs(0.0f) >= dpUnit) {
                                    kVar2.f();
                                    break;
                                }
                            }
                        } else {
                            kVar2.k(false);
                            break;
                        }
                        break;
                    case 3:
                        db.i iVar = (db.i) aVar2;
                        k kVar3 = this.f16733b;
                        kVar3.getClass();
                        if (iVar.f4539e == 2 && !iVar.f4541g) {
                            KeyEvent keyEvent = iVar.f4538d;
                            if ((keyEvent.getMetaState() & 4096) == 0 && !iVar.f4540f && kVar3.f16091a.isShowing()) {
                                int keyCode = keyEvent.getKeyCode();
                                if (keyCode == 19) {
                                    ListView listView = (ListView) kVar3.z.f346b;
                                    int i142 = kVar3.f16745x - 1;
                                    if (i142 >= 0) {
                                        kVar3.f16745x = i142;
                                        ((a) listView.getAdapter()).notifyDataSetChanged();
                                        int i152 = kVar3.f16745x;
                                        if (i152 != -1) {
                                            w0 w0Var2 = kVar3.z;
                                            ((ListView) w0Var2.f346b).post(new com.yunpan.appmanage.carsdk.a(w0Var2, i152, (int) TypedValue.applyDimension(1, 45.0f, kVar3.f16746y.f16721a.f16739p.getContext().getResources().getDisplayMetrics()), 2));
                                        }
                                    }
                                    iVar.f4537c = Boolean.TRUE;
                                    iVar.f2818a = 3;
                                    break;
                                } else if (keyCode == 20) {
                                    kVar3.g();
                                    iVar.f4537c = Boolean.TRUE;
                                    iVar.f2818a = 3;
                                    break;
                                } else if (keyCode == 61) {
                                    if (kVar3.f16745x == -1) {
                                        kVar3.g();
                                    }
                                    if (kVar3.i(kVar3.f16745x)) {
                                        iVar.f4537c = Boolean.TRUE;
                                        iVar.f2818a = 3;
                                        break;
                                    }
                                } else if (keyCode == 66) {
                                    if (kVar3.f16745x == -1 && kVar3.f16739p.getProps().M) {
                                        kVar3.g();
                                    }
                                    if (kVar3.i(kVar3.f16745x)) {
                                        iVar.f4537c = Boolean.TRUE;
                                        iVar.f2818a = 3;
                                        break;
                                    }
                                } else if (keyCode == 92 || keyCode == 93) {
                                    kVar3.f();
                                    break;
                                }
                            }
                        }
                        break;
                    case 4:
                        x xVar = (x) aVar2;
                        k kVar4 = this.f16733b;
                        kVar4.getClass();
                        if (!xVar.c() && (i112 = xVar.f4563e) != 4 && i112 != 2 && i112 != 3 && i112 != 6 && i112 != 0) {
                            mb.b bVar3 = kVar4.B;
                            mb.b bVar4 = xVar.f4561c;
                            if (bVar3 != null) {
                                if (i112 == 7) {
                                    if (bVar3.f11057b == bVar4.f11057b) {
                                        if (kVar4.f16091a.isShowing() && Math.abs(kVar4.B.f11058c - bVar4.f11058c) <= 1) {
                                            if (bVar4.f11058c <= 0) {
                                                kVar4.f();
                                                break;
                                            } else {
                                                kVar4.h();
                                                break;
                                            }
                                        }
                                    } else {
                                        kVar4.f();
                                        break;
                                    }
                                }
                            } else {
                                kVar4.B = bVar4.a();
                                break;
                            }
                        } else {
                            kVar4.f();
                            break;
                        }
                        break;
                    default:
                        k kVar5 = this.f16733b;
                        kVar5.E = false;
                        kVar5.A.d(false);
                        kVar5.e();
                        kVar5.f();
                        break;
                }
            }
        });
        j(db.h.class, new t6(7));
        j(db.b.class, null);
        j(db.j.class, null);
        j(db.g.class, new t6(8));
        j(y.class, new t6(9));
    }

    public final void d() {
        zb.a colorScheme = this.f16739p.getColorScheme();
        w0 w0Var = this.z;
        w0Var.getClass();
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(TypedValue.applyDimension(1, 8.0f, ((k) w0Var.f349e).f16739p.getContext().getResources().getDisplayMetrics()));
        gradientDrawable.setStroke((int) TypedValue.applyDimension(1, 1.0f, ((k) w0Var.f349e).f16739p.getContext().getResources().getDisplayMetrics()), colorScheme.f19543a.get(20));
        gradientDrawable.setColor(colorScheme.f19543a.get(19));
        ((LinearLayout) w0Var.f348d).setBackground(gradientDrawable);
        LinearLayout linearLayout = (LinearLayout) w0Var.f348d;
        linearLayout.setOutlineProvider(new d());
        linearLayout.setClipToOutline(true);
    }

    public final void e() {
        j jVar = this.f16742t;
        if (jVar != null && jVar.isAlive()) {
            jVar.f16737d = true;
            jVar.f16734a.getClass();
            jVar.interrupt();
            jVar.f16735b.f4637a = true;
            jVar.f16736c = -1L;
        }
        this.f16742t = null;
    }

    public final void f() {
        b();
        e();
        this.D = System.currentTimeMillis();
    }

    public final void g() {
        ListView listView = (ListView) this.z.f346b;
        if (this.f16745x + 1 >= listView.getAdapter().getCount()) {
            return;
        }
        this.f16745x++;
        ((a) listView.getAdapter()).notifyDataSetChanged();
        int i10 = this.f16745x;
        if (i10 != -1) {
            w0 w0Var = this.z;
            ((ListView) w0Var.f346b).post(new com.yunpan.appmanage.carsdk.a(w0Var, i10, (int) TypedValue.applyDimension(1, 45.0f, this.f16746y.f16721a.f16739p.getContext().getResources().getDisplayMetrics()), 2));
        }
    }

    public final void h() {
        if (this.f16740q || !this.E) {
            return;
        }
        CodeEditor codeEditor = this.f16739p;
        if (codeEditor.getText().m().a()) {
            f();
            return;
        }
        codeEditor.getCursor().f11081c.a();
        codeEditor.getStyles();
        if (System.nanoTime() - this.r < codeEditor.getProps().f14920k) {
            f();
            this.r = System.nanoTime();
            return;
        }
        e();
        this.r = System.nanoTime();
        this.f16745x = -1;
        Handler handler = codeEditor.getHandler();
        g gVar = new g(this, 0);
        codeEditor.getEditorLanguage().getClass();
        this.f16743v = new dg.a(handler, gVar);
        this.f16742t = new j(this, this.r, this.f16743v);
        this.F = true;
        codeEditor.Y(new g(this, 2), 50L);
        this.f16742t.start();
    }

    public final boolean i(int i10) {
        if (i10 == -1) {
            return false;
        }
        if (((a) ((ListView) this.z.f346b).getAdapter()).f16722b.get(i10) != null) {
            throw new ClassCastException();
        }
        CodeEditor codeEditor = this.f16739p;
        mb.j cursor = codeEditor.getCursor();
        j jVar = this.f16742t;
        if (cursor.a() || jVar == null) {
            f();
            return true;
        }
        this.f16740q = true;
        codeEditor.S++;
        codeEditor.getText().b();
        codeEditor.c0();
        try {
            codeEditor.getText();
            throw null;
        } catch (Throwable th2) {
            codeEditor.getText().k();
            int i11 = codeEditor.S - 1;
            codeEditor.S = i11;
            if (i11 < 0) {
                codeEditor.S = 0;
            }
            this.f16740q = false;
            throw th2;
        }
    }

    public final void j(Class cls, final te.l lVar) {
        this.A.f(cls, new db.q() { // from class: vb.h
            @Override // db.q
            public final void a(bi.a aVar, ag.h hVar) {
                k kVar = this.f16730a;
                te.l lVar2 = lVar;
                if (lVar2 != null) {
                    kVar.getClass();
                    if (!((Boolean) lVar2.a(aVar)).booleanValue()) {
                        return;
                    }
                }
                kVar.f();
            }
        });
    }

    public final void k(boolean z) {
        int iMin;
        CodeEditor codeEditor = this.f16739p;
        float dpUnit = codeEditor.getDpUnit();
        mb.j cursor = codeEditor.getCursor();
        float fO0 = (20.0f * dpUnit) + codeEditor.o0();
        int rowHeight = codeEditor.getRowHeight();
        wb.d layout = codeEditor.getLayout();
        mb.b bVar = cursor.f11082d;
        float f10 = rowHeight;
        float offsetY = (f10 / 2.0f) + (((wb.c) layout).s(bVar.f11057b, bVar.f11058c)[0] - codeEditor.getOffsetY());
        float height = codeEditor.getHeight() - offsetY;
        float f11 = 200.0f * dpUnit;
        if (height > f11) {
            height = f11;
        } else {
            float f12 = 100.0f * dpUnit;
            if (height < f12 && z) {
                float f13 = 0.0f;
                while (height < f12 && codeEditor.getOffsetY() + f13 + f10 <= codeEditor.getScrollMaxY()) {
                    height += f10;
                    offsetY -= f10;
                    f13 += f10;
                }
                codeEditor.getScroller().b(codeEditor.getOffsetX(), codeEditor.getOffsetY(), 0, (int) f13, 0);
            }
        }
        if (codeEditor.getWidth() < 500.0f * dpUnit) {
            iMin = (codeEditor.getWidth() * 7) / 8;
            fO0 = (codeEditor.getWidth() / 8.0f) / 2.0f;
        } else {
            iMin = (int) Math.min(dpUnit * 300.0f, codeEditor.getWidth() / 2.0f);
        }
        int i10 = this.f16103n;
        this.f16741s = (int) height;
        int offsetX = codeEditor.getOffsetX() + ((int) fO0);
        int offsetY2 = codeEditor.getOffsetY();
        this.f16101k = offsetX;
        this.l = offsetY2 + ((int) offsetY);
        CodeEditor codeEditor2 = this.f16092b;
        this.f16100j = codeEditor2.getOffsetY();
        this.f16099i = codeEditor2.getOffsetX();
        a(false);
        this.f16102m = iMin;
        this.f16103n = i10;
        a(false);
    }
}
