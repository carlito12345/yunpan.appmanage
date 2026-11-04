.class public Lcom/yunpan/appmanage/ui/ActivityAutoClickUsbSet;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic E:I


# instance fields
.field public C:Lx9/o3;

.field public D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;


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
.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0029

    return v0
.end method

.method public final u()V
    .locals 10

    .line 1
    const v0, 0x7f0b03ad

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
    const/16 v2, 0x1d

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
    const v0, 0x7f0b0361

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/ImageView;

    .line 26
    .line 27
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 28
    .line 29
    iget-boolean v1, v1, Lwa/u;->W:Z

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const v1, 0x7f080234

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const v1, 0x7f080237

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    .line 42
    .line 43
    const v1, 0x7f0b035f

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 51
    .line 52
    new-instance v2, Lc6/c;

    .line 53
    .line 54
    const/16 v3, 0x1b

    .line 55
    .line 56
    invoke-direct {v2, p0, v3, v0}, Lc6/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    const v0, 0x7f0b04f4

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAutoClickUsbSet;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 72
    .line 73
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 74
    .line 75
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 76
    .line 77
    const/4 v3, 0x6

    .line 78
    invoke-direct {v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 82
    .line 83
    .line 84
    new-instance v0, Lx9/o3;

    .line 85
    .line 86
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 87
    .line 88
    invoke-direct {v0, v1}, Lx9/o3;-><init>(Lda/g;)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAutoClickUsbSet;->C:Lx9/o3;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAutoClickUsbSet;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAutoClickUsbSet;->C:Lx9/o3;

    .line 99
    .line 100
    new-instance v1, Lph/j;

    .line 101
    .line 102
    const/16 v2, 0xd

    .line 103
    .line 104
    invoke-direct {v1, v2, p0}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 108
    .line 109
    new-instance v0, Landroid/content/Intent;

    .line 110
    .line 111
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 112
    .line 113
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 117
    .line 118
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    const/high16 v2, 0x20000

    .line 123
    .line 124
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_2

    .line 137
    .line 138
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 143
    .line 144
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 145
    .line 146
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 147
    .line 148
    invoke-static {v1}, Landroid/support/v4/media/session/a;->k(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    if-nez v1, :cond_1

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 156
    .line 157
    sget-object v3, Lwa/t;->a:Lwa/u;

    .line 158
    .line 159
    iget-object v4, v3, Lwa/u;->X:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityAutoClickUsbSet;->C:Lx9/o3;

    .line 165
    .line 166
    new-instance v4, Lx9/n3;

    .line 167
    .line 168
    iget-object v5, v1, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 169
    .line 170
    iget-object v6, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 171
    .line 172
    iget-boolean v7, v1, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 173
    .line 174
    iget-object v3, v3, Lwa/u;->X:Ljava/lang/String;

    .line 175
    .line 176
    new-instance v8, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string v9, ","

    .line 179
    .line 180
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget-object v1, v1, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 184
    .line 185
    invoke-static {v8, v1, v9, v3}, Landroid/support/v4/media/session/a;->D(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    invoke-direct {v4, v5, v6, v7, v1}, Lx9/n3;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_2
    return-void
.end method
