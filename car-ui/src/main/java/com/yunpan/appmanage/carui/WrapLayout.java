package com.yunpan.appmanage.carui;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;

/** Native wrapping action bar; hidden original controls consume no space. */
public final class WrapLayout extends ViewGroup {
    public WrapLayout(Context c){super(c);setClipToPadding(false);}
    @Override protected void onMeasure(int widthSpec,int heightSpec){
        int width=MeasureSpec.getSize(widthSpec),available=Math.max(1,width-getPaddingLeft()-getPaddingRight());
        int gap=CarUi.dp(getContext(),8),x=0,y=0,row=0;
        for(int i=0;i<getChildCount();i++){View child=getChildAt(i);if(child.getVisibility()==GONE)continue;
            child.measure(MeasureSpec.makeMeasureSpec(available,MeasureSpec.AT_MOST),MeasureSpec.makeMeasureSpec(0,MeasureSpec.UNSPECIFIED));
            int cw=child.getMeasuredWidth(),ch=child.getMeasuredHeight();if(x>0&&x+cw>available){y+=row+gap;x=0;row=0;}x+=cw+gap;row=Math.max(row,ch);
        }
        setMeasuredDimension(resolveSize(width,widthSpec),resolveSize(y+row+getPaddingTop()+getPaddingBottom(),heightSpec));
    }
    @Override protected void onLayout(boolean changed,int l,int t,int r,int b){
        int available=r-l-getPaddingLeft()-getPaddingRight(),gap=CarUi.dp(getContext(),8),x=0,y=0,row=0;
        for(int i=0;i<getChildCount();i++){View child=getChildAt(i);if(child.getVisibility()==GONE)continue;int cw=child.getMeasuredWidth(),ch=child.getMeasuredHeight();if(x>0&&x+cw>available){y+=row+gap;x=0;row=0;}child.layout(getPaddingLeft()+x,getPaddingTop()+y,getPaddingLeft()+x+cw,getPaddingTop()+y+ch);x+=cw+gap;row=Math.max(row,ch);}
    }
    @Override protected LayoutParams generateDefaultLayoutParams(){return new LayoutParams(-2,-2);}
}
