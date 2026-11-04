.class public final Lka/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;


# instance fields
.field public final synthetic a:Lka/d;


# direct methods
.method public constructor <init>(Lka/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lka/b;->a:Lka/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInBorderKeyEvent(ILandroid/view/View;)Z
    .locals 3

    .line 1
    iget-object p2, p0, Lka/b;->a:Lka/d;

    .line 2
    .line 3
    iget-object p2, p2, Lka/d;->g:Lma/b;

    .line 4
    .line 5
    iget-object v0, p2, Lma/b;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityAppDetails;

    .line 8
    .line 9
    const/16 v1, 0x11

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne p1, v1, :cond_0

    .line 13
    .line 14
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityAppDetails;->D:Landroidx/viewpager2/widget/ViewPager2;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-lez p1, :cond_3

    .line 21
    .line 22
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityAppDetails;->C:Lcom/google/android/material/tabs/TabLayout;

    .line 23
    .line 24
    iget-object p2, v0, Lcom/yunpan/appmanage/ui/ActivityAppDetails;->D:Landroidx/viewpager2/widget/ViewPager2;

    .line 25
    .line 26
    invoke-virtual {p2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    sub-int/2addr p2, v2

    .line 31
    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->f(I)Lp7/h;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object p1, p1, Lp7/h;->e:Lp7/k;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/16 v1, 0x42

    .line 42
    .line 43
    if-ne p1, v1, :cond_1

    .line 44
    .line 45
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityAppDetails;->D:Landroidx/viewpager2/widget/ViewPager2;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iget-object p2, p2, Lma/b;->c:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p2, Lx9/o;

    .line 54
    .line 55
    iget-object p2, p2, Lx9/o;->m:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    sub-int/2addr p2, v2

    .line 62
    if-ge p1, p2, :cond_3

    .line 63
    .line 64
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityAppDetails;->C:Lcom/google/android/material/tabs/TabLayout;

    .line 65
    .line 66
    iget-object p2, v0, Lcom/yunpan/appmanage/ui/ActivityAppDetails;->D:Landroidx/viewpager2/widget/ViewPager2;

    .line 67
    .line 68
    invoke-virtual {p2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    add-int/2addr p2, v2

    .line 73
    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->f(I)Lp7/h;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object p1, p1, Lp7/h;->e:Lp7/k;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    const/16 p2, 0x21

    .line 84
    .line 85
    if-ne p1, p2, :cond_2

    .line 86
    .line 87
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityAppDetails;->C:Lcom/google/android/material/tabs/TabLayout;

    .line 88
    .line 89
    iget-object p2, v0, Lcom/yunpan/appmanage/ui/ActivityAppDetails;->D:Landroidx/viewpager2/widget/ViewPager2;

    .line 90
    .line 91
    invoke-virtual {p2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->f(I)Lp7/h;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object p1, p1, Lp7/h;->e:Lp7/k;

    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    sget p1, Lcom/yunpan/appmanage/ui/ActivityAppDetails;->E:I

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    :cond_3
    :goto_0
    return v2
.end method
