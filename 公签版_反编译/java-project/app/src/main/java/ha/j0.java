package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.StrIntBoolBean;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* loaded from: classes.dex */
public final class j0 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public RecyclerView f7230g;

    /* renamed from: h, reason: collision with root package name */
    public x9.w0 f7231h;

    /* renamed from: i, reason: collision with root package name */
    public final g0 f7232i;

    /* renamed from: j, reason: collision with root package name */
    public int f7233j;

    public j0(Activity activity, Context context, int i10, g0 g0Var) {
        super(activity, context, R.layout.dialog_add_intent_flags);
        this.f7232i = g0Var;
        this.f7233j = i10;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        findViewById(R.id.v_btn_yes).setOnClickListener(new com.google.android.material.datepicker.l(this, 2));
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.v_list);
        this.f7230g = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(1, false));
        x9.w0 w0Var = new x9.w0();
        this.f7231h = w0Var;
        w0Var.q(new StrIntBoolBean("FLAG_ACTIVITY_NEW_TASK", 268435456, (this.f7233j & 268435456) != 0));
        this.f7231h.q(new StrIntBoolBean("FLAG_ACTIVITY_CLEAR_TASK", 32768, (this.f7233j & 32768) != 0));
        this.f7231h.q(new StrIntBoolBean("FLAG_ACTIVITY_CLEAR_TOP", 67108864, (this.f7233j & 67108864) != 0));
        this.f7231h.q(new StrIntBoolBean("FLAG_ACTIVITY_SINGLE_TOP", PKIFailureInfo.duplicateCertReq, (this.f7233j & PKIFailureInfo.duplicateCertReq) != 0));
        this.f7231h.q(new StrIntBoolBean("FLAG_ACTIVITY_MULTIPLE_TASK", 134217728, (this.f7233j & 134217728) != 0));
        this.f7231h.q(new StrIntBoolBean("FLAG_ACTIVITY_NO_HISTORY", 1073741824, (this.f7233j & 1073741824) != 0));
        this.f7231h.q(new StrIntBoolBean("FLAG_ACTIVITY_REORDER_TO_FRONT", 131072, (this.f7233j & 131072) != 0));
        this.f7231h.q(new StrIntBoolBean("FLAG_ACTIVITY_NO_ANIMATION", 65536, (this.f7233j & 65536) != 0));
        this.f7231h.q(new StrIntBoolBean("FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET", PKIFailureInfo.signerNotTrusted, (this.f7233j & PKIFailureInfo.signerNotTrusted) != 0));
        this.f7231h.q(new StrIntBoolBean("FLAG_ACTIVITY_RESET_TASK_IF_NEEDED", PKIFailureInfo.badSenderNonce, (this.f7233j & PKIFailureInfo.badSenderNonce) != 0));
        this.f7231h.q(new StrIntBoolBean("FLAG_ACTIVITY_FORWARD_RESULT", 33554432, (this.f7233j & 33554432) != 0));
        this.f7231h.q(new StrIntBoolBean("FLAG_ACTIVITY_PREVIOUS_IS_TOP", 16777216, (this.f7233j & 16777216) != 0));
        this.f7231h.q(new StrIntBoolBean("FLAG_ACTIVITY_EXCLUDE_FROM_RECENTS", 8388608, (this.f7233j & 8388608) != 0));
        this.f7231h.q(new StrIntBoolBean("FLAG_ACTIVITY_BROUGHT_TO_FRONT", 4194304, (this.f7233j & 4194304) != 0));
        this.f7231h.q(new StrIntBoolBean("FLAG_ACTIVITY_TASK_ON_HOME", 16384, (this.f7233j & 16384) != 0));
        this.f7231h.q(new StrIntBoolBean("FLAG_ACTIVITY_LAUNCHED_FROM_HISTORY", 1048576, (this.f7233j & 1048576) != 0));
        this.f7231h.q(new StrIntBoolBean("FLAG_DEBUG_LOG_RESOLUTION", 8, (this.f7233j & 8) != 0));
        this.f7231h.q(new StrIntBoolBean("FLAG_ACTIVITY_NO_USER_ACTION", 262144, (this.f7233j & 262144) != 0));
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 21) {
            this.f7231h.q(new StrIntBoolBean("FLAG_ACTIVITY_NEW_DOCUMENT", PKIFailureInfo.signerNotTrusted, (this.f7233j & PKIFailureInfo.signerNotTrusted) != 0));
            this.f7231h.q(new StrIntBoolBean("FLAG_ACTIVITY_RETAIN_IN_RECENTS", 8192, (this.f7233j & 8192) != 0));
        }
        if (i10 >= 24) {
            this.f7231h.q(new StrIntBoolBean("FLAG_ACTIVITY_LAUNCH_ADJACENT", 4096, (this.f7233j & 4096) != 0));
        }
        if (i10 >= 29) {
            this.f7231h.q(new StrIntBoolBean("FLAG_ACTIVITY_MATCH_EXTERNAL", 2048, (this.f7233j & 2048) != 0));
        }
        if (i10 >= 30) {
            this.f7231h.q(new StrIntBoolBean("FLAG_ACTIVITY_REQUIRE_DEFAULT", 512, (this.f7233j & 512) != 0));
            this.f7231h.q(new StrIntBoolBean("FLAG_ACTIVITY_REQUIRE_NON_BROWSER", 1024, (this.f7233j & 1024) != 0));
        }
        this.f7230g.setAdapter(this.f7231h);
        this.f7231h.f2881e = new a1.d(7, this);
    }
}
