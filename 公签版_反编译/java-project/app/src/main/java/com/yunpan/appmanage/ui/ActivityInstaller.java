package com.yunpan.appmanage.ui;

import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.hjq.permissions.XXPermissions;
import com.hjq.permissions.permission.PermissionLists;
import com.hjq.permissions.permission.base.IPermission;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityInstaller;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import da.g;
import ef.b;
import ff.c;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.DecimalFormat;
import rc.f;

/* loaded from: classes.dex */
public class ActivityInstaller extends g {
    public static final /* synthetic */ int P = 0;
    public TextView C;
    public TextView D;
    public TextView E;
    public ConstraintLayout I;
    public ImageView K;
    public TextView L;
    public TextView M;
    public TextView N;
    public boolean F = false;
    public b G = null;
    public c H = null;
    public boolean O = false;

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        this.F = true;
        this.K.setImageDrawable(null);
        if (this.O) {
            DecimalFormat decimalFormat = k.f4034u0;
            k kVar = j.f4033a;
            kVar.E.stop();
            kVar.E = null;
        }
        super.onDestroy();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_installer;
    }

    @Override // da.g
    public final void u() {
        this.C = (TextView) findViewById(R.id.v_title);
        TextView textView = (TextView) findViewById(R.id.v_btn1);
        this.D = textView;
        final int i10 = 0;
        textView.setOnClickListener(new View.OnClickListener(this) { // from class: ua.q2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityInstaller f15897b;

            {
                this.f15897b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityInstaller activityInstaller = this.f15897b;
                switch (i10) {
                    case 0:
                        int i11 = ActivityInstaller.P;
                        activityInstaller.finish();
                        break;
                    default:
                        p000if.a.z0(activityInstaller, activityInstaller.H.f5813a);
                        activityInstaller.finish();
                        break;
                }
            }
        });
        TextView textView2 = (TextView) findViewById(R.id.v_btn2);
        this.E = textView2;
        textView2.setVisibility(8);
        final int i11 = 1;
        this.E.setOnClickListener(new View.OnClickListener(this) { // from class: ua.q2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityInstaller f15897b;

            {
                this.f15897b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityInstaller activityInstaller = this.f15897b;
                switch (i11) {
                    case 0:
                        int i112 = ActivityInstaller.P;
                        activityInstaller.finish();
                        break;
                    default:
                        p000if.a.z0(activityInstaller, activityInstaller.H.f5813a);
                        activityInstaller.finish();
                        break;
                }
            }
        });
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_lay_top);
        this.I = constraintLayout;
        constraintLayout.setVisibility(8);
        this.K = (ImageView) findViewById(R.id.v_apk_ico);
        this.L = (TextView) findViewById(R.id.v_apk_name);
        this.M = (TextView) findViewById(R.id.v_apk_pack);
        this.N = (TextView) findViewById(R.id.v_apk_version);
        Uri data = getIntent().getData();
        if (data == null) {
            return;
        }
        if (XXPermissions.isGrantedPermissions(this.A, new IPermission[]{PermissionLists.getReadExternalStoragePermission(), PermissionLists.getWriteExternalStoragePermission(), PermissionLists.getGetInstalledAppsPermission()})) {
            new mc.c(i10, new ma.b(this, 22, data)).d(f.f13757b).a(fc.b.a()).b(new ka.c(19, this));
        } else {
            this.C.setText("没有存储权限");
            this.D.setText("好的");
        }
    }

    public final void x(Uri uri, File file) {
        try {
            InputStream inputStreamOpenInputStream = getContentResolver().openInputStream(uri);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[8192];
                    while (true) {
                        int i10 = inputStreamOpenInputStream.read(bArr);
                        if (i10 == -1) {
                            fileOutputStream.close();
                            inputStreamOpenInputStream.close();
                            return;
                        }
                        fileOutputStream.write(bArr, 0, i10);
                    }
                } catch (Throwable th2) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th3) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        } catch (Exception unused) {
                        }
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                if (inputStreamOpenInputStream != null) {
                    try {
                        inputStreamOpenInputStream.close();
                    } catch (Throwable th5) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                        } catch (Exception unused2) {
                        }
                    }
                }
                throw th4;
            }
        } catch (Exception unused3) {
            throw new Exception();
        }
    }
}
