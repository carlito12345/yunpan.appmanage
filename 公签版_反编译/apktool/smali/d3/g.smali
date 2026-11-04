.class public final Ld3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/g0;
.implements Lt5/a;
.implements Lha/wd;
.implements Lha/d9;
.implements Lha/w7;
.implements Lha/y6;
.implements Ly0/a0;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(BI)V
    .locals 0

    iput p2, p0, Ld3/g;->a:I

    packed-switch p2, :pswitch_data_0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Lu1/q;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lu1/q;-><init>(I)V

    iput-object p1, p0, Ld3/g;->c:Ljava/lang/Object;

    return-void

    .line 5
    :pswitch_0
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Ld3/g;->c:Ljava/lang/Object;

    const/16 p1, 0x64

    .line 8
    iput p1, p0, Ld3/g;->b:I

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(II)V
    .locals 4

    iput p2, p0, Ld3/g;->a:I

    packed-switch p2, :pswitch_data_0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_2

    .line 15
    iput p1, p0, Ld3/g;->b:I

    const p2, 0x3ffff

    add-int/2addr p2, p1

    const/high16 v0, 0x40000

    .line 16
    div-int/2addr p2, v0

    .line 17
    new-array v1, p2, [[F

    iput-object v1, p0, Ld3/g;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    add-int/lit8 v2, p2, -0x1

    if-ne v1, v2, :cond_0

    mul-int v2, v2, v0

    sub-int v2, p1, v2

    goto :goto_1

    :cond_0
    const/high16 v2, 0x40000

    .line 18
    :goto_1
    iget-object v3, p0, Ld3/g;->c:Ljava/lang/Object;

    check-cast v3, [[F

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [F

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 19
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid size: "

    .line 20
    invoke-static {p1, v0}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 22
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance p2, Lb5/e;

    invoke-direct {p2, p1}, Lb5/e;-><init>(I)V

    iput-object p2, p0, Ld3/g;->c:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Ld3/g;->a:I

    iput-object p3, p0, Ld3/g;->c:Ljava/lang/Object;

    iput p1, p0, Ld3/g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(II[Ljava/lang/Object;)V
    .locals 0

    .line 2
    iput p2, p0, Ld3/g;->a:I

    iput p1, p0, Ld3/g;->b:I

    iput-object p3, p0, Ld3/g;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ld3/g;->a:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Ld3/g;->b:I

    if-eqz p2, :cond_1

    .line 11
    sget-object p1, Lx7/a;->c:Lx7/a;

    .line 12
    array-length p1, p2

    if-nez p1, :cond_0

    sget-object p1, Lx7/a;->c:Lx7/a;

    goto :goto_0

    :cond_0
    new-instance p1, Lx7/a;

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p2

    invoke-direct {p1, p2}, Lx7/a;-><init>([I)V

    goto :goto_0

    .line 13
    :cond_1
    sget-object p1, Lx7/a;->c:Lx7/a;

    :goto_0
    iput-object p1, p0, Ld3/g;->c:Ljava/lang/Object;

    return-void
.end method

.method private final h()V
    .locals 0

    .line 1
    return-void
.end method

.method private final i()V
    .locals 0

    .line 1
    return-void
.end method

.method private final j()V
    .locals 0

    .line 1
    return-void
.end method

.method private final k()V
    .locals 0

    .line 1
    return-void
.end method

.method private final l()V
    .locals 0

    .line 1
    return-void
.end method

.method private final m()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public D()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Ld3/g;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget v3, p0, Ld3/g;->a:I

    .line 6
    .line 7
    sparse-switch v3, :sswitch_data_0

    .line 8
    .line 9
    .line 10
    iget v0, p0, Ld3/g;->b:I

    .line 11
    .line 12
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityRunMemory;

    .line 13
    .line 14
    invoke-static {v2, v0, v1}, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->y(Lcom/yunpan/appmanage/ui/ActivityRunMemory;IZ)V

    .line 15
    .line 16
    .line 17
    :sswitch_0
    return-void

    .line 18
    :sswitch_1
    sget v1, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;->G:I

    .line 19
    .line 20
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v1, Lha/o;

    .line 26
    .line 27
    iget v3, p0, Ld3/g;->b:I

    .line 28
    .line 29
    const/16 v4, 0xf

    .line 30
    .line 31
    invoke-direct {v1, v3, v4, v2}, Lha/o;-><init>(IILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    new-instance v4, Lmc/c;

    .line 35
    .line 36
    invoke-direct {v4, v0, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 40
    .line 41
    invoke-virtual {v4, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Lha/s2;

    .line 54
    .line 55
    const/4 v4, 0x6

    .line 56
    invoke-direct {v1, v3, v4, v2}, Lha/s2;-><init>(IILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :sswitch_2
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 64
    .line 65
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityDownload;->V:Lx9/t5;

    .line 66
    .line 67
    iget v3, p0, Ld3/g;->b:I

    .line 68
    .line 69
    invoke-virtual {v0, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lx9/u5;

    .line 74
    .line 75
    iget-object v0, v0, Lx9/u5;->c:Ljava/lang/String;

    .line 76
    .line 77
    const-string v4, "\u4e0b\u8f7d\u4e2d"

    .line 78
    .line 79
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    .line 85
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityDownload;->V:Lx9/t5;

    .line 86
    .line 87
    invoke-virtual {v0, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lx9/u5;

    .line 92
    .line 93
    iput-boolean v1, v0, Lx9/u5;->i:Z

    .line 94
    .line 95
    :cond_0
    return-void

    .line 96
    :sswitch_3
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityAppShowAppOpen;

    .line 97
    .line 98
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityAppShowAppOpen;->F:Lx9/z4;

    .line 99
    .line 100
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-ne v0, v1, :cond_1

    .line 105
    .line 106
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityAppShowAppOpen;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 109
    .line 110
    .line 111
    :cond_1
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityAppShowAppOpen;->F:Lx9/z4;

    .line 112
    .line 113
    iget v1, p0, Ld3/g;->b:I

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Lc6/g;->C(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/yunpan/appmanage/ui/ActivityAppShowAppOpen;->x()V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :sswitch_4
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;

    .line 123
    .line 124
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;->F:Lx9/z4;

    .line 125
    .line 126
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-ne v0, v1, :cond_2

    .line 131
    .line 132
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 133
    .line 134
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 135
    .line 136
    .line 137
    :cond_2
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;->F:Lx9/z4;

    .line 138
    .line 139
    iget v1, p0, Ld3/g;->b:I

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Lc6/g;->C(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;->x()V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :sswitch_5
    sget v1, Lcom/yunpan/appmanage/ui/ActivityAccessibility;->G:I

    .line 149
    .line 150
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityAccessibility;

    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    new-instance v1, Lha/o;

    .line 156
    .line 157
    iget v3, p0, Ld3/g;->b:I

    .line 158
    .line 159
    const/4 v4, 0x7

    .line 160
    invoke-direct {v1, v3, v4, v2}, Lha/o;-><init>(IILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    new-instance v4, Lmc/c;

    .line 164
    .line 165
    invoke-direct {v4, v0, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 169
    .line 170
    invoke-virtual {v4, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    new-instance v1, Lha/s2;

    .line 183
    .line 184
    const/4 v4, 0x2

    .line 185
    invoke-direct {v1, v3, v4, v2}, Lha/s2;-><init>(IILjava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    nop

    .line 193
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_5
        0x8 -> :sswitch_4
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0x11 -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Lz7/s;)V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    const-string v1, "maps"

    .line 3
    .line 4
    iget-object v2, p0, Ld3/g;->c:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;

    .line 7
    .line 8
    iget v3, p0, Ld3/g;->b:I

    .line 9
    .line 10
    if-ne v3, v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->F:Lx9/s2;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->H:Lz7/s;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Lz7/o;->k(Lz7/p;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->F:Lx9/s2;

    .line 28
    .line 29
    invoke-virtual {v0, v3, p1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->H:Lz7/s;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, v3, p1}, Lz7/o;->o(ILz7/p;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    sget p1, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->K:I

    .line 42
    .line 43
    iget-object p1, v2, Lda/g;->A:Lda/g;

    .line 44
    .line 45
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->H:Lz7/s;

    .line 46
    .line 47
    invoke-static {p1, v0}, Lq4/a;->R(Landroid/content/Context;Lz7/s;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, v2, Lda/g;->A:Lda/g;

    .line 51
    .line 52
    const-string v0, "UP_INIT_AIONY"

    .line 53
    .line 54
    invoke-static {p1, v0}, Lta/m;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->L:I

    .line 2
    .line 3
    iget-object v0, p0, Ld3/g;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->z()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public c(Lh5/z;Lf5/i;)Lh5/z;
    .locals 3

    .line 1
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lh5/z;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/graphics/Bitmap;

    .line 11
    .line 12
    iget-object v1, p0, Ld3/g;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Landroid/graphics/Bitmap$CompressFormat;

    .line 15
    .line 16
    iget v2, p0, Ld3/g;->b:I

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Lh5/z;->recycle()V

    .line 22
    .line 23
    .line 24
    new-instance p1, Lo5/a0;

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-direct {p1, p2}, Lo5/a0;-><init>([B)V

    .line 31
    .line 32
    .line 33
    return-object p1
.end method

.method public d(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Ld3/g;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 4
    .line 5
    iget v0, p0, Ld3/g;->b:I

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B(I)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1
.end method

.method public delete()V
    .locals 4

    .line 1
    iget v0, p0, Ld3/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iget v1, p0, Ld3/g;->b:I

    .line 8
    .line 9
    if-eq v1, v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Ld3/g;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;

    .line 14
    .line 15
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->F:Lx9/s2;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Lc6/g;->C(I)V

    .line 18
    .line 19
    .line 20
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->H:Lz7/s;

    .line 21
    .line 22
    const-string v3, "maps"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, v1}, Lz7/o;->n(I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lda/g;->A:Lda/g;

    .line 32
    .line 33
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->H:Lz7/s;

    .line 34
    .line 35
    invoke-static {v1, v2}, Lq4/a;->R(Landroid/content/Context;Lz7/s;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lda/g;->A:Lda/g;

    .line 39
    .line 40
    const-string v1, "UP_INIT_AIONY"

    .line 41
    .line 42
    invoke-static {v0, v1}, Lta/m;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void

    .line 46
    :pswitch_0
    const/4 v0, -0x1

    .line 47
    iget v1, p0, Ld3/g;->b:I

    .line 48
    .line 49
    if-ne v1, v0, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Ld3/g;->c:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;

    .line 55
    .line 56
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->F:Lx9/s2;

    .line 57
    .line 58
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    const/4 v3, 0x1

    .line 63
    if-ne v2, v3, :cond_2

    .line 64
    .line 65
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->F:Lx9/s2;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lc6/g;->C(I)V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public e(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld3/g;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lb5/e;

    .line 4
    .line 5
    iget v1, v0, Lb5/e;->c:I

    .line 6
    .line 7
    if-lt p1, v1, :cond_0

    .line 8
    .line 9
    sub-int v1, p1, v1

    .line 10
    .line 11
    :goto_0
    if-ltz v1, :cond_0

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    invoke-virtual {v0, v2}, Lb5/e;->d(I)V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0, p1, p2}, Lb5/e;->f(II)V

    .line 21
    .line 22
    .line 23
    iget p1, p0, Ld3/g;->b:I

    .line 24
    .line 25
    add-int/lit8 p2, p2, 0x1

    .line 26
    .line 27
    if-ge p1, p2, :cond_1

    .line 28
    .line 29
    iput p2, p0, Ld3/g;->b:I

    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public f(Landroid/view/MotionEvent;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ld3/g;->b:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, v0, Ld3/g;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v4, Ltb/u;

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    iget-object v1, v4, Ltb/u;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 16
    .line 17
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getInsertHandleDescriptor()Lcc/d;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v1, v4, Ltb/u;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 23
    .line 24
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRightHandleDescriptor()Lcc/d;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v1, v4, Ltb/u;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 30
    .line 31
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLeftHandleDescriptor()Lcc/d;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :goto_0
    iget v5, v0, Ld3/g;->b:I

    .line 36
    .line 37
    if-ne v5, v3, :cond_2

    .line 38
    .line 39
    iget-object v5, v4, Ltb/u;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 40
    .line 41
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRightHandleDescriptor()Lcc/d;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iget-object v5, v4, Ltb/u;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 47
    .line 48
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLeftHandleDescriptor()Lcc/d;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    :goto_1
    iget-object v6, v4, Ltb/u;->b:Ltb/m;

    .line 53
    .line 54
    iget-object v6, v6, Ltb/m;->b:Landroid/widget/OverScroller;

    .line 55
    .line 56
    invoke-virtual {v6}, Landroid/widget/OverScroller;->getCurrX()I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    int-to-float v6, v6

    .line 61
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    add-float/2addr v7, v6

    .line 66
    iget v6, v1, Lcc/d;->b:I

    .line 67
    .line 68
    iget-object v8, v1, Lcc/d;->a:Landroid/graphics/RectF;

    .line 69
    .line 70
    const/4 v9, 0x0

    .line 71
    if-eqz v6, :cond_3

    .line 72
    .line 73
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    goto :goto_2

    .line 78
    :cond_3
    const/4 v6, 0x0

    .line 79
    :goto_2
    iget v1, v1, Lcc/d;->b:I

    .line 80
    .line 81
    if-ne v1, v3, :cond_4

    .line 82
    .line 83
    const/4 v1, 0x1

    .line 84
    goto :goto_3

    .line 85
    :cond_4
    const/4 v1, -0x1

    .line 86
    :goto_3
    int-to-float v1, v1

    .line 87
    mul-float v6, v6, v1

    .line 88
    .line 89
    add-float/2addr v6, v7

    .line 90
    iget-object v1, v4, Ltb/u;->b:Ltb/m;

    .line 91
    .line 92
    iget-object v1, v1, Ltb/m;->b:Landroid/widget/OverScroller;

    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    int-to-float v1, v1

    .line 99
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    add-float/2addr v7, v1

    .line 104
    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    sub-float/2addr v7, v1

    .line 109
    iget-object v1, v4, Ltb/u;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 110
    .line 111
    invoke-virtual {v1, v9, v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->H(FF)J

    .line 112
    .line 113
    .line 114
    move-result-wide v9

    .line 115
    const/16 v11, 0x20

    .line 116
    .line 117
    shr-long/2addr v9, v11

    .line 118
    long-to-int v14, v9

    .line 119
    if-ltz v14, :cond_12

    .line 120
    .line 121
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineCount()I

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    if-ge v14, v9, :cond_12

    .line 126
    .line 127
    invoke-virtual {v1, v6, v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->H(FF)J

    .line 128
    .line 129
    .line 130
    move-result-wide v6

    .line 131
    const-wide v9, 0xffffffffL

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    and-long/2addr v6, v9

    .line 137
    long-to-int v15, v6

    .line 138
    iget v6, v0, Ld3/g;->b:I

    .line 139
    .line 140
    if-ne v6, v2, :cond_5

    .line 141
    .line 142
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    iget-object v6, v6, Lmb/j;->d:Lmb/b;

    .line 147
    .line 148
    iget v6, v6, Lmb/b;->b:I

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_5
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    iget-object v6, v6, Lmb/j;->c:Lmb/b;

    .line 156
    .line 157
    iget v6, v6, Lmb/b;->b:I

    .line 158
    .line 159
    :goto_4
    iget v7, v0, Ld3/g;->b:I

    .line 160
    .line 161
    if-ne v7, v2, :cond_6

    .line 162
    .line 163
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    iget-object v7, v7, Lmb/j;->d:Lmb/b;

    .line 168
    .line 169
    iget v7, v7, Lmb/b;->c:I

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_6
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    iget-object v7, v7, Lmb/j;->c:Lmb/b;

    .line 177
    .line 178
    iget v7, v7, Lmb/b;->c:I

    .line 179
    .line 180
    :goto_5
    iget v9, v0, Ld3/g;->b:I

    .line 181
    .line 182
    if-eq v9, v2, :cond_7

    .line 183
    .line 184
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    iget-object v9, v9, Lmb/j;->d:Lmb/b;

    .line 189
    .line 190
    iget v9, v9, Lmb/b;->b:I

    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_7
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 194
    .line 195
    .line 196
    move-result-object v9

    .line 197
    iget-object v9, v9, Lmb/j;->c:Lmb/b;

    .line 198
    .line 199
    iget v9, v9, Lmb/b;->b:I

    .line 200
    .line 201
    :goto_6
    iget v10, v0, Ld3/g;->b:I

    .line 202
    .line 203
    if-eq v10, v2, :cond_8

    .line 204
    .line 205
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 206
    .line 207
    .line 208
    move-result-object v10

    .line 209
    iget-object v10, v10, Lmb/j;->d:Lmb/b;

    .line 210
    .line 211
    iget v10, v10, Lmb/b;->c:I

    .line 212
    .line 213
    goto :goto_7

    .line 214
    :cond_8
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 215
    .line 216
    .line 217
    move-result-object v10

    .line 218
    iget-object v10, v10, Lmb/j;->c:Lmb/b;

    .line 219
    .line 220
    iget v10, v10, Lmb/b;->c:I

    .line 221
    .line 222
    :goto_7
    if-ne v14, v6, :cond_9

    .line 223
    .line 224
    if-eq v15, v7, :cond_12

    .line 225
    .line 226
    :cond_9
    iget v6, v0, Ld3/g;->b:I

    .line 227
    .line 228
    if-eqz v6, :cond_a

    .line 229
    .line 230
    if-ne v14, v9, :cond_a

    .line 231
    .line 232
    if-eq v15, v10, :cond_12

    .line 233
    .line 234
    :cond_a
    const/4 v7, 0x0

    .line 235
    if-eqz v6, :cond_11

    .line 236
    .line 237
    if-eq v6, v3, :cond_e

    .line 238
    .line 239
    if-eq v6, v2, :cond_b

    .line 240
    .line 241
    goto/16 :goto_a

    .line 242
    .line 243
    :cond_b
    if-gt v9, v14, :cond_d

    .line 244
    .line 245
    if-ne v9, v14, :cond_c

    .line 246
    .line 247
    if-le v10, v15, :cond_c

    .line 248
    .line 249
    goto :goto_8

    .line 250
    :cond_c
    const/16 v17, 0x0

    .line 251
    .line 252
    const/16 v16, 0x2

    .line 253
    .line 254
    iget-object v11, v4, Ltb/u;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 255
    .line 256
    move v12, v9

    .line 257
    move v13, v10

    .line 258
    invoke-virtual/range {v11 .. v17}, Lio/github/rosemoe/sora/widget/CodeEditor;->j0(IIIIIZ)V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_a

    .line 262
    .line 263
    :cond_d
    :goto_8
    iget-object v1, v5, Lcc/d;->a:Landroid/graphics/RectF;

    .line 264
    .line 265
    invoke-static {v8, v1}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-nez v1, :cond_12

    .line 270
    .line 271
    iget v1, v4, Ltb/u;->e:I

    .line 272
    .line 273
    invoke-virtual {v4, v1, v7}, Ltb/u;->d(IZ)V

    .line 274
    .line 275
    .line 276
    iput v3, v4, Ltb/u;->e:I

    .line 277
    .line 278
    invoke-virtual {v4, v3, v3}, Ltb/u;->d(IZ)V

    .line 279
    .line 280
    .line 281
    iput v3, v0, Ld3/g;->b:I

    .line 282
    .line 283
    iget-object v1, v4, Ltb/u;->w:Ld3/g;

    .line 284
    .line 285
    iput v2, v1, Ld3/g;->b:I

    .line 286
    .line 287
    iget-object v2, v4, Ltb/u;->x:Ld3/g;

    .line 288
    .line 289
    iput-object v1, v4, Ltb/u;->x:Ld3/g;

    .line 290
    .line 291
    iput-object v2, v4, Ltb/u;->w:Ld3/g;

    .line 292
    .line 293
    const/16 v17, 0x0

    .line 294
    .line 295
    const/16 v16, 0x2

    .line 296
    .line 297
    iget-object v11, v4, Ltb/u;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 298
    .line 299
    move v12, v14

    .line 300
    move v13, v15

    .line 301
    move v14, v9

    .line 302
    move v15, v10

    .line 303
    invoke-virtual/range {v11 .. v17}, Lio/github/rosemoe/sora/widget/CodeEditor;->j0(IIIIIZ)V

    .line 304
    .line 305
    .line 306
    goto :goto_a

    .line 307
    :cond_e
    if-lt v9, v14, :cond_10

    .line 308
    .line 309
    if-ne v9, v14, :cond_f

    .line 310
    .line 311
    if-ge v10, v15, :cond_f

    .line 312
    .line 313
    goto :goto_9

    .line 314
    :cond_f
    const/16 v17, 0x0

    .line 315
    .line 316
    const/16 v16, 0x2

    .line 317
    .line 318
    iget-object v11, v4, Ltb/u;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 319
    .line 320
    move v12, v14

    .line 321
    move v13, v15

    .line 322
    move v14, v9

    .line 323
    move v15, v10

    .line 324
    invoke-virtual/range {v11 .. v17}, Lio/github/rosemoe/sora/widget/CodeEditor;->j0(IIIIIZ)V

    .line 325
    .line 326
    .line 327
    goto :goto_a

    .line 328
    :cond_10
    :goto_9
    iget-object v1, v5, Lcc/d;->a:Landroid/graphics/RectF;

    .line 329
    .line 330
    invoke-static {v8, v1}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    if-nez v1, :cond_12

    .line 335
    .line 336
    iget v1, v4, Ltb/u;->e:I

    .line 337
    .line 338
    invoke-virtual {v4, v1, v7}, Ltb/u;->d(IZ)V

    .line 339
    .line 340
    .line 341
    iput v2, v4, Ltb/u;->e:I

    .line 342
    .line 343
    invoke-virtual {v4, v2, v3}, Ltb/u;->d(IZ)V

    .line 344
    .line 345
    .line 346
    iput v2, v0, Ld3/g;->b:I

    .line 347
    .line 348
    iget-object v1, v4, Ltb/u;->x:Ld3/g;

    .line 349
    .line 350
    iput v3, v1, Ld3/g;->b:I

    .line 351
    .line 352
    iget-object v2, v4, Ltb/u;->w:Ld3/g;

    .line 353
    .line 354
    iput-object v2, v4, Ltb/u;->x:Ld3/g;

    .line 355
    .line 356
    iput-object v1, v4, Ltb/u;->w:Ld3/g;

    .line 357
    .line 358
    const/16 v17, 0x0

    .line 359
    .line 360
    const/16 v16, 0x2

    .line 361
    .line 362
    iget-object v11, v4, Ltb/u;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 363
    .line 364
    move v12, v9

    .line 365
    move v13, v10

    .line 366
    invoke-virtual/range {v11 .. v17}, Lio/github/rosemoe/sora/widget/CodeEditor;->j0(IIIIIZ)V

    .line 367
    .line 368
    .line 369
    goto :goto_a

    .line 370
    :cond_11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    .line 372
    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 374
    .line 375
    .line 376
    move-result-wide v3

    .line 377
    iput-wide v3, v1, Lio/github/rosemoe/sora/widget/CodeEditor;->o1:J

    .line 378
    .line 379
    invoke-virtual {v1, v14, v15, v2, v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->h0(IIIZ)V

    .line 380
    .line 381
    .line 382
    :cond_12
    :goto_a
    return-void
.end method

.method public g(II)F
    .locals 9

    .line 1
    iget-object v0, p0, Ld3/g;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [[F

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aget-object v0, v0, v1

    .line 11
    .line 12
    aget p2, v0, p2

    .line 13
    .line 14
    aget p1, v0, p1

    .line 15
    .line 16
    sub-float/2addr p2, p1

    .line 17
    return p2

    .line 18
    :cond_0
    const/high16 v1, 0x40000

    .line 19
    .line 20
    div-int v2, p1, v1

    .line 21
    .line 22
    div-int v3, p2, v1

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    :goto_0
    if-gt v2, v3, :cond_2

    .line 26
    .line 27
    mul-int v5, v2, v1

    .line 28
    .line 29
    add-int/lit8 v6, v2, 0x1

    .line 30
    .line 31
    mul-int v7, v6, v1

    .line 32
    .line 33
    iget v8, p0, Ld3/g;->b:I

    .line 34
    .line 35
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    invoke-static {p2, v7}, Ljava/lang/Math;->min(II)I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-ge v8, v7, :cond_1

    .line 48
    .line 49
    aget-object v2, v0, v2

    .line 50
    .line 51
    sub-int/2addr v7, v5

    .line 52
    aget v7, v2, v7

    .line 53
    .line 54
    sub-int/2addr v8, v5

    .line 55
    aget v2, v2, v8

    .line 56
    .line 57
    sub-float/2addr v7, v2

    .line 58
    add-float/2addr v7, v4

    .line 59
    move v4, v7

    .line 60
    :cond_1
    move v2, v6

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    return v4
.end method

.method public n(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    const-string v0, "appName"

    .line 2
    .line 3
    iget-object v1, p0, Ld3/g;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget v2, p0, Ld3/g;->a:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    sget p2, Lcom/yunpan/appmanage/ui/ActivityUsers;->G:I

    .line 13
    .line 14
    check-cast v1, Lcom/yunpan/appmanage/ui/ActivityUsers;

    .line 15
    .line 16
    iget p2, p0, Ld3/g;->b:I

    .line 17
    .line 18
    invoke-virtual {v1, p2, p1}, Lcom/yunpan/appmanage/ui/ActivityUsers;->x(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void

    .line 22
    :pswitch_0
    if-eqz p2, :cond_1

    .line 23
    .line 24
    check-cast v1, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;

    .line 25
    .line 26
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->F:Lx9/r3;

    .line 27
    .line 28
    iget v2, p0, Ld3/g;->b:I

    .line 29
    .line 30
    invoke-virtual {p2, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    check-cast p2, Lcom/yunpan/appmanage/db/AppBean;

    .line 35
    .line 36
    iput-object p1, p2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 37
    .line 38
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->F:Lx9/r3;

    .line 39
    .line 40
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 41
    .line 42
    .line 43
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->L:Lz7/o;

    .line 44
    .line 45
    invoke-virtual {p2, v2}, Lz7/o;->l(I)Lz7/p;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p2}, Lz7/p;->g()Lz7/s;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p2, v0, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void

    .line 57
    :pswitch_1
    if-eqz p2, :cond_2

    .line 58
    .line 59
    check-cast v1, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;

    .line 60
    .line 61
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->F:Lx9/r3;

    .line 62
    .line 63
    iget v2, p0, Ld3/g;->b:I

    .line 64
    .line 65
    invoke-virtual {p2, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Lcom/yunpan/appmanage/db/AppBean;

    .line 70
    .line 71
    iput-object p1, p2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 72
    .line 73
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->F:Lx9/r3;

    .line 74
    .line 75
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 76
    .line 77
    .line 78
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->L:Lz7/o;

    .line 79
    .line 80
    invoke-virtual {p2, v2}, Lz7/o;->l(I)Lz7/p;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p2}, Lz7/p;->g()Lz7/s;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p2, v0, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    return-void

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public o(Ll2/l;)J
    .locals 7

    .line 1
    iget-object v0, p0, Ld3/g;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lu1/q;

    .line 4
    .line 5
    iget-object v1, v0, Lu1/q;->a:[B

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    invoke-virtual {p1, v1, v2, v3, v2}, Ll2/l;->c([BIIZ)Z

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lu1/q;->a:[B

    .line 13
    .line 14
    aget-byte v1, v1, v2

    .line 15
    .line 16
    and-int/lit16 v1, v1, 0xff

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-wide/high16 v0, -0x8000000000000000L

    .line 21
    .line 22
    return-wide v0

    .line 23
    :cond_0
    const/16 v4, 0x80

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    :goto_0
    and-int v6, v1, v4

    .line 27
    .line 28
    if-nez v6, :cond_1

    .line 29
    .line 30
    shr-int/lit8 v4, v4, 0x1

    .line 31
    .line 32
    add-int/lit8 v5, v5, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    xor-int/lit8 v4, v4, -0x1

    .line 36
    .line 37
    and-int/2addr v1, v4

    .line 38
    iget-object v4, v0, Lu1/q;->a:[B

    .line 39
    .line 40
    invoke-virtual {p1, v4, v3, v5, v2}, Ll2/l;->c([BIIZ)Z

    .line 41
    .line 42
    .line 43
    :goto_1
    if-ge v2, v5, :cond_2

    .line 44
    .line 45
    shl-int/lit8 p1, v1, 0x8

    .line 46
    .line 47
    iget-object v1, v0, Lu1/q;->a:[B

    .line 48
    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    aget-byte v1, v1, v2

    .line 52
    .line 53
    and-int/lit16 v1, v1, 0xff

    .line 54
    .line 55
    add-int/2addr v1, p1

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    iget p1, p0, Ld3/g;->b:I

    .line 58
    .line 59
    add-int/2addr v5, v3

    .line 60
    add-int/2addr v5, p1

    .line 61
    iput v5, p0, Ld3/g;->b:I

    .line 62
    .line 63
    int-to-long v0, v1

    .line 64
    return-wide v0
.end method

.method public t()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld3/g;->c:Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Ld3/g;->a:I

    .line 4
    .line 5
    sparse-switch v1, :sswitch_data_0

    .line 6
    .line 7
    .line 8
    iget v1, p0, Ld3/g;->b:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityRunMemory;

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->y(Lcom/yunpan/appmanage/ui/ActivityRunMemory;IZ)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :sswitch_0
    sget v1, Lcom/yunpan/appmanage/ui/ActivityPermissions;->L:I

    .line 18
    .line 19
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityPermissions;

    .line 20
    .line 21
    iget v1, p0, Ld3/g;->b:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/ui/ActivityPermissions;->y(I)V

    .line 24
    .line 25
    .line 26
    :sswitch_1
    return-void

    .line 27
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0x11 -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Ld3/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v1, p0, Ld3/g;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lx7/a;

    .line 16
    .line 17
    iget v2, v1, Lx7/a;->b:I

    .line 18
    .line 19
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    iget v3, v1, Lx7/a;->b:I

    .line 24
    .line 25
    if-ge v2, v3, :cond_0

    .line 26
    .line 27
    invoke-static {v2, v3}, La9/o;->m(II)V

    .line 28
    .line 29
    .line 30
    iget-object v3, v1, Lx7/a;->a:[I

    .line 31
    .line 32
    aget v3, v3, v2

    .line 33
    .line 34
    invoke-static {v3}, Lu1/f0;->Q(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "UnsupportedBrands{major="

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget v2, p0, Ld3/g;->b:I

    .line 52
    .line 53
    invoke-static {v2}, Lu1/f0;->Q(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, ", compatible="

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, "}"

    .line 69
    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    return-object v0

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
