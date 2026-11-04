.class public final synthetic Lua/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;
.implements Lea/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityFloatButton;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityFloatButton;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/w1;->a:I

    iput-object p1, p0, Lua/w1;->b:Lcom/yunpan/appmanage/ui/ActivityFloatButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public k(Lz7/s;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/w1;->b:Lcom/yunpan/appmanage/ui/ActivityFloatButton;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->K:Lx9/t2;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 9
    .line 10
    iget v2, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->D:I

    .line 11
    .line 12
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, p1}, Lz7/o;->k(Lz7/p;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, v0, Lda/g;->A:Lda/g;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->C:Lz7/s;

    .line 26
    .line 27
    invoke-static {p1, v0}, Lq4/a;->O(Landroid/content/Context;Lz7/s;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onInBorderKeyEvent(ILandroid/view/View;)Z
    .locals 3

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    iget-object v1, p0, Lua/w1;->b:Lcom/yunpan/appmanage/ui/ActivityFloatButton;

    .line 4
    .line 5
    iget v2, p0, Lua/w1;->a:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    const/16 v2, 0x42

    .line 11
    .line 12
    if-ne p1, v2, :cond_1

    .line 13
    .line 14
    iget-object p1, v1, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->K:Lx9/t2;

    .line 15
    .line 16
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-lez p1, :cond_0

    .line 21
    .line 22
    iget-object p1, v1, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->I:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, v1, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 29
    .line 30
    const/4 p2, 0x2

    .line 31
    invoke-virtual {p1, p2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelectionWithSmooth(I)V

    .line 32
    .line 33
    .line 34
    :goto_0
    const/4 p2, 0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    sget p1, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->N:I

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    :goto_1
    return p2

    .line 42
    :pswitch_0
    const/16 v2, 0x82

    .line 43
    .line 44
    if-ne p1, v2, :cond_3

    .line 45
    .line 46
    iget-object p1, v1, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->H:Lx9/u0;

    .line 47
    .line 48
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-lez p1, :cond_2

    .line 53
    .line 54
    iget-object p1, v1, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->G:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 57
    .line 58
    .line 59
    :cond_2
    const/4 p2, 0x1

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    sget p1, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->N:I

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    :goto_2
    return p2

    .line 67
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 9

    .line 1
    iget-object p1, p0, Lua/w1;->b:Lcom/yunpan/appmanage/ui/ActivityFloatButton;

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x2

    .line 6
    iget v2, p0, Lua/w1;->a:I

    .line 7
    .line 8
    packed-switch v2, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v4, p0, Lua/w1;->b:Lcom/yunpan/appmanage/ui/ActivityFloatButton;

    .line 12
    .line 13
    iget-object p1, v4, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->K:Lx9/t2;

    .line 14
    .line 15
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lz7/s;

    .line 20
    .line 21
    iget-object v2, v2, Lz7/s;->a:Lb8/n;

    .line 22
    .line 23
    const-string v3, "gnType"

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lz7/s;

    .line 36
    .line 37
    invoke-virtual {p1, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lz7/p;->e()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    const/4 v2, 0x3

    .line 46
    if-ne p1, v2, :cond_1

    .line 47
    .line 48
    new-instance p1, Lha/fa;

    .line 49
    .line 50
    iget-object v5, v4, Lda/g;->A:Lda/g;

    .line 51
    .line 52
    new-array v2, v1, [Ljava/lang/String;

    .line 53
    .line 54
    const-string v3, "\u5220\u9664"

    .line 55
    .line 56
    aput-object v3, v2, v0

    .line 57
    .line 58
    const-string v3, "\u7f16\u8f91"

    .line 59
    .line 60
    aput-object v3, v2, p2

    .line 61
    .line 62
    new-instance v3, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    .line 66
    .line 67
    :goto_0
    if-ge v0, v1, :cond_0

    .line 68
    .line 69
    aget-object v6, v2, v0

    .line 70
    .line 71
    invoke-static {v6, v3, v6, v0, p2}, Lg/b;->c(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;II)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    new-instance v8, Lua/x1;

    .line 81
    .line 82
    invoke-direct {v8, v4, p3}, Lua/x1;-><init>(Lcom/yunpan/appmanage/ui/ActivityFloatButton;I)V

    .line 83
    .line 84
    .line 85
    const/4 v6, 0x0

    .line 86
    move-object v3, p1

    .line 87
    invoke-direct/range {v3 .. v8}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    invoke-virtual {v4, p3}, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->x(I)V

    .line 95
    .line 96
    .line 97
    :goto_1
    return-void

    .line 98
    :pswitch_0
    sget p2, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->N:I

    .line 99
    .line 100
    invoke-virtual {p1, p3}, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->y(I)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :pswitch_1
    sget v2, Lcom/yunpan/appmanage/ui/ActivityFloatButton;->N:I

    .line 105
    .line 106
    if-nez p3, :cond_2

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_2
    if-ne p3, p2, :cond_3

    .line 113
    .line 114
    const-class p2, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;

    .line 115
    .line 116
    invoke-virtual {p1, p2}, Lda/g;->w(Ljava/lang/Class;)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_3
    if-ne p3, v1, :cond_4

    .line 121
    .line 122
    iget-object p2, p1, Lda/g;->A:Lda/g;

    .line 123
    .line 124
    new-instance p3, Lua/w1;

    .line 125
    .line 126
    const/4 v1, 0x5

    .line 127
    invoke-direct {p3, p1, v1}, Lua/w1;-><init>(Lcom/yunpan/appmanage/ui/ActivityFloatButton;I)V

    .line 128
    .line 129
    .line 130
    const/4 v1, -0x1

    .line 131
    invoke-static {p1, p2, v1, v0, p3}, Lha/t8;->a(Landroid/app/Activity;Landroid/content/Context;IZLea/e;)V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    :goto_2
    return-void

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
