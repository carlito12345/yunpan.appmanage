.class public Lcom/yunpan/appmanage/ui/ActivityNissan;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic I:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public D:Lx9/k3;

.field public E:Landroid/content/ContentResolver;

.field public F:Lha/u9;

.field public final G:Lcom/yunpan/appmanage/carsdk/f;

.field public final H:Lua/x4;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/yunpan/appmanage/carsdk/f;

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    invoke-direct {v0, v1, p0}, Lcom/yunpan/appmanage/carsdk/f;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissan;->G:Lcom/yunpan/appmanage/carsdk/f;

    .line 11
    .line 12
    new-instance v0, Lua/x4;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lua/x4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissan;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissan;->H:Lua/x4;

    .line 18
    .line 19
    return-void
.end method

.method public static x(Lcom/yunpan/appmanage/ui/ActivityNissan;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 5
    .line 6
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string p0, "\u4e0d\u9002\u5408\u60a8\u7684\u7cfb\u7edf\uff0c\u8bf7\u52ff\u4e71\u7528"

    .line 17
    .line 18
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lha/h2;

    .line 23
    .line 24
    const/4 v1, 0x5

    .line 25
    invoke-direct {v0, p0, p1, v1}, Lha/h2;-><init>(Ljava/lang/Object;ZI)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Lmc/c;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-direct {p1, v1, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance v0, Lua/v4;

    .line 49
    .line 50
    const/4 v1, 0x5

    .line 51
    invoke-direct {v0, p0, v1}, Lua/v4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissan;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method public static y()I
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "P"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, 0x1

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return v0

    .line 20
    :catch_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method


# virtual methods
.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0045

    return v0
.end method

.method public final u()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissan;->E:Landroid/content/ContentResolver;

    .line 9
    .line 10
    const v1, 0x7f0b05ba

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/widget/TextView;

    .line 18
    .line 19
    const-string v2, "\u65e5\u4ea7\u98de\u601d\u5361\u5c14\u82af\u7247\uff0c\u7981\u6b62\u7528\u4e8e\u975e\u6cd5/\u5546\u4e1a\u7528\u9014\uff0c\u4ec5\u4f5c\u6280\u672f\u7814\u7a76"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lha/u9;

    .line 25
    .line 26
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 27
    .line 28
    invoke-direct {v1, p0, v2}, Lha/u9;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissan;->F:Lha/u9;

    .line 32
    .line 33
    const v1, 0x7f0b03ad

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 41
    .line 42
    new-instance v2, Lua/g1;

    .line 43
    .line 44
    const/16 v3, 0x14

    .line 45
    .line 46
    invoke-direct {v2, p0, v3}, Lua/g1;-><init>(Lda/g;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    const v1, 0x7f0b04f1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 60
    .line 61
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissan;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 62
    .line 63
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 64
    .line 65
    const/4 v3, 0x2

    .line 66
    invoke-direct {v2, p0, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 70
    .line 71
    .line 72
    new-instance v1, Lx9/k3;

    .line 73
    .line 74
    invoke-direct {v1}, Lx9/k3;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissan;->D:Lx9/k3;

    .line 78
    .line 79
    const v2, 0x7f0802e8

    .line 80
    .line 81
    .line 82
    const-string v3, "\u4e34\u65f6\u5f00\u542f\u65e0\u7ebfADB"

    .line 83
    .line 84
    invoke-static {v2, v3, v1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissan;->D:Lx9/k3;

    .line 88
    .line 89
    const-string v3, "\u6c38\u4e45\u5f00\u542f\u65e0\u7ebfADB(\u4e0d\u9002\u5408>=510\u7684\u7cfb\u7edf)"

    .line 90
    .line 91
    invoke-static {v2, v3, v1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissan;->D:Lx9/k3;

    .line 95
    .line 96
    const v2, 0x7f080214

    .line 97
    .line 98
    .line 99
    const-string v3, "\u5f00\u542fUSB\u8c03\u8bd5"

    .line 100
    .line 101
    invoke-static {v2, v3, v1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissan;->D:Lx9/k3;

    .line 105
    .line 106
    const-string v3, "\u5173\u95edUSB\u8c03\u8bd5"

    .line 107
    .line 108
    invoke-static {v2, v3, v1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissan;->D:Lx9/k3;

    .line 112
    .line 113
    const v2, 0x7f0802bf

    .line 114
    .line 115
    .line 116
    const-string v3, "adb\u4e34\u65f6\u63d0\u6743"

    .line 117
    .line 118
    invoke-static {v2, v3, v1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissan;->D:Lx9/k3;

    .line 122
    .line 123
    const-string v3, "\u9884\u7559"

    .line 124
    .line 125
    invoke-static {v2, v3, v1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissan;->D:Lx9/k3;

    .line 129
    .line 130
    const v2, 0x7f080224

    .line 131
    .line 132
    .line 133
    const-string v3, "\u4fee\u590d\u65b9\u5411\u76d8\u4e0d\u80fd\u8c03\u8282\u9ad8\u5fb7\u97f3\u91cf\u3001\u5927\u706f\u8054\u52a8"

    .line 134
    .line 135
    invoke-static {v2, v3, v1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissan;->D:Lx9/k3;

    .line 139
    .line 140
    const-string v3, "\u4fee\u590d\u65b9\u5411\u76d8\u4e0d\u80fd\u8c03\u8282\u9ad8\u5fb7\u97f3\u91cf(\u4e8c)"

    .line 141
    .line 142
    invoke-static {v2, v3, v1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 143
    .line 144
    .line 145
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissan;->D:Lx9/k3;

    .line 146
    .line 147
    const v2, 0x7f0802f1

    .line 148
    .line 149
    .line 150
    const-string v3, "\u4fee\u590d\u56e0\u4f7f\u7528360\u5de5\u5177\u7bb1\u5bfc\u81f4\u8f66\u673a\u9694\u4e00\u6bb5\u65f6\u95f4\u5c31\u4f1a\u9ed1\u5c4f"

    .line 151
    .line 152
    invoke-static {v2, v3, v1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 153
    .line 154
    .line 155
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissan;->D:Lx9/k3;

    .line 156
    .line 157
    new-instance v2, Lx9/l3;

    .line 158
    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    const-string v4, "\u5347\u7ea7\u8bed\u97f3\u8bc6\u522b\uff1a\u53ef\u8bed\u97f3\u6253\u5f00"

    .line 162
    .line 163
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    sget-object v4, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 167
    .line 168
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 169
    .line 170
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->c:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    const v4, 0x7f0802e1

    .line 180
    .line 181
    .line 182
    invoke-direct {v2, v4, v3}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissan;->D:Lx9/k3;

    .line 189
    .line 190
    const v2, 0x7f08029d

    .line 191
    .line 192
    .line 193
    const-string v3, "\u65e5\u4ea7sdk\u529f\u80fd\u6d4b\u8bd5"

    .line 194
    .line 195
    invoke-static {v2, v3, v1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 196
    .line 197
    .line 198
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissan;->D:Lx9/k3;

    .line 199
    .line 200
    const-string v3, "\u65e5\u4ea7sdk\u56de\u8c03\u76d1\u542c1"

    .line 201
    .line 202
    invoke-static {v2, v3, v1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 203
    .line 204
    .line 205
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissan;->D:Lx9/k3;

    .line 206
    .line 207
    const-string v3, "\u65e5\u4ea7sdk\u56de\u8c03\u76d1\u542c2"

    .line 208
    .line 209
    invoke-static {v2, v3, v1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 210
    .line 211
    .line 212
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissan;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 213
    .line 214
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityNissan;->D:Lx9/k3;

    .line 215
    .line 216
    invoke-virtual {v1, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 217
    .line 218
    .line 219
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissan;->D:Lx9/k3;

    .line 220
    .line 221
    new-instance v2, Lua/u4;

    .line 222
    .line 223
    invoke-direct {v2, p0, v0}, Lua/u4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissan;I)V

    .line 224
    .line 225
    .line 226
    iput-object v2, v1, Lc6/g;->e:Lc6/e;

    .line 227
    .line 228
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 229
    .line 230
    invoke-static {v1}, Lpa/e;->b(Landroid/content/Context;)Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-nez v1, :cond_0

    .line 235
    .line 236
    const-string v1, "\u4e0d\u662f\u65e5\u4ea7\u8f66\u673a\uff0c\u4e0d\u8981\u4f7f\u7528\u6b64\u529f\u80fd"

    .line 237
    .line 238
    invoke-static {v1, v0}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 239
    .line 240
    .line 241
    :cond_0
    return-void
.end method
