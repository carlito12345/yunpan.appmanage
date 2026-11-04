package vb;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.carsdk.k0;
import db.a0;
import db.w;
import db.x;
import io.github.rosemoe.sora.widget.CodeEditor;
import java.util.ArrayList;
import ua.g6;
import ua.g8;

/* loaded from: classes.dex */
public final class p extends ub.b {

    /* renamed from: p, reason: collision with root package name */
    public final db.p f16757p;

    /* renamed from: q, reason: collision with root package name */
    public final View f16758q;
    public final k0 r;

    /* renamed from: s, reason: collision with root package name */
    public final int f16759s;

    /* renamed from: t, reason: collision with root package name */
    public mb.b f16760t;

    /* renamed from: v, reason: collision with root package name */
    public ie.b f16761v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(CodeEditor codeEditor) {
        super(codeEditor, 6);
        ue.d.e(codeEditor, "editor");
        db.p pVar = new db.p(codeEditor.f8717i);
        this.f16757p = pVar;
        this.r = new k0(1);
        this.f16759s = (int) (codeEditor.getDpUnit() * CarSettingID.Recv.PCS_EVENT_RECORDST);
        new ArrayList();
        Float fValueOf = Float.valueOf(0.0f);
        this.f16761v = new ie.b(fValueOf, fValueOf);
        final k0 k0Var = this.r;
        ue.d.e(k0Var, "value");
        if (this.f16758q == null || this.r != k0Var) {
            this.r = k0Var;
            k0Var.f3846b = this;
            LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f16092b.getContext());
            ue.d.d(layoutInflaterFrom, "from(...)");
            p pVar2 = (p) k0Var.f3846b;
            if (pVar2 == null) {
                ue.d.g("window");
                throw null;
            }
            Context context = pVar2.f16092b.getContext();
            View viewInflate = layoutInflaterFrom.inflate(R.layout.diagnostic_tooltip_window, (ViewGroup) null);
            ue.d.d(viewInflate, "inflate(...)");
            k0Var.f3847c = viewInflate;
            viewInflate.setClipToOutline(true);
            View view = (View) k0Var.f3847c;
            if (view == null) {
                ue.d.g("root");
                throw null;
            }
            view.setOnGenericMotionListener(new View.OnGenericMotionListener() { // from class: vb.e
                @Override // android.view.View.OnGenericMotionListener
                public final boolean onGenericMotion(View view2, MotionEvent motionEvent) {
                    int actionMasked = motionEvent.getActionMasked();
                    k0 k0Var2 = k0Var;
                    if (actionMasked == 9) {
                        k0Var2.f3845a = true;
                    } else if (actionMasked == 10) {
                        k0Var2.f3845a = false;
                    }
                    return false;
                }
            });
            View view2 = (View) k0Var.f3847c;
            if (view2 == null) {
                ue.d.g("root");
                throw null;
            }
            View viewFindViewById = view2.findViewById(R.id.diagnostic_tooltip_brief_message);
            ue.d.d(viewFindViewById, "findViewById(...)");
            k0Var.f3848d = (TextView) viewFindViewById;
            View view3 = (View) k0Var.f3847c;
            if (view3 == null) {
                ue.d.g("root");
                throw null;
            }
            View viewFindViewById2 = view3.findViewById(R.id.diagnostic_tooltip_detailed_message);
            ue.d.d(viewFindViewById2, "findViewById(...)");
            k0Var.f3849e = (TextView) viewFindViewById2;
            View view4 = (View) k0Var.f3847c;
            if (view4 == null) {
                ue.d.g("root");
                throw null;
            }
            View viewFindViewById3 = view4.findViewById(R.id.diagnostic_tooltip_preferred_action);
            ue.d.d(viewFindViewById3, "findViewById(...)");
            k0Var.f3850f = (TextView) viewFindViewById3;
            View view5 = (View) k0Var.f3847c;
            if (view5 == null) {
                ue.d.g("root");
                throw null;
            }
            View viewFindViewById4 = view5.findViewById(R.id.diagnostic_tooltip_more_actions);
            ue.d.d(viewFindViewById4, "findViewById(...)");
            k0Var.f3851g = (TextView) viewFindViewById4;
            View view6 = (View) k0Var.f3847c;
            if (view6 == null) {
                ue.d.g("root");
                throw null;
            }
            View viewFindViewById5 = view6.findViewById(R.id.diagnostic_container_message);
            ue.d.d(viewFindViewById5, "findViewById(...)");
            k0Var.f3852h = (ViewGroup) viewFindViewById5;
            View view7 = (View) k0Var.f3847c;
            if (view7 == null) {
                ue.d.g("root");
                throw null;
            }
            View viewFindViewById6 = view7.findViewById(R.id.diagnostic_container_quickfix);
            ue.d.d(viewFindViewById6, "findViewById(...)");
            k0Var.f3853i = (ViewGroup) viewFindViewById6;
            TextView textView = (TextView) k0Var.f3850f;
            if (textView == null) {
                ue.d.g("quickfixText");
                throw null;
            }
            textView.setOnClickListener(new f(k0Var));
            TextView textView2 = (TextView) k0Var.f3851g;
            if (textView2 == null) {
                ue.d.g("moreActionText");
                throw null;
            }
            SparseIntArray sparseIntArray = cb.a.f2985a;
            int i10 = R.string.sora_editor_diagnostics_more_actions;
            int i11 = sparseIntArray.get(R.string.sora_editor_diagnostics_more_actions);
            textView2.setText(i11 != 0 ? i11 : i10);
            TextView textView3 = (TextView) k0Var.f3851g;
            if (textView3 == null) {
                ue.d.g("moreActionText");
                throw null;
            }
            textView3.setOnClickListener(new f(k0Var, context));
            View view8 = (View) k0Var.f3847c;
            if (view8 == null) {
                ue.d.g("root");
                throw null;
            }
            this.f16758q = view8;
            this.f16091a.setContentView(view8);
            d();
        }
        this.f16091a.setAnimationStyle(R.style.diagnostic_popup_animation);
        final int i12 = 0;
        pVar.f(x.class, new db.q(this) { // from class: vb.o

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ p f16756b;

            {
                this.f16756b = this;
            }

            @Override // db.q
            public final void a(bi.a aVar, ag.h hVar) {
                int i13;
                int measuredHeight;
                int measuredWidth;
                switch (i12) {
                    case 0:
                        x xVar = (x) aVar;
                        ue.d.e(xVar, "event");
                        p pVar3 = this.f16756b;
                        if (pVar3.f16757p.f4553f) {
                            CodeEditor codeEditor2 = pVar3.f16092b;
                            if (codeEditor2.P()) {
                                return;
                            }
                            if (xVar.c() || !((i13 = xVar.f4563e) == 3 || i13 == 1)) {
                                pVar3.g();
                                return;
                            }
                            ue.d.d(xVar.f4561c, "getLeft(...)");
                            codeEditor2.getDiagnostics();
                            pVar3.g();
                            return;
                        }
                        return;
                    case 1:
                        ue.d.e((w) aVar, "<unused var>");
                        this.f16756b.f16092b.P();
                        return;
                    case 2:
                        ue.d.e((db.c) aVar, "<unused var>");
                        this.f16756b.d();
                        return;
                    case 3:
                        ue.d.e((a0) aVar, "event");
                        p pVar4 = this.f16756b;
                        pVar4.r.getClass();
                        if (pVar4.f16091a.isShowing()) {
                            double width = pVar4.f16092b.getWidth();
                            Double.isNaN(width);
                            int i14 = (int) (width * 0.9d);
                            k0 k0Var2 = pVar4.r;
                            k0Var2.getClass();
                            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i14, Integer.MIN_VALUE);
                            ViewGroup viewGroup = (ViewGroup) k0Var2.f3853i;
                            if (viewGroup == null) {
                                ue.d.g("quickfixPanel");
                                throw null;
                            }
                            int visibility = viewGroup.getVisibility();
                            int i15 = pVar4.f16759s;
                            if (visibility == 0) {
                                ViewGroup viewGroup2 = (ViewGroup) k0Var2.f3853i;
                                if (viewGroup2 == null) {
                                    ue.d.g("quickfixPanel");
                                    throw null;
                                }
                                viewGroup2.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(i15, Integer.MIN_VALUE));
                                ViewGroup viewGroup3 = (ViewGroup) k0Var2.f3853i;
                                if (viewGroup3 == null) {
                                    ue.d.g("quickfixPanel");
                                    throw null;
                                }
                                measuredHeight = viewGroup3.getMeasuredHeight();
                                ViewGroup viewGroup4 = (ViewGroup) k0Var2.f3853i;
                                if (viewGroup4 == null) {
                                    ue.d.g("quickfixPanel");
                                    throw null;
                                }
                                measuredWidth = viewGroup4.getMeasuredWidth();
                                if (measuredWidth > i14) {
                                    measuredWidth = i14;
                                }
                            } else {
                                measuredHeight = 0;
                                measuredWidth = 0;
                            }
                            int i16 = i15 - measuredHeight;
                            if (i16 < 1) {
                                i16 = 1;
                            }
                            ViewGroup viewGroup5 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup5 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            ViewGroup.LayoutParams layoutParams = viewGroup5.getLayoutParams();
                            layoutParams.height = -2;
                            ViewGroup viewGroup6 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup6 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            viewGroup6.setLayoutParams(layoutParams);
                            ViewGroup viewGroup7 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup7 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            viewGroup7.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(i16, Integer.MIN_VALUE));
                            ViewGroup viewGroup8 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup8 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            int measuredHeight2 = viewGroup8.getMeasuredHeight();
                            if (measuredHeight2 <= i16) {
                                i16 = measuredHeight2;
                            }
                            layoutParams.height = i16;
                            ViewGroup viewGroup9 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup9 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            viewGroup9.setLayoutParams(layoutParams);
                            ViewGroup viewGroup10 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup10 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            int measuredWidth2 = viewGroup10.getMeasuredWidth();
                            if (measuredWidth2 <= i14) {
                                i14 = measuredWidth2;
                            }
                            pVar4.f16102m = Math.max(measuredWidth, i14);
                            pVar4.f16103n = measuredHeight + i16;
                            pVar4.a(false);
                            return;
                        }
                        return;
                    case 4:
                        db.g gVar = (db.g) aVar;
                        ue.d.e(gVar, "event");
                        if (gVar.f4536c) {
                            return;
                        }
                        this.f16756b.b();
                        return;
                    default:
                        ue.d.e((db.l) aVar, "<unused var>");
                        p pVar5 = this.f16756b;
                        pVar5.f16757p.d(false);
                        pVar5.b();
                        return;
                }
            }
        });
        final int i13 = 1;
        pVar.f(w.class, new db.q(this) { // from class: vb.o

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ p f16756b;

            {
                this.f16756b = this;
            }

            @Override // db.q
            public final void a(bi.a aVar, ag.h hVar) {
                int i132;
                int measuredHeight;
                int measuredWidth;
                switch (i13) {
                    case 0:
                        x xVar = (x) aVar;
                        ue.d.e(xVar, "event");
                        p pVar3 = this.f16756b;
                        if (pVar3.f16757p.f4553f) {
                            CodeEditor codeEditor2 = pVar3.f16092b;
                            if (codeEditor2.P()) {
                                return;
                            }
                            if (xVar.c() || !((i132 = xVar.f4563e) == 3 || i132 == 1)) {
                                pVar3.g();
                                return;
                            }
                            ue.d.d(xVar.f4561c, "getLeft(...)");
                            codeEditor2.getDiagnostics();
                            pVar3.g();
                            return;
                        }
                        return;
                    case 1:
                        ue.d.e((w) aVar, "<unused var>");
                        this.f16756b.f16092b.P();
                        return;
                    case 2:
                        ue.d.e((db.c) aVar, "<unused var>");
                        this.f16756b.d();
                        return;
                    case 3:
                        ue.d.e((a0) aVar, "event");
                        p pVar4 = this.f16756b;
                        pVar4.r.getClass();
                        if (pVar4.f16091a.isShowing()) {
                            double width = pVar4.f16092b.getWidth();
                            Double.isNaN(width);
                            int i14 = (int) (width * 0.9d);
                            k0 k0Var2 = pVar4.r;
                            k0Var2.getClass();
                            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i14, Integer.MIN_VALUE);
                            ViewGroup viewGroup = (ViewGroup) k0Var2.f3853i;
                            if (viewGroup == null) {
                                ue.d.g("quickfixPanel");
                                throw null;
                            }
                            int visibility = viewGroup.getVisibility();
                            int i15 = pVar4.f16759s;
                            if (visibility == 0) {
                                ViewGroup viewGroup2 = (ViewGroup) k0Var2.f3853i;
                                if (viewGroup2 == null) {
                                    ue.d.g("quickfixPanel");
                                    throw null;
                                }
                                viewGroup2.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(i15, Integer.MIN_VALUE));
                                ViewGroup viewGroup3 = (ViewGroup) k0Var2.f3853i;
                                if (viewGroup3 == null) {
                                    ue.d.g("quickfixPanel");
                                    throw null;
                                }
                                measuredHeight = viewGroup3.getMeasuredHeight();
                                ViewGroup viewGroup4 = (ViewGroup) k0Var2.f3853i;
                                if (viewGroup4 == null) {
                                    ue.d.g("quickfixPanel");
                                    throw null;
                                }
                                measuredWidth = viewGroup4.getMeasuredWidth();
                                if (measuredWidth > i14) {
                                    measuredWidth = i14;
                                }
                            } else {
                                measuredHeight = 0;
                                measuredWidth = 0;
                            }
                            int i16 = i15 - measuredHeight;
                            if (i16 < 1) {
                                i16 = 1;
                            }
                            ViewGroup viewGroup5 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup5 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            ViewGroup.LayoutParams layoutParams = viewGroup5.getLayoutParams();
                            layoutParams.height = -2;
                            ViewGroup viewGroup6 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup6 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            viewGroup6.setLayoutParams(layoutParams);
                            ViewGroup viewGroup7 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup7 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            viewGroup7.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(i16, Integer.MIN_VALUE));
                            ViewGroup viewGroup8 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup8 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            int measuredHeight2 = viewGroup8.getMeasuredHeight();
                            if (measuredHeight2 <= i16) {
                                i16 = measuredHeight2;
                            }
                            layoutParams.height = i16;
                            ViewGroup viewGroup9 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup9 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            viewGroup9.setLayoutParams(layoutParams);
                            ViewGroup viewGroup10 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup10 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            int measuredWidth2 = viewGroup10.getMeasuredWidth();
                            if (measuredWidth2 <= i14) {
                                i14 = measuredWidth2;
                            }
                            pVar4.f16102m = Math.max(measuredWidth, i14);
                            pVar4.f16103n = measuredHeight + i16;
                            pVar4.a(false);
                            return;
                        }
                        return;
                    case 4:
                        db.g gVar = (db.g) aVar;
                        ue.d.e(gVar, "event");
                        if (gVar.f4536c) {
                            return;
                        }
                        this.f16756b.b();
                        return;
                    default:
                        ue.d.e((db.l) aVar, "<unused var>");
                        p pVar5 = this.f16756b;
                        pVar5.f16757p.d(false);
                        pVar5.b();
                        return;
                }
            }
        });
        pVar.e(db.s.class, new g6(this, 8, new g8(8, this)));
        final int i14 = 2;
        pVar.f(db.c.class, new db.q(this) { // from class: vb.o

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ p f16756b;

            {
                this.f16756b = this;
            }

            @Override // db.q
            public final void a(bi.a aVar, ag.h hVar) {
                int i132;
                int measuredHeight;
                int measuredWidth;
                switch (i14) {
                    case 0:
                        x xVar = (x) aVar;
                        ue.d.e(xVar, "event");
                        p pVar3 = this.f16756b;
                        if (pVar3.f16757p.f4553f) {
                            CodeEditor codeEditor2 = pVar3.f16092b;
                            if (codeEditor2.P()) {
                                return;
                            }
                            if (xVar.c() || !((i132 = xVar.f4563e) == 3 || i132 == 1)) {
                                pVar3.g();
                                return;
                            }
                            ue.d.d(xVar.f4561c, "getLeft(...)");
                            codeEditor2.getDiagnostics();
                            pVar3.g();
                            return;
                        }
                        return;
                    case 1:
                        ue.d.e((w) aVar, "<unused var>");
                        this.f16756b.f16092b.P();
                        return;
                    case 2:
                        ue.d.e((db.c) aVar, "<unused var>");
                        this.f16756b.d();
                        return;
                    case 3:
                        ue.d.e((a0) aVar, "event");
                        p pVar4 = this.f16756b;
                        pVar4.r.getClass();
                        if (pVar4.f16091a.isShowing()) {
                            double width = pVar4.f16092b.getWidth();
                            Double.isNaN(width);
                            int i142 = (int) (width * 0.9d);
                            k0 k0Var2 = pVar4.r;
                            k0Var2.getClass();
                            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i142, Integer.MIN_VALUE);
                            ViewGroup viewGroup = (ViewGroup) k0Var2.f3853i;
                            if (viewGroup == null) {
                                ue.d.g("quickfixPanel");
                                throw null;
                            }
                            int visibility = viewGroup.getVisibility();
                            int i15 = pVar4.f16759s;
                            if (visibility == 0) {
                                ViewGroup viewGroup2 = (ViewGroup) k0Var2.f3853i;
                                if (viewGroup2 == null) {
                                    ue.d.g("quickfixPanel");
                                    throw null;
                                }
                                viewGroup2.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(i15, Integer.MIN_VALUE));
                                ViewGroup viewGroup3 = (ViewGroup) k0Var2.f3853i;
                                if (viewGroup3 == null) {
                                    ue.d.g("quickfixPanel");
                                    throw null;
                                }
                                measuredHeight = viewGroup3.getMeasuredHeight();
                                ViewGroup viewGroup4 = (ViewGroup) k0Var2.f3853i;
                                if (viewGroup4 == null) {
                                    ue.d.g("quickfixPanel");
                                    throw null;
                                }
                                measuredWidth = viewGroup4.getMeasuredWidth();
                                if (measuredWidth > i142) {
                                    measuredWidth = i142;
                                }
                            } else {
                                measuredHeight = 0;
                                measuredWidth = 0;
                            }
                            int i16 = i15 - measuredHeight;
                            if (i16 < 1) {
                                i16 = 1;
                            }
                            ViewGroup viewGroup5 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup5 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            ViewGroup.LayoutParams layoutParams = viewGroup5.getLayoutParams();
                            layoutParams.height = -2;
                            ViewGroup viewGroup6 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup6 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            viewGroup6.setLayoutParams(layoutParams);
                            ViewGroup viewGroup7 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup7 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            viewGroup7.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(i16, Integer.MIN_VALUE));
                            ViewGroup viewGroup8 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup8 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            int measuredHeight2 = viewGroup8.getMeasuredHeight();
                            if (measuredHeight2 <= i16) {
                                i16 = measuredHeight2;
                            }
                            layoutParams.height = i16;
                            ViewGroup viewGroup9 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup9 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            viewGroup9.setLayoutParams(layoutParams);
                            ViewGroup viewGroup10 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup10 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            int measuredWidth2 = viewGroup10.getMeasuredWidth();
                            if (measuredWidth2 <= i142) {
                                i142 = measuredWidth2;
                            }
                            pVar4.f16102m = Math.max(measuredWidth, i142);
                            pVar4.f16103n = measuredHeight + i16;
                            pVar4.a(false);
                            return;
                        }
                        return;
                    case 4:
                        db.g gVar = (db.g) aVar;
                        ue.d.e(gVar, "event");
                        if (gVar.f4536c) {
                            return;
                        }
                        this.f16756b.b();
                        return;
                    default:
                        ue.d.e((db.l) aVar, "<unused var>");
                        p pVar5 = this.f16756b;
                        pVar5.f16757p.d(false);
                        pVar5.b();
                        return;
                }
            }
        });
        final int i15 = 3;
        pVar.f(a0.class, new db.q(this) { // from class: vb.o

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ p f16756b;

            {
                this.f16756b = this;
            }

            @Override // db.q
            public final void a(bi.a aVar, ag.h hVar) {
                int i132;
                int measuredHeight;
                int measuredWidth;
                switch (i15) {
                    case 0:
                        x xVar = (x) aVar;
                        ue.d.e(xVar, "event");
                        p pVar3 = this.f16756b;
                        if (pVar3.f16757p.f4553f) {
                            CodeEditor codeEditor2 = pVar3.f16092b;
                            if (codeEditor2.P()) {
                                return;
                            }
                            if (xVar.c() || !((i132 = xVar.f4563e) == 3 || i132 == 1)) {
                                pVar3.g();
                                return;
                            }
                            ue.d.d(xVar.f4561c, "getLeft(...)");
                            codeEditor2.getDiagnostics();
                            pVar3.g();
                            return;
                        }
                        return;
                    case 1:
                        ue.d.e((w) aVar, "<unused var>");
                        this.f16756b.f16092b.P();
                        return;
                    case 2:
                        ue.d.e((db.c) aVar, "<unused var>");
                        this.f16756b.d();
                        return;
                    case 3:
                        ue.d.e((a0) aVar, "event");
                        p pVar4 = this.f16756b;
                        pVar4.r.getClass();
                        if (pVar4.f16091a.isShowing()) {
                            double width = pVar4.f16092b.getWidth();
                            Double.isNaN(width);
                            int i142 = (int) (width * 0.9d);
                            k0 k0Var2 = pVar4.r;
                            k0Var2.getClass();
                            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i142, Integer.MIN_VALUE);
                            ViewGroup viewGroup = (ViewGroup) k0Var2.f3853i;
                            if (viewGroup == null) {
                                ue.d.g("quickfixPanel");
                                throw null;
                            }
                            int visibility = viewGroup.getVisibility();
                            int i152 = pVar4.f16759s;
                            if (visibility == 0) {
                                ViewGroup viewGroup2 = (ViewGroup) k0Var2.f3853i;
                                if (viewGroup2 == null) {
                                    ue.d.g("quickfixPanel");
                                    throw null;
                                }
                                viewGroup2.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(i152, Integer.MIN_VALUE));
                                ViewGroup viewGroup3 = (ViewGroup) k0Var2.f3853i;
                                if (viewGroup3 == null) {
                                    ue.d.g("quickfixPanel");
                                    throw null;
                                }
                                measuredHeight = viewGroup3.getMeasuredHeight();
                                ViewGroup viewGroup4 = (ViewGroup) k0Var2.f3853i;
                                if (viewGroup4 == null) {
                                    ue.d.g("quickfixPanel");
                                    throw null;
                                }
                                measuredWidth = viewGroup4.getMeasuredWidth();
                                if (measuredWidth > i142) {
                                    measuredWidth = i142;
                                }
                            } else {
                                measuredHeight = 0;
                                measuredWidth = 0;
                            }
                            int i16 = i152 - measuredHeight;
                            if (i16 < 1) {
                                i16 = 1;
                            }
                            ViewGroup viewGroup5 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup5 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            ViewGroup.LayoutParams layoutParams = viewGroup5.getLayoutParams();
                            layoutParams.height = -2;
                            ViewGroup viewGroup6 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup6 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            viewGroup6.setLayoutParams(layoutParams);
                            ViewGroup viewGroup7 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup7 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            viewGroup7.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(i16, Integer.MIN_VALUE));
                            ViewGroup viewGroup8 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup8 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            int measuredHeight2 = viewGroup8.getMeasuredHeight();
                            if (measuredHeight2 <= i16) {
                                i16 = measuredHeight2;
                            }
                            layoutParams.height = i16;
                            ViewGroup viewGroup9 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup9 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            viewGroup9.setLayoutParams(layoutParams);
                            ViewGroup viewGroup10 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup10 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            int measuredWidth2 = viewGroup10.getMeasuredWidth();
                            if (measuredWidth2 <= i142) {
                                i142 = measuredWidth2;
                            }
                            pVar4.f16102m = Math.max(measuredWidth, i142);
                            pVar4.f16103n = measuredHeight + i16;
                            pVar4.a(false);
                            return;
                        }
                        return;
                    case 4:
                        db.g gVar = (db.g) aVar;
                        ue.d.e(gVar, "event");
                        if (gVar.f4536c) {
                            return;
                        }
                        this.f16756b.b();
                        return;
                    default:
                        ue.d.e((db.l) aVar, "<unused var>");
                        p pVar5 = this.f16756b;
                        pVar5.f16757p.d(false);
                        pVar5.b();
                        return;
                }
            }
        });
        final int i16 = 4;
        pVar.f(db.g.class, new db.q(this) { // from class: vb.o

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ p f16756b;

            {
                this.f16756b = this;
            }

            @Override // db.q
            public final void a(bi.a aVar, ag.h hVar) {
                int i132;
                int measuredHeight;
                int measuredWidth;
                switch (i16) {
                    case 0:
                        x xVar = (x) aVar;
                        ue.d.e(xVar, "event");
                        p pVar3 = this.f16756b;
                        if (pVar3.f16757p.f4553f) {
                            CodeEditor codeEditor2 = pVar3.f16092b;
                            if (codeEditor2.P()) {
                                return;
                            }
                            if (xVar.c() || !((i132 = xVar.f4563e) == 3 || i132 == 1)) {
                                pVar3.g();
                                return;
                            }
                            ue.d.d(xVar.f4561c, "getLeft(...)");
                            codeEditor2.getDiagnostics();
                            pVar3.g();
                            return;
                        }
                        return;
                    case 1:
                        ue.d.e((w) aVar, "<unused var>");
                        this.f16756b.f16092b.P();
                        return;
                    case 2:
                        ue.d.e((db.c) aVar, "<unused var>");
                        this.f16756b.d();
                        return;
                    case 3:
                        ue.d.e((a0) aVar, "event");
                        p pVar4 = this.f16756b;
                        pVar4.r.getClass();
                        if (pVar4.f16091a.isShowing()) {
                            double width = pVar4.f16092b.getWidth();
                            Double.isNaN(width);
                            int i142 = (int) (width * 0.9d);
                            k0 k0Var2 = pVar4.r;
                            k0Var2.getClass();
                            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i142, Integer.MIN_VALUE);
                            ViewGroup viewGroup = (ViewGroup) k0Var2.f3853i;
                            if (viewGroup == null) {
                                ue.d.g("quickfixPanel");
                                throw null;
                            }
                            int visibility = viewGroup.getVisibility();
                            int i152 = pVar4.f16759s;
                            if (visibility == 0) {
                                ViewGroup viewGroup2 = (ViewGroup) k0Var2.f3853i;
                                if (viewGroup2 == null) {
                                    ue.d.g("quickfixPanel");
                                    throw null;
                                }
                                viewGroup2.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(i152, Integer.MIN_VALUE));
                                ViewGroup viewGroup3 = (ViewGroup) k0Var2.f3853i;
                                if (viewGroup3 == null) {
                                    ue.d.g("quickfixPanel");
                                    throw null;
                                }
                                measuredHeight = viewGroup3.getMeasuredHeight();
                                ViewGroup viewGroup4 = (ViewGroup) k0Var2.f3853i;
                                if (viewGroup4 == null) {
                                    ue.d.g("quickfixPanel");
                                    throw null;
                                }
                                measuredWidth = viewGroup4.getMeasuredWidth();
                                if (measuredWidth > i142) {
                                    measuredWidth = i142;
                                }
                            } else {
                                measuredHeight = 0;
                                measuredWidth = 0;
                            }
                            int i162 = i152 - measuredHeight;
                            if (i162 < 1) {
                                i162 = 1;
                            }
                            ViewGroup viewGroup5 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup5 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            ViewGroup.LayoutParams layoutParams = viewGroup5.getLayoutParams();
                            layoutParams.height = -2;
                            ViewGroup viewGroup6 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup6 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            viewGroup6.setLayoutParams(layoutParams);
                            ViewGroup viewGroup7 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup7 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            viewGroup7.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(i162, Integer.MIN_VALUE));
                            ViewGroup viewGroup8 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup8 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            int measuredHeight2 = viewGroup8.getMeasuredHeight();
                            if (measuredHeight2 <= i162) {
                                i162 = measuredHeight2;
                            }
                            layoutParams.height = i162;
                            ViewGroup viewGroup9 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup9 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            viewGroup9.setLayoutParams(layoutParams);
                            ViewGroup viewGroup10 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup10 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            int measuredWidth2 = viewGroup10.getMeasuredWidth();
                            if (measuredWidth2 <= i142) {
                                i142 = measuredWidth2;
                            }
                            pVar4.f16102m = Math.max(measuredWidth, i142);
                            pVar4.f16103n = measuredHeight + i162;
                            pVar4.a(false);
                            return;
                        }
                        return;
                    case 4:
                        db.g gVar = (db.g) aVar;
                        ue.d.e(gVar, "event");
                        if (gVar.f4536c) {
                            return;
                        }
                        this.f16756b.b();
                        return;
                    default:
                        ue.d.e((db.l) aVar, "<unused var>");
                        p pVar5 = this.f16756b;
                        pVar5.f16757p.d(false);
                        pVar5.b();
                        return;
                }
            }
        });
        final int i17 = 5;
        pVar.f(db.l.class, new db.q(this) { // from class: vb.o

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ p f16756b;

            {
                this.f16756b = this;
            }

            @Override // db.q
            public final void a(bi.a aVar, ag.h hVar) {
                int i132;
                int measuredHeight;
                int measuredWidth;
                switch (i17) {
                    case 0:
                        x xVar = (x) aVar;
                        ue.d.e(xVar, "event");
                        p pVar3 = this.f16756b;
                        if (pVar3.f16757p.f4553f) {
                            CodeEditor codeEditor2 = pVar3.f16092b;
                            if (codeEditor2.P()) {
                                return;
                            }
                            if (xVar.c() || !((i132 = xVar.f4563e) == 3 || i132 == 1)) {
                                pVar3.g();
                                return;
                            }
                            ue.d.d(xVar.f4561c, "getLeft(...)");
                            codeEditor2.getDiagnostics();
                            pVar3.g();
                            return;
                        }
                        return;
                    case 1:
                        ue.d.e((w) aVar, "<unused var>");
                        this.f16756b.f16092b.P();
                        return;
                    case 2:
                        ue.d.e((db.c) aVar, "<unused var>");
                        this.f16756b.d();
                        return;
                    case 3:
                        ue.d.e((a0) aVar, "event");
                        p pVar4 = this.f16756b;
                        pVar4.r.getClass();
                        if (pVar4.f16091a.isShowing()) {
                            double width = pVar4.f16092b.getWidth();
                            Double.isNaN(width);
                            int i142 = (int) (width * 0.9d);
                            k0 k0Var2 = pVar4.r;
                            k0Var2.getClass();
                            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i142, Integer.MIN_VALUE);
                            ViewGroup viewGroup = (ViewGroup) k0Var2.f3853i;
                            if (viewGroup == null) {
                                ue.d.g("quickfixPanel");
                                throw null;
                            }
                            int visibility = viewGroup.getVisibility();
                            int i152 = pVar4.f16759s;
                            if (visibility == 0) {
                                ViewGroup viewGroup2 = (ViewGroup) k0Var2.f3853i;
                                if (viewGroup2 == null) {
                                    ue.d.g("quickfixPanel");
                                    throw null;
                                }
                                viewGroup2.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(i152, Integer.MIN_VALUE));
                                ViewGroup viewGroup3 = (ViewGroup) k0Var2.f3853i;
                                if (viewGroup3 == null) {
                                    ue.d.g("quickfixPanel");
                                    throw null;
                                }
                                measuredHeight = viewGroup3.getMeasuredHeight();
                                ViewGroup viewGroup4 = (ViewGroup) k0Var2.f3853i;
                                if (viewGroup4 == null) {
                                    ue.d.g("quickfixPanel");
                                    throw null;
                                }
                                measuredWidth = viewGroup4.getMeasuredWidth();
                                if (measuredWidth > i142) {
                                    measuredWidth = i142;
                                }
                            } else {
                                measuredHeight = 0;
                                measuredWidth = 0;
                            }
                            int i162 = i152 - measuredHeight;
                            if (i162 < 1) {
                                i162 = 1;
                            }
                            ViewGroup viewGroup5 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup5 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            ViewGroup.LayoutParams layoutParams = viewGroup5.getLayoutParams();
                            layoutParams.height = -2;
                            ViewGroup viewGroup6 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup6 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            viewGroup6.setLayoutParams(layoutParams);
                            ViewGroup viewGroup7 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup7 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            viewGroup7.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(i162, Integer.MIN_VALUE));
                            ViewGroup viewGroup8 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup8 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            int measuredHeight2 = viewGroup8.getMeasuredHeight();
                            if (measuredHeight2 <= i162) {
                                i162 = measuredHeight2;
                            }
                            layoutParams.height = i162;
                            ViewGroup viewGroup9 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup9 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            viewGroup9.setLayoutParams(layoutParams);
                            ViewGroup viewGroup10 = (ViewGroup) k0Var2.f3852h;
                            if (viewGroup10 == null) {
                                ue.d.g("messagePanel");
                                throw null;
                            }
                            int measuredWidth2 = viewGroup10.getMeasuredWidth();
                            if (measuredWidth2 <= i142) {
                                i142 = measuredWidth2;
                            }
                            pVar4.f16102m = Math.max(measuredWidth, i142);
                            pVar4.f16103n = measuredHeight + i162;
                            pVar4.a(false);
                            return;
                        }
                        return;
                    case 4:
                        db.g gVar = (db.g) aVar;
                        ue.d.e(gVar, "event");
                        if (gVar.f4536c) {
                            return;
                        }
                        this.f16756b.b();
                        return;
                    default:
                        ue.d.e((db.l) aVar, "<unused var>");
                        p pVar5 = this.f16756b;
                        pVar5.f16757p.d(false);
                        pVar5.b();
                        return;
                }
            }
        });
        this.f16091a.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: vb.n
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                p pVar3 = this.f16754a;
                pVar3.getClass();
                pVar3.r.f3845a = false;
            }
        });
        d();
    }

    public static final void e(p pVar, db.s sVar) {
        pVar.f16761v = new ie.b(Float.valueOf(sVar.f4543d.getX()), Float.valueOf(sVar.f4543d.getY()));
    }

    public static void f(p pVar, g8 g8Var) {
        pVar.f16092b.removeCallbacks(g8Var);
        pVar.f16092b.Y(g8Var, 1000L);
    }

    @Override // ub.b
    public final void b() {
        if (this.f16091a.isShowing()) {
            super.b();
        }
    }

    public final void d() {
        k0 k0Var = this.r;
        zb.a colorScheme = this.f16092b.getColorScheme();
        ue.d.d(colorScheme, "getColorScheme(...)");
        k0Var.getClass();
        p pVar = (p) k0Var.f3846b;
        if (pVar == null) {
            ue.d.g("window");
            throw null;
        }
        CodeEditor codeEditor = pVar.f16092b;
        ue.d.d(codeEditor, "getEditor(...)");
        TextView textView = (TextView) k0Var.f3848d;
        if (textView == null) {
            ue.d.g("briefMessageText");
            throw null;
        }
        SparseIntArray sparseIntArray = colorScheme.f19543a;
        textView.setTextColor(sparseIntArray.get(54));
        TextView textView2 = (TextView) k0Var.f3849e;
        if (textView2 == null) {
            ue.d.g("detailMessageText");
            throw null;
        }
        textView2.setTextColor(sparseIntArray.get(55));
        TextView textView3 = (TextView) k0Var.f3850f;
        if (textView3 == null) {
            ue.d.g("quickfixText");
            throw null;
        }
        textView3.setTextColor(sparseIntArray.get(56));
        TextView textView4 = (TextView) k0Var.f3851g;
        if (textView4 == null) {
            ue.d.g("moreActionText");
            throw null;
        }
        textView4.setTextColor(sparseIntArray.get(56));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(codeEditor.getDpUnit() * 5);
        gradientDrawable.setColor(sparseIntArray.get(53));
        View view = (View) k0Var.f3847c;
        if (view != null) {
            view.setBackground(gradientDrawable);
        } else {
            ue.d.g("root");
            throw null;
        }
    }

    public final void g() {
        if (this.f16757p.f4553f) {
            CodeEditor codeEditor = this.f16092b;
            ue.d.d(codeEditor, "getEditor(...)");
            k kVar = codeEditor.f8730p1;
            ue.d.d(kVar, "getComponent(...)");
            if (kVar.f16091a.isShowing()) {
                b();
                return;
            }
            if (ue.d.a(null, null)) {
                return;
            }
            k0 k0Var = this.r;
            TextView textView = (TextView) k0Var.f3849e;
            if (textView == null) {
                ue.d.g("detailMessageText");
                throw null;
            }
            textView.setVisibility(8);
            TextView textView2 = (TextView) k0Var.f3848d;
            if (textView2 == null) {
                ue.d.g("briefMessageText");
                throw null;
            }
            textView2.setText("");
            ViewGroup viewGroup = (ViewGroup) k0Var.f3853i;
            if (viewGroup == null) {
                ue.d.g("quickfixPanel");
                throw null;
            }
            viewGroup.setVisibility(8);
            TextView textView3 = (TextView) k0Var.f3851g;
            if (textView3 == null) {
                ue.d.g("moreActionText");
                throw null;
            }
            textView3.setVisibility(8);
            b();
        }
    }
}
