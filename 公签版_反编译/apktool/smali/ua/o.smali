.class public final synthetic Lua/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/ui/ActivityAppDetails;

.field public final synthetic b:Lx9/o;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityAppDetails;Lx9/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lua/o;->a:Lcom/yunpan/appmanage/ui/ActivityAppDetails;

    iput-object p2, p0, Lua/o;->b:Lx9/o;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lua/o;->a:Lcom/yunpan/appmanage/ui/ActivityAppDetails;

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityAppDetails;->D:Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    .line 7
    invoke-virtual {p2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    iget-object v0, p0, Lua/o;->b:Lx9/o;

    .line 12
    .line 13
    iget-object v0, v0, Lx9/o;->m:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Landroidx/fragment/app/Fragment;

    .line 20
    .line 21
    check-cast p2, Lka/d;

    .line 22
    .line 23
    iget-object v0, p2, Lka/d;->d:Lx9/m3;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-lez v0, :cond_0

    .line 32
    .line 33
    iget-object p1, p2, Lka/d;->c:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityAppDetails;->C:Lcom/google/android/material/tabs/TabLayout;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityAppDetails;->D:Landroidx/viewpager2/widget/ViewPager2;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-virtual {p2, p1}, Lcom/google/android/material/tabs/TabLayout;->f(I)Lp7/h;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object p1, p1, Lp7/h;->e:Lp7/k;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    sget p2, Lcom/yunpan/appmanage/ui/ActivityAppDetails;->E:I

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method
