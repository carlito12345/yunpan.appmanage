"""Compile original row-binding bodies with small test-only adapter/model plumbing."""
import hashlib
import json
import re
from pathlib import Path

ROOT=Path(__file__).resolve().parent
SRC=ROOT.parent/'.work/jadx193/sources'
OUT=ROOT/'build/test-legacy'
def write(name,text):
    p=OUT/name;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(text,encoding='utf-8')
proof=[]
for relative in ['com/yunpan/appmanage/R.java','com/yunpan/appmanage/bean/StrIntBoolBean.java']+['x9/'+n+'.java' for n in ['n4','i3','h0','o5','a6','g0','k3','l3','m1','b1','s5','t1','w0','y0','x0']]:
    original=(SRC/relative).read_text(encoding='utf-8');adapted=original
    if relative=='x9/s5.java':
        # JADX prints a synthetic anonymous-class capture as a nonexistent Java field.
        assert 's5 s5Var = this.f18420a;' in adapted
        adapted=adapted.replace('s5 s5Var = this.f18420a;','s5 s5Var = s5.this;')
    write(relative,adapted)
    proof.append({'source':relative,'original_sha256':hashlib.sha256(original.encode()).hexdigest(),'test_sha256':hashlib.sha256(adapted.encode()).hexdigest(),'correction':'anonymous outer capture' if adapted!=original else None})
write('c6/g.java','''package c6;
import android.content.Context;import android.view.ViewGroup;import androidx.recyclerview.widget.RecyclerView;import java.util.*;
public abstract class g extends RecyclerView.Adapter<RecyclerView.ViewHolder>{
 public final List<Object> d=new ArrayList<Object>();
 public abstract RecyclerView.ViewHolder B(Context c,ViewGroup parent,int type);
 public abstract void z(RecyclerView.ViewHolder h,int position,Object bean);
 @Override public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup p,int t){return B(p.getContext(),p,t);}
 @Override public void onBindViewHolder(RecyclerView.ViewHolder h,int p){z(h,p,d.get(p));com.yunpan.appmanage.carui.LegacyUi.holder(h,d.get(p));}
 @Override public int getItemCount(){return d.size();}
}
''')
write('h6/a.java','''package h6;
import android.view.*;import android.widget.*;import androidx.recyclerview.widget.RecyclerView;
public class a extends RecyclerView.ViewHolder{
 public a(int layout,ViewGroup parent){super(LayoutInflater.from(parent.getContext()).cloneInContext(parent.getContext()).inflate(layout,parent,false));com.yunpan.appmanage.carui.LegacyUi.inflated(itemView,layout);}
 public View a(int id){return itemView.findViewById(id);}
 public void b(int id,int image){((ImageView)a(id)).setImageResource(image);}
 public void c(int id,CharSequence text){((TextView)a(id)).setText(text);}
 public int getBindingAdapterPosition(){return getAdapterPosition();}
}
''')
write('x9/w3.java','''package x9; public final class w3 {public String f18455a,f18456b;public w3(String name){f18455a=name;f18456b="";}}''')
write('x9/n5.java','''package x9; public final class n5 {public int f18381a;public String f18382b;public n5(int type,String name){f18381a=type;f18382b=name;}}''')
write('com/yunpan/appmanage/bean/CmdBean.java','''package com.yunpan.appmanage.bean; public final class CmdBean {public String name;public int ico;public CmdBean(String name,int ico){this.name=name;this.ico=ico;}}''')
write('com/yunpan/appmanage/bean/WpPathBean.java','''package com.yunpan.appmanage.bean; public final class WpPathBean {public String name;public WpPathBean(String name){this.name=name;}}''')
hive=(SRC/'com/yunpan/appmanage/view/HiveProgressView.java').read_text(encoding='utf-8')
def method(signature):
    start=hive.index(signature);brace=hive.index('{',start);depth=1;end=brace+1
    while depth:
        if hive[end]=='{':depth+=1
        if hive[end]=='}':depth-=1
        end+=1
    return hive[start:end]
measure=method('public final void onMeasure(int i10, int i11)')
hexpath=method('public final Path c(').replace('r7 - i15','(i23 - i19) - i15')
draw=method('public final void onDraw(Canvas canvas)')
draw=draw[:draw.index('        canvas.save();')]+'    }' # Only the non-image branch used by these two layouts.
draw=re.sub(r'g\.c\((\w+), (\d+), (\d+), (\w+)\)',r'((\1 * \2) / \3 + \4)',draw)
write('com/yunpan/appmanage/view/HiveProgressView.java','''package com.yunpan.appmanage.view;
import android.content.Context;import android.util.AttributeSet;import android.view.View;import android.graphics.*;import android.graphics.drawable.Drawable;
/** TEST CONTRACT: original measure/path/non-image draw bodies. Static animation sample; no animator lifecycle. */
public class HiveProgressView extends View {
 public static final int[] f3998p={16711680,16744192,16776960,65280,255,4915330,9699539};
 public final Paint f3999a=new Paint(3);public int f4000b,f4001c,f4002d,f4004f=100,f4006h=0xFF61E4FF;public float f4003e=450f;public boolean f4007i,f4009k;public final Drawable f4010m=null;
 public HiveProgressView(Context c,AttributeSet attrs){super(c,attrs);f3999a.setStyle(Paint.Style.FILL);}
 public void setColor(int color){f4006h=color;invalidate();}
'''+method('public final int a(')+'\n'+method('public final int b(')+'\n'+hexpath+'\n'+draw+'\n'+measure+'\n}')
proof.append({'source':'com/yunpan/appmanage/view/HiveProgressView.java','original_sha256':hashlib.sha256(hive.encode()).hexdigest(),'scope':'original measure/path/non-image draw bodies; static sample; helpers inlined; one JADX path local corrected; animator and image branch excluded'})
(ROOT/'build/original-binding-test-provenance.json').write_text(json.dumps(proof,indent=2,ensure_ascii=False),encoding='utf-8')
print('Prepared original binding bodies and custom-loader measurement/drawing contract (test only).')
