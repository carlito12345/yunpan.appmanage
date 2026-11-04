package vb;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.GradientDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import com.yunpan.appmanage.R;
import db.w;
import db.x;
import io.github.rosemoe.sora.widget.CodeEditor;
import ua.g8;

/* loaded from: classes.dex */
public final class s extends ub.b implements View.OnClickListener {
    public int A;
    public int B;
    public boolean C;

    /* renamed from: p, reason: collision with root package name */
    public final CodeEditor f16766p;

    /* renamed from: q, reason: collision with root package name */
    public final ImageButton f16767q;
    public final ImageButton r;

    /* renamed from: s, reason: collision with root package name */
    public final ImageButton f16768s;

    /* renamed from: t, reason: collision with root package name */
    public final ImageButton f16769t;

    /* renamed from: v, reason: collision with root package name */
    public final ImageButton f16770v;

    /* renamed from: w, reason: collision with root package name */
    public final View f16771w;

    /* renamed from: x, reason: collision with root package name */
    public final tb.u f16772x;

    /* renamed from: y, reason: collision with root package name */
    public final db.p f16773y;
    public long z;

    public s(CodeEditor codeEditor) {
        super(codeEditor, 2);
        this.C = true;
        this.f16766p = codeEditor;
        this.f16772x = codeEditor.getEventHandler();
        db.p pVar = new db.p(codeEditor.f8717i);
        this.f16773y = pVar;
        View viewInflate = LayoutInflater.from(codeEditor.getContext()).inflate(R.layout.text_compose_panel, (ViewGroup) null);
        this.f16771w = viewInflate;
        ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.panel_btn_select_all);
        this.f16767q = imageButton;
        ImageButton imageButton2 = (ImageButton) viewInflate.findViewById(R.id.panel_btn_cut);
        this.f16769t = imageButton2;
        ImageButton imageButton3 = (ImageButton) viewInflate.findViewById(R.id.panel_btn_copy);
        this.f16768s = imageButton3;
        ImageButton imageButton4 = (ImageButton) viewInflate.findViewById(R.id.panel_btn_long_select);
        this.f16770v = imageButton4;
        ImageButton imageButton5 = (ImageButton) viewInflate.findViewById(R.id.panel_btn_paste);
        this.r = imageButton5;
        imageButton.setOnClickListener(this);
        imageButton2.setOnClickListener(this);
        imageButton3.setOnClickListener(this);
        imageButton5.setOnClickListener(this);
        imageButton4.setOnClickListener(this);
        e();
        this.f16091a.setContentView(viewInflate);
        int dpUnit = (int) (codeEditor.getDpUnit() * 48.0f);
        this.f16102m = 0;
        this.f16103n = dpUnit;
        a(false);
        this.f16091a.setAnimationStyle(R.style.text_action_popup_animation);
        final int i10 = 0;
        pVar.e(x.class, new db.n(this) { // from class: vb.q

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ s f16763b;

            {
                this.f16763b = this;
            }

            @Override // db.n
            public final void d(bi.a aVar) {
                int i11;
                boolean z;
                switch (i10) {
                    case 0:
                        x xVar = (x) aVar;
                        s sVar = this.f16763b;
                        tb.u uVar = sVar.f16772x;
                        if (!uVar.g() && (i11 = xVar.f4563e) != 9) {
                            if (!uVar.M) {
                                sVar.B = i11;
                                boolean zC = xVar.c();
                                CodeEditor codeEditor2 = sVar.f16766p;
                                int i12 = xVar.f4563e;
                                if (!zC && (i12 != 5 || codeEditor2.getText().f11067d != 0)) {
                                    mb.b bVar = xVar.f4561c;
                                    if (i12 == 3 && bVar.f11056a == sVar.A && !sVar.f16091a.isShowing() && codeEditor2.getText().f11068e <= 0 && codeEditor2.N()) {
                                        codeEditor2.Z(new g8(9, sVar));
                                        z = true;
                                    } else {
                                        sVar.b();
                                        z = false;
                                    }
                                    if (i12 == 3 && !z) {
                                        sVar.A = bVar.f11056a;
                                        break;
                                    } else {
                                        sVar.A = -1;
                                        break;
                                    }
                                } else {
                                    if (i12 != 6) {
                                        codeEditor2.Z(new g8(9, sVar));
                                    } else {
                                        sVar.b();
                                    }
                                    sVar.A = -1;
                                    break;
                                }
                            } else {
                                sVar.b();
                                break;
                            }
                        }
                        break;
                    case 1:
                        s sVar2 = this.f16763b;
                        long j10 = sVar2.z;
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        sVar2.z = jCurrentTimeMillis;
                        if (jCurrentTimeMillis - j10 < 200 && sVar2.B != 6) {
                            sVar2.g();
                            break;
                        }
                        break;
                    case 2:
                        db.r rVar = (db.r) aVar;
                        s sVar3 = this.f16763b;
                        sVar3.getClass();
                        if (rVar.f4555d) {
                            sVar3.g();
                        }
                        if (!((CodeEditor) rVar.f2819b).getCursor().a() && rVar.f4554c == 0 && !rVar.f4555d) {
                            sVar3.f();
                            sVar3.f16766p.Y(new r(sVar3, 0), 100L);
                            break;
                        }
                        break;
                    case 3:
                        db.u uVar2 = (db.u) aVar;
                        s sVar4 = this.f16763b;
                        CodeEditor codeEditor3 = sVar4.f16766p;
                        if (codeEditor3.getCursor().a() && sVar4.B == 6) {
                            int i13 = uVar2.f4542c.f11056a;
                            if (i13 >= codeEditor3.getCursor().f11081c.f11056a && i13 <= codeEditor3.getCursor().f11082d.f11056a) {
                                sVar4.B = 0;
                                sVar4.f();
                            }
                            uVar2.f2818a = 2;
                            break;
                        }
                        break;
                    case 4:
                        s sVar5 = this.f16763b;
                        sVar5.getClass();
                        if (!((db.g) aVar).f4536c) {
                            sVar5.b();
                            break;
                        }
                        break;
                    case 5:
                        s sVar6 = this.f16763b;
                        sVar6.C = false;
                        sVar6.f16773y.d(false);
                        sVar6.b();
                        break;
                    case 6:
                        this.f16763b.e();
                        break;
                    default:
                        this.f16763b.f();
                        break;
                }
            }
        });
        final int i11 = 1;
        pVar.e(w.class, new db.n(this) { // from class: vb.q

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ s f16763b;

            {
                this.f16763b = this;
            }

            @Override // db.n
            public final void d(bi.a aVar) {
                int i112;
                boolean z;
                switch (i11) {
                    case 0:
                        x xVar = (x) aVar;
                        s sVar = this.f16763b;
                        tb.u uVar = sVar.f16772x;
                        if (!uVar.g() && (i112 = xVar.f4563e) != 9) {
                            if (!uVar.M) {
                                sVar.B = i112;
                                boolean zC = xVar.c();
                                CodeEditor codeEditor2 = sVar.f16766p;
                                int i12 = xVar.f4563e;
                                if (!zC && (i12 != 5 || codeEditor2.getText().f11067d != 0)) {
                                    mb.b bVar = xVar.f4561c;
                                    if (i12 == 3 && bVar.f11056a == sVar.A && !sVar.f16091a.isShowing() && codeEditor2.getText().f11068e <= 0 && codeEditor2.N()) {
                                        codeEditor2.Z(new g8(9, sVar));
                                        z = true;
                                    } else {
                                        sVar.b();
                                        z = false;
                                    }
                                    if (i12 == 3 && !z) {
                                        sVar.A = bVar.f11056a;
                                        break;
                                    } else {
                                        sVar.A = -1;
                                        break;
                                    }
                                } else {
                                    if (i12 != 6) {
                                        codeEditor2.Z(new g8(9, sVar));
                                    } else {
                                        sVar.b();
                                    }
                                    sVar.A = -1;
                                    break;
                                }
                            } else {
                                sVar.b();
                                break;
                            }
                        }
                        break;
                    case 1:
                        s sVar2 = this.f16763b;
                        long j10 = sVar2.z;
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        sVar2.z = jCurrentTimeMillis;
                        if (jCurrentTimeMillis - j10 < 200 && sVar2.B != 6) {
                            sVar2.g();
                            break;
                        }
                        break;
                    case 2:
                        db.r rVar = (db.r) aVar;
                        s sVar3 = this.f16763b;
                        sVar3.getClass();
                        if (rVar.f4555d) {
                            sVar3.g();
                        }
                        if (!((CodeEditor) rVar.f2819b).getCursor().a() && rVar.f4554c == 0 && !rVar.f4555d) {
                            sVar3.f();
                            sVar3.f16766p.Y(new r(sVar3, 0), 100L);
                            break;
                        }
                        break;
                    case 3:
                        db.u uVar2 = (db.u) aVar;
                        s sVar4 = this.f16763b;
                        CodeEditor codeEditor3 = sVar4.f16766p;
                        if (codeEditor3.getCursor().a() && sVar4.B == 6) {
                            int i13 = uVar2.f4542c.f11056a;
                            if (i13 >= codeEditor3.getCursor().f11081c.f11056a && i13 <= codeEditor3.getCursor().f11082d.f11056a) {
                                sVar4.B = 0;
                                sVar4.f();
                            }
                            uVar2.f2818a = 2;
                            break;
                        }
                        break;
                    case 4:
                        s sVar5 = this.f16763b;
                        sVar5.getClass();
                        if (!((db.g) aVar).f4536c) {
                            sVar5.b();
                            break;
                        }
                        break;
                    case 5:
                        s sVar6 = this.f16763b;
                        sVar6.C = false;
                        sVar6.f16773y.d(false);
                        sVar6.b();
                        break;
                    case 6:
                        this.f16763b.e();
                        break;
                    default:
                        this.f16763b.f();
                        break;
                }
            }
        });
        final int i12 = 2;
        pVar.e(db.r.class, new db.n(this) { // from class: vb.q

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ s f16763b;

            {
                this.f16763b = this;
            }

            @Override // db.n
            public final void d(bi.a aVar) {
                int i112;
                boolean z;
                switch (i12) {
                    case 0:
                        x xVar = (x) aVar;
                        s sVar = this.f16763b;
                        tb.u uVar = sVar.f16772x;
                        if (!uVar.g() && (i112 = xVar.f4563e) != 9) {
                            if (!uVar.M) {
                                sVar.B = i112;
                                boolean zC = xVar.c();
                                CodeEditor codeEditor2 = sVar.f16766p;
                                int i122 = xVar.f4563e;
                                if (!zC && (i122 != 5 || codeEditor2.getText().f11067d != 0)) {
                                    mb.b bVar = xVar.f4561c;
                                    if (i122 == 3 && bVar.f11056a == sVar.A && !sVar.f16091a.isShowing() && codeEditor2.getText().f11068e <= 0 && codeEditor2.N()) {
                                        codeEditor2.Z(new g8(9, sVar));
                                        z = true;
                                    } else {
                                        sVar.b();
                                        z = false;
                                    }
                                    if (i122 == 3 && !z) {
                                        sVar.A = bVar.f11056a;
                                        break;
                                    } else {
                                        sVar.A = -1;
                                        break;
                                    }
                                } else {
                                    if (i122 != 6) {
                                        codeEditor2.Z(new g8(9, sVar));
                                    } else {
                                        sVar.b();
                                    }
                                    sVar.A = -1;
                                    break;
                                }
                            } else {
                                sVar.b();
                                break;
                            }
                        }
                        break;
                    case 1:
                        s sVar2 = this.f16763b;
                        long j10 = sVar2.z;
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        sVar2.z = jCurrentTimeMillis;
                        if (jCurrentTimeMillis - j10 < 200 && sVar2.B != 6) {
                            sVar2.g();
                            break;
                        }
                        break;
                    case 2:
                        db.r rVar = (db.r) aVar;
                        s sVar3 = this.f16763b;
                        sVar3.getClass();
                        if (rVar.f4555d) {
                            sVar3.g();
                        }
                        if (!((CodeEditor) rVar.f2819b).getCursor().a() && rVar.f4554c == 0 && !rVar.f4555d) {
                            sVar3.f();
                            sVar3.f16766p.Y(new r(sVar3, 0), 100L);
                            break;
                        }
                        break;
                    case 3:
                        db.u uVar2 = (db.u) aVar;
                        s sVar4 = this.f16763b;
                        CodeEditor codeEditor3 = sVar4.f16766p;
                        if (codeEditor3.getCursor().a() && sVar4.B == 6) {
                            int i13 = uVar2.f4542c.f11056a;
                            if (i13 >= codeEditor3.getCursor().f11081c.f11056a && i13 <= codeEditor3.getCursor().f11082d.f11056a) {
                                sVar4.B = 0;
                                sVar4.f();
                            }
                            uVar2.f2818a = 2;
                            break;
                        }
                        break;
                    case 4:
                        s sVar5 = this.f16763b;
                        sVar5.getClass();
                        if (!((db.g) aVar).f4536c) {
                            sVar5.b();
                            break;
                        }
                        break;
                    case 5:
                        s sVar6 = this.f16763b;
                        sVar6.C = false;
                        sVar6.f16773y.d(false);
                        sVar6.b();
                        break;
                    case 6:
                        this.f16763b.e();
                        break;
                    default:
                        this.f16763b.f();
                        break;
                }
            }
        });
        final int i13 = 3;
        pVar.e(db.u.class, new db.n(this) { // from class: vb.q

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ s f16763b;

            {
                this.f16763b = this;
            }

            @Override // db.n
            public final void d(bi.a aVar) {
                int i112;
                boolean z;
                switch (i13) {
                    case 0:
                        x xVar = (x) aVar;
                        s sVar = this.f16763b;
                        tb.u uVar = sVar.f16772x;
                        if (!uVar.g() && (i112 = xVar.f4563e) != 9) {
                            if (!uVar.M) {
                                sVar.B = i112;
                                boolean zC = xVar.c();
                                CodeEditor codeEditor2 = sVar.f16766p;
                                int i122 = xVar.f4563e;
                                if (!zC && (i122 != 5 || codeEditor2.getText().f11067d != 0)) {
                                    mb.b bVar = xVar.f4561c;
                                    if (i122 == 3 && bVar.f11056a == sVar.A && !sVar.f16091a.isShowing() && codeEditor2.getText().f11068e <= 0 && codeEditor2.N()) {
                                        codeEditor2.Z(new g8(9, sVar));
                                        z = true;
                                    } else {
                                        sVar.b();
                                        z = false;
                                    }
                                    if (i122 == 3 && !z) {
                                        sVar.A = bVar.f11056a;
                                        break;
                                    } else {
                                        sVar.A = -1;
                                        break;
                                    }
                                } else {
                                    if (i122 != 6) {
                                        codeEditor2.Z(new g8(9, sVar));
                                    } else {
                                        sVar.b();
                                    }
                                    sVar.A = -1;
                                    break;
                                }
                            } else {
                                sVar.b();
                                break;
                            }
                        }
                        break;
                    case 1:
                        s sVar2 = this.f16763b;
                        long j10 = sVar2.z;
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        sVar2.z = jCurrentTimeMillis;
                        if (jCurrentTimeMillis - j10 < 200 && sVar2.B != 6) {
                            sVar2.g();
                            break;
                        }
                        break;
                    case 2:
                        db.r rVar = (db.r) aVar;
                        s sVar3 = this.f16763b;
                        sVar3.getClass();
                        if (rVar.f4555d) {
                            sVar3.g();
                        }
                        if (!((CodeEditor) rVar.f2819b).getCursor().a() && rVar.f4554c == 0 && !rVar.f4555d) {
                            sVar3.f();
                            sVar3.f16766p.Y(new r(sVar3, 0), 100L);
                            break;
                        }
                        break;
                    case 3:
                        db.u uVar2 = (db.u) aVar;
                        s sVar4 = this.f16763b;
                        CodeEditor codeEditor3 = sVar4.f16766p;
                        if (codeEditor3.getCursor().a() && sVar4.B == 6) {
                            int i132 = uVar2.f4542c.f11056a;
                            if (i132 >= codeEditor3.getCursor().f11081c.f11056a && i132 <= codeEditor3.getCursor().f11082d.f11056a) {
                                sVar4.B = 0;
                                sVar4.f();
                            }
                            uVar2.f2818a = 2;
                            break;
                        }
                        break;
                    case 4:
                        s sVar5 = this.f16763b;
                        sVar5.getClass();
                        if (!((db.g) aVar).f4536c) {
                            sVar5.b();
                            break;
                        }
                        break;
                    case 5:
                        s sVar6 = this.f16763b;
                        sVar6.C = false;
                        sVar6.f16773y.d(false);
                        sVar6.b();
                        break;
                    case 6:
                        this.f16763b.e();
                        break;
                    default:
                        this.f16763b.f();
                        break;
                }
            }
        });
        final int i14 = 4;
        pVar.e(db.g.class, new db.n(this) { // from class: vb.q

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ s f16763b;

            {
                this.f16763b = this;
            }

            @Override // db.n
            public final void d(bi.a aVar) {
                int i112;
                boolean z;
                switch (i14) {
                    case 0:
                        x xVar = (x) aVar;
                        s sVar = this.f16763b;
                        tb.u uVar = sVar.f16772x;
                        if (!uVar.g() && (i112 = xVar.f4563e) != 9) {
                            if (!uVar.M) {
                                sVar.B = i112;
                                boolean zC = xVar.c();
                                CodeEditor codeEditor2 = sVar.f16766p;
                                int i122 = xVar.f4563e;
                                if (!zC && (i122 != 5 || codeEditor2.getText().f11067d != 0)) {
                                    mb.b bVar = xVar.f4561c;
                                    if (i122 == 3 && bVar.f11056a == sVar.A && !sVar.f16091a.isShowing() && codeEditor2.getText().f11068e <= 0 && codeEditor2.N()) {
                                        codeEditor2.Z(new g8(9, sVar));
                                        z = true;
                                    } else {
                                        sVar.b();
                                        z = false;
                                    }
                                    if (i122 == 3 && !z) {
                                        sVar.A = bVar.f11056a;
                                        break;
                                    } else {
                                        sVar.A = -1;
                                        break;
                                    }
                                } else {
                                    if (i122 != 6) {
                                        codeEditor2.Z(new g8(9, sVar));
                                    } else {
                                        sVar.b();
                                    }
                                    sVar.A = -1;
                                    break;
                                }
                            } else {
                                sVar.b();
                                break;
                            }
                        }
                        break;
                    case 1:
                        s sVar2 = this.f16763b;
                        long j10 = sVar2.z;
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        sVar2.z = jCurrentTimeMillis;
                        if (jCurrentTimeMillis - j10 < 200 && sVar2.B != 6) {
                            sVar2.g();
                            break;
                        }
                        break;
                    case 2:
                        db.r rVar = (db.r) aVar;
                        s sVar3 = this.f16763b;
                        sVar3.getClass();
                        if (rVar.f4555d) {
                            sVar3.g();
                        }
                        if (!((CodeEditor) rVar.f2819b).getCursor().a() && rVar.f4554c == 0 && !rVar.f4555d) {
                            sVar3.f();
                            sVar3.f16766p.Y(new r(sVar3, 0), 100L);
                            break;
                        }
                        break;
                    case 3:
                        db.u uVar2 = (db.u) aVar;
                        s sVar4 = this.f16763b;
                        CodeEditor codeEditor3 = sVar4.f16766p;
                        if (codeEditor3.getCursor().a() && sVar4.B == 6) {
                            int i132 = uVar2.f4542c.f11056a;
                            if (i132 >= codeEditor3.getCursor().f11081c.f11056a && i132 <= codeEditor3.getCursor().f11082d.f11056a) {
                                sVar4.B = 0;
                                sVar4.f();
                            }
                            uVar2.f2818a = 2;
                            break;
                        }
                        break;
                    case 4:
                        s sVar5 = this.f16763b;
                        sVar5.getClass();
                        if (!((db.g) aVar).f4536c) {
                            sVar5.b();
                            break;
                        }
                        break;
                    case 5:
                        s sVar6 = this.f16763b;
                        sVar6.C = false;
                        sVar6.f16773y.d(false);
                        sVar6.b();
                        break;
                    case 6:
                        this.f16763b.e();
                        break;
                    default:
                        this.f16763b.f();
                        break;
                }
            }
        });
        final int i15 = 5;
        pVar.e(db.l.class, new db.n(this) { // from class: vb.q

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ s f16763b;

            {
                this.f16763b = this;
            }

            @Override // db.n
            public final void d(bi.a aVar) {
                int i112;
                boolean z;
                switch (i15) {
                    case 0:
                        x xVar = (x) aVar;
                        s sVar = this.f16763b;
                        tb.u uVar = sVar.f16772x;
                        if (!uVar.g() && (i112 = xVar.f4563e) != 9) {
                            if (!uVar.M) {
                                sVar.B = i112;
                                boolean zC = xVar.c();
                                CodeEditor codeEditor2 = sVar.f16766p;
                                int i122 = xVar.f4563e;
                                if (!zC && (i122 != 5 || codeEditor2.getText().f11067d != 0)) {
                                    mb.b bVar = xVar.f4561c;
                                    if (i122 == 3 && bVar.f11056a == sVar.A && !sVar.f16091a.isShowing() && codeEditor2.getText().f11068e <= 0 && codeEditor2.N()) {
                                        codeEditor2.Z(new g8(9, sVar));
                                        z = true;
                                    } else {
                                        sVar.b();
                                        z = false;
                                    }
                                    if (i122 == 3 && !z) {
                                        sVar.A = bVar.f11056a;
                                        break;
                                    } else {
                                        sVar.A = -1;
                                        break;
                                    }
                                } else {
                                    if (i122 != 6) {
                                        codeEditor2.Z(new g8(9, sVar));
                                    } else {
                                        sVar.b();
                                    }
                                    sVar.A = -1;
                                    break;
                                }
                            } else {
                                sVar.b();
                                break;
                            }
                        }
                        break;
                    case 1:
                        s sVar2 = this.f16763b;
                        long j10 = sVar2.z;
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        sVar2.z = jCurrentTimeMillis;
                        if (jCurrentTimeMillis - j10 < 200 && sVar2.B != 6) {
                            sVar2.g();
                            break;
                        }
                        break;
                    case 2:
                        db.r rVar = (db.r) aVar;
                        s sVar3 = this.f16763b;
                        sVar3.getClass();
                        if (rVar.f4555d) {
                            sVar3.g();
                        }
                        if (!((CodeEditor) rVar.f2819b).getCursor().a() && rVar.f4554c == 0 && !rVar.f4555d) {
                            sVar3.f();
                            sVar3.f16766p.Y(new r(sVar3, 0), 100L);
                            break;
                        }
                        break;
                    case 3:
                        db.u uVar2 = (db.u) aVar;
                        s sVar4 = this.f16763b;
                        CodeEditor codeEditor3 = sVar4.f16766p;
                        if (codeEditor3.getCursor().a() && sVar4.B == 6) {
                            int i132 = uVar2.f4542c.f11056a;
                            if (i132 >= codeEditor3.getCursor().f11081c.f11056a && i132 <= codeEditor3.getCursor().f11082d.f11056a) {
                                sVar4.B = 0;
                                sVar4.f();
                            }
                            uVar2.f2818a = 2;
                            break;
                        }
                        break;
                    case 4:
                        s sVar5 = this.f16763b;
                        sVar5.getClass();
                        if (!((db.g) aVar).f4536c) {
                            sVar5.b();
                            break;
                        }
                        break;
                    case 5:
                        s sVar6 = this.f16763b;
                        sVar6.C = false;
                        sVar6.f16773y.d(false);
                        sVar6.b();
                        break;
                    case 6:
                        this.f16763b.e();
                        break;
                    default:
                        this.f16763b.f();
                        break;
                }
            }
        });
        final int i16 = 6;
        pVar.e(db.c.class, new db.n(this) { // from class: vb.q

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ s f16763b;

            {
                this.f16763b = this;
            }

            @Override // db.n
            public final void d(bi.a aVar) {
                int i112;
                boolean z;
                switch (i16) {
                    case 0:
                        x xVar = (x) aVar;
                        s sVar = this.f16763b;
                        tb.u uVar = sVar.f16772x;
                        if (!uVar.g() && (i112 = xVar.f4563e) != 9) {
                            if (!uVar.M) {
                                sVar.B = i112;
                                boolean zC = xVar.c();
                                CodeEditor codeEditor2 = sVar.f16766p;
                                int i122 = xVar.f4563e;
                                if (!zC && (i122 != 5 || codeEditor2.getText().f11067d != 0)) {
                                    mb.b bVar = xVar.f4561c;
                                    if (i122 == 3 && bVar.f11056a == sVar.A && !sVar.f16091a.isShowing() && codeEditor2.getText().f11068e <= 0 && codeEditor2.N()) {
                                        codeEditor2.Z(new g8(9, sVar));
                                        z = true;
                                    } else {
                                        sVar.b();
                                        z = false;
                                    }
                                    if (i122 == 3 && !z) {
                                        sVar.A = bVar.f11056a;
                                        break;
                                    } else {
                                        sVar.A = -1;
                                        break;
                                    }
                                } else {
                                    if (i122 != 6) {
                                        codeEditor2.Z(new g8(9, sVar));
                                    } else {
                                        sVar.b();
                                    }
                                    sVar.A = -1;
                                    break;
                                }
                            } else {
                                sVar.b();
                                break;
                            }
                        }
                        break;
                    case 1:
                        s sVar2 = this.f16763b;
                        long j10 = sVar2.z;
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        sVar2.z = jCurrentTimeMillis;
                        if (jCurrentTimeMillis - j10 < 200 && sVar2.B != 6) {
                            sVar2.g();
                            break;
                        }
                        break;
                    case 2:
                        db.r rVar = (db.r) aVar;
                        s sVar3 = this.f16763b;
                        sVar3.getClass();
                        if (rVar.f4555d) {
                            sVar3.g();
                        }
                        if (!((CodeEditor) rVar.f2819b).getCursor().a() && rVar.f4554c == 0 && !rVar.f4555d) {
                            sVar3.f();
                            sVar3.f16766p.Y(new r(sVar3, 0), 100L);
                            break;
                        }
                        break;
                    case 3:
                        db.u uVar2 = (db.u) aVar;
                        s sVar4 = this.f16763b;
                        CodeEditor codeEditor3 = sVar4.f16766p;
                        if (codeEditor3.getCursor().a() && sVar4.B == 6) {
                            int i132 = uVar2.f4542c.f11056a;
                            if (i132 >= codeEditor3.getCursor().f11081c.f11056a && i132 <= codeEditor3.getCursor().f11082d.f11056a) {
                                sVar4.B = 0;
                                sVar4.f();
                            }
                            uVar2.f2818a = 2;
                            break;
                        }
                        break;
                    case 4:
                        s sVar5 = this.f16763b;
                        sVar5.getClass();
                        if (!((db.g) aVar).f4536c) {
                            sVar5.b();
                            break;
                        }
                        break;
                    case 5:
                        s sVar6 = this.f16763b;
                        sVar6.C = false;
                        sVar6.f16773y.d(false);
                        sVar6.b();
                        break;
                    case 6:
                        this.f16763b.e();
                        break;
                    default:
                        this.f16763b.f();
                        break;
                }
            }
        });
        final int i17 = 7;
        pVar.e(db.f.class, new db.n(this) { // from class: vb.q

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ s f16763b;

            {
                this.f16763b = this;
            }

            @Override // db.n
            public final void d(bi.a aVar) {
                int i112;
                boolean z;
                switch (i17) {
                    case 0:
                        x xVar = (x) aVar;
                        s sVar = this.f16763b;
                        tb.u uVar = sVar.f16772x;
                        if (!uVar.g() && (i112 = xVar.f4563e) != 9) {
                            if (!uVar.M) {
                                sVar.B = i112;
                                boolean zC = xVar.c();
                                CodeEditor codeEditor2 = sVar.f16766p;
                                int i122 = xVar.f4563e;
                                if (!zC && (i122 != 5 || codeEditor2.getText().f11067d != 0)) {
                                    mb.b bVar = xVar.f4561c;
                                    if (i122 == 3 && bVar.f11056a == sVar.A && !sVar.f16091a.isShowing() && codeEditor2.getText().f11068e <= 0 && codeEditor2.N()) {
                                        codeEditor2.Z(new g8(9, sVar));
                                        z = true;
                                    } else {
                                        sVar.b();
                                        z = false;
                                    }
                                    if (i122 == 3 && !z) {
                                        sVar.A = bVar.f11056a;
                                        break;
                                    } else {
                                        sVar.A = -1;
                                        break;
                                    }
                                } else {
                                    if (i122 != 6) {
                                        codeEditor2.Z(new g8(9, sVar));
                                    } else {
                                        sVar.b();
                                    }
                                    sVar.A = -1;
                                    break;
                                }
                            } else {
                                sVar.b();
                                break;
                            }
                        }
                        break;
                    case 1:
                        s sVar2 = this.f16763b;
                        long j10 = sVar2.z;
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        sVar2.z = jCurrentTimeMillis;
                        if (jCurrentTimeMillis - j10 < 200 && sVar2.B != 6) {
                            sVar2.g();
                            break;
                        }
                        break;
                    case 2:
                        db.r rVar = (db.r) aVar;
                        s sVar3 = this.f16763b;
                        sVar3.getClass();
                        if (rVar.f4555d) {
                            sVar3.g();
                        }
                        if (!((CodeEditor) rVar.f2819b).getCursor().a() && rVar.f4554c == 0 && !rVar.f4555d) {
                            sVar3.f();
                            sVar3.f16766p.Y(new r(sVar3, 0), 100L);
                            break;
                        }
                        break;
                    case 3:
                        db.u uVar2 = (db.u) aVar;
                        s sVar4 = this.f16763b;
                        CodeEditor codeEditor3 = sVar4.f16766p;
                        if (codeEditor3.getCursor().a() && sVar4.B == 6) {
                            int i132 = uVar2.f4542c.f11056a;
                            if (i132 >= codeEditor3.getCursor().f11081c.f11056a && i132 <= codeEditor3.getCursor().f11082d.f11056a) {
                                sVar4.B = 0;
                                sVar4.f();
                            }
                            uVar2.f2818a = 2;
                            break;
                        }
                        break;
                    case 4:
                        s sVar5 = this.f16763b;
                        sVar5.getClass();
                        if (!((db.g) aVar).f4536c) {
                            sVar5.b();
                            break;
                        }
                        break;
                    case 5:
                        s sVar6 = this.f16763b;
                        sVar6.C = false;
                        sVar6.f16773y.d(false);
                        sVar6.b();
                        break;
                    case 6:
                        this.f16763b.e();
                        break;
                    default:
                        this.f16763b.f();
                        break;
                }
            }
        });
    }

    public static void d(ImageButton imageButton, int i10) {
        if (imageButton.getDrawable() == null) {
            return;
        }
        imageButton.setColorFilter(new PorterDuffColorFilter(i10, PorterDuff.Mode.SRC_ATOP));
    }

    public final void e() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        CodeEditor codeEditor = this.f16766p;
        gradientDrawable.setCornerRadius(codeEditor.getDpUnit() * 5.0f);
        gradientDrawable.setColor(codeEditor.getColorScheme().f19543a.get(65));
        this.f16771w.setBackground(gradientDrawable);
        int i10 = codeEditor.getColorScheme().f19543a.get(66);
        d(this.f16767q, i10);
        d(this.f16769t, i10);
        d(this.f16768s, i10);
        d(this.r, i10);
        d(this.f16770v, i10);
    }

    public final void f() {
        CodeEditor codeEditor = this.f16766p;
        boolean zHasPrimaryClip = codeEditor.f8710e1.hasPrimaryClip();
        ImageButton imageButton = this.r;
        imageButton.setEnabled(zHasPrimaryClip);
        int i10 = 8;
        this.f16768s.setVisibility(codeEditor.getCursor().a() ? 0 : 8);
        imageButton.setVisibility(codeEditor.N() ? 0 : 8);
        this.f16769t.setVisibility((codeEditor.getCursor().a() && codeEditor.N()) ? 0 : 8);
        if (!codeEditor.getCursor().a() && codeEditor.N()) {
            i10 = 0;
        }
        this.f16770v.setVisibility(i10);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(1000000, Integer.MIN_VALUE);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(100000, Integer.MIN_VALUE);
        View view = this.f16771w;
        view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        int iMin = Math.min(view.getMeasuredWidth(), (int) (codeEditor.getDpUnit() * 230.0f));
        int i11 = this.f16103n;
        this.f16102m = iMin;
        this.f16103n = i11;
        a(false);
        int iMax = Math.max(0, Math.min(codeEditor.getCursor().a() ? Math.min(h(codeEditor.getLeftHandleDescriptor().f2989a), h(codeEditor.getRightHandleDescriptor().f2989a)) : h(codeEditor.getInsertHandleDescriptor().f2989a), (codeEditor.getHeight() - this.f16103n) - 5));
        int iS = (int) (((((codeEditor.S() + codeEditor.f8719j.s(codeEditor.getCursor().f11082d.f11057b, codeEditor.getCursor().f11082d.f11058c)[1]) - codeEditor.getOffsetX()) + ((codeEditor.S() + codeEditor.f8719j.s(codeEditor.getCursor().f11081c.f11057b, codeEditor.getCursor().f11081c.f11058c)[1]) - codeEditor.getOffsetX())) / 2.0f) - (view.getMeasuredWidth() / 2.0f));
        CodeEditor codeEditor2 = this.f16092b;
        int offsetX = codeEditor2.getOffsetX() + iS;
        int offsetY = codeEditor2.getOffsetY() + iMax;
        this.f16101k = offsetX;
        this.l = offsetY;
        this.f16100j = codeEditor2.getOffsetY();
        this.f16099i = codeEditor2.getOffsetX();
        a(false);
        if (this.C) {
            codeEditor.getSnippetController().getClass();
            if (!codeEditor.hasFocus() || codeEditor.P() || this.f16091a.isShowing()) {
                return;
            }
            a(true);
        }
    }

    public final void g() {
        if (this.f16091a.isShowing()) {
            b();
            CodeEditor codeEditor = this.f16766p;
            if (codeEditor.getCursor().a()) {
                codeEditor.Y(new r(this, 1), 200L);
            }
        }
    }

    public final int h(RectF rectF) {
        int rowHeight = this.f16766p.getRowHeight();
        float f10 = rectF.top;
        float f11 = f10 - ((rowHeight * 3) / 2.0f);
        int i10 = this.f16103n;
        return f11 > ((float) i10) ? (int) ((f10 - (r2 / 2)) - i10) : (int) (rectF.bottom + (rowHeight / 2));
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int id2 = view.getId();
        CodeEditor codeEditor = this.f16766p;
        if (id2 == R.id.panel_btn_select_all) {
            codeEditor.d0();
            return;
        }
        if (id2 == R.id.panel_btn_cut) {
            if (codeEditor.getCursor().a()) {
                codeEditor.z();
            }
        } else if (id2 == R.id.panel_btn_paste) {
            codeEditor.X();
            codeEditor.g0(codeEditor.getCursor().f11082d.f11057b, codeEditor.getCursor().f11082d.f11058c);
        } else if (id2 == R.id.panel_btn_copy) {
            codeEditor.v(true);
            codeEditor.g0(codeEditor.getCursor().f11082d.f11057b, codeEditor.getCursor().f11082d.f11058c);
        } else if (id2 == R.id.panel_btn_long_select && codeEditor.N()) {
            if (codeEditor.g1.a()) {
                mb.b bVar = codeEditor.g1.f11081c;
                codeEditor.g0(bVar.f11057b, bVar.f11058c);
            }
            codeEditor.W0 = true;
            codeEditor.invalidate();
        }
        b();
    }
}
