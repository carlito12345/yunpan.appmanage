package com.yunpan.appmanage.carui;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.view.*;
import android.widget.*;
import java.io.InputStream;

/** User-supplied public provenance. The original application's authorship stays distinct. */
public final class SourceInfo {
    public static final String AUTHOR="carlito";
    public static final String SOURCE="应用管家社区官方【应用管家】";
    public static final String URL="https://pd.qq.com/s/7eyokceit?b=5";
    public static final String CHANNEL="updata3927";
    public static final String POSTER="carui/source_channel.jpg";
    public static void show(Context c){new Board(c).show();}
    static boolean resize(Dialog d){if(!(d instanceof Board))return false;((Board)d).resize();return true;}
    private static final class Board extends Dialog {
        final Context c;final CarUi.Skin skin;
        Board(Context context){super(context);c=context;skin=CarUi.skin(c);requestWindowFeature(Window.FEATURE_NO_TITLE);
            LinearLayout body=new LinearLayout(c);body.setOrientation(1);body.setTag(CarUi.OWN);body.setPadding(d(20),d(16),d(20),d(16));
            body.addView(text("关于与来源",25,true));
            TextView author=text("定制作者："+AUTHOR,18,true);author.setPadding(0,d(12),0,d(6));body.addView(author);
            body.addView(text("源 APK："+SOURCE,17,false));
            TextView channel=text("腾讯频道："+CHANNEL,16,false);channel.setPadding(0,d(6),0,d(10));body.addView(channel);
            ImageView poster=new ImageView(c);poster.setScaleType(ImageView.ScaleType.FIT_CENTER);poster.setBackgroundColor(0xFFFFFFFF);poster.setContentDescription("应用管家官方社区公开二维码，频道号 "+CHANNEL);
            try(InputStream input=c.getAssets().open(POSTER)){poster.setImageBitmap(BitmapFactory.decodeStream(input));}
            catch(java.io.IOException error){CarUi.message(c,"来源图片暂不可用，可点击下方社区链接");}
            body.addView(poster,new LinearLayout.LayoutParams(-1,0,1));
            LinearLayout actions=new LinearLayout(c);actions.setGravity(Gravity.CENTER_VERTICAL);actions.setPadding(0,d(12),0,0);
            actions.addView(button("打开官方社区",new View.OnClickListener(){public void onClick(View v){try{c.startActivity(new Intent(Intent.ACTION_VIEW,Uri.parse(URL)).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK));}catch(android.content.ActivityNotFoundException error){CarUi.message(c,"未找到可打开链接的浏览器");}}}),new LinearLayout.LayoutParams(0,-2,1));
            LinearLayout.LayoutParams close=new LinearLayout.LayoutParams(0,-2,1);close.leftMargin=d(12);actions.addView(button("关闭",new View.OnClickListener(){public void onClick(View v){dismiss();}}),close);body.addView(actions);setContentView(body);
        }
        int d(int n){return CarUi.dp(c,n);}
        TextView text(String s,int size,boolean bold){return CarUi.text(c,s,size,skin.ink,bold);}
        TextView button(String s,View.OnClickListener action){TextView t=text(s,17,true);t.setGravity(Gravity.CENTER);t.setPadding(d(10),d(12),d(10),d(12));t.setMinimumHeight(d(52));t.setFocusable(true);t.setClickable(true);t.setBackground(CarUi.buttonBackground(c,skin.soft,skin.surface,skin.ink,18));t.setOnClickListener(action);return t;}
        void resize(){int[] b=CarUi.windowBounds(c);getWindow().setLayout(Math.max(d(260),Math.min(b[0]-d(40),d(620))),Math.max(d(300),Math.min(b[1]-d(48),d(860))));}
        @Override public void show(){super.show();resize();CarUi.decorateDialog(this);}
    }
}
