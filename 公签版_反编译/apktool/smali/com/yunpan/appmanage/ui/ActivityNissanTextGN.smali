.class public Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic F:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public D:Lx9/k3;

.field public E:Lcom/hsae/autosdk/settings/IAutoSettings;


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
    const v0, 0x7f0e0045

    return v0
.end method

.method public final u()V
    .locals 3

    .line 1
    const-string v0, "\u6b64\u529f\u80fd\u4e0d\u9002\u5408\u60a8\u7684\u8bbe\u5907"

    .line 2
    .line 3
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    :try_start_0
    const-string v1, "com.hsae.auto.IBINDER_SETTINGS"

    .line 9
    .line 10
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/hsae/autosdk/settings/IAutoSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/settings/IAutoSettings;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->E:Lcom/hsae/autosdk/settings/IAutoSettings;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const v0, 0x7f0b05ba

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/TextView;

    .line 37
    .line 38
    const-string v1, "\u65e5\u4ea7\u8f66\u673a\u529f\u80fd\u6d4b\u8bd5"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lha/u9;

    .line 44
    .line 45
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 46
    .line 47
    invoke-direct {v0, p0, v1}, Lha/u9;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    const v0, 0x7f0b03ad

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 58
    .line 59
    new-instance v1, Lua/g1;

    .line 60
    .line 61
    const/16 v2, 0x15

    .line 62
    .line 63
    invoke-direct {v1, p0, v2}, Lua/g1;-><init>(Lda/g;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    .line 68
    .line 69
    const v0, 0x7f0b04f1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 77
    .line 78
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 79
    .line 80
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 81
    .line 82
    const/4 v2, 0x2

    .line 83
    invoke-direct {v1, p0, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 87
    .line 88
    .line 89
    new-instance v0, Lx9/k3;

    .line 90
    .line 91
    invoke-direct {v0}, Lx9/k3;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->D:Lx9/k3;

    .line 95
    .line 96
    const v1, 0x7f0802bf

    .line 97
    .line 98
    .line 99
    const-string v2, "\u4f4e\u97f3\u8c03\u8282"

    .line 100
    .line 101
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->D:Lx9/k3;

    .line 105
    .line 106
    const-string v2, "\u9ad8\u97f3\u8c03\u8282"

    .line 107
    .line 108
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->D:Lx9/k3;

    .line 112
    .line 113
    const-string v2, "\u4f4e\u97f3\u504f\u79fb\u91cf(\u6d4b\u8bd5)"

    .line 114
    .line 115
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->D:Lx9/k3;

    .line 119
    .line 120
    const-string v2, "\u9ad8\u97f3\u504f\u79fb\u91cf(\u6d4b\u8bd5)"

    .line 121
    .line 122
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->D:Lx9/k3;

    .line 126
    .line 127
    const-string v2, "\u589e\u5f3a\u97f3\u54cd(\u5f00\u542f/\u5173\u95ed)"

    .line 128
    .line 129
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->D:Lx9/k3;

    .line 133
    .line 134
    const-string v2, "\u4fee\u6539\u7cfb\u7edf\u97f3\u91cf"

    .line 135
    .line 136
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->D:Lx9/k3;

    .line 140
    .line 141
    const-string v2, "\u4fee\u6539\u5bfc\u822a\u97f3\u91cf"

    .line 142
    .line 143
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->D:Lx9/k3;

    .line 147
    .line 148
    const-string v2, "\u84dd\u7259\u7535\u8bdd\u97f3\u91cf"

    .line 149
    .line 150
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->D:Lx9/k3;

    .line 154
    .line 155
    const-string v2, "\u5173\u95ed\u5c4f\u5e55"

    .line 156
    .line 157
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->D:Lx9/k3;

    .line 161
    .line 162
    const-string v2, "\u5173\u95ed\u7535\u6e90"

    .line 163
    .line 164
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->D:Lx9/k3;

    .line 168
    .line 169
    const-string v2, "\u9759\u97f3(\u7cfb\u7edf)"

    .line 170
    .line 171
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->D:Lx9/k3;

    .line 175
    .line 176
    const-string v2, "\u9759\u97f3(\u5bfc\u822a)"

    .line 177
    .line 178
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->D:Lx9/k3;

    .line 182
    .line 183
    const-string v2, "\u9759\u97f3(\u9ea6\u514b\u98ce)"

    .line 184
    .line 185
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->D:Lx9/k3;

    .line 189
    .line 190
    const-string v2, "\u8f66\u901f\u611f\u5e94\u7ea7\u522b"

    .line 191
    .line 192
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 196
    .line 197
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->D:Lx9/k3;

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->D:Lx9/k3;

    .line 203
    .line 204
    new-instance v1, Lua/y4;

    .line 205
    .line 206
    const/4 v2, 0x0

    .line 207
    invoke-direct {v1, p0, v2}, Lua/y4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;I)V

    .line 208
    .line 209
    .line 210
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 211
    .line 212
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 213
    .line 214
    invoke-static {v0}, Lpa/e;->b(Landroid/content/Context;)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-nez v0, :cond_1

    .line 219
    .line 220
    const-string v0, "\u4e0d\u662f\u65e5\u4ea7\u8f66\u673a\uff0c\u65e0\u6cd5\u4f7f\u7528\u6b64\u529f\u80fd"

    .line 221
    .line 222
    const/4 v1, 0x0

    .line 223
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 224
    .line 225
    .line 226
    :cond_1
    return-void

    .line 227
    :catch_0
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 231
    .line 232
    .line 233
    return-void
.end method
