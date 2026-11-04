package com.yunpan.appmanage.carui;

import android.app.Dialog;
import android.content.Context;
import android.graphics.*;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.*;
import android.widget.*;

/** Theme and global surface appearance; drafts only commit on an explicit action. */
public final class ThemePicker {
    public static void show(Context c){new Editor(c).show();}
    static boolean resize(Dialog d){if(!(d instanceof Editor))return false;((Editor)d).resize();return true;}
    private static final class Editor extends Dialog {
        final Context context;final CarUi.Skin skin;final Appearance.Config draft;final LinearLayout controls;final FrameLayout sample;final TextView value;final SeekBar opacity;
        Editor(final Context c){super(c);context=c;skin=CarUi.skin(c);draft=Appearance.load(c);requestWindowFeature(Window.FEATURE_NO_TITLE);
            LinearLayout panel=column();panel.setTag(CarUi.OWN);panel.setPadding(d(22),d(18),d(22),d(18));
            LinearLayout heading=row();heading.addView(text("主题中心",26,true),new LinearLayout.LayoutParams(0,-2,1));heading.addView(button("壁纸中心",new View.OnClickListener(){@Override public void onClick(View v){dismiss();Wallpapers.show(context);}}));panel.addView(heading);
            ScrollView scroll=new ScrollView(c);scroll.setFillViewport(false);controls=column();controls.setPadding(0,d(8),0,d(8));scroll.addView(controls,new ScrollView.LayoutParams(-1,-2));panel.addView(scroll,new LinearLayout.LayoutParams(-1,0,1));
            section("全局透明度");value=text("",17,false);controls.addView(value);opacity=new SeekBar(c);opacity.setMax(100);opacity.setProgress(draft.transparency);opacity.setContentDescription("全局透明度");tint(opacity);controls.addView(opacity,new LinearLayout.LayoutParams(-1,d(52)));
            TextView help=text("只调整界面面板，文字、图标与壁纸保持原样",15,false);help.setTextColor(skin.muted);controls.addView(help);
            section("边框包边");choices(Appearance.STYLES,draft.style,2,new Choice(){public void choose(int i){draft.style=i;rebuildBorderChoices();}});
            borderChoices=(LinearLayout)controls.getChildAt(controls.getChildCount()-1);
            section("边框主色");choices(Appearance.NAMES,draft.color,3,new Choice(){public void choose(int i){draft.color=i;rebuildColorChoices();}});
            colorChoices=(LinearLayout)controls.getChildAt(controls.getChildCount()-1);
            section("面板预览");FrameLayout preview=new FrameLayout(c);preview.setBackground(new Checker(c,skin.dark));sample=new FrameLayout(c);FrameLayout.LayoutParams samplePosition=new FrameLayout.LayoutParams(-1,-1);samplePosition.setMargins(d(18),d(16),d(18),d(16));preview.addView(sample,samplePosition);TextView sampleText=text("常用功能\n文字与图标保持清晰",19,true);sampleText.setGravity(Gravity.CENTER);sample.addView(sampleText,new FrameLayout.LayoutParams(-1,-1));controls.addView(preview,new LinearLayout.LayoutParams(-1,d(124)));updatePreview();
            opacity.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener(){@Override public void onProgressChanged(SeekBar s,int n,boolean user){if(user){draft.transparency=n;updatePreview();}}@Override public void onStartTrackingTouch(SeekBar s){}@Override public void onStopTrackingTouch(SeekBar s){}});
            section("界面主题");TextView instant=text("切换主题或日夜模式时，当前透明度与边框会一并应用",15,false);instant.setTextColor(skin.muted);instant.setPadding(0,0,0,d(12));controls.addView(instant);String[] ids={"warm","cyan","mono"},names={"暖橙 · 奶油","冰蓝 · 荧光科技","黑白 · 墨镜阴影"};String[] details={"柔和暖色 / 圆润表面","青蓝线条 / 深色面板 / 冷光强调","中性色阶 / 黑白对比 / 柔和投影"};
            for(int i=0;i<ids.length;i++){final String id=ids[i];final boolean dark=id.equals(skin.theme)?skin.dark:id.equals("cyan");CarUi.Skin s=new CarUi.Skin(id,dark);LinearLayout card=column();card.setPadding(d(16),d(12),d(16),d(12));card.setMinimumHeight(d(80));GradientDrawable background=new GradientDrawable();background.setColor(s.background);background.setCornerRadius(d(16));background.setStroke(d(id.equals(skin.theme)?3:1),id.equals(skin.theme)?skin.accent:s.outline);GradientDrawable focused=new GradientDrawable();focused.setColor(s.soft);focused.setCornerRadius(d(16));focused.setStroke(d(3),s.accent);android.graphics.drawable.StateListDrawable states=new android.graphics.drawable.StateListDrawable();states.addState(new int[]{android.R.attr.state_focused},focused);states.addState(new int[]{android.R.attr.state_pressed},focused);states.addState(new int[]{},background);card.setBackground(states);card.addView(CarUi.text(c,names[i]+(id.equals(skin.theme)?" · 当前":""),21,s.ink,true));TextView detail=CarUi.text(c,details[i],15,s.muted,false);detail.setPadding(0,d(6),0,0);card.addView(detail);LinearLayout.LayoutParams p=new LinearLayout.LayoutParams(-1,-2);p.bottomMargin=d(10);controls.addView(card,p);card.setFocusable(true);card.setClickable(true);card.setContentDescription(names[i]);card.setOnClickListener(new View.OnClickListener(){@Override public void onClick(View v){commit(id,dark);}});}
            controls.addView(button(skin.dark?"切换为日间模式":"切换为夜间模式",new View.OnClickListener(){@Override public void onClick(View v){commit(skin.theme,!skin.dark);}}),new LinearLayout.LayoutParams(-1,-2));
            controls.addView(button("恢复默认透明度与边框",new View.OnClickListener(){@Override public void onClick(View v){draft.transparency=0;draft.style=0;draft.color=0;opacity.setProgress(0);rebuildBorderChoices();rebuildColorChoices();}}),new LinearLayout.LayoutParams(-1,-2));
            section("关于与来源");controls.addView(text("定制作者："+SourceInfo.AUTHOR,18,true));TextView source=text("源 APK："+SourceInfo.SOURCE,16,false);source.setPadding(0,d(6),0,d(10));controls.addView(source);controls.addView(button("官方社区与来源二维码",new View.OnClickListener(){public void onClick(View v){SourceInfo.show(context);}}),new LinearLayout.LayoutParams(-1,-2));
            LinearLayout footer=row();footer.setPadding(0,d(14),0,0);footer.addView(button("取消",new View.OnClickListener(){@Override public void onClick(View v){dismiss();}}),new LinearLayout.LayoutParams(0,-2,1));TextView apply=button("应用设置",new View.OnClickListener(){@Override public void onClick(View v){commit(skin.theme,skin.dark);}});apply.setTextColor(skin.onAccent);apply.setBackground(CarUi.buttonBackground(c,skin.accent,skin.pressedAccent,skin.onAccent,20));LinearLayout.LayoutParams ap=new LinearLayout.LayoutParams(0,-2,1);ap.leftMargin=d(12);footer.addView(apply,ap);panel.addView(footer);setContentView(panel);
        }
        LinearLayout borderChoices,colorChoices;
        int d(int n){return CarUi.dp(context,n);}LinearLayout column(){LinearLayout l=new LinearLayout(context);l.setOrientation(1);return l;}LinearLayout row(){LinearLayout l=new LinearLayout(context);l.setGravity(Gravity.CENTER_VERTICAL);return l;}
        TextView text(String s,int size,boolean bold){return CarUi.text(context,s,size,skin.ink,bold);}
        TextView button(String s,View.OnClickListener action){TextView t=text(s,17,true);t.setGravity(Gravity.CENTER);t.setPadding(d(12),d(12),d(12),d(12));t.setMinimumHeight(d(52));t.setFocusable(true);t.setClickable(true);t.setBackground(CarUi.buttonBackground(context,skin.soft,skin.surface,skin.ink,18));t.setOnClickListener(action);return t;}
        void section(String title){TextView t=text(title,21,true);t.setPadding(0,d(20),0,d(10));controls.addView(t);}
        void tint(SeekBar bar){if(android.os.Build.VERSION.SDK_INT>=21){bar.setProgressTintList(android.content.res.ColorStateList.valueOf(skin.accent));bar.setThumbTintList(android.content.res.ColorStateList.valueOf(skin.accent));bar.setProgressBackgroundTintList(android.content.res.ColorStateList.valueOf(skin.outline));}}
        LinearLayout options(String[] names,int selected,int columns,final Choice choice){LinearLayout group=column();for(int start=0;start<names.length;start+=columns){LinearLayout row=row();for(int i=start;i<Math.min(start+columns,names.length);i++){final int index=i;TextView b=button(names[i]+(i==selected?" ✓":""),new View.OnClickListener(){@Override public void onClick(View v){choice.choose(index);}});if(i==selected){b.setTextColor(skin.onAccent);b.setBackground(CarUi.buttonBackground(context,skin.accent,skin.pressedAccent,skin.onAccent,18));}LinearLayout.LayoutParams p=new LinearLayout.LayoutParams(0,-2,1);p.rightMargin=d(6);p.bottomMargin=d(6);row.addView(b,p);}group.addView(row);}return group;}
        void choices(String[] names,int selected,int columns,Choice choice){controls.addView(options(names,selected,columns,choice));}
        void rebuildBorderChoices(){replace(borderChoices,options(Appearance.STYLES,draft.style,2,new Choice(){public void choose(int i){draft.style=i;rebuildBorderChoices();}}),true);updatePreview();}
        void rebuildColorChoices(){replace(colorChoices,options(Appearance.NAMES,draft.color,3,new Choice(){public void choose(int i){draft.color=i;rebuildColorChoices();}}),false);updatePreview();}
        void replace(LinearLayout old,LinearLayout next,boolean border){int at=controls.indexOfChild(old);controls.removeViewAt(at);controls.addView(next,at);if(border)borderChoices=next;else colorChoices=next;}
        void updatePreview(){value.setText("面板透明度："+draft.transparency+"%");sample.setBackground(Appearance.background(context,skin.surface,18,draft));}
        void commit(String theme,boolean dark){Appearance.save(context,draft);dismiss();CarUi.chooseTheme(context,theme,dark);}
        void resize(){int[] bounds=CarUi.windowBounds(context);getWindow().setLayout(Math.min(bounds[0]-d(40),d(620)),Math.min(bounds[1]-d(48),d(760)));}
        @Override public void show(){super.show();resize();CarUi.decorateDialog(this);}
    }
    private interface Choice{void choose(int i);}
    private static final class Checker extends Drawable{
        final Paint paint=new Paint();final int a,b,cell;Checker(Context c,boolean dark){a=dark?0xFF15232F:0xFFDCE2E5;b=dark?0xFF263B49:0xFFC4CED3;cell=CarUi.dp(c,16);}
        @Override public void draw(Canvas c){for(int y=0;y<getBounds().height();y+=cell)for(int x=0;x<getBounds().width();x+=cell){paint.setColor(((x/cell+y/cell)&1)==0?a:b);c.drawRect(x,y,x+cell,y+cell,paint);}}
        @Override public void setAlpha(int a){}@Override public void setColorFilter(ColorFilter f){}@Override public int getOpacity(){return PixelFormat.OPAQUE;}
    }
}
