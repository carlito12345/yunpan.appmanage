package com.yunpan.appmanage.ui;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import b7.a;
import com.davemorrissey.labs.subscaleview.ImageSource;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.ImageData;
import com.yunpan.appmanage.carsdk.u;
import com.yunpan.appmanage.db.FileInfoDao;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityImage;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import com.yunpan.appmanage.util.v;
import com.yunpan.appmanage.util.w;
import com.yunpan.appmanage.view.MyImageView;
import da.g;
import ha.n;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.DecimalFormat;
import kh.e;
import org.greenrobot.eventbus.ThreadMode;
import org.slf4j.Marker;
import ua.i1;

/* loaded from: classes.dex */
public class ActivityImage extends g {

    /* renamed from: t0, reason: collision with root package name */
    public static final /* synthetic */ int f3974t0 = 0;
    public MyImageView C;
    public ConstraintLayout D;
    public TextView E;
    public TextView F;
    public TextView G;
    public TextView H;
    public ConstraintLayout I;
    public TextView K;
    public TextView L;
    public TextView M;
    public TextView N;
    public ConstraintLayout O;
    public CheckBox P;
    public ConstraintLayout R;
    public TextView S;
    public TextView T;
    public TextView V;
    public float X = 0.0f;
    public final u Y = new u(this, Looper.getMainLooper(), 19);
    public long Z = 0;

    /* renamed from: h0, reason: collision with root package name */
    public int f3975h0 = 0;

    public final void A() {
        this.D.setVisibility(0);
        this.I.setVisibility(0);
        if (this.X > 0.0f) {
            this.M.setVisibility(0);
        }
    }

    @Override // androidx.activity.m, android.app.Activity
    public final void onBackPressed() {
        if (this.I.getVisibility() == 0) {
            x();
        } else {
            super.onBackPressed();
        }
    }

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        u uVar = this.Y;
        uVar.removeMessages(0);
        uVar.removeCallbacksAndMessages(null);
        e.b().l(this);
        super.onDestroy();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_image;
    }

    @Override // da.g
    public final void u() {
        e.b().j(this);
        this.C = (MyImageView) findViewById(R.id.v_image);
        this.D = (ConstraintLayout) findViewById(R.id.v_lay_top);
        this.E = (TextView) findViewById(R.id.v_btn_return);
        this.F = (TextView) findViewById(R.id.v_file_count);
        this.G = (TextView) findViewById(R.id.v_file_info);
        this.H = (TextView) findViewById(R.id.v_file_name);
        this.I = (ConstraintLayout) findViewById(R.id.v_lay_bottom);
        this.K = (TextView) findViewById(R.id.v_btn_delete);
        this.L = (TextView) findViewById(R.id.v_btn_rotation);
        this.M = (TextView) findViewById(R.id.v_btn_save);
        this.N = (TextView) findViewById(R.id.v_btn_auto);
        this.O = (ConstraintLayout) findViewById(R.id.v_lay_auto);
        this.P = (CheckBox) findViewById(R.id.v_checkBox_auto);
        this.R = (ConstraintLayout) findViewById(R.id.v_btn_time);
        this.S = (TextView) findViewById(R.id.v_btn_time_add);
        this.T = (TextView) findViewById(R.id.v_text_time);
        this.V = (TextView) findViewById(R.id.v_btn_time_reduce);
        final int i10 = 0;
        this.E.setOnClickListener(new View.OnClickListener(this) { // from class: ua.e2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityImage f15651b;

            {
                this.f15651b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                final int i11 = 1;
                final ActivityImage activityImage = this.f15651b;
                switch (i10) {
                    case 0:
                        int i12 = ActivityImage.f3974t0;
                        activityImage.finish();
                        break;
                    case 1:
                        int i13 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                        int i14 = wVar.H0 - 1;
                        i = i14 >= 0 ? i14 : 0;
                        activityImage.T.setText(i + "s");
                        wVar.x(i);
                        break;
                    case 2:
                        int i15 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                        int i16 = wVar2.H0 + 1;
                        activityImage.T.setText(i16 + "s");
                        wVar2.x(i16);
                        break;
                    case 3:
                        if (activityImage.D.getVisibility() != 0) {
                            activityImage.A();
                            break;
                        } else {
                            activityImage.x();
                            break;
                        }
                    case 4:
                        ConstraintLayout constraintLayout = activityImage.O;
                        constraintLayout.setVisibility(constraintLayout.getVisibility() != 0 ? 0 : 8);
                        break;
                    case 5:
                        int i17 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                        if (com.yunpan.appmanage.util.j.f4033a.f4076y.userInfo == null) {
                            new mc.c(0, new v0(7)).d(rc.f.f13757b).a(fc.b.a()).b(new h2(activityImage, i));
                            break;
                        }
                        break;
                    case 6:
                        float f10 = activityImage.X + 90.0f;
                        activityImage.X = f10;
                        if (f10 < 360.0f) {
                            new mc.c(0, new ec.d() { // from class: ua.g2
                                @Override // ec.d
                                public final void g(mc.b bVar) throws IOException {
                                    ActivityImage activityImage2 = activityImage;
                                    switch (i) {
                                        case 0:
                                            int i18 = ActivityImage.f3974t0;
                                            activityImage2.getClass();
                                            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                            com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                            ImageData imageData = kVar.f4076y;
                                            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(imageData.bdFiles.get(imageData.position).f18365b);
                                            Matrix matrix = new Matrix();
                                            matrix.postRotate(activityImage2.X);
                                            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix, true);
                                            FileOutputStream fileOutputStream = new FileOutputStream(new File(activityImage2.A.getCacheDir() + "/rotation.ming"));
                                            ImageData imageData2 = kVar.f4076y;
                                            String lowerCase = imageData2.bdFiles.get(imageData2.position).f18364a.toLowerCase();
                                            if (lowerCase.endsWith(".jpg") || lowerCase.endsWith(".jpeg")) {
                                                bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                                            } else {
                                                bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                                            }
                                            fileOutputStream.flush();
                                            fileOutputStream.close();
                                            bVar.b();
                                            break;
                                        default:
                                            int i19 = ActivityImage.f3974t0;
                                            activityImage2.getClass();
                                            DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                            com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                                            ImageData imageData3 = kVar2.f4076y;
                                            String lowerCase2 = imageData3.bdFiles.get(imageData3.position).f18364a.toLowerCase();
                                            ImageData imageData4 = kVar2.f4076y;
                                            String str = imageData4.bdFiles.get(imageData4.position).f18365b;
                                            String strSubstring = str.substring(0, str.lastIndexOf("."));
                                            String strJ = (lowerCase2.endsWith(".jpg") || lowerCase2.endsWith(".jpeg")) ? g.b.j(strSubstring, ".jpg") : g.b.j(strSubstring, ".png");
                                            u9.d.r("\\cp -R '" + activityImage2.A.getCacheDir() + "/rotation.ming' '" + strJ + "'").l0();
                                            if (!com.yunpan.appmanage.util.a0.g(strJ)) {
                                                bVar.d(new Throwable("保存失败"));
                                                break;
                                            } else {
                                                MyDb.get().addIfFile(strJ);
                                                ImageData imageData5 = kVar2.f4076y;
                                                if (strJ.equals(imageData5.bdFiles.get(imageData5.position).f18365b)) {
                                                    kh.e.b().f(new ja.e(strJ));
                                                } else {
                                                    a2.w0 w0Var = fa.b0.f5652a;
                                                    ImageData imageData6 = kVar2.f4076y;
                                                    String str2 = imageData6.bdFiles.get(imageData6.position).f18365b;
                                                    w0Var.getClass();
                                                    a2.w0.B(str2);
                                                    FileInfoDao fileInfoDao = MyDb.get().getFileInfoDao();
                                                    ImageData imageData7 = kVar2.f4076y;
                                                    fileInfoDao.delete(imageData7.bdFiles.get(imageData7.position).f18365b);
                                                    x9.w3 w3Var = new x9.w3(strJ);
                                                    kh.e eVarB = kh.e.b();
                                                    ImageData imageData8 = kVar2.f4076y;
                                                    eVarB.f(new ja.e(imageData8.bdFiles.get(imageData8.position).f18365b, w3Var));
                                                    ImageData imageData9 = kVar2.f4076y;
                                                    imageData9.bdFiles.set(imageData9.position, w3Var);
                                                }
                                                bVar.b();
                                                break;
                                            }
                                            break;
                                    }
                                }
                            }).d(rc.f.f13757b).a(fc.b.a()).b(new h2(activityImage, i11));
                            break;
                        } else {
                            activityImage.X = 0.0f;
                            activityImage.M.setVisibility(8);
                            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                            ImageData imageData = com.yunpan.appmanage.util.j.f4033a.f4076y;
                            activityImage.z(imageData.bdFiles.get(imageData.position).f18365b);
                            break;
                        }
                    default:
                        int i18 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        new mc.c(0, new ec.d() { // from class: ua.g2
                            @Override // ec.d
                            public final void g(mc.b bVar) throws IOException {
                                ActivityImage activityImage2 = activityImage;
                                switch (i11) {
                                    case 0:
                                        int i182 = ActivityImage.f3974t0;
                                        activityImage2.getClass();
                                        DecimalFormat decimalFormat22 = com.yunpan.appmanage.util.k.f4034u0;
                                        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                        ImageData imageData2 = kVar.f4076y;
                                        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(imageData2.bdFiles.get(imageData2.position).f18365b);
                                        Matrix matrix = new Matrix();
                                        matrix.postRotate(activityImage2.X);
                                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix, true);
                                        FileOutputStream fileOutputStream = new FileOutputStream(new File(activityImage2.A.getCacheDir() + "/rotation.ming"));
                                        ImageData imageData22 = kVar.f4076y;
                                        String lowerCase = imageData22.bdFiles.get(imageData22.position).f18364a.toLowerCase();
                                        if (lowerCase.endsWith(".jpg") || lowerCase.endsWith(".jpeg")) {
                                            bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                                        } else {
                                            bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                                        }
                                        fileOutputStream.flush();
                                        fileOutputStream.close();
                                        bVar.b();
                                        break;
                                    default:
                                        int i19 = ActivityImage.f3974t0;
                                        activityImage2.getClass();
                                        DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                        com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                                        ImageData imageData3 = kVar2.f4076y;
                                        String lowerCase2 = imageData3.bdFiles.get(imageData3.position).f18364a.toLowerCase();
                                        ImageData imageData4 = kVar2.f4076y;
                                        String str = imageData4.bdFiles.get(imageData4.position).f18365b;
                                        String strSubstring = str.substring(0, str.lastIndexOf("."));
                                        String strJ = (lowerCase2.endsWith(".jpg") || lowerCase2.endsWith(".jpeg")) ? g.b.j(strSubstring, ".jpg") : g.b.j(strSubstring, ".png");
                                        u9.d.r("\\cp -R '" + activityImage2.A.getCacheDir() + "/rotation.ming' '" + strJ + "'").l0();
                                        if (!com.yunpan.appmanage.util.a0.g(strJ)) {
                                            bVar.d(new Throwable("保存失败"));
                                            break;
                                        } else {
                                            MyDb.get().addIfFile(strJ);
                                            ImageData imageData5 = kVar2.f4076y;
                                            if (strJ.equals(imageData5.bdFiles.get(imageData5.position).f18365b)) {
                                                kh.e.b().f(new ja.e(strJ));
                                            } else {
                                                a2.w0 w0Var = fa.b0.f5652a;
                                                ImageData imageData6 = kVar2.f4076y;
                                                String str2 = imageData6.bdFiles.get(imageData6.position).f18365b;
                                                w0Var.getClass();
                                                a2.w0.B(str2);
                                                FileInfoDao fileInfoDao = MyDb.get().getFileInfoDao();
                                                ImageData imageData7 = kVar2.f4076y;
                                                fileInfoDao.delete(imageData7.bdFiles.get(imageData7.position).f18365b);
                                                x9.w3 w3Var = new x9.w3(strJ);
                                                kh.e eVarB = kh.e.b();
                                                ImageData imageData8 = kVar2.f4076y;
                                                eVarB.f(new ja.e(imageData8.bdFiles.get(imageData8.position).f18365b, w3Var));
                                                ImageData imageData9 = kVar2.f4076y;
                                                imageData9.bdFiles.set(imageData9.position, w3Var);
                                            }
                                            bVar.b();
                                            break;
                                        }
                                        break;
                                }
                            }
                        }).d(rc.f.f13757b).a(fc.b.a()).b(new h2(activityImage, 2));
                        break;
                }
            }
        });
        this.C.setMaxScale(5.0f);
        x();
        CheckBox checkBox = this.P;
        w wVar = v.f4106a;
        checkBox.setChecked(wVar.G0);
        this.T.setText(wVar.H0 + "s");
        this.P.setOnCheckedChangeListener(new a(this, 1));
        final int i11 = 6;
        this.R.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.f2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityImage f15671b;

            {
                this.f15671b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i12, KeyEvent keyEvent) {
                ActivityImage activityImage = this.f15671b;
                switch (i11) {
                    case 0:
                        int i13 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        System.out.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i12 == 21 || i12 == 19) {
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.j.f4033a.f4076y.position--;
                                activityImage.y();
                            } else if (i12 == 22) {
                                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                                activityImage.y();
                            } else if (i12 == 20) {
                                if (activityImage.I.getVisibility() == 0) {
                                    activityImage.K.requestFocus();
                                } else {
                                    DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                                    activityImage.y();
                                }
                            } else if (i12 == 66) {
                                if (System.currentTimeMillis() - activityImage.Z < 2000) {
                                    int i14 = activityImage.f3975h0 + 1;
                                    activityImage.f3975h0 = i14;
                                    if (i14 > 3) {
                                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                                        if (wVar2.G0) {
                                            activityImage.Y.removeMessages(0);
                                            wVar2.w(false);
                                            activityImage.P.setChecked(false);
                                            com.yunpan.appmanage.util.a0.w("自动播放已关闭");
                                        }
                                    }
                                } else {
                                    activityImage.Z = System.currentTimeMillis();
                                    activityImage.f3975h0 = 0;
                                }
                                if (activityImage.D.getVisibility() == 0) {
                                    activityImage.x();
                                } else {
                                    activityImage.A();
                                }
                            }
                        }
                        if (i12 == 21 || i12 == 22 || i12 == 19 || i12 == 20 || i12 == 66) {
                        }
                        break;
                    case 1:
                        int i15 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i12 == 19) {
                            activityImage.x();
                        }
                        if (i12 == 19) {
                        }
                        break;
                    case 2:
                        int i16 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i12 == 19) {
                            activityImage.x();
                        }
                        if (i12 == 19) {
                        }
                        break;
                    case 3:
                        int i17 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i12 == 19) {
                            activityImage.x();
                        }
                        if (i12 == 19) {
                        }
                        break;
                    case 4:
                        int i18 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i12 == 19) {
                            activityImage.R.requestFocus();
                        }
                        if (i12 == 19) {
                        }
                        break;
                    case 5:
                        int i19 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i12 == 19) {
                            activityImage.x();
                        }
                        if (i12 == 19) {
                        }
                        break;
                    default:
                        int i20 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i12 == 21) {
                                com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                                int i21 = wVar3.H0 - 1;
                                if (i21 < 0) {
                                    i21 = 0;
                                }
                                activityImage.T.setText(i21 + "s");
                                wVar3.x(i21);
                            } else if (i12 == 22) {
                                com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
                                int i22 = wVar4.H0 + 1;
                                activityImage.T.setText(i22 + "s");
                                wVar4.x(i22);
                            }
                        }
                        if (i12 == 21 || i12 == 22) {
                        }
                        break;
                }
                return false;
            }
        });
        final int i12 = 1;
        this.V.setOnClickListener(new View.OnClickListener(this) { // from class: ua.e2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityImage f15651b;

            {
                this.f15651b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                final int i112 = 1;
                final ActivityImage activityImage = this.f15651b;
                switch (i12) {
                    case 0:
                        int i122 = ActivityImage.f3974t0;
                        activityImage.finish();
                        break;
                    case 1:
                        int i13 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                        int i14 = wVar2.H0 - 1;
                        i = i14 >= 0 ? i14 : 0;
                        activityImage.T.setText(i + "s");
                        wVar2.x(i);
                        break;
                    case 2:
                        int i15 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        com.yunpan.appmanage.util.w wVar22 = com.yunpan.appmanage.util.v.f4106a;
                        int i16 = wVar22.H0 + 1;
                        activityImage.T.setText(i16 + "s");
                        wVar22.x(i16);
                        break;
                    case 3:
                        if (activityImage.D.getVisibility() != 0) {
                            activityImage.A();
                            break;
                        } else {
                            activityImage.x();
                            break;
                        }
                    case 4:
                        ConstraintLayout constraintLayout = activityImage.O;
                        constraintLayout.setVisibility(constraintLayout.getVisibility() != 0 ? 0 : 8);
                        break;
                    case 5:
                        int i17 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                        if (com.yunpan.appmanage.util.j.f4033a.f4076y.userInfo == null) {
                            new mc.c(0, new v0(7)).d(rc.f.f13757b).a(fc.b.a()).b(new h2(activityImage, i));
                            break;
                        }
                        break;
                    case 6:
                        float f10 = activityImage.X + 90.0f;
                        activityImage.X = f10;
                        if (f10 < 360.0f) {
                            new mc.c(0, new ec.d() { // from class: ua.g2
                                @Override // ec.d
                                public final void g(mc.b bVar) throws IOException {
                                    ActivityImage activityImage2 = activityImage;
                                    switch (i) {
                                        case 0:
                                            int i182 = ActivityImage.f3974t0;
                                            activityImage2.getClass();
                                            DecimalFormat decimalFormat22 = com.yunpan.appmanage.util.k.f4034u0;
                                            com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                            ImageData imageData2 = kVar.f4076y;
                                            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(imageData2.bdFiles.get(imageData2.position).f18365b);
                                            Matrix matrix = new Matrix();
                                            matrix.postRotate(activityImage2.X);
                                            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix, true);
                                            FileOutputStream fileOutputStream = new FileOutputStream(new File(activityImage2.A.getCacheDir() + "/rotation.ming"));
                                            ImageData imageData22 = kVar.f4076y;
                                            String lowerCase = imageData22.bdFiles.get(imageData22.position).f18364a.toLowerCase();
                                            if (lowerCase.endsWith(".jpg") || lowerCase.endsWith(".jpeg")) {
                                                bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                                            } else {
                                                bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                                            }
                                            fileOutputStream.flush();
                                            fileOutputStream.close();
                                            bVar.b();
                                            break;
                                        default:
                                            int i19 = ActivityImage.f3974t0;
                                            activityImage2.getClass();
                                            DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                            com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                                            ImageData imageData3 = kVar2.f4076y;
                                            String lowerCase2 = imageData3.bdFiles.get(imageData3.position).f18364a.toLowerCase();
                                            ImageData imageData4 = kVar2.f4076y;
                                            String str = imageData4.bdFiles.get(imageData4.position).f18365b;
                                            String strSubstring = str.substring(0, str.lastIndexOf("."));
                                            String strJ = (lowerCase2.endsWith(".jpg") || lowerCase2.endsWith(".jpeg")) ? g.b.j(strSubstring, ".jpg") : g.b.j(strSubstring, ".png");
                                            u9.d.r("\\cp -R '" + activityImage2.A.getCacheDir() + "/rotation.ming' '" + strJ + "'").l0();
                                            if (!com.yunpan.appmanage.util.a0.g(strJ)) {
                                                bVar.d(new Throwable("保存失败"));
                                                break;
                                            } else {
                                                MyDb.get().addIfFile(strJ);
                                                ImageData imageData5 = kVar2.f4076y;
                                                if (strJ.equals(imageData5.bdFiles.get(imageData5.position).f18365b)) {
                                                    kh.e.b().f(new ja.e(strJ));
                                                } else {
                                                    a2.w0 w0Var = fa.b0.f5652a;
                                                    ImageData imageData6 = kVar2.f4076y;
                                                    String str2 = imageData6.bdFiles.get(imageData6.position).f18365b;
                                                    w0Var.getClass();
                                                    a2.w0.B(str2);
                                                    FileInfoDao fileInfoDao = MyDb.get().getFileInfoDao();
                                                    ImageData imageData7 = kVar2.f4076y;
                                                    fileInfoDao.delete(imageData7.bdFiles.get(imageData7.position).f18365b);
                                                    x9.w3 w3Var = new x9.w3(strJ);
                                                    kh.e eVarB = kh.e.b();
                                                    ImageData imageData8 = kVar2.f4076y;
                                                    eVarB.f(new ja.e(imageData8.bdFiles.get(imageData8.position).f18365b, w3Var));
                                                    ImageData imageData9 = kVar2.f4076y;
                                                    imageData9.bdFiles.set(imageData9.position, w3Var);
                                                }
                                                bVar.b();
                                                break;
                                            }
                                            break;
                                    }
                                }
                            }).d(rc.f.f13757b).a(fc.b.a()).b(new h2(activityImage, i112));
                            break;
                        } else {
                            activityImage.X = 0.0f;
                            activityImage.M.setVisibility(8);
                            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                            ImageData imageData = com.yunpan.appmanage.util.j.f4033a.f4076y;
                            activityImage.z(imageData.bdFiles.get(imageData.position).f18365b);
                            break;
                        }
                    default:
                        int i18 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        new mc.c(0, new ec.d() { // from class: ua.g2
                            @Override // ec.d
                            public final void g(mc.b bVar) throws IOException {
                                ActivityImage activityImage2 = activityImage;
                                switch (i112) {
                                    case 0:
                                        int i182 = ActivityImage.f3974t0;
                                        activityImage2.getClass();
                                        DecimalFormat decimalFormat22 = com.yunpan.appmanage.util.k.f4034u0;
                                        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                        ImageData imageData2 = kVar.f4076y;
                                        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(imageData2.bdFiles.get(imageData2.position).f18365b);
                                        Matrix matrix = new Matrix();
                                        matrix.postRotate(activityImage2.X);
                                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix, true);
                                        FileOutputStream fileOutputStream = new FileOutputStream(new File(activityImage2.A.getCacheDir() + "/rotation.ming"));
                                        ImageData imageData22 = kVar.f4076y;
                                        String lowerCase = imageData22.bdFiles.get(imageData22.position).f18364a.toLowerCase();
                                        if (lowerCase.endsWith(".jpg") || lowerCase.endsWith(".jpeg")) {
                                            bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                                        } else {
                                            bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                                        }
                                        fileOutputStream.flush();
                                        fileOutputStream.close();
                                        bVar.b();
                                        break;
                                    default:
                                        int i19 = ActivityImage.f3974t0;
                                        activityImage2.getClass();
                                        DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                        com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                                        ImageData imageData3 = kVar2.f4076y;
                                        String lowerCase2 = imageData3.bdFiles.get(imageData3.position).f18364a.toLowerCase();
                                        ImageData imageData4 = kVar2.f4076y;
                                        String str = imageData4.bdFiles.get(imageData4.position).f18365b;
                                        String strSubstring = str.substring(0, str.lastIndexOf("."));
                                        String strJ = (lowerCase2.endsWith(".jpg") || lowerCase2.endsWith(".jpeg")) ? g.b.j(strSubstring, ".jpg") : g.b.j(strSubstring, ".png");
                                        u9.d.r("\\cp -R '" + activityImage2.A.getCacheDir() + "/rotation.ming' '" + strJ + "'").l0();
                                        if (!com.yunpan.appmanage.util.a0.g(strJ)) {
                                            bVar.d(new Throwable("保存失败"));
                                            break;
                                        } else {
                                            MyDb.get().addIfFile(strJ);
                                            ImageData imageData5 = kVar2.f4076y;
                                            if (strJ.equals(imageData5.bdFiles.get(imageData5.position).f18365b)) {
                                                kh.e.b().f(new ja.e(strJ));
                                            } else {
                                                a2.w0 w0Var = fa.b0.f5652a;
                                                ImageData imageData6 = kVar2.f4076y;
                                                String str2 = imageData6.bdFiles.get(imageData6.position).f18365b;
                                                w0Var.getClass();
                                                a2.w0.B(str2);
                                                FileInfoDao fileInfoDao = MyDb.get().getFileInfoDao();
                                                ImageData imageData7 = kVar2.f4076y;
                                                fileInfoDao.delete(imageData7.bdFiles.get(imageData7.position).f18365b);
                                                x9.w3 w3Var = new x9.w3(strJ);
                                                kh.e eVarB = kh.e.b();
                                                ImageData imageData8 = kVar2.f4076y;
                                                eVarB.f(new ja.e(imageData8.bdFiles.get(imageData8.position).f18365b, w3Var));
                                                ImageData imageData9 = kVar2.f4076y;
                                                imageData9.bdFiles.set(imageData9.position, w3Var);
                                            }
                                            bVar.b();
                                            break;
                                        }
                                        break;
                                }
                            }
                        }).d(rc.f.f13757b).a(fc.b.a()).b(new h2(activityImage, 2));
                        break;
                }
            }
        });
        final int i13 = 2;
        this.S.setOnClickListener(new View.OnClickListener(this) { // from class: ua.e2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityImage f15651b;

            {
                this.f15651b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                final int i112 = 1;
                final ActivityImage activityImage = this.f15651b;
                switch (i13) {
                    case 0:
                        int i122 = ActivityImage.f3974t0;
                        activityImage.finish();
                        break;
                    case 1:
                        int i132 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                        int i14 = wVar2.H0 - 1;
                        i = i14 >= 0 ? i14 : 0;
                        activityImage.T.setText(i + "s");
                        wVar2.x(i);
                        break;
                    case 2:
                        int i15 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        com.yunpan.appmanage.util.w wVar22 = com.yunpan.appmanage.util.v.f4106a;
                        int i16 = wVar22.H0 + 1;
                        activityImage.T.setText(i16 + "s");
                        wVar22.x(i16);
                        break;
                    case 3:
                        if (activityImage.D.getVisibility() != 0) {
                            activityImage.A();
                            break;
                        } else {
                            activityImage.x();
                            break;
                        }
                    case 4:
                        ConstraintLayout constraintLayout = activityImage.O;
                        constraintLayout.setVisibility(constraintLayout.getVisibility() != 0 ? 0 : 8);
                        break;
                    case 5:
                        int i17 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                        if (com.yunpan.appmanage.util.j.f4033a.f4076y.userInfo == null) {
                            new mc.c(0, new v0(7)).d(rc.f.f13757b).a(fc.b.a()).b(new h2(activityImage, i));
                            break;
                        }
                        break;
                    case 6:
                        float f10 = activityImage.X + 90.0f;
                        activityImage.X = f10;
                        if (f10 < 360.0f) {
                            new mc.c(0, new ec.d() { // from class: ua.g2
                                @Override // ec.d
                                public final void g(mc.b bVar) throws IOException {
                                    ActivityImage activityImage2 = activityImage;
                                    switch (i) {
                                        case 0:
                                            int i182 = ActivityImage.f3974t0;
                                            activityImage2.getClass();
                                            DecimalFormat decimalFormat22 = com.yunpan.appmanage.util.k.f4034u0;
                                            com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                            ImageData imageData2 = kVar.f4076y;
                                            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(imageData2.bdFiles.get(imageData2.position).f18365b);
                                            Matrix matrix = new Matrix();
                                            matrix.postRotate(activityImage2.X);
                                            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix, true);
                                            FileOutputStream fileOutputStream = new FileOutputStream(new File(activityImage2.A.getCacheDir() + "/rotation.ming"));
                                            ImageData imageData22 = kVar.f4076y;
                                            String lowerCase = imageData22.bdFiles.get(imageData22.position).f18364a.toLowerCase();
                                            if (lowerCase.endsWith(".jpg") || lowerCase.endsWith(".jpeg")) {
                                                bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                                            } else {
                                                bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                                            }
                                            fileOutputStream.flush();
                                            fileOutputStream.close();
                                            bVar.b();
                                            break;
                                        default:
                                            int i19 = ActivityImage.f3974t0;
                                            activityImage2.getClass();
                                            DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                            com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                                            ImageData imageData3 = kVar2.f4076y;
                                            String lowerCase2 = imageData3.bdFiles.get(imageData3.position).f18364a.toLowerCase();
                                            ImageData imageData4 = kVar2.f4076y;
                                            String str = imageData4.bdFiles.get(imageData4.position).f18365b;
                                            String strSubstring = str.substring(0, str.lastIndexOf("."));
                                            String strJ = (lowerCase2.endsWith(".jpg") || lowerCase2.endsWith(".jpeg")) ? g.b.j(strSubstring, ".jpg") : g.b.j(strSubstring, ".png");
                                            u9.d.r("\\cp -R '" + activityImage2.A.getCacheDir() + "/rotation.ming' '" + strJ + "'").l0();
                                            if (!com.yunpan.appmanage.util.a0.g(strJ)) {
                                                bVar.d(new Throwable("保存失败"));
                                                break;
                                            } else {
                                                MyDb.get().addIfFile(strJ);
                                                ImageData imageData5 = kVar2.f4076y;
                                                if (strJ.equals(imageData5.bdFiles.get(imageData5.position).f18365b)) {
                                                    kh.e.b().f(new ja.e(strJ));
                                                } else {
                                                    a2.w0 w0Var = fa.b0.f5652a;
                                                    ImageData imageData6 = kVar2.f4076y;
                                                    String str2 = imageData6.bdFiles.get(imageData6.position).f18365b;
                                                    w0Var.getClass();
                                                    a2.w0.B(str2);
                                                    FileInfoDao fileInfoDao = MyDb.get().getFileInfoDao();
                                                    ImageData imageData7 = kVar2.f4076y;
                                                    fileInfoDao.delete(imageData7.bdFiles.get(imageData7.position).f18365b);
                                                    x9.w3 w3Var = new x9.w3(strJ);
                                                    kh.e eVarB = kh.e.b();
                                                    ImageData imageData8 = kVar2.f4076y;
                                                    eVarB.f(new ja.e(imageData8.bdFiles.get(imageData8.position).f18365b, w3Var));
                                                    ImageData imageData9 = kVar2.f4076y;
                                                    imageData9.bdFiles.set(imageData9.position, w3Var);
                                                }
                                                bVar.b();
                                                break;
                                            }
                                            break;
                                    }
                                }
                            }).d(rc.f.f13757b).a(fc.b.a()).b(new h2(activityImage, i112));
                            break;
                        } else {
                            activityImage.X = 0.0f;
                            activityImage.M.setVisibility(8);
                            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                            ImageData imageData = com.yunpan.appmanage.util.j.f4033a.f4076y;
                            activityImage.z(imageData.bdFiles.get(imageData.position).f18365b);
                            break;
                        }
                    default:
                        int i18 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        new mc.c(0, new ec.d() { // from class: ua.g2
                            @Override // ec.d
                            public final void g(mc.b bVar) throws IOException {
                                ActivityImage activityImage2 = activityImage;
                                switch (i112) {
                                    case 0:
                                        int i182 = ActivityImage.f3974t0;
                                        activityImage2.getClass();
                                        DecimalFormat decimalFormat22 = com.yunpan.appmanage.util.k.f4034u0;
                                        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                        ImageData imageData2 = kVar.f4076y;
                                        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(imageData2.bdFiles.get(imageData2.position).f18365b);
                                        Matrix matrix = new Matrix();
                                        matrix.postRotate(activityImage2.X);
                                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix, true);
                                        FileOutputStream fileOutputStream = new FileOutputStream(new File(activityImage2.A.getCacheDir() + "/rotation.ming"));
                                        ImageData imageData22 = kVar.f4076y;
                                        String lowerCase = imageData22.bdFiles.get(imageData22.position).f18364a.toLowerCase();
                                        if (lowerCase.endsWith(".jpg") || lowerCase.endsWith(".jpeg")) {
                                            bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                                        } else {
                                            bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                                        }
                                        fileOutputStream.flush();
                                        fileOutputStream.close();
                                        bVar.b();
                                        break;
                                    default:
                                        int i19 = ActivityImage.f3974t0;
                                        activityImage2.getClass();
                                        DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                        com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                                        ImageData imageData3 = kVar2.f4076y;
                                        String lowerCase2 = imageData3.bdFiles.get(imageData3.position).f18364a.toLowerCase();
                                        ImageData imageData4 = kVar2.f4076y;
                                        String str = imageData4.bdFiles.get(imageData4.position).f18365b;
                                        String strSubstring = str.substring(0, str.lastIndexOf("."));
                                        String strJ = (lowerCase2.endsWith(".jpg") || lowerCase2.endsWith(".jpeg")) ? g.b.j(strSubstring, ".jpg") : g.b.j(strSubstring, ".png");
                                        u9.d.r("\\cp -R '" + activityImage2.A.getCacheDir() + "/rotation.ming' '" + strJ + "'").l0();
                                        if (!com.yunpan.appmanage.util.a0.g(strJ)) {
                                            bVar.d(new Throwable("保存失败"));
                                            break;
                                        } else {
                                            MyDb.get().addIfFile(strJ);
                                            ImageData imageData5 = kVar2.f4076y;
                                            if (strJ.equals(imageData5.bdFiles.get(imageData5.position).f18365b)) {
                                                kh.e.b().f(new ja.e(strJ));
                                            } else {
                                                a2.w0 w0Var = fa.b0.f5652a;
                                                ImageData imageData6 = kVar2.f4076y;
                                                String str2 = imageData6.bdFiles.get(imageData6.position).f18365b;
                                                w0Var.getClass();
                                                a2.w0.B(str2);
                                                FileInfoDao fileInfoDao = MyDb.get().getFileInfoDao();
                                                ImageData imageData7 = kVar2.f4076y;
                                                fileInfoDao.delete(imageData7.bdFiles.get(imageData7.position).f18365b);
                                                x9.w3 w3Var = new x9.w3(strJ);
                                                kh.e eVarB = kh.e.b();
                                                ImageData imageData8 = kVar2.f4076y;
                                                eVarB.f(new ja.e(imageData8.bdFiles.get(imageData8.position).f18365b, w3Var));
                                                ImageData imageData9 = kVar2.f4076y;
                                                imageData9.bdFiles.set(imageData9.position, w3Var);
                                            }
                                            bVar.b();
                                            break;
                                        }
                                        break;
                                }
                            }
                        }).d(rc.f.f13757b).a(fc.b.a()).b(new h2(activityImage, 2));
                        break;
                }
            }
        });
        y();
        final int i14 = 3;
        this.C.setOnClickListener(new View.OnClickListener(this) { // from class: ua.e2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityImage f15651b;

            {
                this.f15651b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                final int i112 = 1;
                final ActivityImage activityImage = this.f15651b;
                switch (i14) {
                    case 0:
                        int i122 = ActivityImage.f3974t0;
                        activityImage.finish();
                        break;
                    case 1:
                        int i132 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                        int i142 = wVar2.H0 - 1;
                        i = i142 >= 0 ? i142 : 0;
                        activityImage.T.setText(i + "s");
                        wVar2.x(i);
                        break;
                    case 2:
                        int i15 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        com.yunpan.appmanage.util.w wVar22 = com.yunpan.appmanage.util.v.f4106a;
                        int i16 = wVar22.H0 + 1;
                        activityImage.T.setText(i16 + "s");
                        wVar22.x(i16);
                        break;
                    case 3:
                        if (activityImage.D.getVisibility() != 0) {
                            activityImage.A();
                            break;
                        } else {
                            activityImage.x();
                            break;
                        }
                    case 4:
                        ConstraintLayout constraintLayout = activityImage.O;
                        constraintLayout.setVisibility(constraintLayout.getVisibility() != 0 ? 0 : 8);
                        break;
                    case 5:
                        int i17 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                        if (com.yunpan.appmanage.util.j.f4033a.f4076y.userInfo == null) {
                            new mc.c(0, new v0(7)).d(rc.f.f13757b).a(fc.b.a()).b(new h2(activityImage, i));
                            break;
                        }
                        break;
                    case 6:
                        float f10 = activityImage.X + 90.0f;
                        activityImage.X = f10;
                        if (f10 < 360.0f) {
                            new mc.c(0, new ec.d() { // from class: ua.g2
                                @Override // ec.d
                                public final void g(mc.b bVar) throws IOException {
                                    ActivityImage activityImage2 = activityImage;
                                    switch (i) {
                                        case 0:
                                            int i182 = ActivityImage.f3974t0;
                                            activityImage2.getClass();
                                            DecimalFormat decimalFormat22 = com.yunpan.appmanage.util.k.f4034u0;
                                            com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                            ImageData imageData2 = kVar.f4076y;
                                            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(imageData2.bdFiles.get(imageData2.position).f18365b);
                                            Matrix matrix = new Matrix();
                                            matrix.postRotate(activityImage2.X);
                                            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix, true);
                                            FileOutputStream fileOutputStream = new FileOutputStream(new File(activityImage2.A.getCacheDir() + "/rotation.ming"));
                                            ImageData imageData22 = kVar.f4076y;
                                            String lowerCase = imageData22.bdFiles.get(imageData22.position).f18364a.toLowerCase();
                                            if (lowerCase.endsWith(".jpg") || lowerCase.endsWith(".jpeg")) {
                                                bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                                            } else {
                                                bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                                            }
                                            fileOutputStream.flush();
                                            fileOutputStream.close();
                                            bVar.b();
                                            break;
                                        default:
                                            int i19 = ActivityImage.f3974t0;
                                            activityImage2.getClass();
                                            DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                            com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                                            ImageData imageData3 = kVar2.f4076y;
                                            String lowerCase2 = imageData3.bdFiles.get(imageData3.position).f18364a.toLowerCase();
                                            ImageData imageData4 = kVar2.f4076y;
                                            String str = imageData4.bdFiles.get(imageData4.position).f18365b;
                                            String strSubstring = str.substring(0, str.lastIndexOf("."));
                                            String strJ = (lowerCase2.endsWith(".jpg") || lowerCase2.endsWith(".jpeg")) ? g.b.j(strSubstring, ".jpg") : g.b.j(strSubstring, ".png");
                                            u9.d.r("\\cp -R '" + activityImage2.A.getCacheDir() + "/rotation.ming' '" + strJ + "'").l0();
                                            if (!com.yunpan.appmanage.util.a0.g(strJ)) {
                                                bVar.d(new Throwable("保存失败"));
                                                break;
                                            } else {
                                                MyDb.get().addIfFile(strJ);
                                                ImageData imageData5 = kVar2.f4076y;
                                                if (strJ.equals(imageData5.bdFiles.get(imageData5.position).f18365b)) {
                                                    kh.e.b().f(new ja.e(strJ));
                                                } else {
                                                    a2.w0 w0Var = fa.b0.f5652a;
                                                    ImageData imageData6 = kVar2.f4076y;
                                                    String str2 = imageData6.bdFiles.get(imageData6.position).f18365b;
                                                    w0Var.getClass();
                                                    a2.w0.B(str2);
                                                    FileInfoDao fileInfoDao = MyDb.get().getFileInfoDao();
                                                    ImageData imageData7 = kVar2.f4076y;
                                                    fileInfoDao.delete(imageData7.bdFiles.get(imageData7.position).f18365b);
                                                    x9.w3 w3Var = new x9.w3(strJ);
                                                    kh.e eVarB = kh.e.b();
                                                    ImageData imageData8 = kVar2.f4076y;
                                                    eVarB.f(new ja.e(imageData8.bdFiles.get(imageData8.position).f18365b, w3Var));
                                                    ImageData imageData9 = kVar2.f4076y;
                                                    imageData9.bdFiles.set(imageData9.position, w3Var);
                                                }
                                                bVar.b();
                                                break;
                                            }
                                            break;
                                    }
                                }
                            }).d(rc.f.f13757b).a(fc.b.a()).b(new h2(activityImage, i112));
                            break;
                        } else {
                            activityImage.X = 0.0f;
                            activityImage.M.setVisibility(8);
                            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                            ImageData imageData = com.yunpan.appmanage.util.j.f4033a.f4076y;
                            activityImage.z(imageData.bdFiles.get(imageData.position).f18365b);
                            break;
                        }
                    default:
                        int i18 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        new mc.c(0, new ec.d() { // from class: ua.g2
                            @Override // ec.d
                            public final void g(mc.b bVar) throws IOException {
                                ActivityImage activityImage2 = activityImage;
                                switch (i112) {
                                    case 0:
                                        int i182 = ActivityImage.f3974t0;
                                        activityImage2.getClass();
                                        DecimalFormat decimalFormat22 = com.yunpan.appmanage.util.k.f4034u0;
                                        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                        ImageData imageData2 = kVar.f4076y;
                                        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(imageData2.bdFiles.get(imageData2.position).f18365b);
                                        Matrix matrix = new Matrix();
                                        matrix.postRotate(activityImage2.X);
                                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix, true);
                                        FileOutputStream fileOutputStream = new FileOutputStream(new File(activityImage2.A.getCacheDir() + "/rotation.ming"));
                                        ImageData imageData22 = kVar.f4076y;
                                        String lowerCase = imageData22.bdFiles.get(imageData22.position).f18364a.toLowerCase();
                                        if (lowerCase.endsWith(".jpg") || lowerCase.endsWith(".jpeg")) {
                                            bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                                        } else {
                                            bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                                        }
                                        fileOutputStream.flush();
                                        fileOutputStream.close();
                                        bVar.b();
                                        break;
                                    default:
                                        int i19 = ActivityImage.f3974t0;
                                        activityImage2.getClass();
                                        DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                        com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                                        ImageData imageData3 = kVar2.f4076y;
                                        String lowerCase2 = imageData3.bdFiles.get(imageData3.position).f18364a.toLowerCase();
                                        ImageData imageData4 = kVar2.f4076y;
                                        String str = imageData4.bdFiles.get(imageData4.position).f18365b;
                                        String strSubstring = str.substring(0, str.lastIndexOf("."));
                                        String strJ = (lowerCase2.endsWith(".jpg") || lowerCase2.endsWith(".jpeg")) ? g.b.j(strSubstring, ".jpg") : g.b.j(strSubstring, ".png");
                                        u9.d.r("\\cp -R '" + activityImage2.A.getCacheDir() + "/rotation.ming' '" + strJ + "'").l0();
                                        if (!com.yunpan.appmanage.util.a0.g(strJ)) {
                                            bVar.d(new Throwable("保存失败"));
                                            break;
                                        } else {
                                            MyDb.get().addIfFile(strJ);
                                            ImageData imageData5 = kVar2.f4076y;
                                            if (strJ.equals(imageData5.bdFiles.get(imageData5.position).f18365b)) {
                                                kh.e.b().f(new ja.e(strJ));
                                            } else {
                                                a2.w0 w0Var = fa.b0.f5652a;
                                                ImageData imageData6 = kVar2.f4076y;
                                                String str2 = imageData6.bdFiles.get(imageData6.position).f18365b;
                                                w0Var.getClass();
                                                a2.w0.B(str2);
                                                FileInfoDao fileInfoDao = MyDb.get().getFileInfoDao();
                                                ImageData imageData7 = kVar2.f4076y;
                                                fileInfoDao.delete(imageData7.bdFiles.get(imageData7.position).f18365b);
                                                x9.w3 w3Var = new x9.w3(strJ);
                                                kh.e eVarB = kh.e.b();
                                                ImageData imageData8 = kVar2.f4076y;
                                                eVarB.f(new ja.e(imageData8.bdFiles.get(imageData8.position).f18365b, w3Var));
                                                ImageData imageData9 = kVar2.f4076y;
                                                imageData9.bdFiles.set(imageData9.position, w3Var);
                                            }
                                            bVar.b();
                                            break;
                                        }
                                        break;
                                }
                            }
                        }).d(rc.f.f13757b).a(fc.b.a()).b(new h2(activityImage, 2));
                        break;
                }
            }
        });
        final int i15 = 0;
        this.C.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.f2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityImage f15671b;

            {
                this.f15671b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i122, KeyEvent keyEvent) {
                ActivityImage activityImage = this.f15671b;
                switch (i15) {
                    case 0:
                        int i132 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        System.out.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i122 == 21 || i122 == 19) {
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.j.f4033a.f4076y.position--;
                                activityImage.y();
                            } else if (i122 == 22) {
                                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                                activityImage.y();
                            } else if (i122 == 20) {
                                if (activityImage.I.getVisibility() == 0) {
                                    activityImage.K.requestFocus();
                                } else {
                                    DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                                    activityImage.y();
                                }
                            } else if (i122 == 66) {
                                if (System.currentTimeMillis() - activityImage.Z < 2000) {
                                    int i142 = activityImage.f3975h0 + 1;
                                    activityImage.f3975h0 = i142;
                                    if (i142 > 3) {
                                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                                        if (wVar2.G0) {
                                            activityImage.Y.removeMessages(0);
                                            wVar2.w(false);
                                            activityImage.P.setChecked(false);
                                            com.yunpan.appmanage.util.a0.w("自动播放已关闭");
                                        }
                                    }
                                } else {
                                    activityImage.Z = System.currentTimeMillis();
                                    activityImage.f3975h0 = 0;
                                }
                                if (activityImage.D.getVisibility() == 0) {
                                    activityImage.x();
                                } else {
                                    activityImage.A();
                                }
                            }
                        }
                        if (i122 == 21 || i122 == 22 || i122 == 19 || i122 == 20 || i122 == 66) {
                        }
                        break;
                    case 1:
                        int i152 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 2:
                        int i16 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 3:
                        int i17 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 4:
                        int i18 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.R.requestFocus();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 5:
                        int i19 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    default:
                        int i20 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i122 == 21) {
                                com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                                int i21 = wVar3.H0 - 1;
                                if (i21 < 0) {
                                    i21 = 0;
                                }
                                activityImage.T.setText(i21 + "s");
                                wVar3.x(i21);
                            } else if (i122 == 22) {
                                com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
                                int i22 = wVar4.H0 + 1;
                                activityImage.T.setText(i22 + "s");
                                wVar4.x(i22);
                            }
                        }
                        if (i122 == 21 || i122 == 22) {
                        }
                        break;
                }
                return false;
            }
        });
        this.C.setOnTouchDirection(new i1(5, this));
        final int i16 = 1;
        this.K.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.f2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityImage f15671b;

            {
                this.f15671b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i122, KeyEvent keyEvent) {
                ActivityImage activityImage = this.f15671b;
                switch (i16) {
                    case 0:
                        int i132 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        System.out.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i122 == 21 || i122 == 19) {
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.j.f4033a.f4076y.position--;
                                activityImage.y();
                            } else if (i122 == 22) {
                                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                                activityImage.y();
                            } else if (i122 == 20) {
                                if (activityImage.I.getVisibility() == 0) {
                                    activityImage.K.requestFocus();
                                } else {
                                    DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                                    activityImage.y();
                                }
                            } else if (i122 == 66) {
                                if (System.currentTimeMillis() - activityImage.Z < 2000) {
                                    int i142 = activityImage.f3975h0 + 1;
                                    activityImage.f3975h0 = i142;
                                    if (i142 > 3) {
                                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                                        if (wVar2.G0) {
                                            activityImage.Y.removeMessages(0);
                                            wVar2.w(false);
                                            activityImage.P.setChecked(false);
                                            com.yunpan.appmanage.util.a0.w("自动播放已关闭");
                                        }
                                    }
                                } else {
                                    activityImage.Z = System.currentTimeMillis();
                                    activityImage.f3975h0 = 0;
                                }
                                if (activityImage.D.getVisibility() == 0) {
                                    activityImage.x();
                                } else {
                                    activityImage.A();
                                }
                            }
                        }
                        if (i122 == 21 || i122 == 22 || i122 == 19 || i122 == 20 || i122 == 66) {
                        }
                        break;
                    case 1:
                        int i152 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 2:
                        int i162 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 3:
                        int i17 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 4:
                        int i18 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.R.requestFocus();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 5:
                        int i19 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    default:
                        int i20 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i122 == 21) {
                                com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                                int i21 = wVar3.H0 - 1;
                                if (i21 < 0) {
                                    i21 = 0;
                                }
                                activityImage.T.setText(i21 + "s");
                                wVar3.x(i21);
                            } else if (i122 == 22) {
                                com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
                                int i22 = wVar4.H0 + 1;
                                activityImage.T.setText(i22 + "s");
                                wVar4.x(i22);
                            }
                        }
                        if (i122 == 21 || i122 == 22) {
                        }
                        break;
                }
                return false;
            }
        });
        final int i17 = 2;
        this.L.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.f2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityImage f15671b;

            {
                this.f15671b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i122, KeyEvent keyEvent) {
                ActivityImage activityImage = this.f15671b;
                switch (i17) {
                    case 0:
                        int i132 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        System.out.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i122 == 21 || i122 == 19) {
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.j.f4033a.f4076y.position--;
                                activityImage.y();
                            } else if (i122 == 22) {
                                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                                activityImage.y();
                            } else if (i122 == 20) {
                                if (activityImage.I.getVisibility() == 0) {
                                    activityImage.K.requestFocus();
                                } else {
                                    DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                                    activityImage.y();
                                }
                            } else if (i122 == 66) {
                                if (System.currentTimeMillis() - activityImage.Z < 2000) {
                                    int i142 = activityImage.f3975h0 + 1;
                                    activityImage.f3975h0 = i142;
                                    if (i142 > 3) {
                                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                                        if (wVar2.G0) {
                                            activityImage.Y.removeMessages(0);
                                            wVar2.w(false);
                                            activityImage.P.setChecked(false);
                                            com.yunpan.appmanage.util.a0.w("自动播放已关闭");
                                        }
                                    }
                                } else {
                                    activityImage.Z = System.currentTimeMillis();
                                    activityImage.f3975h0 = 0;
                                }
                                if (activityImage.D.getVisibility() == 0) {
                                    activityImage.x();
                                } else {
                                    activityImage.A();
                                }
                            }
                        }
                        if (i122 == 21 || i122 == 22 || i122 == 19 || i122 == 20 || i122 == 66) {
                        }
                        break;
                    case 1:
                        int i152 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 2:
                        int i162 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 3:
                        int i172 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 4:
                        int i18 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.R.requestFocus();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 5:
                        int i19 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    default:
                        int i20 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i122 == 21) {
                                com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                                int i21 = wVar3.H0 - 1;
                                if (i21 < 0) {
                                    i21 = 0;
                                }
                                activityImage.T.setText(i21 + "s");
                                wVar3.x(i21);
                            } else if (i122 == 22) {
                                com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
                                int i22 = wVar4.H0 + 1;
                                activityImage.T.setText(i22 + "s");
                                wVar4.x(i22);
                            }
                        }
                        if (i122 == 21 || i122 == 22) {
                        }
                        break;
                }
                return false;
            }
        });
        final int i18 = 3;
        this.M.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.f2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityImage f15671b;

            {
                this.f15671b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i122, KeyEvent keyEvent) {
                ActivityImage activityImage = this.f15671b;
                switch (i18) {
                    case 0:
                        int i132 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        System.out.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i122 == 21 || i122 == 19) {
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.j.f4033a.f4076y.position--;
                                activityImage.y();
                            } else if (i122 == 22) {
                                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                                activityImage.y();
                            } else if (i122 == 20) {
                                if (activityImage.I.getVisibility() == 0) {
                                    activityImage.K.requestFocus();
                                } else {
                                    DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                                    activityImage.y();
                                }
                            } else if (i122 == 66) {
                                if (System.currentTimeMillis() - activityImage.Z < 2000) {
                                    int i142 = activityImage.f3975h0 + 1;
                                    activityImage.f3975h0 = i142;
                                    if (i142 > 3) {
                                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                                        if (wVar2.G0) {
                                            activityImage.Y.removeMessages(0);
                                            wVar2.w(false);
                                            activityImage.P.setChecked(false);
                                            com.yunpan.appmanage.util.a0.w("自动播放已关闭");
                                        }
                                    }
                                } else {
                                    activityImage.Z = System.currentTimeMillis();
                                    activityImage.f3975h0 = 0;
                                }
                                if (activityImage.D.getVisibility() == 0) {
                                    activityImage.x();
                                } else {
                                    activityImage.A();
                                }
                            }
                        }
                        if (i122 == 21 || i122 == 22 || i122 == 19 || i122 == 20 || i122 == 66) {
                        }
                        break;
                    case 1:
                        int i152 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 2:
                        int i162 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 3:
                        int i172 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 4:
                        int i182 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.R.requestFocus();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 5:
                        int i19 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    default:
                        int i20 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i122 == 21) {
                                com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                                int i21 = wVar3.H0 - 1;
                                if (i21 < 0) {
                                    i21 = 0;
                                }
                                activityImage.T.setText(i21 + "s");
                                wVar3.x(i21);
                            } else if (i122 == 22) {
                                com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
                                int i22 = wVar4.H0 + 1;
                                activityImage.T.setText(i22 + "s");
                                wVar4.x(i22);
                            }
                        }
                        if (i122 == 21 || i122 == 22) {
                        }
                        break;
                }
                return false;
            }
        });
        final int i19 = 4;
        this.N.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.f2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityImage f15671b;

            {
                this.f15671b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i122, KeyEvent keyEvent) {
                ActivityImage activityImage = this.f15671b;
                switch (i19) {
                    case 0:
                        int i132 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        System.out.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i122 == 21 || i122 == 19) {
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.j.f4033a.f4076y.position--;
                                activityImage.y();
                            } else if (i122 == 22) {
                                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                                activityImage.y();
                            } else if (i122 == 20) {
                                if (activityImage.I.getVisibility() == 0) {
                                    activityImage.K.requestFocus();
                                } else {
                                    DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                                    activityImage.y();
                                }
                            } else if (i122 == 66) {
                                if (System.currentTimeMillis() - activityImage.Z < 2000) {
                                    int i142 = activityImage.f3975h0 + 1;
                                    activityImage.f3975h0 = i142;
                                    if (i142 > 3) {
                                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                                        if (wVar2.G0) {
                                            activityImage.Y.removeMessages(0);
                                            wVar2.w(false);
                                            activityImage.P.setChecked(false);
                                            com.yunpan.appmanage.util.a0.w("自动播放已关闭");
                                        }
                                    }
                                } else {
                                    activityImage.Z = System.currentTimeMillis();
                                    activityImage.f3975h0 = 0;
                                }
                                if (activityImage.D.getVisibility() == 0) {
                                    activityImage.x();
                                } else {
                                    activityImage.A();
                                }
                            }
                        }
                        if (i122 == 21 || i122 == 22 || i122 == 19 || i122 == 20 || i122 == 66) {
                        }
                        break;
                    case 1:
                        int i152 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 2:
                        int i162 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 3:
                        int i172 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 4:
                        int i182 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.R.requestFocus();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 5:
                        int i192 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    default:
                        int i20 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i122 == 21) {
                                com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                                int i21 = wVar3.H0 - 1;
                                if (i21 < 0) {
                                    i21 = 0;
                                }
                                activityImage.T.setText(i21 + "s");
                                wVar3.x(i21);
                            } else if (i122 == 22) {
                                com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
                                int i22 = wVar4.H0 + 1;
                                activityImage.T.setText(i22 + "s");
                                wVar4.x(i22);
                            }
                        }
                        if (i122 == 21 || i122 == 22) {
                        }
                        break;
                }
                return false;
            }
        });
        this.N.setOnClickListener(new View.OnClickListener(this) { // from class: ua.e2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityImage f15651b;

            {
                this.f15651b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                final int i112 = 1;
                final ActivityImage activityImage = this.f15651b;
                switch (i19) {
                    case 0:
                        int i122 = ActivityImage.f3974t0;
                        activityImage.finish();
                        break;
                    case 1:
                        int i132 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                        int i142 = wVar2.H0 - 1;
                        i = i142 >= 0 ? i142 : 0;
                        activityImage.T.setText(i + "s");
                        wVar2.x(i);
                        break;
                    case 2:
                        int i152 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        com.yunpan.appmanage.util.w wVar22 = com.yunpan.appmanage.util.v.f4106a;
                        int i162 = wVar22.H0 + 1;
                        activityImage.T.setText(i162 + "s");
                        wVar22.x(i162);
                        break;
                    case 3:
                        if (activityImage.D.getVisibility() != 0) {
                            activityImage.A();
                            break;
                        } else {
                            activityImage.x();
                            break;
                        }
                    case 4:
                        ConstraintLayout constraintLayout = activityImage.O;
                        constraintLayout.setVisibility(constraintLayout.getVisibility() != 0 ? 0 : 8);
                        break;
                    case 5:
                        int i172 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                        if (com.yunpan.appmanage.util.j.f4033a.f4076y.userInfo == null) {
                            new mc.c(0, new v0(7)).d(rc.f.f13757b).a(fc.b.a()).b(new h2(activityImage, i));
                            break;
                        }
                        break;
                    case 6:
                        float f10 = activityImage.X + 90.0f;
                        activityImage.X = f10;
                        if (f10 < 360.0f) {
                            new mc.c(0, new ec.d() { // from class: ua.g2
                                @Override // ec.d
                                public final void g(mc.b bVar) throws IOException {
                                    ActivityImage activityImage2 = activityImage;
                                    switch (i) {
                                        case 0:
                                            int i182 = ActivityImage.f3974t0;
                                            activityImage2.getClass();
                                            DecimalFormat decimalFormat22 = com.yunpan.appmanage.util.k.f4034u0;
                                            com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                            ImageData imageData2 = kVar.f4076y;
                                            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(imageData2.bdFiles.get(imageData2.position).f18365b);
                                            Matrix matrix = new Matrix();
                                            matrix.postRotate(activityImage2.X);
                                            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix, true);
                                            FileOutputStream fileOutputStream = new FileOutputStream(new File(activityImage2.A.getCacheDir() + "/rotation.ming"));
                                            ImageData imageData22 = kVar.f4076y;
                                            String lowerCase = imageData22.bdFiles.get(imageData22.position).f18364a.toLowerCase();
                                            if (lowerCase.endsWith(".jpg") || lowerCase.endsWith(".jpeg")) {
                                                bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                                            } else {
                                                bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                                            }
                                            fileOutputStream.flush();
                                            fileOutputStream.close();
                                            bVar.b();
                                            break;
                                        default:
                                            int i192 = ActivityImage.f3974t0;
                                            activityImage2.getClass();
                                            DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                            com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                                            ImageData imageData3 = kVar2.f4076y;
                                            String lowerCase2 = imageData3.bdFiles.get(imageData3.position).f18364a.toLowerCase();
                                            ImageData imageData4 = kVar2.f4076y;
                                            String str = imageData4.bdFiles.get(imageData4.position).f18365b;
                                            String strSubstring = str.substring(0, str.lastIndexOf("."));
                                            String strJ = (lowerCase2.endsWith(".jpg") || lowerCase2.endsWith(".jpeg")) ? g.b.j(strSubstring, ".jpg") : g.b.j(strSubstring, ".png");
                                            u9.d.r("\\cp -R '" + activityImage2.A.getCacheDir() + "/rotation.ming' '" + strJ + "'").l0();
                                            if (!com.yunpan.appmanage.util.a0.g(strJ)) {
                                                bVar.d(new Throwable("保存失败"));
                                                break;
                                            } else {
                                                MyDb.get().addIfFile(strJ);
                                                ImageData imageData5 = kVar2.f4076y;
                                                if (strJ.equals(imageData5.bdFiles.get(imageData5.position).f18365b)) {
                                                    kh.e.b().f(new ja.e(strJ));
                                                } else {
                                                    a2.w0 w0Var = fa.b0.f5652a;
                                                    ImageData imageData6 = kVar2.f4076y;
                                                    String str2 = imageData6.bdFiles.get(imageData6.position).f18365b;
                                                    w0Var.getClass();
                                                    a2.w0.B(str2);
                                                    FileInfoDao fileInfoDao = MyDb.get().getFileInfoDao();
                                                    ImageData imageData7 = kVar2.f4076y;
                                                    fileInfoDao.delete(imageData7.bdFiles.get(imageData7.position).f18365b);
                                                    x9.w3 w3Var = new x9.w3(strJ);
                                                    kh.e eVarB = kh.e.b();
                                                    ImageData imageData8 = kVar2.f4076y;
                                                    eVarB.f(new ja.e(imageData8.bdFiles.get(imageData8.position).f18365b, w3Var));
                                                    ImageData imageData9 = kVar2.f4076y;
                                                    imageData9.bdFiles.set(imageData9.position, w3Var);
                                                }
                                                bVar.b();
                                                break;
                                            }
                                            break;
                                    }
                                }
                            }).d(rc.f.f13757b).a(fc.b.a()).b(new h2(activityImage, i112));
                            break;
                        } else {
                            activityImage.X = 0.0f;
                            activityImage.M.setVisibility(8);
                            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                            ImageData imageData = com.yunpan.appmanage.util.j.f4033a.f4076y;
                            activityImage.z(imageData.bdFiles.get(imageData.position).f18365b);
                            break;
                        }
                    default:
                        int i182 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        new mc.c(0, new ec.d() { // from class: ua.g2
                            @Override // ec.d
                            public final void g(mc.b bVar) throws IOException {
                                ActivityImage activityImage2 = activityImage;
                                switch (i112) {
                                    case 0:
                                        int i1822 = ActivityImage.f3974t0;
                                        activityImage2.getClass();
                                        DecimalFormat decimalFormat22 = com.yunpan.appmanage.util.k.f4034u0;
                                        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                        ImageData imageData2 = kVar.f4076y;
                                        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(imageData2.bdFiles.get(imageData2.position).f18365b);
                                        Matrix matrix = new Matrix();
                                        matrix.postRotate(activityImage2.X);
                                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix, true);
                                        FileOutputStream fileOutputStream = new FileOutputStream(new File(activityImage2.A.getCacheDir() + "/rotation.ming"));
                                        ImageData imageData22 = kVar.f4076y;
                                        String lowerCase = imageData22.bdFiles.get(imageData22.position).f18364a.toLowerCase();
                                        if (lowerCase.endsWith(".jpg") || lowerCase.endsWith(".jpeg")) {
                                            bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                                        } else {
                                            bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                                        }
                                        fileOutputStream.flush();
                                        fileOutputStream.close();
                                        bVar.b();
                                        break;
                                    default:
                                        int i192 = ActivityImage.f3974t0;
                                        activityImage2.getClass();
                                        DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                        com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                                        ImageData imageData3 = kVar2.f4076y;
                                        String lowerCase2 = imageData3.bdFiles.get(imageData3.position).f18364a.toLowerCase();
                                        ImageData imageData4 = kVar2.f4076y;
                                        String str = imageData4.bdFiles.get(imageData4.position).f18365b;
                                        String strSubstring = str.substring(0, str.lastIndexOf("."));
                                        String strJ = (lowerCase2.endsWith(".jpg") || lowerCase2.endsWith(".jpeg")) ? g.b.j(strSubstring, ".jpg") : g.b.j(strSubstring, ".png");
                                        u9.d.r("\\cp -R '" + activityImage2.A.getCacheDir() + "/rotation.ming' '" + strJ + "'").l0();
                                        if (!com.yunpan.appmanage.util.a0.g(strJ)) {
                                            bVar.d(new Throwable("保存失败"));
                                            break;
                                        } else {
                                            MyDb.get().addIfFile(strJ);
                                            ImageData imageData5 = kVar2.f4076y;
                                            if (strJ.equals(imageData5.bdFiles.get(imageData5.position).f18365b)) {
                                                kh.e.b().f(new ja.e(strJ));
                                            } else {
                                                a2.w0 w0Var = fa.b0.f5652a;
                                                ImageData imageData6 = kVar2.f4076y;
                                                String str2 = imageData6.bdFiles.get(imageData6.position).f18365b;
                                                w0Var.getClass();
                                                a2.w0.B(str2);
                                                FileInfoDao fileInfoDao = MyDb.get().getFileInfoDao();
                                                ImageData imageData7 = kVar2.f4076y;
                                                fileInfoDao.delete(imageData7.bdFiles.get(imageData7.position).f18365b);
                                                x9.w3 w3Var = new x9.w3(strJ);
                                                kh.e eVarB = kh.e.b();
                                                ImageData imageData8 = kVar2.f4076y;
                                                eVarB.f(new ja.e(imageData8.bdFiles.get(imageData8.position).f18365b, w3Var));
                                                ImageData imageData9 = kVar2.f4076y;
                                                imageData9.bdFiles.set(imageData9.position, w3Var);
                                            }
                                            bVar.b();
                                            break;
                                        }
                                        break;
                                }
                            }
                        }).d(rc.f.f13757b).a(fc.b.a()).b(new h2(activityImage, 2));
                        break;
                }
            }
        });
        this.N.setOnFocusChangeListener(new n(4, this));
        final int i20 = 5;
        this.P.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.f2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityImage f15671b;

            {
                this.f15671b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i122, KeyEvent keyEvent) {
                ActivityImage activityImage = this.f15671b;
                switch (i20) {
                    case 0:
                        int i132 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        System.out.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i122 == 21 || i122 == 19) {
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.j.f4033a.f4076y.position--;
                                activityImage.y();
                            } else if (i122 == 22) {
                                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                                activityImage.y();
                            } else if (i122 == 20) {
                                if (activityImage.I.getVisibility() == 0) {
                                    activityImage.K.requestFocus();
                                } else {
                                    DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.j.f4033a.f4076y.position++;
                                    activityImage.y();
                                }
                            } else if (i122 == 66) {
                                if (System.currentTimeMillis() - activityImage.Z < 2000) {
                                    int i142 = activityImage.f3975h0 + 1;
                                    activityImage.f3975h0 = i142;
                                    if (i142 > 3) {
                                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                                        if (wVar2.G0) {
                                            activityImage.Y.removeMessages(0);
                                            wVar2.w(false);
                                            activityImage.P.setChecked(false);
                                            com.yunpan.appmanage.util.a0.w("自动播放已关闭");
                                        }
                                    }
                                } else {
                                    activityImage.Z = System.currentTimeMillis();
                                    activityImage.f3975h0 = 0;
                                }
                                if (activityImage.D.getVisibility() == 0) {
                                    activityImage.x();
                                } else {
                                    activityImage.A();
                                }
                            }
                        }
                        if (i122 == 21 || i122 == 22 || i122 == 19 || i122 == 20 || i122 == 66) {
                        }
                        break;
                    case 1:
                        int i152 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 2:
                        int i162 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 3:
                        int i172 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 4:
                        int i182 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.R.requestFocus();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    case 5:
                        int i192 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0 && i122 == 19) {
                            activityImage.x();
                        }
                        if (i122 == 19) {
                        }
                        break;
                    default:
                        int i202 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i122 == 21) {
                                com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                                int i21 = wVar3.H0 - 1;
                                if (i21 < 0) {
                                    i21 = 0;
                                }
                                activityImage.T.setText(i21 + "s");
                                wVar3.x(i21);
                            } else if (i122 == 22) {
                                com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
                                int i22 = wVar4.H0 + 1;
                                activityImage.T.setText(i22 + "s");
                                wVar4.x(i22);
                            }
                        }
                        if (i122 == 21 || i122 == 22) {
                        }
                        break;
                }
                return false;
            }
        });
        this.K.setOnClickListener(new View.OnClickListener(this) { // from class: ua.e2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityImage f15651b;

            {
                this.f15651b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                final int i112 = 1;
                final ActivityImage activityImage = this.f15651b;
                switch (i20) {
                    case 0:
                        int i122 = ActivityImage.f3974t0;
                        activityImage.finish();
                        break;
                    case 1:
                        int i132 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                        int i142 = wVar2.H0 - 1;
                        i = i142 >= 0 ? i142 : 0;
                        activityImage.T.setText(i + "s");
                        wVar2.x(i);
                        break;
                    case 2:
                        int i152 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        com.yunpan.appmanage.util.w wVar22 = com.yunpan.appmanage.util.v.f4106a;
                        int i162 = wVar22.H0 + 1;
                        activityImage.T.setText(i162 + "s");
                        wVar22.x(i162);
                        break;
                    case 3:
                        if (activityImage.D.getVisibility() != 0) {
                            activityImage.A();
                            break;
                        } else {
                            activityImage.x();
                            break;
                        }
                    case 4:
                        ConstraintLayout constraintLayout = activityImage.O;
                        constraintLayout.setVisibility(constraintLayout.getVisibility() != 0 ? 0 : 8);
                        break;
                    case 5:
                        int i172 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                        if (com.yunpan.appmanage.util.j.f4033a.f4076y.userInfo == null) {
                            new mc.c(0, new v0(7)).d(rc.f.f13757b).a(fc.b.a()).b(new h2(activityImage, i));
                            break;
                        }
                        break;
                    case 6:
                        float f10 = activityImage.X + 90.0f;
                        activityImage.X = f10;
                        if (f10 < 360.0f) {
                            new mc.c(0, new ec.d() { // from class: ua.g2
                                @Override // ec.d
                                public final void g(mc.b bVar) throws IOException {
                                    ActivityImage activityImage2 = activityImage;
                                    switch (i) {
                                        case 0:
                                            int i1822 = ActivityImage.f3974t0;
                                            activityImage2.getClass();
                                            DecimalFormat decimalFormat22 = com.yunpan.appmanage.util.k.f4034u0;
                                            com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                            ImageData imageData2 = kVar.f4076y;
                                            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(imageData2.bdFiles.get(imageData2.position).f18365b);
                                            Matrix matrix = new Matrix();
                                            matrix.postRotate(activityImage2.X);
                                            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix, true);
                                            FileOutputStream fileOutputStream = new FileOutputStream(new File(activityImage2.A.getCacheDir() + "/rotation.ming"));
                                            ImageData imageData22 = kVar.f4076y;
                                            String lowerCase = imageData22.bdFiles.get(imageData22.position).f18364a.toLowerCase();
                                            if (lowerCase.endsWith(".jpg") || lowerCase.endsWith(".jpeg")) {
                                                bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                                            } else {
                                                bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                                            }
                                            fileOutputStream.flush();
                                            fileOutputStream.close();
                                            bVar.b();
                                            break;
                                        default:
                                            int i192 = ActivityImage.f3974t0;
                                            activityImage2.getClass();
                                            DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                            com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                                            ImageData imageData3 = kVar2.f4076y;
                                            String lowerCase2 = imageData3.bdFiles.get(imageData3.position).f18364a.toLowerCase();
                                            ImageData imageData4 = kVar2.f4076y;
                                            String str = imageData4.bdFiles.get(imageData4.position).f18365b;
                                            String strSubstring = str.substring(0, str.lastIndexOf("."));
                                            String strJ = (lowerCase2.endsWith(".jpg") || lowerCase2.endsWith(".jpeg")) ? g.b.j(strSubstring, ".jpg") : g.b.j(strSubstring, ".png");
                                            u9.d.r("\\cp -R '" + activityImage2.A.getCacheDir() + "/rotation.ming' '" + strJ + "'").l0();
                                            if (!com.yunpan.appmanage.util.a0.g(strJ)) {
                                                bVar.d(new Throwable("保存失败"));
                                                break;
                                            } else {
                                                MyDb.get().addIfFile(strJ);
                                                ImageData imageData5 = kVar2.f4076y;
                                                if (strJ.equals(imageData5.bdFiles.get(imageData5.position).f18365b)) {
                                                    kh.e.b().f(new ja.e(strJ));
                                                } else {
                                                    a2.w0 w0Var = fa.b0.f5652a;
                                                    ImageData imageData6 = kVar2.f4076y;
                                                    String str2 = imageData6.bdFiles.get(imageData6.position).f18365b;
                                                    w0Var.getClass();
                                                    a2.w0.B(str2);
                                                    FileInfoDao fileInfoDao = MyDb.get().getFileInfoDao();
                                                    ImageData imageData7 = kVar2.f4076y;
                                                    fileInfoDao.delete(imageData7.bdFiles.get(imageData7.position).f18365b);
                                                    x9.w3 w3Var = new x9.w3(strJ);
                                                    kh.e eVarB = kh.e.b();
                                                    ImageData imageData8 = kVar2.f4076y;
                                                    eVarB.f(new ja.e(imageData8.bdFiles.get(imageData8.position).f18365b, w3Var));
                                                    ImageData imageData9 = kVar2.f4076y;
                                                    imageData9.bdFiles.set(imageData9.position, w3Var);
                                                }
                                                bVar.b();
                                                break;
                                            }
                                            break;
                                    }
                                }
                            }).d(rc.f.f13757b).a(fc.b.a()).b(new h2(activityImage, i112));
                            break;
                        } else {
                            activityImage.X = 0.0f;
                            activityImage.M.setVisibility(8);
                            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                            ImageData imageData = com.yunpan.appmanage.util.j.f4033a.f4076y;
                            activityImage.z(imageData.bdFiles.get(imageData.position).f18365b);
                            break;
                        }
                    default:
                        int i182 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        new mc.c(0, new ec.d() { // from class: ua.g2
                            @Override // ec.d
                            public final void g(mc.b bVar) throws IOException {
                                ActivityImage activityImage2 = activityImage;
                                switch (i112) {
                                    case 0:
                                        int i1822 = ActivityImage.f3974t0;
                                        activityImage2.getClass();
                                        DecimalFormat decimalFormat22 = com.yunpan.appmanage.util.k.f4034u0;
                                        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                        ImageData imageData2 = kVar.f4076y;
                                        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(imageData2.bdFiles.get(imageData2.position).f18365b);
                                        Matrix matrix = new Matrix();
                                        matrix.postRotate(activityImage2.X);
                                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix, true);
                                        FileOutputStream fileOutputStream = new FileOutputStream(new File(activityImage2.A.getCacheDir() + "/rotation.ming"));
                                        ImageData imageData22 = kVar.f4076y;
                                        String lowerCase = imageData22.bdFiles.get(imageData22.position).f18364a.toLowerCase();
                                        if (lowerCase.endsWith(".jpg") || lowerCase.endsWith(".jpeg")) {
                                            bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                                        } else {
                                            bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                                        }
                                        fileOutputStream.flush();
                                        fileOutputStream.close();
                                        bVar.b();
                                        break;
                                    default:
                                        int i192 = ActivityImage.f3974t0;
                                        activityImage2.getClass();
                                        DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                        com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                                        ImageData imageData3 = kVar2.f4076y;
                                        String lowerCase2 = imageData3.bdFiles.get(imageData3.position).f18364a.toLowerCase();
                                        ImageData imageData4 = kVar2.f4076y;
                                        String str = imageData4.bdFiles.get(imageData4.position).f18365b;
                                        String strSubstring = str.substring(0, str.lastIndexOf("."));
                                        String strJ = (lowerCase2.endsWith(".jpg") || lowerCase2.endsWith(".jpeg")) ? g.b.j(strSubstring, ".jpg") : g.b.j(strSubstring, ".png");
                                        u9.d.r("\\cp -R '" + activityImage2.A.getCacheDir() + "/rotation.ming' '" + strJ + "'").l0();
                                        if (!com.yunpan.appmanage.util.a0.g(strJ)) {
                                            bVar.d(new Throwable("保存失败"));
                                            break;
                                        } else {
                                            MyDb.get().addIfFile(strJ);
                                            ImageData imageData5 = kVar2.f4076y;
                                            if (strJ.equals(imageData5.bdFiles.get(imageData5.position).f18365b)) {
                                                kh.e.b().f(new ja.e(strJ));
                                            } else {
                                                a2.w0 w0Var = fa.b0.f5652a;
                                                ImageData imageData6 = kVar2.f4076y;
                                                String str2 = imageData6.bdFiles.get(imageData6.position).f18365b;
                                                w0Var.getClass();
                                                a2.w0.B(str2);
                                                FileInfoDao fileInfoDao = MyDb.get().getFileInfoDao();
                                                ImageData imageData7 = kVar2.f4076y;
                                                fileInfoDao.delete(imageData7.bdFiles.get(imageData7.position).f18365b);
                                                x9.w3 w3Var = new x9.w3(strJ);
                                                kh.e eVarB = kh.e.b();
                                                ImageData imageData8 = kVar2.f4076y;
                                                eVarB.f(new ja.e(imageData8.bdFiles.get(imageData8.position).f18365b, w3Var));
                                                ImageData imageData9 = kVar2.f4076y;
                                                imageData9.bdFiles.set(imageData9.position, w3Var);
                                            }
                                            bVar.b();
                                            break;
                                        }
                                        break;
                                }
                            }
                        }).d(rc.f.f13757b).a(fc.b.a()).b(new h2(activityImage, 2));
                        break;
                }
            }
        });
        final int i21 = 6;
        this.L.setOnClickListener(new View.OnClickListener(this) { // from class: ua.e2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityImage f15651b;

            {
                this.f15651b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                final int i112 = 1;
                final ActivityImage activityImage = this.f15651b;
                switch (i21) {
                    case 0:
                        int i122 = ActivityImage.f3974t0;
                        activityImage.finish();
                        break;
                    case 1:
                        int i132 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                        int i142 = wVar2.H0 - 1;
                        i = i142 >= 0 ? i142 : 0;
                        activityImage.T.setText(i + "s");
                        wVar2.x(i);
                        break;
                    case 2:
                        int i152 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        com.yunpan.appmanage.util.w wVar22 = com.yunpan.appmanage.util.v.f4106a;
                        int i162 = wVar22.H0 + 1;
                        activityImage.T.setText(i162 + "s");
                        wVar22.x(i162);
                        break;
                    case 3:
                        if (activityImage.D.getVisibility() != 0) {
                            activityImage.A();
                            break;
                        } else {
                            activityImage.x();
                            break;
                        }
                    case 4:
                        ConstraintLayout constraintLayout = activityImage.O;
                        constraintLayout.setVisibility(constraintLayout.getVisibility() != 0 ? 0 : 8);
                        break;
                    case 5:
                        int i172 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                        if (com.yunpan.appmanage.util.j.f4033a.f4076y.userInfo == null) {
                            new mc.c(0, new v0(7)).d(rc.f.f13757b).a(fc.b.a()).b(new h2(activityImage, i));
                            break;
                        }
                        break;
                    case 6:
                        float f10 = activityImage.X + 90.0f;
                        activityImage.X = f10;
                        if (f10 < 360.0f) {
                            new mc.c(0, new ec.d() { // from class: ua.g2
                                @Override // ec.d
                                public final void g(mc.b bVar) throws IOException {
                                    ActivityImage activityImage2 = activityImage;
                                    switch (i) {
                                        case 0:
                                            int i1822 = ActivityImage.f3974t0;
                                            activityImage2.getClass();
                                            DecimalFormat decimalFormat22 = com.yunpan.appmanage.util.k.f4034u0;
                                            com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                            ImageData imageData2 = kVar.f4076y;
                                            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(imageData2.bdFiles.get(imageData2.position).f18365b);
                                            Matrix matrix = new Matrix();
                                            matrix.postRotate(activityImage2.X);
                                            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix, true);
                                            FileOutputStream fileOutputStream = new FileOutputStream(new File(activityImage2.A.getCacheDir() + "/rotation.ming"));
                                            ImageData imageData22 = kVar.f4076y;
                                            String lowerCase = imageData22.bdFiles.get(imageData22.position).f18364a.toLowerCase();
                                            if (lowerCase.endsWith(".jpg") || lowerCase.endsWith(".jpeg")) {
                                                bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                                            } else {
                                                bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                                            }
                                            fileOutputStream.flush();
                                            fileOutputStream.close();
                                            bVar.b();
                                            break;
                                        default:
                                            int i192 = ActivityImage.f3974t0;
                                            activityImage2.getClass();
                                            DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                            com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                                            ImageData imageData3 = kVar2.f4076y;
                                            String lowerCase2 = imageData3.bdFiles.get(imageData3.position).f18364a.toLowerCase();
                                            ImageData imageData4 = kVar2.f4076y;
                                            String str = imageData4.bdFiles.get(imageData4.position).f18365b;
                                            String strSubstring = str.substring(0, str.lastIndexOf("."));
                                            String strJ = (lowerCase2.endsWith(".jpg") || lowerCase2.endsWith(".jpeg")) ? g.b.j(strSubstring, ".jpg") : g.b.j(strSubstring, ".png");
                                            u9.d.r("\\cp -R '" + activityImage2.A.getCacheDir() + "/rotation.ming' '" + strJ + "'").l0();
                                            if (!com.yunpan.appmanage.util.a0.g(strJ)) {
                                                bVar.d(new Throwable("保存失败"));
                                                break;
                                            } else {
                                                MyDb.get().addIfFile(strJ);
                                                ImageData imageData5 = kVar2.f4076y;
                                                if (strJ.equals(imageData5.bdFiles.get(imageData5.position).f18365b)) {
                                                    kh.e.b().f(new ja.e(strJ));
                                                } else {
                                                    a2.w0 w0Var = fa.b0.f5652a;
                                                    ImageData imageData6 = kVar2.f4076y;
                                                    String str2 = imageData6.bdFiles.get(imageData6.position).f18365b;
                                                    w0Var.getClass();
                                                    a2.w0.B(str2);
                                                    FileInfoDao fileInfoDao = MyDb.get().getFileInfoDao();
                                                    ImageData imageData7 = kVar2.f4076y;
                                                    fileInfoDao.delete(imageData7.bdFiles.get(imageData7.position).f18365b);
                                                    x9.w3 w3Var = new x9.w3(strJ);
                                                    kh.e eVarB = kh.e.b();
                                                    ImageData imageData8 = kVar2.f4076y;
                                                    eVarB.f(new ja.e(imageData8.bdFiles.get(imageData8.position).f18365b, w3Var));
                                                    ImageData imageData9 = kVar2.f4076y;
                                                    imageData9.bdFiles.set(imageData9.position, w3Var);
                                                }
                                                bVar.b();
                                                break;
                                            }
                                            break;
                                    }
                                }
                            }).d(rc.f.f13757b).a(fc.b.a()).b(new h2(activityImage, i112));
                            break;
                        } else {
                            activityImage.X = 0.0f;
                            activityImage.M.setVisibility(8);
                            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                            ImageData imageData = com.yunpan.appmanage.util.j.f4033a.f4076y;
                            activityImage.z(imageData.bdFiles.get(imageData.position).f18365b);
                            break;
                        }
                    default:
                        int i182 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        new mc.c(0, new ec.d() { // from class: ua.g2
                            @Override // ec.d
                            public final void g(mc.b bVar) throws IOException {
                                ActivityImage activityImage2 = activityImage;
                                switch (i112) {
                                    case 0:
                                        int i1822 = ActivityImage.f3974t0;
                                        activityImage2.getClass();
                                        DecimalFormat decimalFormat22 = com.yunpan.appmanage.util.k.f4034u0;
                                        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                        ImageData imageData2 = kVar.f4076y;
                                        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(imageData2.bdFiles.get(imageData2.position).f18365b);
                                        Matrix matrix = new Matrix();
                                        matrix.postRotate(activityImage2.X);
                                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix, true);
                                        FileOutputStream fileOutputStream = new FileOutputStream(new File(activityImage2.A.getCacheDir() + "/rotation.ming"));
                                        ImageData imageData22 = kVar.f4076y;
                                        String lowerCase = imageData22.bdFiles.get(imageData22.position).f18364a.toLowerCase();
                                        if (lowerCase.endsWith(".jpg") || lowerCase.endsWith(".jpeg")) {
                                            bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                                        } else {
                                            bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                                        }
                                        fileOutputStream.flush();
                                        fileOutputStream.close();
                                        bVar.b();
                                        break;
                                    default:
                                        int i192 = ActivityImage.f3974t0;
                                        activityImage2.getClass();
                                        DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                        com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                                        ImageData imageData3 = kVar2.f4076y;
                                        String lowerCase2 = imageData3.bdFiles.get(imageData3.position).f18364a.toLowerCase();
                                        ImageData imageData4 = kVar2.f4076y;
                                        String str = imageData4.bdFiles.get(imageData4.position).f18365b;
                                        String strSubstring = str.substring(0, str.lastIndexOf("."));
                                        String strJ = (lowerCase2.endsWith(".jpg") || lowerCase2.endsWith(".jpeg")) ? g.b.j(strSubstring, ".jpg") : g.b.j(strSubstring, ".png");
                                        u9.d.r("\\cp -R '" + activityImage2.A.getCacheDir() + "/rotation.ming' '" + strJ + "'").l0();
                                        if (!com.yunpan.appmanage.util.a0.g(strJ)) {
                                            bVar.d(new Throwable("保存失败"));
                                            break;
                                        } else {
                                            MyDb.get().addIfFile(strJ);
                                            ImageData imageData5 = kVar2.f4076y;
                                            if (strJ.equals(imageData5.bdFiles.get(imageData5.position).f18365b)) {
                                                kh.e.b().f(new ja.e(strJ));
                                            } else {
                                                a2.w0 w0Var = fa.b0.f5652a;
                                                ImageData imageData6 = kVar2.f4076y;
                                                String str2 = imageData6.bdFiles.get(imageData6.position).f18365b;
                                                w0Var.getClass();
                                                a2.w0.B(str2);
                                                FileInfoDao fileInfoDao = MyDb.get().getFileInfoDao();
                                                ImageData imageData7 = kVar2.f4076y;
                                                fileInfoDao.delete(imageData7.bdFiles.get(imageData7.position).f18365b);
                                                x9.w3 w3Var = new x9.w3(strJ);
                                                kh.e eVarB = kh.e.b();
                                                ImageData imageData8 = kVar2.f4076y;
                                                eVarB.f(new ja.e(imageData8.bdFiles.get(imageData8.position).f18365b, w3Var));
                                                ImageData imageData9 = kVar2.f4076y;
                                                imageData9.bdFiles.set(imageData9.position, w3Var);
                                            }
                                            bVar.b();
                                            break;
                                        }
                                        break;
                                }
                            }
                        }).d(rc.f.f13757b).a(fc.b.a()).b(new h2(activityImage, 2));
                        break;
                }
            }
        });
        final int i22 = 7;
        this.M.setOnClickListener(new View.OnClickListener(this) { // from class: ua.e2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityImage f15651b;

            {
                this.f15651b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                final int i112 = 1;
                final ActivityImage activityImage = this.f15651b;
                switch (i22) {
                    case 0:
                        int i122 = ActivityImage.f3974t0;
                        activityImage.finish();
                        break;
                    case 1:
                        int i132 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                        int i142 = wVar2.H0 - 1;
                        i = i142 >= 0 ? i142 : 0;
                        activityImage.T.setText(i + "s");
                        wVar2.x(i);
                        break;
                    case 2:
                        int i152 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        com.yunpan.appmanage.util.w wVar22 = com.yunpan.appmanage.util.v.f4106a;
                        int i162 = wVar22.H0 + 1;
                        activityImage.T.setText(i162 + "s");
                        wVar22.x(i162);
                        break;
                    case 3:
                        if (activityImage.D.getVisibility() != 0) {
                            activityImage.A();
                            break;
                        } else {
                            activityImage.x();
                            break;
                        }
                    case 4:
                        ConstraintLayout constraintLayout = activityImage.O;
                        constraintLayout.setVisibility(constraintLayout.getVisibility() != 0 ? 0 : 8);
                        break;
                    case 5:
                        int i172 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                        if (com.yunpan.appmanage.util.j.f4033a.f4076y.userInfo == null) {
                            new mc.c(0, new v0(7)).d(rc.f.f13757b).a(fc.b.a()).b(new h2(activityImage, i));
                            break;
                        }
                        break;
                    case 6:
                        float f10 = activityImage.X + 90.0f;
                        activityImage.X = f10;
                        if (f10 < 360.0f) {
                            new mc.c(0, new ec.d() { // from class: ua.g2
                                @Override // ec.d
                                public final void g(mc.b bVar) throws IOException {
                                    ActivityImage activityImage2 = activityImage;
                                    switch (i) {
                                        case 0:
                                            int i1822 = ActivityImage.f3974t0;
                                            activityImage2.getClass();
                                            DecimalFormat decimalFormat22 = com.yunpan.appmanage.util.k.f4034u0;
                                            com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                            ImageData imageData2 = kVar.f4076y;
                                            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(imageData2.bdFiles.get(imageData2.position).f18365b);
                                            Matrix matrix = new Matrix();
                                            matrix.postRotate(activityImage2.X);
                                            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix, true);
                                            FileOutputStream fileOutputStream = new FileOutputStream(new File(activityImage2.A.getCacheDir() + "/rotation.ming"));
                                            ImageData imageData22 = kVar.f4076y;
                                            String lowerCase = imageData22.bdFiles.get(imageData22.position).f18364a.toLowerCase();
                                            if (lowerCase.endsWith(".jpg") || lowerCase.endsWith(".jpeg")) {
                                                bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                                            } else {
                                                bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                                            }
                                            fileOutputStream.flush();
                                            fileOutputStream.close();
                                            bVar.b();
                                            break;
                                        default:
                                            int i192 = ActivityImage.f3974t0;
                                            activityImage2.getClass();
                                            DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                            com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                                            ImageData imageData3 = kVar2.f4076y;
                                            String lowerCase2 = imageData3.bdFiles.get(imageData3.position).f18364a.toLowerCase();
                                            ImageData imageData4 = kVar2.f4076y;
                                            String str = imageData4.bdFiles.get(imageData4.position).f18365b;
                                            String strSubstring = str.substring(0, str.lastIndexOf("."));
                                            String strJ = (lowerCase2.endsWith(".jpg") || lowerCase2.endsWith(".jpeg")) ? g.b.j(strSubstring, ".jpg") : g.b.j(strSubstring, ".png");
                                            u9.d.r("\\cp -R '" + activityImage2.A.getCacheDir() + "/rotation.ming' '" + strJ + "'").l0();
                                            if (!com.yunpan.appmanage.util.a0.g(strJ)) {
                                                bVar.d(new Throwable("保存失败"));
                                                break;
                                            } else {
                                                MyDb.get().addIfFile(strJ);
                                                ImageData imageData5 = kVar2.f4076y;
                                                if (strJ.equals(imageData5.bdFiles.get(imageData5.position).f18365b)) {
                                                    kh.e.b().f(new ja.e(strJ));
                                                } else {
                                                    a2.w0 w0Var = fa.b0.f5652a;
                                                    ImageData imageData6 = kVar2.f4076y;
                                                    String str2 = imageData6.bdFiles.get(imageData6.position).f18365b;
                                                    w0Var.getClass();
                                                    a2.w0.B(str2);
                                                    FileInfoDao fileInfoDao = MyDb.get().getFileInfoDao();
                                                    ImageData imageData7 = kVar2.f4076y;
                                                    fileInfoDao.delete(imageData7.bdFiles.get(imageData7.position).f18365b);
                                                    x9.w3 w3Var = new x9.w3(strJ);
                                                    kh.e eVarB = kh.e.b();
                                                    ImageData imageData8 = kVar2.f4076y;
                                                    eVarB.f(new ja.e(imageData8.bdFiles.get(imageData8.position).f18365b, w3Var));
                                                    ImageData imageData9 = kVar2.f4076y;
                                                    imageData9.bdFiles.set(imageData9.position, w3Var);
                                                }
                                                bVar.b();
                                                break;
                                            }
                                            break;
                                    }
                                }
                            }).d(rc.f.f13757b).a(fc.b.a()).b(new h2(activityImage, i112));
                            break;
                        } else {
                            activityImage.X = 0.0f;
                            activityImage.M.setVisibility(8);
                            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                            ImageData imageData = com.yunpan.appmanage.util.j.f4033a.f4076y;
                            activityImage.z(imageData.bdFiles.get(imageData.position).f18365b);
                            break;
                        }
                    default:
                        int i182 = ActivityImage.f3974t0;
                        activityImage.getClass();
                        new mc.c(0, new ec.d() { // from class: ua.g2
                            @Override // ec.d
                            public final void g(mc.b bVar) throws IOException {
                                ActivityImage activityImage2 = activityImage;
                                switch (i112) {
                                    case 0:
                                        int i1822 = ActivityImage.f3974t0;
                                        activityImage2.getClass();
                                        DecimalFormat decimalFormat22 = com.yunpan.appmanage.util.k.f4034u0;
                                        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                        ImageData imageData2 = kVar.f4076y;
                                        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(imageData2.bdFiles.get(imageData2.position).f18365b);
                                        Matrix matrix = new Matrix();
                                        matrix.postRotate(activityImage2.X);
                                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix, true);
                                        FileOutputStream fileOutputStream = new FileOutputStream(new File(activityImage2.A.getCacheDir() + "/rotation.ming"));
                                        ImageData imageData22 = kVar.f4076y;
                                        String lowerCase = imageData22.bdFiles.get(imageData22.position).f18364a.toLowerCase();
                                        if (lowerCase.endsWith(".jpg") || lowerCase.endsWith(".jpeg")) {
                                            bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                                        } else {
                                            bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                                        }
                                        fileOutputStream.flush();
                                        fileOutputStream.close();
                                        bVar.b();
                                        break;
                                    default:
                                        int i192 = ActivityImage.f3974t0;
                                        activityImage2.getClass();
                                        DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                        com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                                        ImageData imageData3 = kVar2.f4076y;
                                        String lowerCase2 = imageData3.bdFiles.get(imageData3.position).f18364a.toLowerCase();
                                        ImageData imageData4 = kVar2.f4076y;
                                        String str = imageData4.bdFiles.get(imageData4.position).f18365b;
                                        String strSubstring = str.substring(0, str.lastIndexOf("."));
                                        String strJ = (lowerCase2.endsWith(".jpg") || lowerCase2.endsWith(".jpeg")) ? g.b.j(strSubstring, ".jpg") : g.b.j(strSubstring, ".png");
                                        u9.d.r("\\cp -R '" + activityImage2.A.getCacheDir() + "/rotation.ming' '" + strJ + "'").l0();
                                        if (!com.yunpan.appmanage.util.a0.g(strJ)) {
                                            bVar.d(new Throwable("保存失败"));
                                            break;
                                        } else {
                                            MyDb.get().addIfFile(strJ);
                                            ImageData imageData5 = kVar2.f4076y;
                                            if (strJ.equals(imageData5.bdFiles.get(imageData5.position).f18365b)) {
                                                kh.e.b().f(new ja.e(strJ));
                                            } else {
                                                a2.w0 w0Var = fa.b0.f5652a;
                                                ImageData imageData6 = kVar2.f4076y;
                                                String str2 = imageData6.bdFiles.get(imageData6.position).f18365b;
                                                w0Var.getClass();
                                                a2.w0.B(str2);
                                                FileInfoDao fileInfoDao = MyDb.get().getFileInfoDao();
                                                ImageData imageData7 = kVar2.f4076y;
                                                fileInfoDao.delete(imageData7.bdFiles.get(imageData7.position).f18365b);
                                                x9.w3 w3Var = new x9.w3(strJ);
                                                kh.e eVarB = kh.e.b();
                                                ImageData imageData8 = kVar2.f4076y;
                                                eVarB.f(new ja.e(imageData8.bdFiles.get(imageData8.position).f18365b, w3Var));
                                                ImageData imageData9 = kVar2.f4076y;
                                                imageData9.bdFiles.set(imageData9.position, w3Var);
                                            }
                                            bVar.b();
                                            break;
                                        }
                                        break;
                                }
                            }
                        }).d(rc.f.f13757b).a(fc.b.a()).b(new h2(activityImage, 2));
                        break;
                }
            }
        });
    }

    public final void x() {
        this.C.requestFocus();
        this.D.setVisibility(8);
        this.I.setVisibility(8);
        this.O.setVisibility(8);
        this.M.setVisibility(8);
    }

    public final void y() {
        u uVar = this.Y;
        uVar.removeMessages(0);
        DecimalFormat decimalFormat = k.f4034u0;
        k kVar = j.f4033a;
        ImageData imageData = kVar.f4076y;
        if (imageData.position >= imageData.bdFiles.size()) {
            kVar.f4076y.position = 0;
        }
        ImageData imageData2 = kVar.f4076y;
        if (imageData2.position < 0) {
            imageData2.position = imageData2.bdFiles.size() - 1;
        }
        x();
        this.X = 0.0f;
        ImageData imageData3 = kVar.f4076y;
        z(imageData3.bdFiles.get(imageData3.position).f18365b);
        this.F.setText("第 " + (kVar.f4076y.position + 1) + " 张，共 " + kVar.f4076y.bdFiles.size() + " 张");
        TextView textView = this.H;
        ImageData imageData4 = kVar.f4076y;
        textView.setText(imageData4.bdFiles.get(imageData4.position).f18364a);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        ImageData imageData5 = kVar.f4076y;
        BitmapFactory.decodeFile(imageData5.bdFiles.get(imageData5.position).f18365b, options);
        int i10 = options.outWidth;
        int i11 = options.outHeight;
        TextView textView2 = this.G;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i10);
        sb2.append(Marker.ANY_MARKER);
        sb2.append(i11);
        sb2.append("   ");
        ImageData imageData6 = kVar.f4076y;
        sb2.append(p000if.a.D0(imageData6.bdFiles.get(imageData6.position).f18367d));
        textView2.setText(sb2.toString());
        if (v.f4106a.G0) {
            uVar.sendEmptyMessageDelayed(0, r2.H0 * 1000);
        }
    }

    public final void z(String str) {
        this.C.recycle();
        this.C.setImage(ImageSource.uri("file://" + str));
        int width = this.C.getWidth();
        int height = this.C.getHeight();
        int sWidth = this.C.getSWidth();
        int sHeight = this.C.getSHeight();
        if (sWidth <= width || sHeight <= height) {
            return;
        }
        if (width - sWidth > height - sHeight) {
            this.C.setScaleX(width / sWidth);
        } else {
            this.C.setScaleY(height / sHeight);
        }
    }

    @kh.j(threadMode = ThreadMode.MAIN)
    public void onReceiveMsg(ja.e eVar) {
    }
}
