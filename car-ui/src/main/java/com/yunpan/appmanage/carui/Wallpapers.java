package com.yunpan.appmanage.carui;

import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.ViewGroup;

/** App backgrounds only; leaves the system launcher wallpaper and original preferences alone. */
public final class Wallpapers {
    static final String[] STYLES={"星河漂移","连线星网","流萤波纹","轻雪漫游","轨道光环","流星雨"};
    static final int[] BACKGROUNDS={0xFF061222,0xFF111216,0xFF241127,0xFF073638,0xFF132D22,0xFF493027};
    static final String[] BACKGROUND_NAMES={"深海蓝","石墨黑","暮光紫","青碧","墨绿","暖棕"};
    static final int[] COLORS={0xFF72E9FF,0xFFB8A1FF,0xFFFFCF85,0xFF97F3BB,0xFFFFA4CB,0xFFF1F6FF};
    static final String[] COLOR_NAMES={"冰蓝","浅紫","暖金","薄荷","樱粉","银白"};
    public static final class Config implements java.io.Serializable {
        private static final long serialVersionUID=1L;
        public String mode="off",uri="",imageUri="";public int staticImage,style,background,color,speed=50,density=45,strength=70;public boolean still;
        Config copy(){Config c=new Config();c.mode=mode;c.uri=uri;c.imageUri=imageUri;c.staticImage=staticImage;c.style=style;c.background=background;c.color=color;c.speed=speed;c.density=density;c.strength=strength;c.still=still;return c;}
    }
    static int clamp(int n,int max){return Math.max(0,Math.min(max,n));}
    static Config load(Context context){SharedPreferences p=context.getSharedPreferences("car_wallpaper_v1",0);Config c=new Config();c.mode=p.getString("mode","off");if(!c.mode.equals("static")&&!c.mode.equals("particles")&&!c.mode.equals("video"))c.mode="off";c.uri=p.getString("uri","");c.imageUri=p.getString("imageUri","");c.staticImage=clamp(p.getInt("staticImage",0),3);c.style=clamp(p.getInt("style",0),5);c.background=clamp(p.getInt("background",0),5);c.color=clamp(p.getInt("color",0),5);c.speed=clamp(p.getInt("speed",50),100);c.density=clamp(p.getInt("density",45),100);c.strength=clamp(p.getInt("strength",70),100);c.still=p.getBoolean("still",false);return c;}
    static void save(Context context,Config c){String old=load(context).uri,oldImage=load(context).imageUri;context.getSharedPreferences("car_wallpaper_v1",0).edit().putString("mode",c.mode).putString("uri",c.uri).putString("imageUri",c.imageUri).putInt("staticImage",clamp(c.staticImage,3)).putInt("style",clamp(c.style,5)).putInt("background",clamp(c.background,5)).putInt("color",clamp(c.color,5)).putInt("speed",clamp(c.speed,100)).putInt("density",clamp(c.density,100)).putInt("strength",clamp(c.strength,100)).putBoolean("still",c.still).apply();if(!old.isEmpty()&&!old.equals(c.uri))try{context.getContentResolver().releasePersistableUriPermission(Uri.parse(old),Intent.FLAG_GRANT_READ_URI_PERMISSION);}catch(RuntimeException ignored){}discardImage(context,oldImage);CarUi.refreshWallpaper();}
    static java.io.File legacyImage(Context c){java.io.File dir=c.getFilesDir().getParentFile(),png=new java.io.File(dir,"bj.png"),jpg=new java.io.File(dir,"bj.jpg");return png.isFile()?png:jpg.isFile()?jpg:null;}
    static android.graphics.drawable.Drawable staticDrawable(Context c,int selection){try{if(selection==0){int id=c.getResources().getIdentifier("bj_2","drawable","com.yunpan.appmanage");return c.getResources().getDrawable(id);}if(selection==2){java.io.File file=legacyImage(c);if(file==null)return null;android.graphics.BitmapFactory.Options options=new android.graphics.BitmapFactory.Options();options.inJustDecodeBounds=true;android.graphics.BitmapFactory.decodeFile(file.getPath(),options);options.inSampleSize=1;while(Math.max(options.outWidth,options.outHeight)/options.inSampleSize>2048)options.inSampleSize*=2;options.inJustDecodeBounds=false;android.graphics.Bitmap bitmap=android.graphics.BitmapFactory.decodeFile(file.getPath(),options);if(bitmap!=null)return new android.graphics.drawable.BitmapDrawable(c.getResources(),bitmap);}}catch(RuntimeException|OutOfMemoryError ignored){}return null;}
    static void discardImage(Context c,String uri){if(uri==null||uri.isEmpty()||uri.equals(load(c).imageUri))return;try{Uri parsed=Uri.parse(uri);if(!"file".equals(parsed.getScheme()))return;java.io.File dir=new java.io.File(c.getFilesDir(),"wallpaper-images").getCanonicalFile(),file=new java.io.File(parsed.getPath()).getCanonicalFile();if(file.getParentFile().equals(dir)&&file.isFile())file.delete();}catch(Exception ignored){}}
    static android.graphics.drawable.Drawable staticDrawable(Context c,int selection,String uri){if(selection!=3)return staticDrawable(c,selection);try{android.graphics.BitmapFactory.Options o=new android.graphics.BitmapFactory.Options();o.inJustDecodeBounds=true;try(java.io.InputStream in=c.getContentResolver().openInputStream(Uri.parse(uri))){android.graphics.BitmapFactory.decodeStream(in,null,o);}o.inSampleSize=1;while(Math.max(o.outWidth,o.outHeight)/o.inSampleSize>4096||(long)(o.outWidth/o.inSampleSize)*(o.outHeight/o.inSampleSize)>8000000)o.inSampleSize*=2;o.inJustDecodeBounds=false;android.graphics.Bitmap b;try(java.io.InputStream in=c.getContentResolver().openInputStream(Uri.parse(uri))){b=android.graphics.BitmapFactory.decodeStream(in,null,o);}return b==null?null:new android.graphics.drawable.BitmapDrawable(c.getResources(),b);}catch(Exception|OutOfMemoryError e){return null;}}
    static Activity owner(Context c){for(int i=0;i<12;i++){if(c instanceof Activity)return(Activity)c;if(!(c instanceof ContextWrapper))return null;c=((ContextWrapper)c).getBaseContext();}return null;}
    public static void show(Context context){Activity a=owner(context);if(a!=null)WallpaperPicker.show(a);}
    static void reveal(View v){if(v instanceof ViewGroup&&!v.isClickable()){if(v.getBackground() instanceof ColorDrawable&&((ColorDrawable)v.getBackground()).getColor()==CarUi.skin(v.getContext()).background)v.setBackgroundColor(android.graphics.Color.TRANSPARENT);ViewGroup g=(ViewGroup)v;for(int i=0;i<g.getChildCount();i++)reveal(g.getChildAt(i));}}
    static void releaseGrant(Context c,String uri){if(uri==null||uri.isEmpty()||uri.equals(load(c).uri))return;try{c.getContentResolver().releasePersistableUriPermission(Uri.parse(uri),Intent.FLAG_GRANT_READ_URI_PERMISSION);}catch(RuntimeException ignored){}}
    static void chooseVideo(Activity activity){chooseVideo(activity,load(activity),"");}
    static void chooseVideo(Activity activity,Config draft,String unusedGrant){chooseMedia(activity,draft,unusedGrant,false);}
    static void chooseImage(Activity activity,Config draft,String unusedGrant){chooseMedia(activity,draft,unusedGrant,true);}
    static void chooseMedia(Activity activity,Config draft,String unusedGrant,boolean image){try{VideoResult fragment=(VideoResult)activity.getFragmentManager().findFragmentByTag("carui.video.result");if(fragment==null){fragment=new VideoResult();activity.getFragmentManager().beginTransaction().add(fragment,"carui.video.result").commit();activity.getFragmentManager().executePendingTransactions();}fragment.pending=draft.copy();fragment.unusedGrant=unusedGrant;Intent intent=new Intent(Intent.ACTION_OPEN_DOCUMENT).setType(image?"image/*":"video/*").addCategory(Intent.CATEGORY_OPENABLE).putExtra(Intent.EXTRA_LOCAL_ONLY,true).addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION|Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION);fragment.startActivityForResult(intent,image?7363:7362);}catch(RuntimeException e){CarUi.message(activity,"设备未提供文件选择器，请启用系统文件应用后重试");WallpaperPicker.show(activity,draft,unusedGrant);}}
    public static final class VideoResult extends Fragment {
        Config pending;String unusedGrant="";
        public VideoResult(){}
        @Override public void onCreate(Bundle state){super.onCreate(state);if(state!=null){pending=(Config)state.getSerializable("draft");unusedGrant=state.getString("grant","");}}
        @Override public void onSaveInstanceState(Bundle state){super.onSaveInstanceState(state);state.putSerializable("draft",pending);state.putString("grant",unusedGrant);}
        void reopen(Activity a){WallpaperPicker.show(a,pending==null?load(a):pending,unusedGrant);pending=null;unusedGrant="";}
        @Override public void onActivityResult(int request,int result,Intent data){super.onActivityResult(request,result,data);if(request!=7362&&request!=7363)return;Activity a=getActivity();if(a==null)return;if(result!=Activity.RESULT_OK||data==null||data.getData()==null){reopen(a);return;}Uri uri=data.getData();if(!"content".equals(uri.getScheme())){CarUi.message(a,"请从系统文件选择器选择本地图片或视频");reopen(a);return;}try{android.content.res.AssetFileDescriptor file=a.getContentResolver().openAssetFileDescriptor(uri,"r");if(file==null)throw new java.io.IOException();file.close();if(request==7363){Config imageDraft=pending==null?load(a):pending;String oldGrant=unusedGrant;pending=null;unusedGrant="";WallpaperCropper.show(a,uri,imageDraft,oldGrant);return;}boolean existed=false;for(android.content.UriPermission permission:a.getContentResolver().getPersistedUriPermissions())if(permission.getUri().equals(uri))existed=true;boolean acquired=false;try{a.getContentResolver().takePersistableUriPermission(uri,data.getFlags()&Intent.FLAG_GRANT_READ_URI_PERMISSION);acquired=!existed;}catch(SecurityException ignored){CarUi.message(a,"此文件来源可能需要下次重新授权");}String selected=uri.toString();if(!unusedGrant.equals(selected)){releaseGrant(a,unusedGrant);unusedGrant=acquired?selected:"";}if(pending==null)pending=load(a);pending.uri=selected;pending.mode="video";reopen(a);}catch(Exception e){CarUi.message(a,"无法读取这个文件，请选择设备本地可访问的文件");reopen(a);}}
    }
}
