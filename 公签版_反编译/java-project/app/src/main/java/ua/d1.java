package ua;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.View;
import android.widget.EditText;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.hjq.permissions.XXPermissions;
import com.hjq.permissions.permission.PermissionLists;
import com.hjq.permissions.permission.base.IPermission;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.CodeEditorTopBean;
import com.yunpan.appmanage.ui.ActivityCodeEditor;
import ha.ea;
import ha.fa;
import ha.nb;
import io.github.rosemoe.sora.widget.CodeEditor;
import j$.util.Objects;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public final /* synthetic */ class d1 implements ec.d, ea, c6.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15630a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityCodeEditor f15631b;

    public /* synthetic */ d1(ActivityCodeEditor activityCodeEditor, int i10) {
        this.f15630a = i10;
        this.f15631b = activityCodeEditor;
    }

    public void a() {
        ActivityCodeEditor activityCodeEditor = this.f15631b;
        activityCodeEditor.C.setTextSize(activityCodeEditor.X.getInt("size", 18));
        activityCodeEditor.C.setWordwrap(activityCodeEditor.X.getBoolean("auto_line", true));
        activityCodeEditor.C.setLineNumberEnabled(activityCodeEditor.X.getBoolean("show_line_number", true));
        activityCodeEditor.C.setScalable(activityCodeEditor.X.getBoolean("gesture_scale", false));
        activityCodeEditor.C.setHighlightCurrentLine(activityCodeEditor.X.getBoolean("highlight_current_line", true));
        activityCodeEditor.C.M(activityCodeEditor.X.getBoolean("auto_indent", true));
    }

    @Override // ha.ea
    public void b(int i10) {
        int i11;
        switch (this.f15630a) {
            case 2:
                ActivityCodeEditor activityCodeEditor = this.f15631b;
                activityCodeEditor.P = activityCodeEditor.M[i10];
                int i12 = 0;
                int i13 = 0;
                while (true) {
                    int iB = activityCodeEditor.G.b();
                    i11 = activityCodeEditor.f3969b1;
                    if (i13 < iB) {
                        if (((CodeEditorTopBean) activityCodeEditor.G.t(i13)).tag == i11) {
                            i12 = i13;
                        } else {
                            i13++;
                        }
                    }
                }
                activityCodeEditor.G.D(i12, new CodeEditorTopBean(activityCodeEditor.P, i11));
                break;
            default:
                ActivityCodeEditor activityCodeEditor2 = this.f15631b;
                activityCodeEditor2.x(activityCodeEditor2.L[i10]);
                break;
        }
    }

    @Override // ec.d
    public void g(mc.b bVar) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        ActivityCodeEditor activityCodeEditor = this.f15631b;
        switch (this.f15630a) {
            case 0:
                int i10 = ActivityCodeEditor.f3967c1;
                activityCodeEditor.getClass();
                try {
                    OutputStream outputStreamOpenOutputStream = activityCodeEditor.A.getContentResolver().openOutputStream(activityCodeEditor.R);
                    if (outputStreamOpenOutputStream != null) {
                        try {
                            if (activityCodeEditor.S) {
                                outputStreamOpenOutputStream.write(activityCodeEditor.C.getText().toString().getBytes(activityCodeEditor.P));
                            } else {
                                outputStreamOpenOutputStream.write(activityCodeEditor.D.getText().toString().getBytes(activityCodeEditor.P));
                            }
                            activityCodeEditor.N = (activityCodeEditor.S ? activityCodeEditor.C.getText().toString() : activityCodeEditor.D.getText().toString()).hashCode();
                            bVar.b();
                        } catch (Throwable th2) {
                            try {
                                outputStreamOpenOutputStream.close();
                            } catch (Throwable th3) {
                                try {
                                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                                } catch (Exception unused) {
                                }
                            }
                            throw th2;
                        }
                    }
                    if (outputStreamOpenOutputStream != null) {
                        outputStreamOpenOutputStream.close();
                        return;
                    }
                    return;
                } catch (Exception e7) {
                    bVar.d(e7);
                    return;
                }
            default:
                int i11 = ActivityCodeEditor.f3967c1;
                activityCodeEditor.getClass();
                try {
                    if (activityCodeEditor.y(null).hashCode() != activityCodeEditor.N) {
                        bVar.d(new Exception("文件被修改"));
                        return;
                    }
                } catch (Exception unused2) {
                }
                bVar.b();
                return;
        }
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        int i11 = 3;
        int iC = 0;
        int i12 = 2;
        int i13 = 1;
        switch (this.f15630a) {
            case 6:
                ActivityCodeEditor activityCodeEditor = this.f15631b;
                if (((CodeEditorTopBean) activityCodeEditor.G.t(i10)).ico != R.drawable.tp_bs_return) {
                    if (((CodeEditorTopBean) activityCodeEditor.G.t(i10)).ico != R.drawable.tp_bs_save) {
                        if (((CodeEditorTopBean) activityCodeEditor.G.t(i10)).ico != R.drawable.tp_bs_lc) {
                            if (((CodeEditorTopBean) activityCodeEditor.G.t(i10)).ico != R.drawable.tp_bs_repeal) {
                                if (((CodeEditorTopBean) activityCodeEditor.G.t(i10)).ico != R.drawable.tp_bs_reform) {
                                    if (((CodeEditorTopBean) activityCodeEditor.G.t(i10)).ico != R.drawable.tp_bs_search) {
                                        if (((CodeEditorTopBean) activityCodeEditor.G.t(i10)).ico != R.drawable.tp_bs_set) {
                                            if (((CodeEditorTopBean) activityCodeEditor.G.t(i10)).tag != activityCodeEditor.T0) {
                                                if (((CodeEditorTopBean) activityCodeEditor.G.t(i10)).tag != activityCodeEditor.U0) {
                                                    if (((CodeEditorTopBean) activityCodeEditor.G.t(i10)).tag != activityCodeEditor.f3969b1) {
                                                        if (((CodeEditorTopBean) activityCodeEditor.G.t(i10)).tag != activityCodeEditor.V0) {
                                                            if (((CodeEditorTopBean) activityCodeEditor.G.t(i10)).tag != activityCodeEditor.Z0) {
                                                                if (((CodeEditorTopBean) activityCodeEditor.G.t(i10)).tag != activityCodeEditor.W0) {
                                                                    if (((CodeEditorTopBean) activityCodeEditor.G.t(i10)).tag != activityCodeEditor.X0) {
                                                                        if (((CodeEditorTopBean) activityCodeEditor.G.t(i10)).tag != activityCodeEditor.Y0) {
                                                                            if (((CodeEditorTopBean) activityCodeEditor.G.t(i10)).tag == activityCodeEditor.f3968a1) {
                                                                                if (!activityCodeEditor.S) {
                                                                                    activityCodeEditor.D.setText("");
                                                                                    break;
                                                                                } else {
                                                                                    activityCodeEditor.C.setText("");
                                                                                    break;
                                                                                }
                                                                            }
                                                                        } else {
                                                                            try {
                                                                                String str = activityCodeEditor.S0;
                                                                                if (str != null && str.toLowerCase().endsWith(".json")) {
                                                                                    if (activityCodeEditor.S) {
                                                                                        CodeEditor codeEditor = activityCodeEditor.C;
                                                                                        codeEditor.setText(d.b.b0(codeEditor.getText().toString()).toString());
                                                                                    } else {
                                                                                        EditText editText = activityCodeEditor.D;
                                                                                        editText.setText(d.b.b0(editText.getText().toString()).toString());
                                                                                    }
                                                                                }
                                                                                break;
                                                                            } catch (Exception unused) {
                                                                                com.yunpan.appmanage.util.a0.u("压缩失败,内容错误");
                                                                                return;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        try {
                                                                            String str2 = activityCodeEditor.S0;
                                                                            if (str2 != null && str2.toLowerCase().endsWith(".json")) {
                                                                                z7.n nVar = new z7.n();
                                                                                z7.i iVar = z7.i.f19447e;
                                                                                Objects.requireNonNull(iVar);
                                                                                nVar.f19474j = iVar;
                                                                                z7.m mVarA = nVar.a();
                                                                                z7.p pVarB0 = d.b.b0(activityCodeEditor.S ? activityCodeEditor.C.getText().toString() : activityCodeEditor.D.getText().toString());
                                                                                if (!activityCodeEditor.S) {
                                                                                    activityCodeEditor.D.setText(mVarA.e(pVarB0));
                                                                                    break;
                                                                                } else {
                                                                                    activityCodeEditor.C.setText(mVarA.e(pVarB0));
                                                                                    break;
                                                                                }
                                                                            }
                                                                        } catch (Exception unused2) {
                                                                            com.yunpan.appmanage.util.a0.u("格式化失败,内容错误");
                                                                            return;
                                                                        }
                                                                    }
                                                                } else {
                                                                    com.yunpan.appmanage.util.a0.u("此功能开发中");
                                                                    break;
                                                                }
                                                            } else {
                                                                new AlertDialog.Builder(activityCodeEditor).setTitle("遥控器：").setMessage("按返回键可到顶部栏，按菜单键可到底部栏").setPositiveButton("好的", (DialogInterface.OnClickListener) null).show();
                                                                break;
                                                            }
                                                        } else {
                                                            new ha.z6(activityCodeEditor, activityCodeEditor.A, "是否要重新加载文件？", "", "确定", "取消", new f1(activityCodeEditor, 1)).show();
                                                            break;
                                                        }
                                                    } else {
                                                        da.g gVar2 = activityCodeEditor.A;
                                                        String[] strArr = activityCodeEditor.M;
                                                        ArrayList arrayList = new ArrayList(strArr.length);
                                                        int length = strArr.length;
                                                        while (iC < length) {
                                                            String str3 = strArr[iC];
                                                            iC = g.b.c(str3, arrayList, str3, iC, 1);
                                                        }
                                                        new fa(activityCodeEditor, gVar2, "保存时编码", Collections.unmodifiableList(arrayList), new d1(activityCodeEditor, i12)).show();
                                                        break;
                                                    }
                                                } else {
                                                    if (!activityCodeEditor.S) {
                                                        if (activityCodeEditor.N != 0 && activityCodeEditor.D.getText().toString().hashCode() != activityCodeEditor.N) {
                                                            com.yunpan.appmanage.util.a0.u("内容修改后，不能再修改编码");
                                                            break;
                                                        }
                                                    } else if (activityCodeEditor.N != 0 && activityCodeEditor.C.getText().toString().hashCode() != activityCodeEditor.N) {
                                                        com.yunpan.appmanage.util.a0.u("内容修改后，不能再修改编码");
                                                        break;
                                                    }
                                                    da.g gVar3 = activityCodeEditor.A;
                                                    String[] strArr2 = activityCodeEditor.L;
                                                    ArrayList arrayList2 = new ArrayList(strArr2.length);
                                                    int length2 = strArr2.length;
                                                    while (iC < length2) {
                                                        String str4 = strArr2[iC];
                                                        iC = g.b.c(str4, arrayList2, str4, iC, 1);
                                                    }
                                                    new fa(activityCodeEditor, gVar3, "读取时解码", Collections.unmodifiableList(arrayList2), new d1(activityCodeEditor, i11)).show();
                                                    break;
                                                }
                                            } else {
                                                ha.f7 f7Var = new ha.f7((Activity) activityCodeEditor, activityCodeEditor.A);
                                                d1 d1Var = new d1(activityCodeEditor, i13);
                                                f7Var.show();
                                                f7Var.f7030k = d1Var;
                                                break;
                                            }
                                        } else {
                                            new ha.v4(activityCodeEditor, activityCodeEditor.A, new d1(activityCodeEditor, 4)).show();
                                            break;
                                        }
                                    } else {
                                        activityCodeEditor.Y.setVisibility(0);
                                        activityCodeEditor.Z.requestFocus();
                                        activityCodeEditor.Z.setText("");
                                        activityCodeEditor.f3970h0.setText("");
                                        activityCodeEditor.E.setVisibility(8);
                                        break;
                                    }
                                } else {
                                    mb.w wVar = activityCodeEditor.C.f8716h1.f11072i;
                                    if (wVar.f11126b && wVar.f11130f < wVar.f11125a.size()) {
                                        activityCodeEditor.C.a0();
                                        break;
                                    } else {
                                        com.yunpan.appmanage.util.a0.u("没有可重做的记录");
                                        break;
                                    }
                                }
                            } else {
                                CodeEditor codeEditor2 = activityCodeEditor.C;
                                mb.w wVar2 = codeEditor2.f8716h1.f11072i;
                                if (wVar2.f11126b && wVar2.f11130f > 0) {
                                    codeEditor2.m0();
                                    break;
                                } else {
                                    com.yunpan.appmanage.util.a0.u("没有可撤销的记录");
                                    break;
                                }
                            }
                        } else {
                            fa.h0 h0Var = fa.g0.f5682a;
                            if (!h0Var.d().isEmpty()) {
                                if (!XXPermissions.isGrantedPermissions(activityCodeEditor.A, new IPermission[]{PermissionLists.getReadExternalStoragePermission(), PermissionLists.getWriteExternalStoragePermission(), PermissionLists.getGetInstalledAppsPermission()})) {
                                    XXPermissions.with(activityCodeEditor).permission(PermissionLists.getReadExternalStoragePermission()).permission(PermissionLists.getWriteExternalStoragePermission()).permission(PermissionLists.getGetInstalledAppsPermission()).request(new v0(i12));
                                    break;
                                } else {
                                    nb nbVar = new nb(activityCodeEditor, activityCodeEditor.A);
                                    x9.w3 w3Var = new x9.w3("内部存储", h0Var.d());
                                    d1 d1Var2 = new d1(activityCodeEditor, i13);
                                    nbVar.show();
                                    nbVar.f7486t = d1Var2;
                                    nbVar.f7476g.setText("另存为");
                                    nbVar.f7478i.q(w3Var);
                                    nbVar.a();
                                    break;
                                }
                            } else {
                                com.yunpan.appmanage.util.a0.u("此设备没有sd卡，无法另存");
                                break;
                            }
                        }
                    } else {
                        activityCodeEditor.B(false);
                        break;
                    }
                } else {
                    activityCodeEditor.A();
                    break;
                }
                break;
            default:
                ActivityCodeEditor activityCodeEditor2 = this.f15631b;
                String str5 = ((CodeEditorTopBean) activityCodeEditor2.H.t(i10)).name;
                if (str5.equals("换行符")) {
                    str5 = SignParameters.NEW_LINE;
                } else if (str5.equals("制表符")) {
                    str5 = "\t";
                }
                if (!activityCodeEditor2.S) {
                    activityCodeEditor2.D.getText().insert(activityCodeEditor2.D.getSelectionStart(), str5);
                    break;
                } else {
                    activityCodeEditor2.C.getText().r(activityCodeEditor2.C.getCursor().f11081c.f11057b, activityCodeEditor2.C.getCursor().f11081c.f11058c, str5);
                    break;
                }
        }
    }
}
