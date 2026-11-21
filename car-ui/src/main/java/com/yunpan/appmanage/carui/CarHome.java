package com.yunpan.appmanage.carui;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.ClipData;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.DragEvent;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextClock;
import android.widget.TextView;
import java.util.List;

/** Native, adaptive personal workspace. All persistent state belongs to Favorites. */
public final class CarHome extends FrameLayout implements Bridge.PageHost {
    private static final String[] ROUTE_ICONS = {"home", "tools", "files", "network", "settings"};
    private static final String[] ROUTE_NAMES = {"常用", "功能", "文件", "网络", "设置"};
    private final Activity activity;
    private final Bridge bridge;
    private final View legacy;
    private final Favorites favorites;
    private CarUi.Skin skin;
    private int page=-1, previousWidth, previousHeight;
    private boolean editing, building, compact, shortRail;
    private int contentWidth;
    private LinearLayout grid;
    private ScrollView common;
    private FrameLayout legacyFrame;
    private TextView pageTitle, edit;
    private LinearLayout rail;
    private RailTrack routeTrack;
    private WallpaperView wallpaper;
    public CarHome(Activity activity,Bridge bridge,View legacy) {
        super(activity);this.activity=activity;this.bridge=bridge;this.legacy=legacy;
        this.favorites=new Favorites(activity);bridge.host=this;setTag(CarUi.OWN);
        setClipChildren(false);setClipToPadding(false);setFitsSystemWindows(true);
        hideOriginalHeader();
    }
    private int d(float value){return CarUi.dp(activity,value);}
    public int currentPage(){return page;}
    public Favorites model(){return favorites;}
    public void refreshTheme(){build();}
    public void reloadWallpaper(){wallpaper=null;build();}
    WallpaperView wallpaper() { return wallpaper; }
    public boolean back(){
        if(editing){editing=false;build();return true;}
        if(page == 2 && LegacyUi.closeNetworkTasks(legacy)) return true;
        if(page>=0){if(bridge.hasNestedBack(page))return false;showPage(-1);return true;}
        return false;
    }
    private void hideOriginalHeader(){
        if(legacy==null)return;
        String[] names={"v_menu","v_version","v_adb_text"};
        for(String name:names){View view=bridge.original(name);if(view!=null)view.setVisibility(GONE);}
        View button=bridge.original("v_btn_set");
        if(button!=null&&button.getParent() instanceof View)((View)button.getParent()).setVisibility(GONE);
    }
    @Override protected void onSizeChanged(int w,int h,int oldw,int oldh){
        super.onSizeChanged(w,h,oldw,oldh);
        if(w>0&&h>0&&(w!=previousWidth||h!=previousHeight)){
            previousWidth=w;previousHeight=h;
            post(this::build);
        }
    }
    @Override protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        post(this::build);
    }

    private LinearLayout vertical(){LinearLayout view=new LinearLayout(activity);view.setOrientation(LinearLayout.VERTICAL);return view;}
    private LinearLayout horizontal(){LinearLayout view=new LinearLayout(activity);view.setOrientation(LinearLayout.HORIZONTAL);view.setGravity(Gravity.CENTER_VERTICAL);return view;}
    private LinearLayout.LayoutParams lp(int w,int h){return new LinearLayout.LayoutParams(w,h);}
    private TextView label(String text,float size,int color,boolean bold){return CarUi.text(activity,text,size,color,bold);}
    private ImageView icon(String name,int color,int size){ImageView view=new ImageView(activity);view.setImageDrawable(new Icons(name,color));view.setLayoutParams(lp(d(size),d(size)));view.setImportantForAccessibility(IMPORTANT_FOR_ACCESSIBILITY_NO);return view;}
    private TextView button(String title,String glyph,boolean primary,OnClickListener listener){
        TextView button=label(title,18,primary?skin.onAccent:skin.ink,true);
        button.setGravity(Gravity.CENTER);button.setMinimumHeight(d(52));button.setPadding(d(18),d(12),d(18),d(12));
        button.setSingleLine(true);button.setFocusable(true);button.setClickable(true);
        button.setBackground(CarUi.buttonBackground(activity,primary?skin.accent:skin.soft,primary?skin.pressedAccent:skin.surface,primary?skin.onAccent:skin.ink,26));
        if(glyph!=null){Drawable drawable=new Icons(glyph,primary?skin.onAccent:skin.ink);drawable.setBounds(0,0,d(22),d(22));button.setCompoundDrawables(drawable,null,null,null);button.setCompoundDrawablePadding(d(8));}
        button.setOnClickListener(listener);return button;
    }
    private void build(){
        if(building||getWidth()==0)return;building=true;
        View previousFocus = findFocus();
        View previousRoute = RemoteFocus.item(routeTrack, previousFocus);
        int routeIndex = previousRoute == null ? -1 : routeTrack.indexOfChild(previousRoute);
        skin=CarUi.skin(activity);setBackgroundColor(skin.background);CarUi.window(activity);
        int commonScroll = common == null ? 0 : common.getScrollY();
        int routeScroll = routeTrack != null && routeTrack.getParent() instanceof ScrollView
                ? ((ScrollView) routeTrack.getParent()).getScrollY() : 0;
        if(legacy!=null&&legacy.getParent() instanceof ViewGroup)((ViewGroup)legacy.getParent()).removeView(legacy);
        removeAllViews();
        Wallpapers.Config wallpaperConfig=Wallpapers.load(activity);
        boolean backdrop = Wallpapers.hasBackdrop(skin, wallpaperConfig);
        if (backdrop) {
            if (wallpaper == null) wallpaper = new WallpaperView(activity, false);
            wallpaper.configure(wallpaperConfig);
            addView(wallpaper, new FrameLayout.LayoutParams(-1,-1));
        } else wallpaper = null;

        int width = getWidth() - getPaddingLeft() - getPaddingRight();
        compact = width < d(600);
        shortRail = getHeight() - getPaddingTop() - getPaddingBottom() < d(650);
        int gutter = d(compact ? 8 : 16), gap = d(compact ? 12 : 24);
        int railWidth = d(compact ? 70 : 88);
        contentWidth = Math.max(1, width - gutter * 2 - railWidth - gap);
        LinearLayout outer=horizontal();outer.setGravity(Gravity.TOP);
        outer.setPadding(gutter, d(shortRail ? 4 : 16), gutter, d(shortRail ? 4 : 16));
        addView(outer,new FrameLayout.LayoutParams(-1,-1));
        rail=vertical();rail.setGravity(Gravity.CENTER_HORIZONTAL);
        rail.setPadding(d(compact ? 4 : 8),d(shortRail ? 4 : 16),d(compact ? 4 : 8),d(shortRail ? 4 : 8));
        rail.setBackground(CarUi.rounded(activity,skin.rail,compact ? 26 : 32));
        outer.addView(rail,lp(railWidth,-1));
        LinearLayout main=vertical();LinearLayout.LayoutParams mainParams=new LinearLayout.LayoutParams(0,-1,1);mainParams.leftMargin=gap;outer.addView(main,mainParams);
        LinearLayout heading=horizontal();heading.setPadding(d(compact ? 10 : 16),d(shortRail ? 6 : 8),d(compact ? 10 : 16),d(shortRail ? 6 : 8));
        if(backdrop)heading.setBackground(CarUi.rounded(activity,skin.surface,18));
        pageTitle=label(title(),compact || shortRail ? 24 : 28,skin.ink,true);
        if (Build.VERSION.SDK_INT >= 19) pageTitle.setAccessibilityLiveRegion(ACCESSIBILITY_LIVE_REGION_POLITE);
        heading.addView(pageTitle,new LinearLayout.LayoutParams(0,-2,1));
        LinearLayout time=vertical();time.setGravity(Gravity.END);
        TextClock clock=new TextClock(activity);clock.setFormat24Hour("HH:mm");clock.setFormat12Hour("HH:mm");clock.setTextColor(skin.ink);clock.setTextSize(shortRail ? 21 : 25);clock.setIncludeFontPadding(false);time.addView(clock);
        if (skin.glass != null) skin.glass.styleClock(clock);
        TextClock date=new TextClock(activity);date.setFormat24Hour("MM月dd日");date.setFormat12Hour("MM月dd日");date.setTextColor(skin.muted);date.setTextSize(13);date.setGravity(Gravity.END);time.addView(date);
        if (contentWidth >= d(310 * fontScale())) heading.addView(time,lp(-2,-2));
        LinearLayout.LayoutParams headingParams=lp(-1,-2);headingParams.bottomMargin=d(shortRail ? 10 : 16);main.addView(heading,headingParams);
        FrameLayout body=new FrameLayout(activity);main.addView(body,new LinearLayout.LayoutParams(-1,0,1));
        legacyFrame=new FrameLayout(activity);body.addView(legacyFrame,new FrameLayout.LayoutParams(-1,-1));
        if(legacy!=null)legacyFrame.addView(legacy,new FrameLayout.LayoutParams(-1,-1));
        common=new ScrollView(activity);common.setFillViewport(false);common.setClipToPadding(false);common.setVerticalScrollBarEnabled(false);
        body.addView(common,new FrameLayout.LayoutParams(-1,-1));
        LinearLayout content=vertical();content.setPadding(0,0,0,d(16));common.addView(content,new ScrollView.LayoutParams(-1,-2));
        content.addView(hero(),lp(-1,-2));
        LinearLayout section=horizontal();section.setPadding(d(12),d(6),d(12),d(6));if(backdrop)section.setBackground(plainBackground(skin.surface,skin.surface,18));
        section.addView(label("常用功能",compact ? 21 : 24,skin.ink,true),new LinearLayout.LayoutParams(0,-2,1));
        edit=button(editing?"完成":"编辑",editing?null:"edit",false,new OnClickListener(){@Override public void onClick(View view){editing=!editing;build();}});
        edit.setBackground(plainBackground(skin.soft,skin.surface,26));
        edit.setContentDescription(editing?"完成编辑常用功能":"编辑常用功能");section.addView(edit,lp(-2,-2));LinearLayout.LayoutParams sectionParams=lp(-1,-2);sectionParams.topMargin=d(shortRail ? 12 : 18);sectionParams.bottomMargin=d(shortRail ? 8 : 14);content.addView(section,sectionParams);
        if(editing){TextView help=label("拖动卡片排序，点卡片修改名称或位置",16,skin.muted,false);help.setPadding(0,0,0,d(14));content.addView(help);}
        grid=vertical();content.addView(grid,lp(-1,-2));renderGrid();
        if(favorites.all().isEmpty()){TextView empty=label("把常用入口放在这里\n应用、内置功能或任意可打开的页面",20,skin.muted,false);empty.setGravity(Gravity.CENTER);empty.setPadding(d(12),d(30),d(12),d(30));content.addView(empty,lp(-1,-2));}
        TextView provenance=label("定制作者："+SourceInfo.AUTHOR+" · 官方来源",15,skin.ink,false);provenance.setPadding(d(16),d(14),d(16),d(14));provenance.setMinimumHeight(d(48));provenance.setBackground(CarUi.buttonBackground(activity,skin.surface,skin.soft,skin.ink,18));provenance.setFocusable(true);provenance.setClickable(true);provenance.setContentDescription("关于与来源，定制作者 carlito");provenance.setOnClickListener(new OnClickListener(){public void onClick(View v){SourceInfo.show(activity);}});content.addView(provenance,lp(-1,-2));
        buildRail(routeScroll);applyPage();building=false;
        if (previousFocus != null) {
            View scope = routeIndex >= 0 ? rail : visiblePage();
            View target = routeIndex >= 0 ? routeTrack.getChildAt(routeIndex) : previousFocus;
            if (!RemoteFocus.restore(scope, target)) {
                RemoteFocus.afterLayout(scope, () -> RemoteFocus.restore(scope, target));
            }
        }
        if (commonScroll != 0) {
            ScrollView scroll = common;
            scroll.post(() -> scroll.scrollTo(0, commonScroll));
        }
    }
    private float fontScale() {
        return Math.max(1f, getResources().getConfiguration().fontScale);
    }

    private View hero() {
        boolean horizontal = contentWidth >= d(480 * fontScale());
        boolean glass = skin.glass != null;
        LinearLayout hero = horizontal ? horizontal() : vertical();
        int padding = d(compact ? 16 : 24);
        hero.setPadding(padding, d(shortRail ? 10 : 20), padding, d(shortRail ? 10 : 20));
        hero.setBackground(CarUi.rounded(activity, glass ? skin.surface : skin.accent, 28));

        LinearLayout description = vertical();
        description.addView(label("快捷入口", compact || shortRail ? 24 : 30, glass ? skin.ink : skin.onAccent, true));
        TextView subtitle = label("添加应用、内置功能或页面", 16, glass ? skin.muted : skin.onAccent, false);
        subtitle.setPadding(0, d(6), 0, 0);
        description.addView(subtitle);
        hero.addView(description, horizontal ? new LinearLayout.LayoutParams(0,-2,1) : lp(-1,-2));

        TextView add = button("添加跳转", "add", glass, view -> showAdd());
        if (!glass) {
            add.setTextColor(skin.railInk);
            Drawable glyph = new Icons("add", skin.railInk);
            glyph.setBounds(0,0,d(21),d(21));
            add.setCompoundDrawables(glyph,null,null,null);
            add.setBackground(CarUi.buttonBackground(activity,skin.rail,0xFF3D3D32,skin.railInk,26));
        }
        LinearLayout.LayoutParams addPosition = lp(horizontal ? -2 : -1, -2);
        if (horizontal) addPosition.leftMargin = d(16);
        else addPosition.topMargin = d(12);
        hero.addView(add, addPosition);
        return hero;
    }
    private void renderGrid(){
        grid.removeAllViews();
        int space = d(compact ? 8 : 12);
        int tileWidth = d((getWidth() > getHeight() ? 184 : 205) * fontScale());
        int columns = Math.max(1, Math.min(4, (contentWidth + space) / (tileWidth + space)));
        List<Favorites.Item> items=favorites.all();int count=items.size()+1;
        for(int start=0;start<count;start+=columns){
            LinearLayout row=horizontal();row.setGravity(Gravity.TOP);LinearLayout.LayoutParams rowParams=lp(-1,-2);rowParams.bottomMargin=space;grid.addView(row,rowParams);
            for(int col=0;col<columns;col++){
                int index=start+col;View tile;
                if(index<items.size())tile=tile(items.get(index));else if(index==items.size())tile=addTile();else tile=new View(activity);
                LinearLayout.LayoutParams params=new LinearLayout.LayoutParams(0,-2,1);if(col>0)params.leftMargin=space;row.addView(tile,params);
            }
        }
    }
    private View tile(final Favorites.Item item){
        FrameLayout frame=new FrameLayout(activity);frame.setMinimumHeight(d(shortRail ? 112 : 128));frame.setFocusable(true);frame.setClickable(true);
        frame.setBackground(CarUi.buttonBackground(activity,skin.surface,skin.soft,skin.ink,26,true));
        if(Build.VERSION.SDK_INT>=21&&"mono".equals(skin.theme)){frame.setElevation(d(5));frame.setOutlineProvider(android.view.ViewOutlineProvider.BACKGROUND);}
        LinearLayout content=vertical();content.setPadding(d(16),d(14),d(16),d(14));frame.addView(content,new FrameLayout.LayoutParams(-1,-2));
        ImageView image=new ImageView(activity);Drawable installed=bridge.icon(item);image.setImageDrawable(installed!=null?installed:new Icons(item.icon,skin.ink));content.addView(image,lp(d(32),d(32)));
        TextView name=label(item.name,20,skin.ink,true);name.setPadding(0,d(10),0,d(4));name.setMaxLines(2);name.setEllipsize(TextUtils.TruncateAt.END);content.addView(name,lp(-1,-2));
        boolean available=bridge.available(item);String kind="app".equals(item.type)?"应用":"link".equals(item.type)?"自定义跳转":"内置功能";
        content.addView(label(available?kind:"暂不可用 · 可编辑",14,skin.muted,false),lp(-1,-2));
        frame.setContentDescription(item.name+(editing?"，点击编辑，长按拖动排序":"，"+kind));
        frame.setOnClickListener(new OnClickListener(){@Override public void onClick(View view){if(editing)editItem(item);else bridge.open(item);}});
        frame.setOnLongClickListener(new OnLongClickListener(){@Override public boolean onLongClick(View view){
            if(!editing){editItem(item);return true;}
            ClipData clip=ClipData.newPlainText("favorite",item.id);View.DragShadowBuilder shadow=new View.DragShadowBuilder(view);
            if(Build.VERSION.SDK_INT>=24)view.startDragAndDrop(clip,shadow,item.id,0);else view.startDrag(clip,shadow,item.id,0);return true;
        }});
        frame.setOnDragListener(new OnDragListener(){@Override public boolean onDrag(View view,DragEvent event){
            if(!editing||!(event.getLocalState() instanceof String))return false;
            if(event.getAction()==DragEvent.ACTION_DRAG_ENTERED)view.setAlpha(.65f);
            if(event.getAction()==DragEvent.ACTION_DRAG_EXITED||event.getAction()==DragEvent.ACTION_DRAG_ENDED)view.setAlpha(1f);
            if(event.getAction()==DragEvent.ACTION_DROP){favorites.move((String)event.getLocalState(),favorites.index(item.id));post(new Runnable(){@Override public void run(){build();}});}
            return true;
        }});
        if(editing){
            TextView remove=label("",18,skin.ink,false);remove.setGravity(Gravity.CENTER);remove.setCompoundDrawablesWithIntrinsicBounds(null,null,null,null);
            remove.setBackground(CarUi.buttonBackground(activity,skin.soft,skin.surface,skin.ink,24));
            FrameLayout removeFrame=new FrameLayout(activity);removeFrame.setContentDescription("移除 "+item.name);removeFrame.setFocusable(true);removeFrame.setClickable(true);
            ImageView close=icon("close",skin.ink,20);FrameLayout.LayoutParams glyph=new FrameLayout.LayoutParams(d(20),d(20),Gravity.CENTER);removeFrame.addView(close,glyph);
            removeFrame.setBackground(CarUi.buttonBackground(activity,skin.soft,skin.surface,skin.ink,24));
            FrameLayout.LayoutParams position=new FrameLayout.LayoutParams(d(48),d(48),Gravity.TOP|Gravity.RIGHT);position.topMargin=d(6);position.rightMargin=d(6);frame.addView(removeFrame,position);
            removeFrame.setOnClickListener(new OnClickListener(){@Override public void onClick(View view){favorites.remove(item.id);build();}});
        }
        return frame;
    }
    private View addTile(){
        LinearLayout view=vertical();view.setGravity(Gravity.CENTER);view.setPadding(d(16),d(16),d(16),d(16));view.setMinimumHeight(d(shortRail ? 112 : 128));
        android.graphics.drawable.GradientDrawable background=CarUi.rounded(activity,skin.background,26);background.setStroke(d(1),skin.outline,d(6),d(5));android.graphics.drawable.StateListDrawable addStates=new android.graphics.drawable.StateListDrawable();android.graphics.drawable.GradientDrawable focused=CarUi.rounded(activity,skin.background,26);focused.setStroke(d(2),skin.ink);addStates.addState(new int[]{android.R.attr.state_focused},focused);addStates.addState(new int[]{android.R.attr.state_pressed},CarUi.rounded(activity,skin.soft,26));addStates.addState(new int[]{},background);view.setBackground(addStates);
        view.addView(icon("add",skin.muted,30));TextView text=label("添加跳转",18,skin.muted,true);text.setGravity(Gravity.CENTER);text.setPadding(0,d(14),0,0);view.addView(text);
        view.setFocusable(true);view.setClickable(true);view.setContentDescription("添加新的常用功能或跳转");view.setOnClickListener(new OnClickListener(){@Override public void onClick(View v){showAdd();}});return view;
    }
    /** The favorites heading stays unframed; its edit control uses fill-only interaction feedback. */
    private Drawable plainBackground(int normal,int pressed,float radius){
        Appearance.Config config=Appearance.load(activity);config.style=0;
        android.graphics.drawable.StateListDrawable states=new android.graphics.drawable.StateListDrawable();
        states.addState(new int[]{android.R.attr.state_pressed},Appearance.background(activity,pressed,radius,config,false));
        states.addState(new int[]{android.R.attr.state_focused},Appearance.background(activity,pressed,radius,config,false));
        states.addState(new int[]{},Appearance.background(activity,normal,radius,config,false));return states;
    }
    private String title(){return page<0?"应用管家":page==0?"全部功能":page==1?"文件管理":"网络存储";}
    private void buildRail(int scrollPosition) {
        if (!shortRail) {
            ImageView brand = icon("apps", "mono".equals(skin.theme) && !skin.dark ? skin.railInk : skin.accent, 28);
            LinearLayout.LayoutParams brandPosition = lp(d(28), d(28));
            brandPosition.bottomMargin = d(16);
            rail.addView(brand, brandPosition);
        }

        ScrollView destinations = new ScrollView(activity);
        destinations.setFocusable(false);
        destinations.setVerticalScrollBarEnabled(shortRail);
        destinations.setOverScrollMode(View.OVER_SCROLL_IF_CONTENT_SCROLLS);
        rail.addView(destinations, new LinearLayout.LayoutParams(-1, 0, 1));
        routeTrack = new RailTrack();
        destinations.addView(routeTrack, new ScrollView.LayoutParams(-1, -2));
        for (int i = 0; i < ROUTE_NAMES.length; i++) {
            final int route = i;
            LinearLayout nav = railButton(ROUTE_ICONS[i], ROUTE_NAMES[i], ROUTE_NAMES[i], view -> {
                if (route == 4) bridge.settings();
                else showPage(route - 1);
            }, false);
            LinearLayout.LayoutParams position = lp(-1, -2);
            position.bottomMargin = i == ROUTE_NAMES.length - 1 ? 0 : d(shortRail ? 2 : 8);
            routeTrack.addView(nav, position);
        }
        updateRail(false);
        if (scrollPosition > 0) destinations.post(() -> destinations.scrollTo(0, scrollPosition));
        rail.addView(railButton("settings", "主题", "切换界面主题", view -> ThemePicker.show(activity), true), lp(-1, -2));
        rail.addView(railButton(skin.dark ? "sun" : "moon", skin.dark ? "日间" : "夜间",
                skin.dark ? "切换日间模式" : "切换夜间模式", view -> {
                    favorites.dark(!favorites.dark());
                    build();
                }, true), lp(-1, -2));
    }

    private LinearLayout railButton(String glyph, String title, String description,
                                    OnClickListener clicked, boolean utility) {
        LinearLayout item = vertical();
        item.setGravity(Gravity.CENTER);
        item.setMinimumHeight(d(shortRail ? 48 : (utility ? 60 : 72)));
        item.setPadding(0, d(shortRail ? 3 : 8), 0, d(shortRail ? 3 : 8));
        item.setFocusable(true);
        item.setContentDescription(description);
        item.addView(icon(glyph, skin.railInk, shortRail ? 18 : 24));
        TextView name = label(title, shortRail ? 13 : 14, skin.railInk, false);
        name.setGravity(Gravity.CENTER);
        name.setPadding(0, d(shortRail ? 4 : 6), 0, 0);
        item.addView(name, lp(-1, -2));
        item.setBackground(railStates(false));
        item.setOnClickListener(clicked);
        return item;
    }

    private Drawable railStates(boolean selected) {
        int radius = shortRail ? 19 : 26;
        int pressed = selected ? skin.pressedAccent : skin.glass != null ? skin.soft : 0xFF424438;
        int stroke = selected ? skin.onAccent : skin.accent;
        GradientDrawable down = CarUi.rounded(activity, pressed, radius);
        down.setStroke(d(2), stroke);
        GradientDrawable focus = CarUi.rounded(activity, selected ? skin.accent : skin.rail, radius);
        focus.setStroke(d(2), stroke);
        StateListDrawable states = new StateListDrawable();
        states.addState(new int[]{android.R.attr.state_pressed}, down);
        states.addState(new int[]{android.R.attr.state_focused}, focus);
        states.addState(new int[]{}, new ColorDrawable(Color.TRANSPARENT));
        return states;
    }

    private void updateRail(boolean animate) {
        int selected = page + 1;
        for (int i = 0; i < routeTrack.getChildCount(); i++) {
            LinearLayout item = (LinearLayout) routeTrack.getChildAt(i);
            if (item.isSelected() == (i == selected)) continue;
            boolean active = i == selected;
            item.setSelected(active);
            int ink = active ? skin.onAccent : skin.railInk;
            ((ImageView) item.getChildAt(0)).setImageDrawable(new Icons(ROUTE_ICONS[i], ink));
            TextView name = (TextView) item.getChildAt(1);
            name.setTextColor(ink);
            name.setTypeface(null, active ? android.graphics.Typeface.BOLD : android.graphics.Typeface.NORMAL);
            item.setBackground(railStates(active));
        }
        routeTrack.moveTo(selected, animate);
    }

    // Sliding pill adapted from Lucian UX/UI Prompt #039 (MIT, Seokwoooo).
    // https://lucianlabs.dev/en/uxui-prompt/#039
    private final class RailTrack extends LinearLayout {
        private final RectF pill = new RectF();
        private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private ValueAnimator motion;
        private int selection;

        RailTrack() {
            super(activity);
            setOrientation(VERTICAL);
        }

        @Override protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
            super.onLayout(changed, left, top, right, bottom);
            View active = getChildAt(selection);
            if (active != null && motion == null) place(active.getTop(), active.getBottom());
        }

        void moveTo(int index, boolean animate) {
            if (index == selection && !pill.isEmpty()) return;
            selection = index;
            View active = getChildAt(index);
            stopMotion();
            float targetTop = active.getTop(), targetBottom = active.getBottom();
            boolean moving = animate && !pill.isEmpty() && targetBottom > targetTop && CarMotion.enabled(activity);
            if (animate && targetBottom > targetTop) {
                active.requestRectangleOnScreen(new Rect(0,0,active.getWidth(),active.getHeight()), !moving);
            }
            if (!moving) {
                place(targetTop, targetBottom);
                return;
            }

            float fromTop = pill.top, fromBottom = pill.bottom;
            float travel = Math.signum(targetTop - fromTop);
            motion = ValueAnimator.ofFloat(0f, 1f);
            motion.setDuration(240);
            motion.setInterpolator(CarMotion.EASE_OUT);
            motion.addUpdateListener(frame -> {
                float progress = (Float) frame.getAnimatedValue();
                float stretch = d(8) * (float) Math.sin(Math.PI * progress);
                place(fromTop + (targetTop - fromTop) * progress - (travel < 0 ? stretch : 0),
                        fromBottom + (targetBottom - fromBottom) * progress + (travel > 0 ? stretch : 0));
                if (progress == 1f) motion = null;
            });
            motion.start();
        }

        private void place(float top, float bottom) {
            pill.set(0, top, getWidth(), bottom);
            invalidate();
        }

        private void stopMotion() {
            if (motion != null) {
                motion.cancel();
                motion = null;
            }
        }

        @Override protected void onDetachedFromWindow() {
            stopMotion();
            super.onDetachedFromWindow();
        }

        @Override protected void dispatchDraw(Canvas canvas) {
            paint.setColor(skin.accent);
            float radius = d((shortRail ? 19 : 26) * (skin.glass == null ? 1f : skin.glass.radius));
            canvas.drawRoundRect(pill, radius, radius, paint);
            super.dispatchDraw(canvas);
        }
    }
    @Override public void page(int index){showPage(index);}
    private View visiblePage() { return page < 0 ? common : legacyFrame; }

    @Override public View focusSearch(View focused, int direction) {
        View candidate = super.focusSearch(focused, direction);
        View panel = visiblePage();
        if (routeTrack == null || panel == null) return candidate;
        int intoPage = getLayoutDirection() == LAYOUT_DIRECTION_RTL ? FOCUS_LEFT : FOCUS_RIGHT;
        int intoRail = intoPage == FOCUS_LEFT ? FOCUS_RIGHT : FOCUS_LEFT;
        if (direction == intoPage && RemoteFocus.contains(rail, focused)) {
            if (RemoteFocus.contains(panel, candidate)) return candidate;
            View first = RemoteFocus.first(panel);
            if (first != null) return first;
        }
        if (direction == intoRail && RemoteFocus.contains(panel, focused)
                && (candidate == null || RemoteFocus.contains(rail, candidate))) {
            return routeTrack.getChildAt(page + 1);
        }
        return candidate;
    }

    public void showPage(int index) {
        int previous = page;
        View previousFocus = findFocus();
        page = Math.max(-1, Math.min(2, index));
        if (page >= 0) bridge.page(page);
        if (common == null) return;
        applyPage();
        updateRail(previous != page);
        View panel = visiblePage();
        View preferred = previous == page ? previousFocus : null;
        if (!RemoteFocus.restore(panel, preferred)) {
            int destination = page;
            RemoteFocus.afterLayout(panel, () -> {
                if (page == destination && panel == visiblePage()) RemoteFocus.restore(panel, preferred);
            });
        }
        if (previous != page) {
            CarMotion.reset(page < 0 ? legacyFrame : common);
            CarMotion.enter(page < 0 ? common : legacyFrame, Integer.signum(page - previous));
        }
    }
    private void applyPage() {
        if (common == null) return;
        common.setVisibility(page < 0 ? VISIBLE : GONE);
        legacyFrame.setVisibility(page < 0 ? INVISIBLE : VISIBLE);
        pageTitle.setText(title());
        if (page >= 0 && legacy != null) {
            CarUi.theme(legacy);
        }
    }
    public void showAdd(){new ShortcutPicker(activity,bridge,skin,new ShortcutPicker.Listener(){@Override public boolean add(Favorites.Item item){
        if(!favorites.add(item)){CarUi.message(activity,"这个入口已经在常用功能中");return false;}build();return true;
    }}).show();}
    private void editItem(final Favorites.Item item){
        final Dialog dialog=new Dialog(activity);dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
        LinearLayout panel=vertical();panel.setPadding(d(28),d(26),d(28),d(26));panel.setBackground(CarUi.rounded(activity,skin.surface,30));
        panel.addView(label("编辑常用功能",26,skin.ink,true));
        final EditText name=new EditText(activity);name.setText(item.name);name.setSingleLine(true);name.setSelectAllOnFocus(true);name.setHint("入口名称");CarUi.theme(name);
        LinearLayout.LayoutParams input=lp(-1,-2);input.topMargin=d(22);panel.addView(name,input);
        LinearLayout order=horizontal();order.setPadding(0,d(18),0,d(18));
        TextView up=button("前移","up",false,new OnClickListener(){@Override public void onClick(View v){favorites.move(item.id,favorites.index(item.id)-1);dialog.dismiss();build();}});
        TextView down=button("后移","down",false,new OnClickListener(){@Override public void onClick(View v){favorites.move(item.id,favorites.index(item.id)+1);dialog.dismiss();build();}});
        up.setEnabled(favorites.index(item.id)>0);down.setEnabled(favorites.index(item.id)<favorites.all().size()-1);up.setAlpha(up.isEnabled()?1:.4f);down.setAlpha(down.isEnabled()?1:.4f);
        order.addView(up,new LinearLayout.LayoutParams(0,-2,1));LinearLayout.LayoutParams next=new LinearLayout.LayoutParams(0,-2,1);next.leftMargin=d(12);order.addView(down,next);panel.addView(order);
        LinearLayout actions=horizontal();actions.addView(button("删除",null,false,new OnClickListener(){@Override public void onClick(View v){favorites.remove(item.id);dialog.dismiss();build();}}),new LinearLayout.LayoutParams(0,-2,1));
        TextView save=button("保存",null,true,new OnClickListener(){@Override public void onClick(View v){if(name.getText().toString().trim().isEmpty()){name.setError("请输入名称");return;}favorites.rename(item.id,name.getText().toString());dialog.dismiss();build();}});
        LinearLayout.LayoutParams saved=new LinearLayout.LayoutParams(0,-2,1);saved.leftMargin=d(12);actions.addView(save,saved);panel.addView(actions);
        dialog.setContentView(panel);dialog.show();Window window=dialog.getWindow();if(window!=null){window.setLayout(Math.min(getWidth()-d(48),d(500)),-2);window.setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE);}CarUi.decorateDialog(dialog);
    }
}
