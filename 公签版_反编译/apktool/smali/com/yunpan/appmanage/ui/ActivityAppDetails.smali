.class public Lcom/yunpan/appmanage/ui/ActivityAppDetails;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic E:I


# instance fields
.field public C:Lcom/google/android/material/tabs/TabLayout;

.field public D:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/bumptech/glide/b;->a()V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e001e

    return v0
.end method

.method public final u()V
    .locals 8

    .line 1
    const v0, 0x7f0b054f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lha/g9;

    .line 9
    .line 10
    const/16 v2, 0x18

    .line 11
    .line 12
    invoke-direct {v1, v2, p0}, Lha/g9;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0b058a

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppDetails;->C:Lcom/google/android/material/tabs/TabLayout;

    .line 28
    .line 29
    const v0, 0x7f0b052f

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppDetails;->D:Landroidx/viewpager2/widget/ViewPager2;

    .line 39
    .line 40
    new-instance v0, Lx9/o;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lx9/o;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppDetails;)V

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    :goto_0
    const/4 v2, 0x4

    .line 47
    if-ge v1, v2, :cond_0

    .line 48
    .line 49
    new-instance v2, Lka/d;

    .line 50
    .line 51
    new-instance v3, Lma/b;

    .line 52
    .line 53
    const/4 v4, 0x5

    .line 54
    invoke-direct {v3, p0, v4, v0}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {v2, v1, v3}, Lka/d;-><init>(ILma/b;)V

    .line 58
    .line 59
    .line 60
    iget-object v3, v0, Lx9/o;->m:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppDetails;->D:Landroidx/viewpager2/widget/ViewPager2;

    .line 69
    .line 70
    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Landroidx/room/i;

    .line 74
    .line 75
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityAppDetails;->C:Lcom/google/android/material/tabs/TabLayout;

    .line 76
    .line 77
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityAppDetails;->D:Landroidx/viewpager2/widget/ViewPager2;

    .line 78
    .line 79
    new-instance v4, Ltb/v;

    .line 80
    .line 81
    const/16 v5, 0x15

    .line 82
    .line 83
    invoke-direct {v4, v5}, Ltb/v;-><init>(I)V

    .line 84
    .line 85
    .line 86
    invoke-direct {v1, v2, v3, v4}, Landroidx/room/i;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Ltb/v;)V

    .line 87
    .line 88
    .line 89
    iget-boolean v4, v1, Landroidx/room/i;->a:Z

    .line 90
    .line 91
    if-nez v4, :cond_3

    .line 92
    .line 93
    invoke-virtual {v3}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/m1;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    iput-object v4, v1, Landroidx/room/i;->d:Ljava/lang/Object;

    .line 98
    .line 99
    if-eqz v4, :cond_2

    .line 100
    .line 101
    const/4 v4, 0x1

    .line 102
    iput-boolean v4, v1, Landroidx/room/i;->a:Z

    .line 103
    .line 104
    new-instance v4, Lp7/m;

    .line 105
    .line 106
    invoke-direct {v4, v2}, Lp7/m;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    .line 107
    .line 108
    .line 109
    iget-object v5, v3, Landroidx/viewpager2/widget/ViewPager2;->c:Landroidx/viewpager2/adapter/c;

    .line 110
    .line 111
    iget-object v5, v5, Landroidx/viewpager2/adapter/c;->b:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v5, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    new-instance v4, Lp7/l;

    .line 119
    .line 120
    const/4 v5, 0x1

    .line 121
    invoke-direct {v4, v5, v3}, Lp7/l;-><init>(ILandroid/view/ViewGroup;)V

    .line 122
    .line 123
    .line 124
    iget-object v5, v2, Lcom/google/android/material/tabs/TabLayout;->N:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    if-nez v6, :cond_1

    .line 131
    .line 132
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    :cond_1
    new-instance v4, Landroidx/viewpager2/adapter/d;

    .line 136
    .line 137
    invoke-direct {v4, v1}, Landroidx/viewpager2/adapter/d;-><init>(Landroidx/room/i;)V

    .line 138
    .line 139
    .line 140
    iget-object v5, v1, Landroidx/room/i;->d:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v5, Landroidx/recyclerview/widget/m1;

    .line 143
    .line 144
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/m1;->o(Landroidx/recyclerview/widget/o1;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Landroidx/room/i;->g()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    const/4 v4, 0x0

    .line 155
    const/4 v5, 0x1

    .line 156
    const/4 v6, 0x1

    .line 157
    const/4 v7, 0x1

    .line 158
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/material/tabs/TabLayout;->l(IFZZZ)V

    .line 159
    .line 160
    .line 161
    const v1, 0x7f0b048d

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    new-instance v2, Lua/o;

    .line 169
    .line 170
    invoke-direct {v2, p0, v0}, Lua/o;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppDetails;Lx9/o;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 178
    .line 179
    const-string v1, "TabLayoutMediator attached before ViewPager2 has an adapter"

    .line 180
    .line 181
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw v0

    .line 185
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 186
    .line 187
    const-string v1, "TabLayoutMediator is already attached"

    .line 188
    .line 189
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :goto_1
    throw v0

    .line 194
    :goto_2
    goto :goto_1
.end method
