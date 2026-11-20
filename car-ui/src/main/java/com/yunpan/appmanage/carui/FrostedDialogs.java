package com.yunpan.appmanage.carui;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PixelFormat;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import java.lang.reflect.Field;
import java.lang.ref.WeakReference;

/** Bounded, in-memory blurred snapshot for API 17+, plus the real Window dim layer. */
public final class FrostedDialogs {
    private static final int BOARD_TAG=0x7e434107;
    private static Activity owner(Dialog dialog){
        if(dialog.getOwnerActivity()!=null)return dialog.getOwnerActivity();
        Context c=dialog.getContext();for(int i=0;i<12;i++){if(c instanceof Activity)return(Activity)c;if(!(c instanceof ContextWrapper))break;Context next=((ContextWrapper)c).getBaseContext();if(next==c)break;c=next;}
        for(Class<?> type=dialog.getClass();type!=null;type=type.getSuperclass())for(Field f:type.getDeclaredFields())if(Activity.class.isAssignableFrom(f.getType()))try{f.setAccessible(true);Activity a=(Activity)f.get(dialog);if(a!=null)return a;}catch(Exception ignored){}
        return null;
    }
    public static void apply(Dialog dialog){
        Window window=dialog.getWindow();if(window==null)return;View decor=window.getDecorView();Object previous=decor.getTag(BOARD_TAG);if(previous instanceof Board)((Board)previous).release();Activity activity=owner(dialog);CarUi.Skin skin=CarUi.skin(dialog.getContext());
        Bitmap bitmap=null;int width=0,height=0;int[] origin={0,0};
        if(activity!=null){View view=activity.getWindow().getDecorView();width=view.getWidth();height=view.getHeight();view.getLocationOnScreen(origin);
            if(width>0&&height>0)try{bitmap=Bitmap.createBitmap(Math.max(1,width/12),Math.max(1,height/12),Bitmap.Config.ARGB_8888);Canvas canvas=new Canvas(bitmap);canvas.scale(bitmap.getWidth()/(float)width,bitmap.getHeight()/(float)height);view.draw(canvas);blur(bitmap,4);}catch(RuntimeException|OutOfMemoryError error){if(bitmap!=null)bitmap.recycle();bitmap=null;Log.w("CarUi","Dialog snapshot blur unavailable",error);}}
        window.addFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);window.setDimAmount(skin.dark?.58f:.46f);
        Board board=new Board(dialog,activity==null?null:activity.getWindow().getDecorView(),decor,bitmap,width,height,origin,skin);decor.setTag(BOARD_TAG,board);window.setBackgroundDrawable(board);
        View content=dialog.findViewById(android.R.id.content);
        if (content instanceof ViewGroup) LegacyUi.inheritWindowBackground((ViewGroup) content);
        if(android.os.Build.VERSION.SDK_INT>=21)window.getDecorView().setElevation(CarUi.dp(dialog.getContext(),20));
    }
    static void blur(Bitmap bitmap,int radius){
        int w=bitmap.getWidth(),h=bitmap.getHeight();int[] pixels=new int[w*h],temp=new int[w*h];bitmap.getPixels(pixels,0,w,0,0,w,h);
        for(int pass=0;pass<2;pass++){
            for(int y=0;y<h;y++)for(int x=0;x<w;x++){int red=0,green=0,blue=0,count=0;for(int k=Math.max(0,x-radius);k<=Math.min(w-1,x+radius);k++){int c=pixels[y*w+k];red+=Color.red(c);green+=Color.green(c);blue+=Color.blue(c);count++;}temp[y*w+x]=Color.rgb(red/count,green/count,blue/count);}
            for(int y=0;y<h;y++)for(int x=0;x<w;x++){int red=0,green=0,blue=0,count=0;for(int k=Math.max(0,y-radius);k<=Math.min(h-1,y+radius);k++){int c=temp[k*w+x];red+=Color.red(c);green+=Color.green(c);blue+=Color.blue(c);count++;}pixels[y*w+x]=Color.rgb(red/count,green/count,blue/count);}
        }bitmap.setPixels(pixels,0,w,0,0,w,h);
    }
    private static final class Board extends Drawable implements View.OnAttachStateChangeListener,View.OnLayoutChangeListener,Drawable.Callback {
        final View decor,owner;Bitmap bitmap;final int width,height;final int[] ownerOrigin;final CarUi.Skin skin;final Paint paint=new Paint(3);final Path clip=new Path();final WeakReference<Dialog> dialog;boolean released,pending;final Appearance.Config appearance;final android.graphics.drawable.GradientDrawable edge;
        Board(Dialog dialog,View owner,View decor,Bitmap bitmap,int width,int height,int[] origin,CarUi.Skin skin){this.dialog=new WeakReference<Dialog>(dialog);appearance=Appearance.load(decor.getContext());edge=Appearance.background(decor.getContext(),Color.TRANSPARENT,"cyan".equals(skin.theme)?16:28,appearance);edge.setCallback(this);this.owner=owner;this.decor=decor;this.bitmap=bitmap;this.width=width;this.height=height;this.ownerOrigin=origin;this.skin=skin;decor.addOnAttachStateChangeListener(this);if(owner!=null)owner.addOnLayoutChangeListener(this);}
        void release(){if(released)return;released=true;edge.setVisible(false,false);edge.setCallback(null);decor.removeOnAttachStateChangeListener(this);if(owner!=null)owner.removeOnLayoutChangeListener(this);if(decor.getTag(BOARD_TAG)==this)decor.setTag(BOARD_TAG,null);if(bitmap!=null){bitmap.recycle();bitmap=null;}}
        @Override public void onViewAttachedToWindow(View v){}@Override public void onViewDetachedFromWindow(View v){release();}
        @Override public void onLayoutChange(View v,int left,int top,int right,int bottom,int oldLeft,int oldTop,int oldRight,int oldBottom){if(released||pending||right-left==width&&bottom-top==height)return;pending=true;decor.post(new Runnable(){@Override public void run(){pending=false;Dialog d=dialog.get();if(!released&&d!=null&&d.isShowing())CarUi.refreshDialog(d);}});}
        @Override public void draw(Canvas canvas){RectF bounds=new RectF(getBounds());float radius=CarUi.dp(decor.getContext(),28);clip.reset();clip.addRoundRect(bounds,radius,radius,Path.Direction.CW);int save=canvas.save();canvas.clipPath(clip);int tonal=bitmap==null?245:skin.dark?220:210;float opacity=(100-appearance.transparency)/100f,tint=tonal/255f;
            if(bitmap!=null){int[] position=new int[2];decor.getLocationOnScreen(position);paint.setColor(Color.WHITE);/* Preserve blur/tonal proportions while applying global opacity once, without an offscreen layer. */paint.setAlpha(Math.round(255*opacity*(1-tint)/(1-opacity*tint)));canvas.drawBitmap(bitmap,null,new RectF(ownerOrigin[0]-position[0],ownerOrigin[1]-position[1],ownerOrigin[0]-position[0]+width,ownerOrigin[1]-position[1]+height),paint);}
            paint.setStyle(Paint.Style.FILL);paint.setColor(skin.surface);paint.setAlpha(Appearance.alpha(tonal,appearance));canvas.drawRoundRect(bounds,radius,radius,paint);canvas.restoreToCount(save);if(appearance.style!=0){edge.setBounds(getBounds());edge.draw(canvas);return;}paint.setStyle(Paint.Style.STROKE);paint.setStrokeWidth(CarUi.dp(decor.getContext(),1));paint.setColor(skin.outline);paint.setAlpha(130);bounds.inset(paint.getStrokeWidth()/2,paint.getStrokeWidth()/2);canvas.drawRoundRect(bounds,radius,radius,paint);paint.setStyle(Paint.Style.FILL);paint.setAlpha(255);
        }
        @Override public void invalidateDrawable(Drawable who){invalidateSelf();}
        @Override public void scheduleDrawable(Drawable who,Runnable what,long when){if(!released)scheduleSelf(what,when);}
        @Override public void unscheduleDrawable(Drawable who,Runnable what){unscheduleSelf(what);}
        @Override public void setAlpha(int alpha){}@Override public void setColorFilter(ColorFilter filter){}@Override public int getOpacity(){return PixelFormat.TRANSLUCENT;}
    }
}
