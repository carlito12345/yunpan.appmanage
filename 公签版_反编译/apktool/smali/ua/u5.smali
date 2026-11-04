.class public final synthetic Lua/u5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityPs;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityPs;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/u5;->a:I

    iput-object p1, p0, Lua/u5;->b:Lcom/yunpan/appmanage/ui/ActivityPs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    const-string p1, "\u5df2\u91cd\u65b0\u6392\u5e8f"

    .line 2
    .line 3
    iget-object v0, p0, Lua/u5;->b:Lcom/yunpan/appmanage/ui/ActivityPs;

    .line 4
    .line 5
    iget v1, p0, Lua/u5;->a:I

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityPs;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityPs;->D:Lx9/g4;

    .line 16
    .line 17
    new-instance v2, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v1, v0, Lcom/yunpan/appmanage/ui/ActivityPs;->G:Z

    .line 26
    .line 27
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityPs;->F:Ljava/util/ArrayList;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityPs;->E:Ljava/util/ArrayList;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v1, v2

    .line 35
    :goto_0
    new-instance v3, Lqa/e;

    .line 36
    .line 37
    const/16 v4, 0x15

    .line 38
    .line 39
    invoke-direct {v3, v4}, Lqa/e;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityPs;->D:Lx9/g4;

    .line 46
    .line 47
    iget-boolean v3, v0, Lcom/yunpan/appmanage/ui/ActivityPs;->G:Z

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityPs;->E:Ljava/util/ArrayList;

    .line 52
    .line 53
    :cond_1
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_0
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityPs;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityPs;->D:Lx9/g4;

    .line 66
    .line 67
    new-instance v2, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 73
    .line 74
    .line 75
    iget-boolean v1, v0, Lcom/yunpan/appmanage/ui/ActivityPs;->G:Z

    .line 76
    .line 77
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityPs;->F:Ljava/util/ArrayList;

    .line 78
    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityPs;->E:Ljava/util/ArrayList;

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    move-object v1, v2

    .line 85
    :goto_1
    new-instance v3, Lqa/e;

    .line 86
    .line 87
    const/16 v4, 0x14

    .line 88
    .line 89
    invoke-direct {v3, v4}, Lqa/e;-><init>(I)V

    .line 90
    .line 91
    .line 92
    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 93
    .line 94
    .line 95
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityPs;->D:Lx9/g4;

    .line 96
    .line 97
    iget-boolean v3, v0, Lcom/yunpan/appmanage/ui/ActivityPs;->G:Z

    .line 98
    .line 99
    if-eqz v3, :cond_3

    .line 100
    .line 101
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityPs;->E:Ljava/util/ArrayList;

    .line 102
    .line 103
    :cond_3
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 104
    .line 105
    .line 106
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :pswitch_1
    sget p1, Lcom/yunpan/appmanage/ui/ActivityPs;->L:I

    .line 111
    .line 112
    iget-object v2, p0, Lua/u5;->b:Lcom/yunpan/appmanage/ui/ActivityPs;

    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    new-instance p1, Lha/z6;

    .line 118
    .line 119
    iget-object v0, v2, Lda/g;->A:Lda/g;

    .line 120
    .line 121
    invoke-virtual {v0}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const v1, 0x7f130026

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    new-instance v7, Ls9/a;

    .line 133
    .line 134
    const/16 v0, 0xc

    .line 135
    .line 136
    const/4 v1, 0x0

    .line 137
    invoke-direct {v7, v0, v1}, Ls9/a;-><init>(IZ)V

    .line 138
    .line 139
    .line 140
    const-string v6, ""

    .line 141
    .line 142
    const/4 v8, 0x0

    .line 143
    const-string v4, ""

    .line 144
    .line 145
    const-string v5, "\u660e\u767d\u4e86"

    .line 146
    .line 147
    move-object v0, p1

    .line 148
    move-object v1, v2

    .line 149
    invoke-direct/range {v0 .. v8}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :pswitch_2
    sget p1, Lcom/yunpan/appmanage/ui/ActivityPs;->L:I

    .line 157
    .line 158
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    nop

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
