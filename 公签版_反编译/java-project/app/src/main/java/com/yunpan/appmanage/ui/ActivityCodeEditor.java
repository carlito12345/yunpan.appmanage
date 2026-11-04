package com.yunpan.appmanage.ui;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.PopupMenu;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.CodeEditorTopBean;
import com.yunpan.appmanage.ui.ActivityCodeEditor;
import da.g;
import db.l;
import db.m;
import db.v;
import fc.b;
import gb.a;
import ha.aa;
import ha.o4;
import ha.uc;
import ha.z6;
import io.github.rosemoe.sora.widget.CodeEditor;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.regex.Pattern;
import kh.e;
import kh.j;
import mc.c;
import org.greenrobot.eventbus.ThreadMode;
import org.mozilla.universalchardet.UniversalDetector;
import org.slf4j.Marker;
import rc.f;
import tb.p;
import tb.r;
import ua.b1;
import ua.d1;
import ua.e1;
import ua.f1;
import ua.v0;
import x9.t0;

/* loaded from: classes.dex */
public class ActivityCodeEditor extends g implements View.OnClickListener {

    /* renamed from: c1, reason: collision with root package name */
    public static final /* synthetic */ int f3967c1 = 0;
    public TvRecyclerView E;
    public RecyclerView F;
    public t0 G;
    public t0 H;
    public TextView I;
    public TextView M0;
    public TextView N0;
    public TextView O0;
    public TextView P0;
    public TextView Q0;
    public Uri R;
    public TextView R0;
    public p V;
    public SharedPreferences X;
    public ConstraintLayout Y;
    public EditText Z;

    /* renamed from: h0, reason: collision with root package name */
    public EditText f3970h0;

    /* renamed from: t0, reason: collision with root package name */
    public TextView f3971t0;
    public CodeEditor C = null;
    public EditText D = null;
    public final String[] K = {"换行符", "制表符", "<", ">", "<>", "{", "}", "{}", "[", "]", "[]", "(", ")", "()", "【", "】", "【】", "\"", "\"\"", "'", "`", "~", "!", "@", "#", "$", "%", "^", "&", Marker.ANY_MARKER, "|", "\\", "/", "?", ".", ":", ";", "：", "；", "，", "、", "。", "、", "？"};
    public final String[] L = {"自动识别", HTTP.UTF_8, "UTF-8-BOM", "GBK", "GB2312", "GB18030", "BIG5", "BIG5-HKSCS", HTTP.UTF_16, "UTF-16BE", "UTF-16LE", "EUC-KR", "EUC-JP", "Shift_JIS", "CESU-8", "ISO-2022-JP", "ISO-2022-KR", "ISO-8859-1", "ISO-8859-2", "ISO-8859-3", "ISO-8859-4", "ISO-8859-5", "ISO-8859-6", "ISO-8859-7", "ISO-8859-8", "ISO-8859-9", "ISO-8859-10", "ISO-8859-11", "ISO-8859-12", "ISO-8859-13", "ISO-8859-14", "ISO-8859-15", "KOI8-R", "KOI8-U", "Windows-1250", "Windows-1251", "Windows-1252", "Windows-1253", "Windows-1254", "Windows-1255", "Windows-1256", "Windows-1257", "Windows-1258"};
    public final String[] M = {HTTP.UTF_8, "UTF-8-BOM", "GBK", "GB2312", "GB18030", "BIG5", "BIG5-HKSCS", HTTP.UTF_16, "UTF-16BE", "UTF-16LE", "EUC-KR", "EUC-JP", "Shift_JIS", "CESU-8", "ISO-2022-JP", "ISO-2022-KR", "ISO-8859-1", "ISO-8859-2", "ISO-8859-3", "ISO-8859-4", "ISO-8859-5", "ISO-8859-6", "ISO-8859-7", "ISO-8859-8", "ISO-8859-9", "ISO-8859-10", "ISO-8859-11", "ISO-8859-12", "ISO-8859-13", "ISO-8859-14", "ISO-8859-15", "KOI8-R", "KOI8-U", "Windows-1250", "Windows-1251", "Windows-1252", "Windows-1253", "Windows-1254", "Windows-1255", "Windows-1256", "Windows-1257", "Windows-1258"};
    public int N = 0;
    public String O = "自动识别";
    public String P = HTTP.UTF_8;
    public boolean S = true;
    public final long T = System.currentTimeMillis();
    public String S0 = "";
    public final int T0 = 8;
    public final int U0 = 9;
    public final int V0 = 10;
    public final int W0 = 11;
    public final int X0 = 12;
    public final int Y0 = 13;
    public final int Z0 = 14;

    /* renamed from: a1, reason: collision with root package name */
    public final int f3968a1 = 15;

    /* renamed from: b1, reason: collision with root package name */
    public final int f3969b1 = 16;

    public final void A() {
        if (!this.S ? this.D.getText().toString().hashCode() != this.N : this.C.getText().toString().hashCode() != this.N) {
            finish();
        } else {
            new z6(this, this.A, "文件已改动过，是否先保存？", "", "保存并关闭", "不保存", new f1(this, 0)).show();
        }
    }

    public final void B(boolean z) {
        new c(0, new d1(this, 0)).d(f.f13757b).a(b.a()).b(new ua.g(this, z, 2));
    }

    @Override // q.i, m0.k, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        CodeEditor codeEditor;
        EditText editText;
        if (keyEvent.getKeyCode() == 23 && (((codeEditor = this.C) != null && codeEditor.isFocused()) || ((editText = this.D) != null && editText.isFocused()))) {
            if (keyEvent.getAction() == 1) {
                InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
                if (inputMethodManager != null) {
                    View view = this.C;
                    if (view == null) {
                        view = this.D;
                    }
                    inputMethodManager.showSoftInput(view, 0);
                }
            }
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // androidx.activity.m, android.app.Activity
    public final void onBackPressed() {
        if (this.S) {
            if (this.C.isFocused()) {
                if (this.Y.getVisibility() == 0) {
                    this.M0.requestFocus();
                    return;
                } else {
                    this.E.requestFocus();
                    return;
                }
            }
        } else if (this.D.isFocused()) {
            if (this.Y.getVisibility() == 0) {
                this.M0.requestFocus();
                return;
            } else {
                this.E.requestFocus();
                return;
            }
        }
        A();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws Exception {
        try {
            if (view.getId() == R.id.v_btn1) {
                if (this.Z.getText().toString().isEmpty()) {
                    return;
                }
                this.C.getSearcher().d();
                return;
            }
            if (view.getId() == R.id.v_btn2) {
                if (this.Z.getText().toString().isEmpty()) {
                    return;
                }
                this.C.getSearcher().e();
                return;
            }
            if (view.getId() == R.id.v_btn3) {
                if (this.Z.getText().toString().isEmpty()) {
                    return;
                }
                try {
                    if (this.C.getSearcher().c() == -1) {
                        throw new Exception();
                    }
                    r searcher = this.C.getSearcher();
                    String string = this.f3970h0.getText().toString();
                    CodeEditor codeEditor = searcher.f14999a;
                    if (codeEditor.N()) {
                        if (searcher.c() <= -1) {
                            searcher.d();
                        } else if (string.isEmpty()) {
                            codeEditor.A();
                        } else {
                            int i10 = searcher.f15001c.f14993b;
                            searcher.f15002d.getClass();
                            codeEditor.u(string, false, false);
                        }
                    }
                    this.C.getSearcher().d();
                    return;
                } catch (Exception unused) {
                    this.C.getSearcher().d();
                    return;
                }
            }
            if (view.getId() == R.id.v_btn4) {
                if (this.Z.getText().toString().isEmpty()) {
                    return;
                }
                this.C.getSearcher().g(this.f3970h0.getText().toString());
            } else {
                if (view.getId() == R.id.v_btn5) {
                    this.E.setVisibility(0);
                    this.E.requestFocus();
                    this.Y.setVisibility(8);
                    this.C.getSearcher().h();
                    return;
                }
                if (view.getId() == R.id.v_btn6) {
                    PopupMenu popupMenu = new PopupMenu(view.getContext(), view);
                    Menu menu = popupMenu.getMenu();
                    menu.add(this.V.f14992a ? "区分大小写 ×" : "区分大小写 √").setCheckable(true).setChecked(!this.V.f14992a).setOnMenuItemClickListener(new b1(0, this));
                    menu.add(this.V.f14993b == 3 ? "正则表达式 √" : "正则表达式 ×").setCheckable(true).setChecked(this.V.f14993b == 3).setOnMenuItemClickListener(new b1(1, this));
                    popupMenu.show();
                }
            }
        } catch (Exception unused2) {
        }
    }

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        e.b().f(new ja.c(10));
        e.b().l(this);
        super.onDestroy();
        CodeEditor codeEditor = this.C;
        if (codeEditor != null) {
            codeEditor.f8730p1.e();
            codeEditor.f8730p1.f();
            codeEditor.f8705c.b();
            codeEditor.f8732q1.f15019d.a();
            codeEditor.f8707d.b();
            if (!codeEditor.T) {
                codeEditor.f8717i.a(new l(codeEditor));
                codeEditor.T = true;
                gb.b bVar = codeEditor.f8725m1;
                if (bVar != null) {
                    bVar.getClass();
                    codeEditor.f8725m1 = new a();
                }
                codeEditor.f8711f.getClass();
                mb.g gVar = codeEditor.f8716h1;
                if (gVar != null) {
                    gVar.f11065b.remove(codeEditor);
                }
                Iterator it = codeEditor.f8720j1.f19544b.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else if (((WeakReference) it.next()).get() == codeEditor) {
                        it.remove();
                        break;
                    }
                }
            }
        }
        EditText editText = this.D;
        if (editText != null) {
            editText.setText("");
        }
        this.N = 0;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i10, KeyEvent keyEvent) {
        if (i10 == 82 && keyEvent.getAction() == 1) {
            this.F.requestFocus();
        }
        return super.onKeyUp(i10, keyEvent);
    }

    @j(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(Object obj) {
    }

    @Override // da.g, androidx.fragment.app.j0, android.app.Activity
    public final void onResume() {
        super.onResume();
        if (System.currentTimeMillis() - this.T < 10000) {
            return;
        }
        new c(0, new d1(this, 5)).d(f.f13757b).a(b.a()).b(new e1(this, 0));
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_code_editor;
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x04b5  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x04d2  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0320 A[EDGE_INSN: B:148:0x0320->B:75:0x0320 BREAK  A[LOOP:0: B:72:0x030d->B:74:0x0312], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0312 A[LOOP:0: B:72:0x030d->B:74:0x0312, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x034a  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x038a  */
    @Override // da.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void u() throws Throwable {
        ContentResolver contentResolver;
        Throwable th2;
        String lastPathSegment;
        String path;
        int i10;
        String[] strArr;
        boolean z;
        boolean z4;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        int i11 = 4;
        final int i12 = 2;
        int i13 = 3;
        final int i14 = 0;
        final int i15 = 1;
        Uri data = getIntent().getData();
        this.R = data;
        if (data == null) {
            finish();
            return;
        }
        e.b().j(this);
        this.X = this.A.getSharedPreferences("CodeEditor", 0);
        this.S = Build.VERSION.SDK_INT >= 21;
        this.I = (TextView) findViewById(R.id.v_ts_load);
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_lay_search);
        this.Y = constraintLayout;
        constraintLayout.setVisibility(8);
        this.Z = (EditText) findViewById(R.id.v_edit_search1);
        this.f3970h0 = (EditText) findViewById(R.id.v_edit_search2);
        this.Z.addTextChangedListener(new aa(this, 5));
        this.Z.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.c1

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityCodeEditor f15600b;

            {
                this.f15600b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i16, KeyEvent keyEvent) {
                ActivityCodeEditor activityCodeEditor = this.f15600b;
                switch (i14) {
                    case 0:
                        int i17 = ActivityCodeEditor.f3967c1;
                        activityCodeEditor.getClass();
                        if (keyEvent.getAction() != 0 || (i16 != 20 && i16 != 66)) {
                            return false;
                        }
                        activityCodeEditor.f3970h0.requestFocus();
                        return true;
                    case 1:
                        int i18 = ActivityCodeEditor.f3967c1;
                        activityCodeEditor.getClass();
                        if (keyEvent.getAction() != 0 || i16 != 19 || activityCodeEditor.D.getScrollY() != 0) {
                            return false;
                        }
                        if (activityCodeEditor.Y.getVisibility() == 0) {
                            activityCodeEditor.M0.requestFocus();
                            return true;
                        }
                        activityCodeEditor.E.requestFocus();
                        return true;
                    default:
                        int i19 = ActivityCodeEditor.f3967c1;
                        activityCodeEditor.getClass();
                        if (keyEvent.getAction() == 0 && i16 == 19) {
                            mb.b bVar = activityCodeEditor.C.getCursor().f11081c;
                            if (bVar.f11057b == 0 && bVar.f11058c == 0) {
                                if (activityCodeEditor.Y.getVisibility() == 0) {
                                    activityCodeEditor.M0.requestFocus();
                                } else {
                                    activityCodeEditor.E.requestFocus();
                                }
                            }
                        }
                        return false;
                }
            }
        });
        this.f3970h0.setOnKeyListener(new uc(this, 3));
        this.f3971t0 = (TextView) findViewById(R.id.v_ts_search_results);
        this.M0 = (TextView) findViewById(R.id.v_btn1);
        this.N0 = (TextView) findViewById(R.id.v_btn2);
        this.O0 = (TextView) findViewById(R.id.v_btn3);
        this.P0 = (TextView) findViewById(R.id.v_btn4);
        this.Q0 = (TextView) findViewById(R.id.v_btn5);
        this.R0 = (TextView) findViewById(R.id.v_btn6);
        this.M0.setOnClickListener(this);
        this.N0.setOnClickListener(this);
        this.O0.setOnClickListener(this);
        this.P0.setOnClickListener(this);
        this.Q0.setOnClickListener(this);
        this.R0.setOnClickListener(this);
        this.M0.setOnKeyListener(new o4(i12));
        this.R0.setOnKeyListener(new o4(i13));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_top);
        this.E = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this, 0, false));
        t0 t0Var = new t0(1);
        this.G = t0Var;
        t0Var.q(new CodeEditorTopBean(R.drawable.tp_bs_return));
        this.G.q(new CodeEditorTopBean(R.drawable.tp_bs_save));
        this.G.q(new CodeEditorTopBean(R.drawable.tp_bs_lc));
        boolean z14 = this.S;
        int i16 = this.V0;
        int i17 = this.f3969b1;
        int i18 = this.U0;
        int i19 = this.T0;
        if (z14) {
            this.G.q(new CodeEditorTopBean(R.drawable.tp_bs_repeal));
            this.G.q(new CodeEditorTopBean(R.drawable.tp_bs_reform));
            this.G.q(new CodeEditorTopBean(R.drawable.tp_bs_search));
            this.G.q(new CodeEditorTopBean(R.drawable.tp_bs_set));
            this.G.q(new CodeEditorTopBean("替换", i19));
            this.G.q(new CodeEditorTopBean("编码", i18));
            this.G.q(new CodeEditorTopBean("编码", i17));
            this.G.q(new CodeEditorTopBean("重载", i16));
            this.G.q(new CodeEditorTopBean("高亮", this.W0));
        } else {
            this.G.q(new CodeEditorTopBean("替换", i19));
            this.G.q(new CodeEditorTopBean("编码", i18));
            this.G.q(new CodeEditorTopBean("编码", i17));
            this.G.q(new CodeEditorTopBean("重载", i16));
        }
        Uri uri = this.R;
        if (uri == null) {
            contentResolver = null;
        } else {
            if ("content".equals(uri.getScheme())) {
                try {
                    contentResolver = getContentResolver();
                    Cursor cursorQuery = contentResolver.query(uri, null, null, null, null);
                    try {
                        if (cursorQuery != null) {
                            try {
                                if (cursorQuery.moveToFirst()) {
                                    String[] strArr2 = {"_display_name", "_display_name", "title", "name"};
                                    contentResolver = null;
                                    for (int i20 = 0; i20 < 4; i20++) {
                                        try {
                                            int columnIndex = cursorQuery.getColumnIndex(strArr2[i20]);
                                            if (columnIndex != -1 && (contentResolver = cursorQuery.getString(columnIndex)) != null && !contentResolver.isEmpty()) {
                                                break;
                                            }
                                        } catch (Throwable th3) {
                                            th2 = th3;
                                            try {
                                                cursorQuery.close();
                                                throw th2;
                                            } catch (Throwable th4) {
                                                try {
                                                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th4);
                                                    throw th2;
                                                } catch (Exception unused) {
                                                    throw th2;
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    contentResolver = null;
                                }
                                if (cursorQuery != null) {
                                    cursorQuery.close();
                                }
                            } catch (Throwable th5) {
                                th2 = th5;
                            }
                        }
                    } catch (Exception e7) {
                        e = e7;
                        e.printStackTrace();
                        if (contentResolver == null) {
                            contentResolver = path.substring(path.lastIndexOf("/") + 1);
                        }
                        if (contentResolver == null) {
                            contentResolver = lastPathSegment;
                        }
                        this.S0 = contentResolver;
                        if (contentResolver != null) {
                            this.G.q(new CodeEditorTopBean("格式化", this.X0));
                            this.G.q(new CodeEditorTopBean("压缩", this.Y0));
                        }
                        this.G.q(new CodeEditorTopBean("清空", this.f3968a1));
                        this.G.q(new CodeEditorTopBean("TV", this.Z0));
                        this.E.setAdapter(this.G);
                        this.G.f2881e = new d1(this, 6);
                        this.E.setOnInBorderKeyEventListener(new v0(i13));
                        this.F = (RecyclerView) findViewById(R.id.v_list_bottom);
                        this.H = new t0(1);
                        i10 = 0;
                        while (true) {
                            strArr = this.K;
                            if (i10 < strArr.length) {
                            }
                            this.H.q(new CodeEditorTopBean(strArr[i10]));
                            i10++;
                        }
                        this.F.setAdapter(this.H);
                        this.H.f2881e = new d1(this, 7);
                        NestedScrollView nestedScrollView = (NestedScrollView) findViewById(R.id.v_scrollView);
                        if (this.S) {
                        }
                        z13 = this.S;
                        if (z13) {
                        }
                        x(null);
                    }
                } catch (Exception e10) {
                    e = e10;
                    contentResolver = null;
                }
            } else {
                contentResolver = null;
            }
            if (contentResolver == null && "file".equals(uri.getScheme()) && (path = uri.getPath()) != null) {
                contentResolver = path.substring(path.lastIndexOf("/") + 1);
            }
            if (contentResolver == null && (lastPathSegment = uri.getLastPathSegment()) != null) {
                contentResolver = lastPathSegment;
            }
        }
        this.S0 = contentResolver;
        if (contentResolver != null && contentResolver.toLowerCase().endsWith(".json")) {
            this.G.q(new CodeEditorTopBean("格式化", this.X0));
            this.G.q(new CodeEditorTopBean("压缩", this.Y0));
        }
        this.G.q(new CodeEditorTopBean("清空", this.f3968a1));
        this.G.q(new CodeEditorTopBean("TV", this.Z0));
        this.E.setAdapter(this.G);
        this.G.f2881e = new d1(this, 6);
        this.E.setOnInBorderKeyEventListener(new v0(i13));
        this.F = (RecyclerView) findViewById(R.id.v_list_bottom);
        this.H = new t0(1);
        i10 = 0;
        while (true) {
            strArr = this.K;
            if (i10 < strArr.length) {
                break;
            }
            this.H.q(new CodeEditorTopBean(strArr[i10]));
            i10++;
        }
        this.F.setAdapter(this.H);
        this.H.f2881e = new d1(this, 7);
        NestedScrollView nestedScrollView2 = (NestedScrollView) findViewById(R.id.v_scrollView);
        if (this.S) {
            nestedScrollView2.setVisibility(0);
            EditText editText = new EditText(this);
            this.D = editText;
            editText.setGravity(8388659);
            this.D.setBackgroundColor(-1);
            this.D.setPadding(10, 10, 10, 10);
            this.D.setTextSize(18.0f);
            this.D.setLayoutParams(new i0.e(-1, -1));
            this.D.setMinHeight(1000);
            this.D.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.c1

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ ActivityCodeEditor f15600b;

                {
                    this.f15600b = this;
                }

                @Override // android.view.View.OnKeyListener
                public final boolean onKey(View view, int i162, KeyEvent keyEvent) {
                    ActivityCodeEditor activityCodeEditor = this.f15600b;
                    switch (i15) {
                        case 0:
                            int i172 = ActivityCodeEditor.f3967c1;
                            activityCodeEditor.getClass();
                            if (keyEvent.getAction() != 0 || (i162 != 20 && i162 != 66)) {
                                return false;
                            }
                            activityCodeEditor.f3970h0.requestFocus();
                            return true;
                        case 1:
                            int i182 = ActivityCodeEditor.f3967c1;
                            activityCodeEditor.getClass();
                            if (keyEvent.getAction() != 0 || i162 != 19 || activityCodeEditor.D.getScrollY() != 0) {
                                return false;
                            }
                            if (activityCodeEditor.Y.getVisibility() == 0) {
                                activityCodeEditor.M0.requestFocus();
                                return true;
                            }
                            activityCodeEditor.E.requestFocus();
                            return true;
                        default:
                            int i192 = ActivityCodeEditor.f3967c1;
                            activityCodeEditor.getClass();
                            if (keyEvent.getAction() == 0 && i162 == 19) {
                                mb.b bVar = activityCodeEditor.C.getCursor().f11081c;
                                if (bVar.f11057b == 0 && bVar.f11058c == 0) {
                                    if (activityCodeEditor.Y.getVisibility() == 0) {
                                        activityCodeEditor.M0.requestFocus();
                                    } else {
                                        activityCodeEditor.E.requestFocus();
                                    }
                                }
                            }
                            return false;
                    }
                }
            });
        } else {
            this.V = new p(1, false);
            CodeEditor codeEditor = new CodeEditor(this, null);
            this.C = codeEditor;
            codeEditor.setCursorWidth(getResources().getDimensionPixelSize(R.dimen.dp_4));
            CodeEditor codeEditor2 = this.C;
            Typeface typeface = Typeface.MONOSPACE;
            codeEditor2.setTypefaceText(typeface);
            this.C.setTypefaceText(typeface);
            CodeEditor codeEditor3 = this.C;
            codeEditor3.B = 2.0f;
            codeEditor3.A = 1.1f;
            int i21 = 18;
            try {
                i21 = this.X.getInt("size", 18);
            } catch (Exception unused2) {
                this.X.edit().putInt("size", 18).apply();
            }
            this.C.setTextSize(i21);
            try {
                z = this.X.getBoolean("auto_line", true);
            } catch (Exception unused3) {
                this.X.edit().putBoolean("auto_line", true).apply();
                z = true;
            }
            this.C.setWordwrap(z);
            try {
                z4 = this.X.getBoolean("show_line_number", true);
            } catch (Exception unused4) {
                this.X.edit().putBoolean("show_line_number", true).apply();
                z4 = true;
            }
            this.C.setLineNumberEnabled(z4);
            try {
                z10 = this.X.getBoolean("gesture_scale", false);
            } catch (Exception unused5) {
                this.X.edit().putBoolean("gesture_scale", false).apply();
                z10 = false;
            }
            this.C.setScalable(z10);
            try {
                z11 = this.X.getBoolean("highlight_current_line", true);
            } catch (Exception unused6) {
                this.X.edit().putBoolean("highlight_current_line", true).apply();
                z11 = true;
            }
            this.C.setHighlightCurrentLine(z11);
            try {
                z12 = this.X.getBoolean("auto_indent", true);
            } catch (Exception unused7) {
                this.X.edit().putBoolean("auto_indent", true).apply();
                z12 = true;
            }
            this.C.M(z12);
            this.C.setEditable(true);
            this.C.setFocusable(true);
            this.C.setFocusableInTouchMode(true);
            this.C.setSoftKeyboardEnabled(true);
            this.C.setDisableSoftKbdIfHardKbdAvailable(false);
            this.C.l0(v.class, new m(i11, this));
            tb.e props = this.C.getProps();
            props.f14924q = false;
            props.f14913d = false;
            props.f14912c = -1;
            props.f14911b = false;
            this.C.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.c1

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ ActivityCodeEditor f15600b;

                {
                    this.f15600b = this;
                }

                @Override // android.view.View.OnKeyListener
                public final boolean onKey(View view, int i162, KeyEvent keyEvent) {
                    ActivityCodeEditor activityCodeEditor = this.f15600b;
                    switch (i12) {
                        case 0:
                            int i172 = ActivityCodeEditor.f3967c1;
                            activityCodeEditor.getClass();
                            if (keyEvent.getAction() != 0 || (i162 != 20 && i162 != 66)) {
                                return false;
                            }
                            activityCodeEditor.f3970h0.requestFocus();
                            return true;
                        case 1:
                            int i182 = ActivityCodeEditor.f3967c1;
                            activityCodeEditor.getClass();
                            if (keyEvent.getAction() != 0 || i162 != 19 || activityCodeEditor.D.getScrollY() != 0) {
                                return false;
                            }
                            if (activityCodeEditor.Y.getVisibility() == 0) {
                                activityCodeEditor.M0.requestFocus();
                                return true;
                            }
                            activityCodeEditor.E.requestFocus();
                            return true;
                        default:
                            int i192 = ActivityCodeEditor.f3967c1;
                            activityCodeEditor.getClass();
                            if (keyEvent.getAction() == 0 && i162 == 19) {
                                mb.b bVar = activityCodeEditor.C.getCursor().f11081c;
                                if (bVar.f11057b == 0 && bVar.f11058c == 0) {
                                    if (activityCodeEditor.Y.getVisibility() == 0) {
                                        activityCodeEditor.M0.requestFocus();
                                    } else {
                                        activityCodeEditor.E.requestFocus();
                                    }
                                }
                            }
                            return false;
                    }
                }
            });
            i0.e eVar = new i0.e(0, 0);
            eVar.f8269j = R.id.v_lay_top;
            eVar.f8271k = R.id.v_list_bottom;
            eVar.f8284t = 0;
            eVar.f8286v = 0;
            this.C.setLayoutParams(eVar);
        }
        z13 = this.S;
        if (z13) {
            ((NestedScrollView) findViewById(z13 ? R.id.v_root : R.id.v_scrollView)).addView(this.S ? this.C : this.D);
        } else {
            ((ConstraintLayout) findViewById(z13 ? R.id.v_root : R.id.v_scrollView)).addView(this.S ? this.C : this.D);
        }
        x(null);
    }

    public final void x(String str) {
        new c(0, new ma.b(this, 8, str)).d(f.f13757b).a(b.a()).b(new e1(this, 1));
    }

    public final String y(String str) {
        InputStream inputStreamOpenInputStream;
        ContentResolver contentResolver = getContentResolver();
        if (str == null || str.startsWith("自动")) {
            try {
                inputStreamOpenInputStream = contentResolver.openInputStream(this.R);
                try {
                    str = UniversalDetector.detectCharset(inputStreamOpenInputStream);
                    System.out.getClass();
                    if (inputStreamOpenInputStream != null) {
                        inputStreamOpenInputStream.close();
                    }
                } finally {
                    if (inputStreamOpenInputStream != null) {
                        try {
                            inputStreamOpenInputStream.close();
                        } catch (Throwable th2) {
                            try {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                            } catch (Exception unused) {
                            }
                        }
                    }
                }
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
        String str2 = HTTP.UTF_8;
        if (str == null || str.isEmpty()) {
            str = HTTP.UTF_8;
        }
        if (!str.equals("US-ASCII")) {
            str2 = str;
        }
        inputStreamOpenInputStream = contentResolver.openInputStream(this.R);
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpenInputStream, str2));
            StringBuilder sb2 = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    bufferedReader.close();
                    inputStreamOpenInputStream.close();
                    this.O = str2;
                    this.P = str2;
                    String string = sb2.toString();
                    inputStreamOpenInputStream.close();
                    return string;
                }
                sb2.append(line);
                sb2.append('\n');
            }
        } catch (Throwable th3) {
            if (inputStreamOpenInputStream != null) {
                try {
                } catch (Throwable th22) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th3, th22);
                    } catch (Exception unused2) {
                    }
                }
            }
            throw th3;
        }
    }

    public final void z() {
        this.C.g0(0, 0);
        try {
            this.C.getSearcher().h();
        } catch (Exception unused) {
        }
        if (this.Z.getText().toString().isEmpty()) {
            this.f3971t0.setText("结果：0");
            return;
        }
        try {
            r searcher = this.C.getSearcher();
            String string = this.Z.getText().toString();
            p pVar = this.V;
            searcher.getClass();
            if (string.isEmpty()) {
                throw new IllegalArgumentException("pattern length must be > 0");
            }
            if (pVar.f14993b == 3) {
                Pattern.compile(string);
            }
            searcher.f15000b = string;
            searcher.f15001c = pVar;
            searcher.b();
            searcher.f14999a.postInvalidate();
        } catch (Exception unused2) {
        }
    }
}
