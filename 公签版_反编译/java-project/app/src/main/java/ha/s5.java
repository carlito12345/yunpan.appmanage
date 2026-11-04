package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.view.MyProgressViewTest;

/* loaded from: classes.dex */
public final class s5 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f7733g = 0;

    /* renamed from: h, reason: collision with root package name */
    public TextView f7734h;

    /* renamed from: i, reason: collision with root package name */
    public Object f7735i;

    /* renamed from: j, reason: collision with root package name */
    public Object f7736j;

    /* renamed from: k, reason: collision with root package name */
    public Object f7737k;
    public TextView l;

    /* renamed from: m, reason: collision with root package name */
    public TextView f7738m;

    /* renamed from: n, reason: collision with root package name */
    public TextView f7739n;

    /* renamed from: p, reason: collision with root package name */
    public View f7740p;

    /* renamed from: q, reason: collision with root package name */
    public View f7741q;
    public Object r;

    public s5(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_loading2, false);
    }

    public void a(ja.b bVar) {
        this.r = bVar;
        this.f7734h.setText(bVar.f9817c);
        ((TextView) this.f7736j).setText("来自：" + ((ja.b) this.r).f9815a + "  (" + ((ja.b) this.r).f9820f + ")个文件");
        TextView textView = (TextView) this.f7737k;
        StringBuilder sb2 = new StringBuilder("目的：");
        sb2.append(((ja.b) this.r).f9816b);
        textView.setText(sb2.toString());
        ((TextView) this.f7735i).setText(((ja.b) this.r).f9819e + "%");
        ((MyProgressViewTest) this.f7741q).setCurrentCount(Float.valueOf(((ja.b) this.r).f9819e).floatValue());
        this.l.setText(p000if.a.D0(((ja.b) this.r).f9823i.get()) + "/" + p000if.a.D0(((ja.b) this.r).f9822h.get()));
        this.f7739n.setText(((ja.b) this.r).f9821g + "/" + ((ja.b) this.r).f9820f);
        ((TextView) this.f7740p).setText(((ja.b) this.r).f9825k);
        this.f7738m.setText(((ja.b) this.r).f9818d);
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        final int i10 = 6;
        final int i11 = 5;
        final int i12 = 3;
        final int i13 = 2;
        final int i14 = 4;
        final int i15 = 1;
        final int i16 = 0;
        switch (this.f7733g) {
            case 0:
                super.onCreate(bundle);
                TextView textView = (TextView) findViewById(R.id.v_title);
                this.f7734h = textView;
                textView.setText("");
                TextView textView2 = (TextView) findViewById(R.id.v_bfb);
                this.f7735i = textView2;
                textView2.setText("");
                TextView textView3 = (TextView) findViewById(R.id.v_str1);
                this.f7736j = textView3;
                textView3.setText("");
                TextView textView4 = (TextView) findViewById(R.id.v_str2);
                this.f7737k = textView4;
                textView4.setText("");
                TextView textView5 = (TextView) findViewById(R.id.v_str_size);
                this.l = textView5;
                textView5.setText("");
                TextView textView6 = (TextView) findViewById(R.id.v_str_speed);
                this.f7738m = textView6;
                textView6.setText("");
                MyProgressViewTest myProgressViewTest = (MyProgressViewTest) findViewById(R.id.v_progress);
                this.f7741q = myProgressViewTest;
                myProgressViewTest.setMaxCount(100.0f);
                TextView textView7 = (TextView) findViewById(R.id.v_str_progress);
                this.f7739n = textView7;
                textView7.setText("");
                TextView textView8 = (TextView) findViewById(R.id.v_str_time);
                this.f7740p = textView8;
                textView8.setText("");
                ((TextView) findViewById(R.id.v_btn_cancel)).setOnClickListener(new com.google.android.material.datepicker.l(this, 15));
                break;
            case 1:
                super.onCreate(bundle);
                TextView textView9 = (TextView) findViewById(R.id.v_title);
                x9.n5 n5Var = (x9.n5) this.f7735i;
                int i17 = n5Var.f18290a;
                if (i17 == 4) {
                    textView9.setText("FTP");
                } else if (i17 == 5) {
                    textView9.setText("FTPS");
                }
                EditText editText = (EditText) findViewById(R.id.v_edit_ip);
                this.f7737k = editText;
                editText.requestFocus();
                this.l = (EditText) findViewById(R.id.v_edit_port);
                this.f7738m = (EditText) findViewById(R.id.v_edit_user);
                this.f7739n = (EditText) findViewById(R.id.v_edit_password);
                this.f7740p = (Spinner) findViewById(R.id.v_spinner);
                this.f7741q = (RadioGroup) findViewById(R.id.v_radioGroup);
                this.r = (RadioGroup) findViewById(R.id.v_radioGroup_security);
                this.f7734h = (TextView) findViewById(R.id.v_btn_login);
                ((EditText) this.f7737k).setText(n5Var.f18292c);
                ((EditText) this.l).setText(n5Var.f18293d + "");
                ((EditText) this.f7738m).setText(n5Var.f18294e);
                ((EditText) this.f7739n).setText(n5Var.f18295f);
                if (n5Var.z) {
                    ((RadioGroup) this.f7741q).check(R.id.v_radio_passive);
                } else {
                    ((RadioGroup) this.f7741q).check(R.id.v_radio_active);
                }
                if (n5Var.f18290a == 5) {
                    ((RadioGroup) this.r).setVisibility(0);
                }
                if (n5Var.B) {
                    ((RadioGroup) this.r).check(R.id.v_radio_implicit);
                } else {
                    ((RadioGroup) this.r).check(R.id.v_radio_explicit);
                }
                ((RadioGroup) this.f7741q).setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener(this) { // from class: ha.f6

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ s5 f7025b;

                    {
                        this.f7025b = this;
                    }

                    @Override // android.widget.RadioGroup.OnCheckedChangeListener
                    public final void onCheckedChanged(RadioGroup radioGroup, int i18) {
                        switch (i16) {
                            case 0:
                                x9.n5 n5Var2 = (x9.n5) this.f7025b.f7735i;
                                if (i18 != R.id.v_radio_passive) {
                                    if (i18 == R.id.v_radio_active) {
                                        n5Var2.z = false;
                                        break;
                                    }
                                } else {
                                    n5Var2.z = true;
                                    break;
                                }
                                break;
                            default:
                                x9.n5 n5Var3 = (x9.n5) this.f7025b.f7735i;
                                if (i18 != R.id.v_radio_implicit) {
                                    if (i18 == R.id.v_radio_explicit) {
                                        n5Var3.B = false;
                                        break;
                                    }
                                } else {
                                    n5Var3.B = true;
                                    break;
                                }
                                break;
                        }
                    }
                });
                ((RadioGroup) this.r).setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener(this) { // from class: ha.f6

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ s5 f7025b;

                    {
                        this.f7025b = this;
                    }

                    @Override // android.widget.RadioGroup.OnCheckedChangeListener
                    public final void onCheckedChanged(RadioGroup radioGroup, int i18) {
                        switch (i15) {
                            case 0:
                                x9.n5 n5Var2 = (x9.n5) this.f7025b.f7735i;
                                if (i18 != R.id.v_radio_passive) {
                                    if (i18 == R.id.v_radio_active) {
                                        n5Var2.z = false;
                                        break;
                                    }
                                } else {
                                    n5Var2.z = true;
                                    break;
                                }
                                break;
                            default:
                                x9.n5 n5Var3 = (x9.n5) this.f7025b.f7735i;
                                if (i18 != R.id.v_radio_implicit) {
                                    if (i18 == R.id.v_radio_explicit) {
                                        n5Var3.B = false;
                                        break;
                                    }
                                } else {
                                    n5Var3.B = true;
                                    break;
                                }
                                break;
                        }
                    }
                });
                String[] strArr = {"自动", HTTP.UTF_8, "UTF-8-BOM", "GBK", "GB2312", "GB18030", "BIG5", "BIG5-HKSCS", HTTP.UTF_16, "UTF-16BE", "UTF-16LE", "EUC-KR", "EUC-JP", "Shift_JIS", "CESU-8", "ISO-2022-JP", "ISO-2022-KR", "ISO-8859-1", "ISO-8859-2", "ISO-8859-3", "ISO-8859-4", "ISO-8859-5", "ISO-8859-6", "ISO-8859-7", "ISO-8859-8", "ISO-8859-9", "ISO-8859-10", "ISO-8859-11", "ISO-8859-12", "ISO-8859-13", "ISO-8859-14", "ISO-8859-15", "KOI8-R", "KOI8-U", "Windows-1250", "Windows-1251", "Windows-1252", "Windows-1253", "Windows-1254", "Windows-1255", "Windows-1256", "Windows-1257", "Windows-1258"};
                ArrayAdapter arrayAdapter = new ArrayAdapter(this.f6725b, android.R.layout.simple_spinner_item, strArr);
                arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
                ((Spinner) this.f7740p).setAdapter((SpinnerAdapter) arrayAdapter);
                int i18 = 0;
                while (true) {
                    if (i18 < 43) {
                        if (strArr[i18].equals(n5Var.f18312y)) {
                            ((Spinner) this.f7740p).setSelection(i18);
                        } else {
                            i18++;
                        }
                    }
                }
                ((Spinner) this.f7740p).setOnItemSelectedListener(new h6());
                this.f7734h.setOnClickListener(new com.google.android.material.datepicker.l(this, 17));
                this.f7734h.setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.g6

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ s5 f7098b;

                    {
                        this.f7098b = this;
                    }

                    @Override // android.view.View.OnKeyListener
                    public final boolean onKey(View view, int i19, KeyEvent keyEvent) {
                        switch (i16) {
                            case 0:
                                s5 s5Var = this.f7098b;
                                s5Var.getClass();
                                if (i19 != 19) {
                                    if (i19 != 21) {
                                        if (i19 != 22) {
                                            if (i19 == 20) {
                                                if (keyEvent.getAction() == 0) {
                                                    s1.g.Z(331, view);
                                                    break;
                                                }
                                            }
                                        } else if (keyEvent.getAction() == 0) {
                                            s1.g.W(332, view);
                                            break;
                                        }
                                    } else if (keyEvent.getAction() == 0) {
                                        s1.g.W(333, view);
                                        break;
                                    }
                                } else if (keyEvent.getAction() == 0) {
                                    ((RadioGroup) s5Var.f7741q).requestFocus();
                                    break;
                                }
                                break;
                            case 1:
                                s5 s5Var2 = this.f7098b;
                                s5Var2.getClass();
                                if (keyEvent.getAction() == 0 && i19 == 20) {
                                    ((EditText) s5Var2.l).requestFocus();
                                    break;
                                } else if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 2:
                                s5 s5Var3 = this.f7098b;
                                s5Var3.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var3.f7737k).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var3.f7738m).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 3:
                                s5 s5Var4 = this.f7098b;
                                s5Var4.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var4.l).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var4.f7739n).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            default:
                                s5 s5Var5 = this.f7098b;
                                s5Var5.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var5.f7738m).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((RadioGroup) s5Var5.f7741q).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                        }
                        return true;
                    }
                });
                ((EditText) this.f7737k).setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.g6

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ s5 f7098b;

                    {
                        this.f7098b = this;
                    }

                    @Override // android.view.View.OnKeyListener
                    public final boolean onKey(View view, int i19, KeyEvent keyEvent) {
                        switch (i15) {
                            case 0:
                                s5 s5Var = this.f7098b;
                                s5Var.getClass();
                                if (i19 != 19) {
                                    if (i19 != 21) {
                                        if (i19 != 22) {
                                            if (i19 == 20) {
                                                if (keyEvent.getAction() == 0) {
                                                    s1.g.Z(331, view);
                                                    break;
                                                }
                                            }
                                        } else if (keyEvent.getAction() == 0) {
                                            s1.g.W(332, view);
                                            break;
                                        }
                                    } else if (keyEvent.getAction() == 0) {
                                        s1.g.W(333, view);
                                        break;
                                    }
                                } else if (keyEvent.getAction() == 0) {
                                    ((RadioGroup) s5Var.f7741q).requestFocus();
                                    break;
                                }
                                break;
                            case 1:
                                s5 s5Var2 = this.f7098b;
                                s5Var2.getClass();
                                if (keyEvent.getAction() == 0 && i19 == 20) {
                                    ((EditText) s5Var2.l).requestFocus();
                                    break;
                                } else if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 2:
                                s5 s5Var3 = this.f7098b;
                                s5Var3.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var3.f7737k).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var3.f7738m).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 3:
                                s5 s5Var4 = this.f7098b;
                                s5Var4.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var4.l).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var4.f7739n).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            default:
                                s5 s5Var5 = this.f7098b;
                                s5Var5.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var5.f7738m).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((RadioGroup) s5Var5.f7741q).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                        }
                        return true;
                    }
                });
                ((EditText) this.l).setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.g6

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ s5 f7098b;

                    {
                        this.f7098b = this;
                    }

                    @Override // android.view.View.OnKeyListener
                    public final boolean onKey(View view, int i19, KeyEvent keyEvent) {
                        switch (i13) {
                            case 0:
                                s5 s5Var = this.f7098b;
                                s5Var.getClass();
                                if (i19 != 19) {
                                    if (i19 != 21) {
                                        if (i19 != 22) {
                                            if (i19 == 20) {
                                                if (keyEvent.getAction() == 0) {
                                                    s1.g.Z(331, view);
                                                    break;
                                                }
                                            }
                                        } else if (keyEvent.getAction() == 0) {
                                            s1.g.W(332, view);
                                            break;
                                        }
                                    } else if (keyEvent.getAction() == 0) {
                                        s1.g.W(333, view);
                                        break;
                                    }
                                } else if (keyEvent.getAction() == 0) {
                                    ((RadioGroup) s5Var.f7741q).requestFocus();
                                    break;
                                }
                                break;
                            case 1:
                                s5 s5Var2 = this.f7098b;
                                s5Var2.getClass();
                                if (keyEvent.getAction() == 0 && i19 == 20) {
                                    ((EditText) s5Var2.l).requestFocus();
                                    break;
                                } else if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 2:
                                s5 s5Var3 = this.f7098b;
                                s5Var3.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var3.f7737k).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var3.f7738m).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 3:
                                s5 s5Var4 = this.f7098b;
                                s5Var4.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var4.l).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var4.f7739n).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            default:
                                s5 s5Var5 = this.f7098b;
                                s5Var5.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var5.f7738m).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((RadioGroup) s5Var5.f7741q).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                        }
                        return true;
                    }
                });
                ((EditText) this.f7738m).setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.g6

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ s5 f7098b;

                    {
                        this.f7098b = this;
                    }

                    @Override // android.view.View.OnKeyListener
                    public final boolean onKey(View view, int i19, KeyEvent keyEvent) {
                        switch (i12) {
                            case 0:
                                s5 s5Var = this.f7098b;
                                s5Var.getClass();
                                if (i19 != 19) {
                                    if (i19 != 21) {
                                        if (i19 != 22) {
                                            if (i19 == 20) {
                                                if (keyEvent.getAction() == 0) {
                                                    s1.g.Z(331, view);
                                                    break;
                                                }
                                            }
                                        } else if (keyEvent.getAction() == 0) {
                                            s1.g.W(332, view);
                                            break;
                                        }
                                    } else if (keyEvent.getAction() == 0) {
                                        s1.g.W(333, view);
                                        break;
                                    }
                                } else if (keyEvent.getAction() == 0) {
                                    ((RadioGroup) s5Var.f7741q).requestFocus();
                                    break;
                                }
                                break;
                            case 1:
                                s5 s5Var2 = this.f7098b;
                                s5Var2.getClass();
                                if (keyEvent.getAction() == 0 && i19 == 20) {
                                    ((EditText) s5Var2.l).requestFocus();
                                    break;
                                } else if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 2:
                                s5 s5Var3 = this.f7098b;
                                s5Var3.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var3.f7737k).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var3.f7738m).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 3:
                                s5 s5Var4 = this.f7098b;
                                s5Var4.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var4.l).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var4.f7739n).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            default:
                                s5 s5Var5 = this.f7098b;
                                s5Var5.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var5.f7738m).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((RadioGroup) s5Var5.f7741q).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                        }
                        return true;
                    }
                });
                ((EditText) this.f7739n).setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.g6

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ s5 f7098b;

                    {
                        this.f7098b = this;
                    }

                    @Override // android.view.View.OnKeyListener
                    public final boolean onKey(View view, int i19, KeyEvent keyEvent) {
                        switch (i14) {
                            case 0:
                                s5 s5Var = this.f7098b;
                                s5Var.getClass();
                                if (i19 != 19) {
                                    if (i19 != 21) {
                                        if (i19 != 22) {
                                            if (i19 == 20) {
                                                if (keyEvent.getAction() == 0) {
                                                    s1.g.Z(331, view);
                                                    break;
                                                }
                                            }
                                        } else if (keyEvent.getAction() == 0) {
                                            s1.g.W(332, view);
                                            break;
                                        }
                                    } else if (keyEvent.getAction() == 0) {
                                        s1.g.W(333, view);
                                        break;
                                    }
                                } else if (keyEvent.getAction() == 0) {
                                    ((RadioGroup) s5Var.f7741q).requestFocus();
                                    break;
                                }
                                break;
                            case 1:
                                s5 s5Var2 = this.f7098b;
                                s5Var2.getClass();
                                if (keyEvent.getAction() == 0 && i19 == 20) {
                                    ((EditText) s5Var2.l).requestFocus();
                                    break;
                                } else if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 2:
                                s5 s5Var3 = this.f7098b;
                                s5Var3.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var3.f7737k).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var3.f7738m).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 3:
                                s5 s5Var4 = this.f7098b;
                                s5Var4.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var4.l).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var4.f7739n).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            default:
                                s5 s5Var5 = this.f7098b;
                                s5Var5.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var5.f7738m).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((RadioGroup) s5Var5.f7741q).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                        }
                        return true;
                    }
                });
                break;
            default:
                super.onCreate(bundle);
                ((TextView) findViewById(R.id.v_title)).setText("SMB1、SMB2、SMB3");
                EditText editText2 = (EditText) findViewById(R.id.v_edit_ip);
                this.l = editText2;
                editText2.requestFocus();
                this.f7738m = (EditText) findViewById(R.id.v_edit_port);
                this.f7739n = (EditText) findViewById(R.id.v_edit_user);
                this.f7740p = (EditText) findViewById(R.id.v_edit_password);
                this.f7741q = (EditText) findViewById(R.id.v_edit_domain);
                this.r = (EditText) findViewById(R.id.v_edit_share);
                this.f7735i = (TextView) findViewById(R.id.v_btn_login);
                this.f7734h = (TextView) findViewById(R.id.v_btn_search);
                EditText editText3 = (EditText) this.l;
                x9.n5 n5Var2 = (x9.n5) this.f7736j;
                editText3.setText(n5Var2.f18292c);
                ((EditText) this.f7738m).setText(String.valueOf(n5Var2.f18293d));
                ((EditText) this.f7739n).setText(n5Var2.f18294e);
                ((EditText) this.f7740p).setText(n5Var2.f18295f);
                ((EditText) this.f7741q).setText(n5Var2.f18309v);
                ((EditText) this.r).setText(n5Var2.f18310w);
                this.f7734h.setOnClickListener(new View.OnClickListener(this) { // from class: ha.mc

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ s5 f7445b;

                    {
                        this.f7445b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i16) {
                            case 0:
                                s5 s5Var = this.f7445b;
                                s5Var.getClass();
                                new qc(s5Var.f6724a, s5Var.f6725b, new p7(17, s5Var)).show();
                                break;
                            default:
                                s5 s5Var2 = this.f7445b;
                                x9.n5 n5Var3 = (x9.n5) s5Var2.f7736j;
                                com.bumptech.glide.c.i(666, view);
                                if (!((TextView) s5Var2.f7735i).getText().toString().equals("连接中")) {
                                    ((TextView) s5Var2.f7735i).setText("连接中");
                                    try {
                                        n5Var3.f18292c = ((EditText) s5Var2.l).getText().toString().trim();
                                        n5Var3.f18293d = Integer.parseInt(((EditText) s5Var2.f7738m).getText().toString().trim());
                                        n5Var3.f18294e = ((EditText) s5Var2.f7739n).getText().toString().trim();
                                        n5Var3.f18295f = ((EditText) s5Var2.f7740p).getText().toString();
                                        n5Var3.f18309v = ((EditText) s5Var2.f7741q).getText().toString().trim();
                                        String strTrim = ((EditText) s5Var2.r).getText().toString().trim();
                                        if (!strTrim.isEmpty()) {
                                            strTrim = strTrim.replace("；", ";").replace("/", ";");
                                        }
                                        n5Var3.f18310w = strTrim;
                                    } catch (Exception e7) {
                                        e7.printStackTrace();
                                    }
                                    new mc.c(0, new ba.f(16, n5Var3)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(22, s5Var2));
                                    break;
                                }
                                break;
                        }
                    }
                });
                ((TextView) this.f7735i).setOnClickListener(new View.OnClickListener(this) { // from class: ha.mc

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ s5 f7445b;

                    {
                        this.f7445b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i15) {
                            case 0:
                                s5 s5Var = this.f7445b;
                                s5Var.getClass();
                                new qc(s5Var.f6724a, s5Var.f6725b, new p7(17, s5Var)).show();
                                break;
                            default:
                                s5 s5Var2 = this.f7445b;
                                x9.n5 n5Var3 = (x9.n5) s5Var2.f7736j;
                                com.bumptech.glide.c.i(666, view);
                                if (!((TextView) s5Var2.f7735i).getText().toString().equals("连接中")) {
                                    ((TextView) s5Var2.f7735i).setText("连接中");
                                    try {
                                        n5Var3.f18292c = ((EditText) s5Var2.l).getText().toString().trim();
                                        n5Var3.f18293d = Integer.parseInt(((EditText) s5Var2.f7738m).getText().toString().trim());
                                        n5Var3.f18294e = ((EditText) s5Var2.f7739n).getText().toString().trim();
                                        n5Var3.f18295f = ((EditText) s5Var2.f7740p).getText().toString();
                                        n5Var3.f18309v = ((EditText) s5Var2.f7741q).getText().toString().trim();
                                        String strTrim = ((EditText) s5Var2.r).getText().toString().trim();
                                        if (!strTrim.isEmpty()) {
                                            strTrim = strTrim.replace("；", ";").replace("/", ";");
                                        }
                                        n5Var3.f18310w = strTrim;
                                    } catch (Exception e7) {
                                        e7.printStackTrace();
                                    }
                                    new mc.c(0, new ba.f(16, n5Var3)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(22, s5Var2));
                                    break;
                                }
                                break;
                        }
                    }
                });
                ((TextView) this.f7735i).setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.nc

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ s5 f7489b;

                    {
                        this.f7489b = this;
                    }

                    @Override // android.view.View.OnKeyListener
                    public final boolean onKey(View view, int i19, KeyEvent keyEvent) {
                        switch (i16) {
                            case 0:
                                s5 s5Var = this.f7489b;
                                s5Var.getClass();
                                if (i19 != 19) {
                                    if (i19 != 21) {
                                        if (i19 != 22) {
                                            if (i19 == 20) {
                                                if (keyEvent.getAction() == 0) {
                                                    s1.g.Z(331, view);
                                                    break;
                                                }
                                            }
                                        } else if (keyEvent.getAction() == 0) {
                                            s1.g.W(332, view);
                                            break;
                                        }
                                    } else if (keyEvent.getAction() == 0) {
                                        s1.g.W(333, view);
                                        break;
                                    }
                                } else if (keyEvent.getAction() == 0) {
                                    ((EditText) s5Var.r).requestFocus();
                                    break;
                                }
                                break;
                            case 1:
                                s5 s5Var2 = this.f7489b;
                                s5Var2.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            if (s5Var2.f7734h.getVisibility() == 0) {
                                                s5Var2.f7734h.requestFocus();
                                                break;
                                            }
                                        }
                                    } else {
                                        ((EditText) s5Var2.f7738m).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 2:
                                s5 s5Var3 = this.f7489b;
                                s5Var3.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var3.l).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var3.f7739n).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 3:
                                s5 s5Var4 = this.f7489b;
                                s5Var4.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var4.f7738m).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var4.f7740p).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 4:
                                s5 s5Var5 = this.f7489b;
                                s5Var5.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var5.f7739n).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var5.f7741q).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 5:
                                s5 s5Var6 = this.f7489b;
                                s5Var6.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var6.f7740p).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var6.r).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            default:
                                s5 s5Var7 = this.f7489b;
                                s5Var7.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var7.f7741q).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((TextView) s5Var7.f7735i).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                        }
                        return true;
                    }
                });
                ((EditText) this.l).setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.nc

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ s5 f7489b;

                    {
                        this.f7489b = this;
                    }

                    @Override // android.view.View.OnKeyListener
                    public final boolean onKey(View view, int i19, KeyEvent keyEvent) {
                        switch (i15) {
                            case 0:
                                s5 s5Var = this.f7489b;
                                s5Var.getClass();
                                if (i19 != 19) {
                                    if (i19 != 21) {
                                        if (i19 != 22) {
                                            if (i19 == 20) {
                                                if (keyEvent.getAction() == 0) {
                                                    s1.g.Z(331, view);
                                                    break;
                                                }
                                            }
                                        } else if (keyEvent.getAction() == 0) {
                                            s1.g.W(332, view);
                                            break;
                                        }
                                    } else if (keyEvent.getAction() == 0) {
                                        s1.g.W(333, view);
                                        break;
                                    }
                                } else if (keyEvent.getAction() == 0) {
                                    ((EditText) s5Var.r).requestFocus();
                                    break;
                                }
                                break;
                            case 1:
                                s5 s5Var2 = this.f7489b;
                                s5Var2.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            if (s5Var2.f7734h.getVisibility() == 0) {
                                                s5Var2.f7734h.requestFocus();
                                                break;
                                            }
                                        }
                                    } else {
                                        ((EditText) s5Var2.f7738m).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 2:
                                s5 s5Var3 = this.f7489b;
                                s5Var3.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var3.l).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var3.f7739n).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 3:
                                s5 s5Var4 = this.f7489b;
                                s5Var4.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var4.f7738m).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var4.f7740p).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 4:
                                s5 s5Var5 = this.f7489b;
                                s5Var5.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var5.f7739n).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var5.f7741q).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 5:
                                s5 s5Var6 = this.f7489b;
                                s5Var6.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var6.f7740p).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var6.r).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            default:
                                s5 s5Var7 = this.f7489b;
                                s5Var7.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var7.f7741q).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((TextView) s5Var7.f7735i).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                        }
                        return true;
                    }
                });
                ((EditText) this.f7738m).setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.nc

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ s5 f7489b;

                    {
                        this.f7489b = this;
                    }

                    @Override // android.view.View.OnKeyListener
                    public final boolean onKey(View view, int i19, KeyEvent keyEvent) {
                        switch (i13) {
                            case 0:
                                s5 s5Var = this.f7489b;
                                s5Var.getClass();
                                if (i19 != 19) {
                                    if (i19 != 21) {
                                        if (i19 != 22) {
                                            if (i19 == 20) {
                                                if (keyEvent.getAction() == 0) {
                                                    s1.g.Z(331, view);
                                                    break;
                                                }
                                            }
                                        } else if (keyEvent.getAction() == 0) {
                                            s1.g.W(332, view);
                                            break;
                                        }
                                    } else if (keyEvent.getAction() == 0) {
                                        s1.g.W(333, view);
                                        break;
                                    }
                                } else if (keyEvent.getAction() == 0) {
                                    ((EditText) s5Var.r).requestFocus();
                                    break;
                                }
                                break;
                            case 1:
                                s5 s5Var2 = this.f7489b;
                                s5Var2.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            if (s5Var2.f7734h.getVisibility() == 0) {
                                                s5Var2.f7734h.requestFocus();
                                                break;
                                            }
                                        }
                                    } else {
                                        ((EditText) s5Var2.f7738m).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 2:
                                s5 s5Var3 = this.f7489b;
                                s5Var3.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var3.l).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var3.f7739n).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 3:
                                s5 s5Var4 = this.f7489b;
                                s5Var4.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var4.f7738m).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var4.f7740p).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 4:
                                s5 s5Var5 = this.f7489b;
                                s5Var5.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var5.f7739n).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var5.f7741q).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 5:
                                s5 s5Var6 = this.f7489b;
                                s5Var6.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var6.f7740p).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var6.r).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            default:
                                s5 s5Var7 = this.f7489b;
                                s5Var7.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var7.f7741q).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((TextView) s5Var7.f7735i).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                        }
                        return true;
                    }
                });
                ((EditText) this.f7739n).setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.nc

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ s5 f7489b;

                    {
                        this.f7489b = this;
                    }

                    @Override // android.view.View.OnKeyListener
                    public final boolean onKey(View view, int i19, KeyEvent keyEvent) {
                        switch (i12) {
                            case 0:
                                s5 s5Var = this.f7489b;
                                s5Var.getClass();
                                if (i19 != 19) {
                                    if (i19 != 21) {
                                        if (i19 != 22) {
                                            if (i19 == 20) {
                                                if (keyEvent.getAction() == 0) {
                                                    s1.g.Z(331, view);
                                                    break;
                                                }
                                            }
                                        } else if (keyEvent.getAction() == 0) {
                                            s1.g.W(332, view);
                                            break;
                                        }
                                    } else if (keyEvent.getAction() == 0) {
                                        s1.g.W(333, view);
                                        break;
                                    }
                                } else if (keyEvent.getAction() == 0) {
                                    ((EditText) s5Var.r).requestFocus();
                                    break;
                                }
                                break;
                            case 1:
                                s5 s5Var2 = this.f7489b;
                                s5Var2.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            if (s5Var2.f7734h.getVisibility() == 0) {
                                                s5Var2.f7734h.requestFocus();
                                                break;
                                            }
                                        }
                                    } else {
                                        ((EditText) s5Var2.f7738m).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 2:
                                s5 s5Var3 = this.f7489b;
                                s5Var3.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var3.l).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var3.f7739n).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 3:
                                s5 s5Var4 = this.f7489b;
                                s5Var4.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var4.f7738m).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var4.f7740p).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 4:
                                s5 s5Var5 = this.f7489b;
                                s5Var5.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var5.f7739n).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var5.f7741q).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 5:
                                s5 s5Var6 = this.f7489b;
                                s5Var6.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var6.f7740p).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var6.r).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            default:
                                s5 s5Var7 = this.f7489b;
                                s5Var7.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var7.f7741q).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((TextView) s5Var7.f7735i).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                        }
                        return true;
                    }
                });
                ((EditText) this.f7740p).setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.nc

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ s5 f7489b;

                    {
                        this.f7489b = this;
                    }

                    @Override // android.view.View.OnKeyListener
                    public final boolean onKey(View view, int i19, KeyEvent keyEvent) {
                        switch (i14) {
                            case 0:
                                s5 s5Var = this.f7489b;
                                s5Var.getClass();
                                if (i19 != 19) {
                                    if (i19 != 21) {
                                        if (i19 != 22) {
                                            if (i19 == 20) {
                                                if (keyEvent.getAction() == 0) {
                                                    s1.g.Z(331, view);
                                                    break;
                                                }
                                            }
                                        } else if (keyEvent.getAction() == 0) {
                                            s1.g.W(332, view);
                                            break;
                                        }
                                    } else if (keyEvent.getAction() == 0) {
                                        s1.g.W(333, view);
                                        break;
                                    }
                                } else if (keyEvent.getAction() == 0) {
                                    ((EditText) s5Var.r).requestFocus();
                                    break;
                                }
                                break;
                            case 1:
                                s5 s5Var2 = this.f7489b;
                                s5Var2.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            if (s5Var2.f7734h.getVisibility() == 0) {
                                                s5Var2.f7734h.requestFocus();
                                                break;
                                            }
                                        }
                                    } else {
                                        ((EditText) s5Var2.f7738m).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 2:
                                s5 s5Var3 = this.f7489b;
                                s5Var3.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var3.l).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var3.f7739n).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 3:
                                s5 s5Var4 = this.f7489b;
                                s5Var4.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var4.f7738m).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var4.f7740p).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 4:
                                s5 s5Var5 = this.f7489b;
                                s5Var5.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var5.f7739n).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var5.f7741q).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 5:
                                s5 s5Var6 = this.f7489b;
                                s5Var6.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var6.f7740p).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var6.r).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            default:
                                s5 s5Var7 = this.f7489b;
                                s5Var7.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var7.f7741q).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((TextView) s5Var7.f7735i).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                        }
                        return true;
                    }
                });
                ((EditText) this.f7741q).setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.nc

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ s5 f7489b;

                    {
                        this.f7489b = this;
                    }

                    @Override // android.view.View.OnKeyListener
                    public final boolean onKey(View view, int i19, KeyEvent keyEvent) {
                        switch (i11) {
                            case 0:
                                s5 s5Var = this.f7489b;
                                s5Var.getClass();
                                if (i19 != 19) {
                                    if (i19 != 21) {
                                        if (i19 != 22) {
                                            if (i19 == 20) {
                                                if (keyEvent.getAction() == 0) {
                                                    s1.g.Z(331, view);
                                                    break;
                                                }
                                            }
                                        } else if (keyEvent.getAction() == 0) {
                                            s1.g.W(332, view);
                                            break;
                                        }
                                    } else if (keyEvent.getAction() == 0) {
                                        s1.g.W(333, view);
                                        break;
                                    }
                                } else if (keyEvent.getAction() == 0) {
                                    ((EditText) s5Var.r).requestFocus();
                                    break;
                                }
                                break;
                            case 1:
                                s5 s5Var2 = this.f7489b;
                                s5Var2.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            if (s5Var2.f7734h.getVisibility() == 0) {
                                                s5Var2.f7734h.requestFocus();
                                                break;
                                            }
                                        }
                                    } else {
                                        ((EditText) s5Var2.f7738m).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 2:
                                s5 s5Var3 = this.f7489b;
                                s5Var3.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var3.l).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var3.f7739n).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 3:
                                s5 s5Var4 = this.f7489b;
                                s5Var4.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var4.f7738m).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var4.f7740p).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 4:
                                s5 s5Var5 = this.f7489b;
                                s5Var5.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var5.f7739n).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var5.f7741q).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 5:
                                s5 s5Var6 = this.f7489b;
                                s5Var6.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var6.f7740p).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var6.r).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            default:
                                s5 s5Var7 = this.f7489b;
                                s5Var7.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var7.f7741q).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((TextView) s5Var7.f7735i).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                        }
                        return true;
                    }
                });
                ((EditText) this.r).setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.nc

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ s5 f7489b;

                    {
                        this.f7489b = this;
                    }

                    @Override // android.view.View.OnKeyListener
                    public final boolean onKey(View view, int i19, KeyEvent keyEvent) {
                        switch (i10) {
                            case 0:
                                s5 s5Var = this.f7489b;
                                s5Var.getClass();
                                if (i19 != 19) {
                                    if (i19 != 21) {
                                        if (i19 != 22) {
                                            if (i19 == 20) {
                                                if (keyEvent.getAction() == 0) {
                                                    s1.g.Z(331, view);
                                                    break;
                                                }
                                            }
                                        } else if (keyEvent.getAction() == 0) {
                                            s1.g.W(332, view);
                                            break;
                                        }
                                    } else if (keyEvent.getAction() == 0) {
                                        s1.g.W(333, view);
                                        break;
                                    }
                                } else if (keyEvent.getAction() == 0) {
                                    ((EditText) s5Var.r).requestFocus();
                                    break;
                                }
                                break;
                            case 1:
                                s5 s5Var2 = this.f7489b;
                                s5Var2.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            if (s5Var2.f7734h.getVisibility() == 0) {
                                                s5Var2.f7734h.requestFocus();
                                                break;
                                            }
                                        }
                                    } else {
                                        ((EditText) s5Var2.f7738m).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 2:
                                s5 s5Var3 = this.f7489b;
                                s5Var3.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var3.l).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var3.f7739n).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 3:
                                s5 s5Var4 = this.f7489b;
                                s5Var4.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var4.f7738m).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var4.f7740p).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 4:
                                s5 s5Var5 = this.f7489b;
                                s5Var5.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var5.f7739n).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var5.f7741q).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            case 5:
                                s5 s5Var6 = this.f7489b;
                                s5Var6.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var6.f7740p).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((EditText) s5Var6.r).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                            default:
                                s5 s5Var7 = this.f7489b;
                                s5Var7.getClass();
                                if (keyEvent.getAction() == 0) {
                                    if (i19 != 20) {
                                        if (i19 == 19) {
                                            ((EditText) s5Var7.f7741q).requestFocus();
                                            break;
                                        }
                                    } else {
                                        ((TextView) s5Var7.f7735i).requestFocus();
                                        break;
                                    }
                                }
                                if (i19 == 20 || i19 == 19) {
                                }
                                break;
                        }
                        return true;
                    }
                });
                break;
        }
    }

    public s5(Activity activity, Context context, x9.n5 n5Var, oc ocVar) {
        super(activity, context, R.layout.dialog_smb_login);
        this.f7737k = ocVar;
        this.f7736j = n5Var;
    }

    public s5(Activity activity, Context context, x9.n5 n5Var, i6 i6Var) {
        super(activity, context, R.layout.dialog_ftp_login);
        this.f7736j = i6Var;
        this.f7735i = n5Var;
    }
}
